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

UF.prototype.union = function(n1, n2) {
  var p = this.data[n1];
  var q = this.data[n2];

  if (p !== q) {
    for (var i = 0; i < this.data.length; i++) {
      if (this.data[i] === p) {
        this.data[i] = q;
      }
    }
  }
  console.log(this.data);
};

UF.prototype.find = function(n1, n2) {
  return this.data[n1] === this.data[n2];
};