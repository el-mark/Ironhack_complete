var exampleArray = [2, -5, 10, 5, 4, -10, 0];

function process(data) {
  var positions = [];
  data.forEach(function(value, i) {
      data.forEach(function(value2, j) {
      if (value + value2 === 0) {
        positions.push (i + "-" + j)
      }
    }
  );}
);
console.log("Sum these pairs and get zero: " + positions.join(" or "));
// console.log(positions);
}

process(exampleArray)
