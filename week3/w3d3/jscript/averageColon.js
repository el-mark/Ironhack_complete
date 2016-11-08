var numbers = '80:70:90:100';


function averageColon(string) {
  var splitStrings = string.split(":");


  var splitNums = splitStrings.map(function(strings) {
    return parseInt(strings)
  });


  var sum = splitNums.reduce(function(pre, num) {
    return pre + num
  });

  average = sum / splitNums.length

  console.log(average)
};

averageColon(numbers);
