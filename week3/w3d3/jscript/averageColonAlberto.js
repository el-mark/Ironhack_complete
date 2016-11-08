var someNumbers = '10:20:15:20:50';

function averageColon(numbers) {
  var separatedNumbers  = numbers.split(':');
  var sum = 0;
  separatedNumbers.forEach(function (number) {
    sum += parseInt(number);
  });
  return sum/separatedNumbers.length;
}

var results = averageColon(someNumbers);
console.log(results);
