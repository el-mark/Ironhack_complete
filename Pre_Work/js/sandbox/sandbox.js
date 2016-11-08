var country;

country = {
    name: "Uruguay",
    continent: "South America",
    capital: "Montevideo",
    population: 123123123,
};

var array;
array = [];
var objectcountry;
objectcountry= {};

function objectToArray (objectcountry) {
    for (var key in objectcountry) {
    array.push(objectcountry[key]);
    }
    return array;
}


// Should print [ "Uruguay", "South America", "Montevideo" ]
console.log(objectToArray(country));    