// Design Basic Game Solo Challenge

// This is a solo challenge
	// Create at least 2 objects with properties
	// Create at least 2 functions that interact with those objects by adding or modifying the object's properties
	// Call each function (invoke the function) Make sure the output is actually what you expect!


// Your mission description: 
	// hiker needs to find food, so follows path, needs to avoid big foot, and make it to the food (end of level/path)
// Overall mission:
	// avoid big foot
	// make it to the food at the end of the path to get to next level
// Goals: 
	// avoid big foot
	// collect food (make it to end of level/path)
// Characters: 
	// Player
	// Big Foot
// Objects: 
	// Player, properties: position, health (avoided big foot or not), amount of food
	// Big Foot, properties: position
// Functions: moveUp, moveDown, moveRight, moveLeft

// Pseudocode
// Declare 'hiker/player' object
	// has properties: position, hunger (if reached food)
	// create a 'hiker/plater' FUNCTION to allow it to move up, down, left, or right
// Declare 'big foot' object
	// has properties: position (random)
// When 'hiker' moves, big foot should move too and be assigned a random position again
	// display where the big foot now is
// FUNCTION to check and display hiker's position after every move
	// Hiker's position displayed
	// IF hiker's position is equal to the big foot's position
		// game over!
	// ELSEIF hiker's postition is equal to the food's position
		// You aren't going to starve and avoided big foot - yay! you did it!

// Initial Code
var hiker = {
	posX: 0,
	posY: 0,
	food: 0,
	win: false,

move: function(movement) {
	if(movement === 'up'){
		hiker.posY += 10;
	}
	else if(movement === 'down'){
		hiker.posY -= 10;
	}
	else if(movement === 'left'){
		hiker.posX -= 10; 
	}
	else if(movement === 'right'){
		hiker.posX += 10;
	}

// when hiker moves, big foot moves too
	bigfoot.posX = Math.floor((Math.random()*100)+1);
  	bigfoot.posY = Math.floor((Math.random()*100)+1);
  	
// display new location of big foot and current location of player
  	console.log("Big Foot is currently located at " + bigfoot.posX + ", " + bigfoot.posY + ". Be careful friend, you are located at " + hiker.posX + ", " + hiker.posY + "!");

  	// console.log("Fine, here's a hint. The food is near " food.posX + "!");
// check is hiker found big foot or gold
	if(hiker.posX === bigfoot.posX && hiker.posY === bigfoot.posY){
		console.log("Big Foot got you, GAME OVER!");
	}
	else if(hiker.posX === food.posX && hiker.posY === food.posY){
		hiker.win = true;
		hiker.food = 100;
		console.log("You found the food, you're not going to starve! YOU WIN!!!")
	}
}
};

var food = {
posX: Math.floor((Math.random()*100)+1),
posY: Math.floor((Math.random()*100)+1)
};

var bigfoot = {
posX: Math.floor((Math.random()*100)+1),
posY: Math.floor((Math.random()*100)+1)
};

hiker.move('up');
hiker.move('right');
hiker.move('right');
hiker.move('down');
hiker.move('down');
hiker.move('right');
hiker.move('right');

// Refactored Code




// Reflection
// - What was the most difficult part of this challenge?
	//
// - What did you learn about creating objects and functions that interact with one another?
	// 
// - Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
	// 
// - How can you access and manipulate properties of objects?
	//