var read = require('read');

var Question = function (question, answer, pointvalue, id, bonus) {
  this.question = question;
  this.answer = answer;
  this.pointvalue = pointvalue;
  this.id = id;
  this.bonus = bonus
}

var Quiz = function (setOfQuestions) {
  this.numQuestion = 0
  this.soq = setOfQuestions
  this.totalPoints = 0

  this.start = function () {
  this.bonus()
  this.askQuestion(this.soq[this.numQuestion]);
  }

  this.bonus = function () {
    var randomnumber = Math.round(Math.random()*4)
    this.soq[randomnumber].pointvalue = this.soq[randomnumber].pointvalue* 3
    this.soq[randomnumber].bonus = "**Bonus question**"
  }

  this.askQuestion = function (questionCode) {
    var nextQuestion = ""
    options = {
        prompt: questionCode.question+" ("+questionCode.pointvalue+" points)" + questionCode.bonus
    }
    read(options, displayName.bind(this))
    function displayName (err, answer){
      if (answer === questionCode.answer) {
        console.log("Well done!" + questionCode.bonus);
        this.totalPoints = this.totalPoints + questionCode.pointvalue
        this.numQuestion = this.numQuestion + 1;
        if (this.numQuestion === this.soq.length) {
          console.log("Congratulations! The Quiz has end. The total won points are: "+this.totalPoints);
        } else {
          this.askQuestion(this.soq[this.numQuestion]);
        }
      } else {
        console.log("It's wrong. Try again please.");
        this.askQuestion(questionCode);
      }
    }
  }
}

var q1 = new Question ("what's the capital of Austria?","Vienna",50,1,"")
var q2 = new Question ("what's the capital of Czech Republic?","Prague",60,2,"")
var q3 = new Question ("what's the capital of Italy?","Rome",30,3,"")
var q4 = new Question ("what's the capital of Brazil?","Brasilia",40,4,"")
var q5 = new Question ("what's the capital of Cuba?","Havana",70,5,"")

setOfQuestions = [q1,q2,q3,q4,q5]


firstQuiz = new Quiz (setOfQuestions)
firstQuiz.start()
