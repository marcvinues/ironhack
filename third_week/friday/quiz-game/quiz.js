var read = require('read');
options = {
    prompt: "What's your name?\n>"
}
// Our options object, the prompt is simply what will appear in the command line when read is called

read(options, displayName)
// The prompt itself, passing options, and using our callback function after input

function displayName (err, name){
    console.log("Your name is: " + name)
}
function question(){
    var quiz = [{
        "id" : 1,
        "question" : "What is 5 + 5?",
        "choices" : [5, 10, 12],
        "correct" : 10
    },{
        "id" : 2,
        "question" : "What is the programing language i used?",
        "choices" : ["JavaScrip", "Ruby", "PHP"],
        "correct" : "JavaScrip"
    },{
        "id" : 3,
        "question" : "Who is the best football player?",
        "choices" : ["Messi","Ronaldo", "Neymar"],
        "correct" : "Messi"
    },{
        "id" : 4,
        "question" : "How many Champions League has RM?",
        "choices" : [5, 10, 3],
        "correct" : 10
    }
];

}
