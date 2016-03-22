/**
 * Created by jose on 30/07/2015.
 */

const chai = require('chai');
const sinonChai = require('sinon-chai');
chai.use(sinonChai);
GLOBAL.expect = chai.expect;
GLOBAL.sinon = require('sinon');
