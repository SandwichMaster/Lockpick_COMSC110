//Intended syntax : PickHealth(reductionPerTick)

global.pickHealth -= argument0;

if (global.pickHealth <= 0){
    if (global.picks > 0){
        global.picks -= 1;
        global.pickHealth = 100;
    }
    else if (global.picks = 0){
        global.gameOver = true;
    }
}

