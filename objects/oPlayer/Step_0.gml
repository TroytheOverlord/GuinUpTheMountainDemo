mvtLocked = max(mvtLocked - 1, 0);
wallAnimTimer = max(wallAnimTimer - 1, 0);


// === 1. Input ===
if (mvtLocked <= 0) {
    moveX = (keyboard_check(vk_right) - keyboard_check(vk_left)) * moveSp;
}

// Sprinting
if (keyboard_check(vk_shift)) {
    moveSp = 8;
} else {
    moveSp = 4;
}

// === 2. Floor and Wall Check ===
var onGround = place_meeting(x, y + 1, oFloor);
var wallLeft = place_meeting(x - 2, y, oWall);
var wallRight = place_meeting(x + 2, y, oWall);

// === 3. Gravity ===
if (!onGround) {
    moveY = min(moveY + 1, 10); // Fall speed cap
} else {
    moveY = 0;
}

// === 4. Wall Jumping & Regular Jump ===
if (keyboard_check_pressed(vk_space)) {
    if (onGround) {
        moveY = -jumpSp;
    }
    else if (canWallJump && (wallLeft || wallRight)) {
        moveY = -jumpSp;

        // Push away from the wall
        moveX = wallLeft ? jumpSp : -jumpSp;

        // Lock movement to avoid snapping direction
        mvtLocked = 10; 
        
        wallAnimTimer = 10;
    }
}
  

// === 5. Movement and Collision ===

// Horizontal movement
if (moveX != 0) {
    var steps = abs(moveX);
    var i = 0;
    while (!place_meeting(x + sign(moveX), y, oFloor) && !place_meeting(x + sign(moveX), y, oWall) && i < steps) {
        x += sign(moveX);
        i++;
    }
}

// Vertical movement
if (moveY != 0) {
    var stepsV = abs(moveY);
    var j = 0;
    while (!place_meeting(x, y + sign(moveY), oFloor) && !place_meeting(x, y + sign(moveY), oWall) && j < stepsV) {
        y += sign(moveY);
        j++;
    }
    if (j < stepsV) {
        moveY = 0;
    }
}


// === 6. Animation Selection ===
if (!onGround) {
    if ((canWallJump && (wallLeft || wallRight) && moveY > 0) || wallAnimTimer > 0) {
        animState = "walljump";
    } else {
        animState = "jump";
    }
}
else if (moveX != 0) {
    animState = "run";
} else {
    animState = "idle";
}


// Set sprite based on state
switch (animState) {
    case "jump":
        sprite_index = sGuinJump;
        break;
    case "walljump":
        sprite_index = sGuinWallJump;
        break;
    case "run":
        sprite_index = sGuinWalking; 
        break;
    case "idle":
        sprite_index = sGuinIdle;
        break;
}


// === 7. Flip sprite based on direction and keep scale ===
if (moveX != 0) {
    image_xscale = 0.1 * sign(moveX);
}
image_yscale = 0.1;

// === 8. Death Check ===
if (hp <= 0) {
    game_restart();
}
