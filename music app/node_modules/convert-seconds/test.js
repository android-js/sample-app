'use strict';
var assert = require('assert');
var convert = require('./');

describe('convert-seconds', function () {
    it('should error when invalid value is supplied', function (done) {
        assert.throws(function () {
            convert('one-second');
        });
        done();
    });

    it('should convert time to hours. minutes, seconds', function (done) {
        assert.equal(convert('10').seconds, 10);
        assert.equal(convert('3661').hours, 1);
        assert.equal(convert('3661').minutes, 1);
        assert.equal(convert('3661').seconds, 1);
        assert.equal(convert('86400').hours, 24);
        assert.equal(convert('86400').minutes, 0);
        assert.equal(convert('86400').seconds, 0);
        done();
    });
});

describe('return values', function () {
    it('hours', function () {
        assert(convert('10').hasOwnProperty('hours'));
    });

    it('minutes', function () {
        assert(convert('10').hasOwnProperty('minutes'));
    });

    it('seconds', function () {
        assert(convert('10').hasOwnProperty('seconds'));
    });
});
