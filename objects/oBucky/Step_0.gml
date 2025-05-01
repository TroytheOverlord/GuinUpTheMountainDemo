/// @description Insert description here
// You can write your code in this editor

// === 1. Target to follow
var followTarget = oPlayer; // Replace if player object is different

// === 2. Desired distance behind the player
var targetX = followTarget.x - lengthdir_x(-80, point_direction(followTarget.x, followTarget.y, x, y));
var targetY = followTarget.y - lengthdir_y(-80, point_direction(followTarget.x, followTarget.y, x, y));

// === 3. Smooth follow movement
x = lerp(x, targetX, 0.1);
y = lerp(y, targetY, 0.1);

