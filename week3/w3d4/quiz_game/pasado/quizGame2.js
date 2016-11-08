// Create the Quiz class to move the user from question to question.
var read = require('read');

var Question = function (question, answer, id) {
  this.question = question;
  this.answer = answer;
  this.id = id;
}

var Quiz = function () {
  this.start = function () {
  this.askQuestion(q1);
  }
  this.askQuestion = function (questionCode) {
    var nextQuestion = ""
    options = {
        prompt: questionCode.question
    }
    read(options, displayName)
    function displayName (err, answer){
      
        this.nextQuestion(questionCode);

    }
  }
  this.nextQuestion = function (nextQuestion) {
    console.log("fin");
    // if (nextQuestion === q2 ){
    //
    // }
  }
}

var q1 = new Question ("what's the capital of Austria?","Vienna",1)
var q2 = new Question ("what's the capital of Czech Republic?","Prague",2)
var q3 = new Question ("what's the capital of Italy?","Rome",3)
var q4 = new Question ("what's the capital of Brazil?","Brasilia",4)
var q5 = new Question ("what's the capital of Cuba?","Havana",5)

firstQuiz = new Quiz ()
firstQuiz.start()
