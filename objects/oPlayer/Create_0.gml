/// @description Initial Player Variables

// Movement Varaibles 
moveSp = 4;

jumpSp = 16;

moveX = 0;
moveY = 0;
mvtLocked = 0;
wallAnimTimer = 0;



// Battle Variables
hp = 10;
maxHp = hp;
damage = 1;
charge = 0;

// Level Up and Wall Jump
level = 1;
xp = 0;
xpRequired = 100;

canWallJump = false;
animState = "";

// Allows Player to level up
function AddXp(xp_to_add){
    xp += xp_to_add;
    if(xp >= xpRequired){
        level++;
        xp -= xpRequired;
        xpRequired *= 1.4;
        
        maxHp += 5;
        hp = maxHp;
        damage += 0.8;
    }
}

// Fish Currency
fishCoins = 0;