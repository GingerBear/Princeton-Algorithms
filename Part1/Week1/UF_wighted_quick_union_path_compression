/**
*
* Union Find with weighted quick union
* --------------------------------
* - Data stored in plain old array
* - tree structure in array, value is the parent 
* - union operation is to set one node's root to be the other node's root
* - - trees with bigger size should be the parent
* - when finding root, put all node to the directly child of root
* - find operation is to check if their roots are the same
*
**/

function UF(num) {
  this.data = [];
  this.size = [];

  // init the nodes
  for (var i = 0; i < num; i++) {
    this.data[i] = i;
    this.size[i] = 1;
  }
}

UF.prototype.root = function(n) {
  var current = n;
  while(this.data[current] !== current) {
    this.data[current] = this.data[this.data[current]];
    current = this.data[current];
  }
  return current;
};

UF.prototype.union = function(n1, n2) {
  var root1 = this.root(n1);
  var root2 = this.root(n2);
  var temp = null;

  // if root1 is smaller, swap
  if (this.size[root1] < this.size[root2]) {
    temp = root1;
    root1 = root2; 
    root2 = temp;
  }

  this.size[root1] += this.size[root2];
  this.data[root2] = root1;

  console.log(this.data);
};

UF.prototype.find = function(n1, n2) {
  return this.root(n1) === this.root(n2);
};