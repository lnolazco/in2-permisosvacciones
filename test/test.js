var lt = require('loopback-testing');
var assert = require('assert');
var app = require('../server/server.js'); //path to app.js or server.js

describe('/conceptos', function() {
  lt.beforeEach.withApp(app);
  lt.describe.whenCalledRemotely('GET', '/api/conceptos', function() {
    lt.it.shouldBeAllowed();
    it('should have statusCode 200', function() {
      assert.equal(this.res.statusCode, 200);
    });

    //lt.beforeEach.givenModel('concepto');
    it('should respond with an array of conceptos', function() {
        assert(Array.isArray(this.res.body));
    });
  });
    //POST
    lt.describe.whenCalledRemotely('POST', '/api/conceptos',
        {
            "anyo": 2015,
            "concepto": "Concepto de prueba",
            "total": 1,
            "tipo": "N"
        },
        function() {
            lt.it.shouldBeAllowed();
            it('should have statusCode 200', function() {
                console.log('nuevo concepto creado ' + this.res.body.id);
                assert.equal(this.res.statusCode, 200);
                if (this.res.statusCode === 200) deleteConcept(this.res.body.id);
        });
    });
});
function deleteConcept(id) {
    lt.beforeEach.withApp(app);
    //DELETE
    lt.describe.whenCalledRemotely('DELETE', '/api/conceptos/' + id,
        function() {
            lt.it.shouldBeAllowed();
            it('should have statusCode 200', function() {
                assert.equal(this.res.statusCode, 200);
        });
    });
}
