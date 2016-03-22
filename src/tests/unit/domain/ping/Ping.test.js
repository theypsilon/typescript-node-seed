"use strict";
var Ping_1 = require('domain/ping/Ping');
describe('Ping', function () {
    describe('duplicate', function () {
        describe('when pong is given', function () {
            it('should return ping pong pong', function () {
                var actual = Ping_1["default"].create("pong").duplicate().toString();
                expect(actual).to.equals("ping pong pong");
            });
        });
    });
});
//# sourceMappingURL=Ping.test.js.map