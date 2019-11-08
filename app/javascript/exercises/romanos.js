var romanos = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"];
var decimales = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
var vinculum = false;

function sortOut(number){
    let answer;
    if(number <= 0 || number >= 5000){
        answer = 'Introduce un número menor a 5000 y mayor a 0';
    }
    if(number > 3999){
        answer = turnNumber(number-4000);
        vinculum  = true;
    }else{
        answer = turnNumber(number);
    }
    return answer;
}

function turnNumber(number){
    let cad = '';
    for (let index = 0; index < romanos.length; index++) {
        while(number >= decimales[index]){
            cad += romanos[index];
            number -= decimales[index];
        }
    }
    return cad;
}

console.log(sortOut(4999));