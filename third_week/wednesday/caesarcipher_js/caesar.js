function caesarCipher(message, a){
    var index = 0;
    var n = message.split("");

    var words = n.map(function(m){
        var character = m.charCodeAt(index);
        if(character >= 97 && character <= 122 || character >= 65 && character <= 90){
            if (character + a > 122 && character + a > 97){
                 character = character - 26;
            }else if(character + a < 65 && characteer + a < 90){
                 character = character + 26;
            }
            // return character += character + a;
            return character + a;
        }else{

            return character;
        }
    });

    // console.log(n);
    var wordverse = words.map(function(e){
         return String.fromCharCode(e);
     });
     return wordverse.join("");
    // console.log(wordverse);

}
// var encrypted = caesarCipher("brutus");
var encrypted = caesarCipher("Et tu, brute?", 6);
// console.log( String.fromCharCode(95) );
console.log(encrypted);
