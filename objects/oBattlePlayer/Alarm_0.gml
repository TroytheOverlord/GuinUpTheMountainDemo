/// @description 

if(sprite_index = sGuinIdle){
    image_xscale = 0.05;
    image_yscale = 0.05;
    sprite_index = sGuinAttacking;
    image_index = 0;           
    image_speed = 0.5;
}
x += 2;


if(x > xstart + 20){
    alarm[1] = 1;
}

else{
    alarm[0] = 1;
}