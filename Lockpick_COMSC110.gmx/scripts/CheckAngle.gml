//intended syntax : CheckAngle(current_angle, current_length);


//check if length is within testing margin
if (argument1 <= 400){
    //check if valid angle
    if (argument0 >= 0 && argument0 <= 180){  
        
        //Find orders of magnitude from sweetspot
        var compare = logn(global.difficulty, abs(argument0 - global.sweetspot));
        //if within one order of magnitude, unlock
        if (compare <= 1){
            if (argument1 <= 200){
                global.unlockCheck = true;
                return 200;
            }
        }
        
        //if not within one order of magnitude, return the durability destruction rate
        else {
            return compare;
        }
    }
    //invalid angle, return 0
    else {
        return 0;
    }
}
//invlaid distance, return 0
else {
    return 0;
}
