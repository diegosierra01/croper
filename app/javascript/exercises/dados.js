process.stdin.resume();
process.stdin.setEncoding('utf8');
// Your code here!
var firstdice;
var seconddice;

function rollDice(){
    return number = Math.floor(Math.random() * 6) + 1;
}

function simulateLaunch(){
    let times = 0;
    for (let index = 0; index < 20; index++) {
        firstdice = rollDice();
        seconddice = rollDice();    
        if(firstdice+seconddice==10)
            times++;
    }
    return times;
}

console.log(simulateLaunch());
