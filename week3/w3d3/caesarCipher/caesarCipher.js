function caesarCipher (message, shift) {
  shift = shift || -3
  var splitedMessage = message.split('')
  var encryptedMessage = splitedMessage.map(function(char){
    if ((char >= "A" && char <= "Z")||
    (char >= "a" && char <= "z")) {
      var encryptedChar = char.charCodeAt(0) + shift
        if (encryptedChar < 65 ||
          (encryptedChar < 97 && char.charCodeAt(0) >= 97)) {
            encryptedChar = encryptedChar + 26
          } else if (encryptedChar > 122 ||
          (encryptedChar > 90 && char.charCodeAt(0) <= 90)) {
            encryptedChar = encryptedChar - 26
          }
      return String.fromCharCode(encryptedChar)
    } else {
      return char
    }
  });
  return encryptedMessage.join("")
}

var encrypted = caesarCipher("brutus");
console.log(encrypted);
//=> "_orqrp"

encrypted = caesarCipher("Et tu, brute?");
console.log(encrypted);
//=> "Bq qr, _orqb?"

// Left shift of 4
encrypted = caesarCipher("Et tu, brute?", -4);
console.log(encrypted);
//=> "Ap pq, ^nqpa?"

// Right shift of 4
encrypted = caesarCipher("Et tu, brute?", 6);
console.log(encrypted);
//=> "Kz za, hxazk?"

encrypted = caesarCipher("AZaz", -1);
console.log(encrypted);

encrypted = caesarCipher("AZaz", +12);
console.log(encrypted);
