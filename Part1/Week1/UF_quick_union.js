/**
*
* Union Find with quick find
* --------------------------------
* - Data stored in plain old array
* - union operation is to set the value the same for both node to unioned
* - find operation is to check if their values are the same
*
**/

function UF(num) {
  this.data = [];

  // init the nodes
  for (var i = 0; i < num; i++) {
    this.data[i] = i;
  }
}

UF.prototype.root = function(n) {
  var current = n;
  while(this.data[current] !== current) {
    current = this.data[current];
  }
  return current;
};

UF.prototype.union = function(n1, n2) {
  var root1 = this.root(n1);
  var root2 = this.root(n2);

  this.data[root1] = root2;
  console.log(this.data);
};

UF.prototype.find = function(n1, n2) {
  return this.root(n1) === this.root(n2);
};