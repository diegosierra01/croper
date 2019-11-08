function init(){
    notes = generateNotes();
    console.log(notes);
    console.log('Maximo'+getMaximum(notes));
    console.log('Minimo'+getMinimum(notes));
    console.log('Promedio'+getAverage(notes));
    console.log('Número de aprobados:' + countApproved(notes)');
}

function generateNotes(){
    students= []
    for (let index = 0; index < 14; index++) {
        number = Math.random() * 5;        
        students.push(number)
    }
    return students
}

function countApproved(notes){
    quantity = 0;
    notes.forEach(element => {
        if(element > 3){
            quantity++;
        }
    });
    return quantity;
}

function getMaximum(notes){
    return Math.max(...notes);    
}

function getMinimum(){
    return Math.min(...notes);
}

function getAverage(notes){
    return notes.reduce((a,b) => a + b, 0) / notes.length
}

init();