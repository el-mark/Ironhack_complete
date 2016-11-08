var Viking = function (name, health, strength) {

  this.name = name;
  this.health = health;
  this.strength = strength;

};

function pitFight (viking1, viking2) {
  numberOfTurns = (Math.random() * (8)) + 3;
  for (i=1;i<numberOfTurns;i++) {

      viking1.health = viking1.health - viking2.strength
      viking2.health = viking2.health - viking1.strength

      if (viking1.health > 0 && viking2.health > 0) {
        console.log("Turn N°" + i);
        console.log("Vikingo " + viking1.name + viking1.health);
        console.log("Vikingo " + viking2.name + viking2.health);
      } else {
        viking1.health = viking1.health + viking2.strength
        viking2.health = viking2.health + viking1.strength
        console.log("The Pit Fight stopped at turn N°"+ i +" because the Vikings are very tired and hurt");
        i = numberOfTurns
      }

  }
  console.log("Final results");
  console.log("Vikingo " + viking1.name + viking1.health);
  console.log("Vikingo " + viking2.name + viking2.health);
}

var john = new Viking("John", 50, 10)
var will = new Viking("Will", 65, 8)

pitFight (john, will)
