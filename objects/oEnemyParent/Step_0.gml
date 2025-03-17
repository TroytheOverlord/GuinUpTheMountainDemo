/// @description Enemy Movement

moveX = moveSp * dir;
moveY = moveY + grv;

//Horizontal Collison

if(place_meeting(x + moveX, y, oFloor)){
    while(!place_meeting(x + sign(moveX), y,oFloor)){
        x = x + sign(moveX);
    }
    dir = dir * -1;
    moveX = 0;
}

x += moveX;

//Vertical Collison

if(place_meeting(x, y + moveY, oFloor)){
    while(!place_meeting(x, y + sign(moveY), oFloor)){
        y = y + sign(moveY);
    }
    moveY = 0;
    
    if(dontFall && !position_meeting(x + (sprite_width / 2) * dir, y + (sprite_height / 2) + 7, oFloor)){
        dir = dir * -1;
    }
}
y = y + moveY;

if(hp <= 0){
    instance_destroy();
    
    oPlayer.AddXp(xpValue);
}