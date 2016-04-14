var fs = require ('fs');

function print(error, content){
  if(error){
    console.log('errorrrr!',error);
  }else{
    console.log('Content: ', content);
  }
};

fs.readFile('file.txt', 'utf8', print);
