// Design Basic Game Solo Challenge

// This is a solo challenge
	// Create at least 2 objects with properties
	// Create at least 2 functions that interact with those objects by adding or modifying the object's properties
	// Call each function (invoke the function) Make sure the output is actually what you expect!


// Your mission description: 
	// A Hiker is stranded in the woods and needs to find food so they don't starve to death, but big foot is lurking around 
	// so avoid him, collect food until your food level is equal to 100, and run to safety!
// Overall mission: 
	// collect enough food so you can run to safety!
// Goals: 
	// avoid big foot
	// collect food until food level is at 100
// Characters: 
	// hiker
	// Big Foot
// Objects: 
	// hiker, properties: position, amount of food, win?
	// Big Foot, properties: position
	// 6 pieces of Food, properties: name each food item, food points of each item, location of each item (random)
// Functions: moveUp, moveDown, moveRight, moveLeft

// Pseudocode
// Declare 'hiker' object
	// has properties: position, food amount
	// create a 'hiker' FUNCTION to allow it to move up, down, left, or right
// Declare 'big foot' object
	// has properties: position (random)
// Declare Food objects to collect
	// name food
		// write how many points food is worth 
	// location of food item should be random
// When 'hiker' moves, big foot randomly moves to new position as well
	// display big foot's new position
// FUNCTION to check hiker's position after every turn(checking position/win?/amount of food)
	// Display hiker's position
	// IF hiker's position is equal to big foot's position
		// game over!
	// ELSEIF hiker's postition is equal to an item of food's position AND if food level IS NOT equal to 100
		// add the food points to the hiker's food level and continue
	// ELSEIF hiker's postition is equal to the food's position AND if food level IS equal to 100
		// add the food points to the hiker's food level AND display ("YOU WIN!!!")

// Initial Code
// var hiker = {
// 	posX: 0,
// 	posY: 0,
// 	food: 0,
// 	win: false,

// move: function(command) {
// 	if(command === 'up'){
// 		hiker.posY += 10;
// 	}
// 	else if(command === 'down'){
// 		hiker.posY -= 10;
// 	}
// 	else if(command === 'left'){
// 		hiker.posX -= 10; 
// 	}
// 	else if(command === 'right'){
// 		hiker.posX += 10;
// 	};

// // when hiker moves, big foot moves too
// 	bigfoot.posX = Math.floor((Math.random()*100)+1);
//   	bigfoot.posY = Math.floor((Math.random()*100)+1);
  	
// // display new location of big foot and current location of hiker
//   	console.log("Big Foot is currently located at " + bigfoot.posX + ", " + bigfoot.posY + ". Be careful friend, you are located at " + hiker.posX + ", " + hiker.posY + "!");


// // check is hiker found big foot or food
// 	if(hiker.posX === bigfoot.posX && hiker.posY === bigfoot.posY){
// 		console.log("Big Foot got you, GAME OVER!");
// 	}
// 	else if(hiker.posX === food.posX && hiker.posY === food.posY){
// 		hiker.win = true;
// 		hiker.food = 100;
// 		console.log("You found the food, you're not going to starve! YOU WIN!!!")
// 	}
// }
// };

// var food = {
// posX: Math.floor((Math.random()*100)+1),
// posY: Math.floor((Math.random()*100)+1)
// };

// var bigfoot = {
// posX: Math.floor((Math.random()*100)+1),
// posY: Math.floor((Math.random()*100)+1)
// };

// // INITIAL DRIVER CODE
// hiker.move('up');
// hiker.move('right');
// hiker.move('right');
// hiker.move('down');
// hiker.move('down');
// hiker.move('right');
// hiker.move('right');

// Refactored Code
var food = {
posX: Math.floor((Math.random()*100)+1)
};

var bigfoot = {
posX: Math.floor((Math.random()*100)+1),
posY: Math.floor((Math.random()*100)+1)
};

var hiker = {
	posX: 0,
	posY: 0,
	food: 0,
	win: 0,

move: function(command) {
	if(command === 'up'){
		hiker.posY += 10;
	}
	else if(command === 'down'){
		hiker.posY -= 10;
	}
	else if(command === 'left'){
		hiker.posX -= 10; 
	}
	else if(command === 'right'){
		hiker.posX += 10;
	};

// when hiker moves, big foot moves too
bigfoot.posX = Math.floor((Math.random()*100)+1);
bigfoot.posY = Math.floor((Math.random()*100)+1);
  	
// display new location of big foot and current location of hiker
console.log("Big Foot is currently located at " + bigfoot.posX + ", " + bigfoot.posY + ". Be careful hiker, you are located at " + hiker.posX + ", " + hiker.posY + "!");

// FUNCTION TO check if hiker found big foot or food
	if(hiker.posX === bigfoot.posX && hiker.posY === bigfoot.posY){
		console.log("Big Foot got you, GAME OVER!");
	}
	else if(hiker.posX === food.posX && hiker.posY === food.posY){
		hiker.win = true;
		hiker.food = 100;
		console.log("You found enough food, you're not going to starve! YOU WIN!!!")
	}
}
};

// DRIVER CODE
hiker.move('up');
hiker.move('right');
hiker.move('right');
hiker.move('up');
hiker.move('right');
hiker.move('down');
hiker.move('down');




// Reflection
// - What was the most difficult part of this challenge?
	// I found this to be a very interesting challenge, it was both challenging and fun! At first I was surprised by how difficult
	// it was for me to come up with a game concept that was both simple for me to start with and still spark my interest. Of course
	// when I stopped thinking about it so much, it just kind of slowly came together and the details just started making sense. Once
	// I came up with a game idea, the most difficult part was trying to imagine it in "real life" without being able to physically see
	// where the characters and food items were on the "path". My game is VERY simple because I'm still a bit intimidated by JS and have
	// sent myself through mindless "rabit-holes" when I'm stuck or confused, so I made a simpler version of the game by only needing to 
	// find food once to win. In my refactored solution, I tried to redo my code so the hiker would have to slowly collect multiple items 
	// of food until their food level reached a certain point, but it didn't work out as I hoped. Either way, I was happy to play with the
	// code to see if and how I could.
// - What did you learn about creating objects and functions that interact with one another?
	// I learned that when creating these objects and functions, you should always great your main objects first and then work on
	// functions once you have your "main pieces" done. I kept bouncing around and would create a function in between creating objects
	// and then go back and create another object, it made the process more confusing than neccessary. If I had all of my main "selfs"
	// created and then took it step by step to create each function, my brain would have been able to do a better job of organizing 
	// everything.
// - Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
	// I had seen floor before in previous challenges (I believe it was GPS 3.1 more specifically) but I had never used it before, it rounds
	// a number downward to its nearest integer, so if you have 1.7 it rounds it down to 1. This was important when selecting random positions
	// of the objects so there would actually be a likely chance of big foot and the food interacting with the hiker. I also used Math for the
	// first time, again, I had seen it before in previous challenges but I had not had experience with it myself. The math object allows
	// you to perform mathematical tasks in JavaScript. I also used other methods such as random, but I have experience with those and am
	// very familiar.
// - How can you access and manipulate properties of objects?
	// You can access and manipulate properties of objects by either using dot notation or bracket notation. Each are better in different 
	// situations, depending on the object types and what you're doing. Dot notation and bracket notation allow for you to access and 
	// manipulate properties, but dot notation is also faster to write and clearer to read as well (in my opinion). Bracket notation allows 
	// access to properties containing special characters and selection of properties using variables that can't be used with dot notation.