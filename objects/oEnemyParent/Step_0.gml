/// @description Enemy Movement

// Apply gravity
moveY += grv;

// Calculate movement
moveX = moveSp * dir;

// --- Horizontal Collision
if (place_meeting(x + moveX, y, oFloor)) {
    // Nudge until touching the wall
    while (!place_meeting(x + sign(moveX), y, oFloor)) {
        x += sign(moveX);
    }
    
    // Hit a wall -> Flip!
    dir *= -1;
    moveX = 0;
}

x += moveX;

// --- Vertical Collision
if (place_meeting(x, y + moveY, oFloor)) {
    while (!place_meeting(x, y + sign(moveY), oFloor)) {
        y += sign(moveY);
    }
    
    moveY = 0;
}

y += moveY;

// --- Death
if (hp <= 0) {
    instance_destroy();
    oPlayer.AddXp(xpValue);
}

