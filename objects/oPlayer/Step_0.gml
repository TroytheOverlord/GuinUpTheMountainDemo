/// @description Player Movement

// Horizontal movement
moveX = keyboard_check(vk_right) - keyboard_check(vk_left);
moveX = moveX * moveSp;

if (keyboard_check(vk_shift)) {
    moveSp += 4;
} else {
    moveSp = 4;
}

// Jumping: floor jump or wall jump
if (place_meeting(x, y + 2, oFloor)) {
    // On the ground: reset vertical speed and allow normal jump
    moveY = 0;
    if (keyboard_check_pressed(vk_space)) {
        moveY = -jumpSp;
    }
} else {
    // In the air: check for wall jump if the ability is unlocked
    if (canWallJump && keyboard_check_pressed(vk_space)) {
        // Check if there's a wall to the left
        if (place_meeting(x - 2, y, oFloor)) {
            // Wall on left: jump to the right
            moveY = -jumpSp;
            moveX = jumpSp; // adjust horizontal force as needed
        }
        // Otherwise, check for a wall to the right
        else if (place_meeting(x + 2, y, oFloor)) {
            // Wall on right: jump to the left
            moveY = -jumpSp;
            moveX = -jumpSp;
        }
        // (Optional) If no wall is detected, you might choose to do nothing special.
    } else {
        // Apply gravity if not wall jumping
        if (moveY < 10) {
            moveY += 1;
        }
    }
}

// Handle collision movement
move_and_collide(moveX, moveY, oFloor);

if (moveX != 0) {
    image_xscale = sign(moveX);
}

if (hp <= 0) {
    game_restart();
}

