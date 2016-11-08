// // 1
// function shout () {
//   console.log('Aaaaaaaaaaaaaaaaaaaaaaaaaah!');
// };
//
// setTimeout(shout,1000);
//
// // 2
// function blastOff() {
//   for (i=5;i>=0;i--){
//
//     if (i==0) {
//       console.log("blast Off!");
//     } else {
//       console.log(i);
//     };
//     setTimeout("",1000);
//   };
// };
//
// blastOff(5);

// // Countdown
// function blastOff (seconds) {
//   function countdown() {
//     if (seconds>=1) {
//       console.log(seconds);
//       seconds -= 1;
//       setTimeout(countdown, 1000);
//     }else {
//       console.log('blastoff!!!');
//     };
//   };
//   countdown();
// };
// blastOff(5);

// // Spleep
function sleep (seconds, func) {
    var ms = seconds * 1000;
    setTimeout(func,ms);
};

sleep(10,function () {
  console.log("It's been 10 seconds.")
});
