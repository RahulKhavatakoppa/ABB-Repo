const assert = require('assert');

// Simple unit tests for CI – no server required
function testAppVersion() {
  const pkg = require('../package.json');
  assert.ok(pkg.version, 'package.json should have version');
  assert.ok(pkg.name === 'devops-assessment-app', 'package name should match');
}

function testEnvDefaults() {
  const port = process.env.PORT || 3000;
  assert.ok(Number(port) > 0, 'PORT should be a positive number');
}

testAppVersion();
testEnvDefaults();
console.log('All unit tests passed.');
