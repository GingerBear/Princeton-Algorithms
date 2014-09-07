/**
*
* Test Client
* --------------------------------
*
**/


var uf = new UF(10);

uf.union(1, 2);
uf.union(3, 4);
uf.union(5, 6);
uf.union(7, 8);
uf.union(9, 0);
uf.union(2, 8);
uf.union(3, 5);
uf.union(0, 5);

function testUF(n1, n2, shouldConnected) {
  var syntax = shouldConnected ? "" : "not ";
  var result = uf.find(n1, n2);
  result = shouldConnected ? result : !result;

  if (result) {
    console.log('good: ' + n1 + ' and ' + n2 + ' are ' + syntax + 'connected');
  } else {
    console.error('bad: ' + n1 + ' and ' + n2 + ' should ' + syntax + 'be connected');
  }
}

testUF(2, 7, true);
testUF(8, 5, false);
testUF(9, 3, true);
testUF(2, 7, true);
testUF(6, 1, false);
testUF(3, 6, true);
testUF(3, 3, true);