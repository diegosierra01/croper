function generateToken(){
    for (let i = 6; i >= 0; i--) {
        for (let j = 6; j >= i; j--) {
            console.log(i+":"+j);            
        }        
    }
}

generateToken();
