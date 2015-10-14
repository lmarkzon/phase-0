// Release 1: User Stories  
  // User has a grocery list
  // User adds an item with a quantity to the list
  // User removes an item from the list
  // User updates quantities for items in your list
  // User is able to print the list (pretty)

// Release 2: Pseudocode
// Input: Empty object that represents the grocery list
// Output: printed list updated if applicable
// Steps: 
	// create empty new grocery list
	// define function that adds item/qty to the list
	// define function that deletes an item/qty from the list
	// define function to loop over list
		// find the item then update it's qty
	// define function to print grocery list to console


// Release 3: Initial Solution 1: basic ruby solution translated to JS, doesn't work right
// var groceryList = {}

// var addItem = function (item, qty, list) {
// 	list[item] = qty;
// }

// var removeItem = function (item, list) {
//   delete list[item];
// }

// var updateQuantity = function (item, qty, list) {
//   list[item] = qty;
// }

// var printList = function (list){
//   for (item in list) {
//   	console.log(item + ", " + list[item]);
//   }
// }

// // DRIVER CODE
// addItem(groceryList, "Onions", 3)
// printList(groceryList)
// console.log(groceryList)
// removeItem(groceryList)
// updateQuantity(groceryList)

// Initial Solution 2: 
var groceryList = [];

function addItem(item){
    groceryList.push(item);
}

function removeItem(item){
    for (var i = 0; i <= groceryList.length; i++){
        if (groceryList[i] === item) groceryList.splice(i, 1);
    }
}

function printList(){
    for (var i = 0; i < groceryList.length; i++){
        if (groceryList.length == 0)
        return;
        else
        console.log("- " + groceryList[i]);
    	}
	}
}

printList();
addItem('Onions');



// Release 4: Refactored using constructors/prototypes :)
// function GroceryList() {
// }

// GroceryList.prototype.addItem = function addItem(list, item, qty) {
//   list[item] = qty;
// }

// GroceryList.prototype.removeItem = function removeItem(list, item) {
//   delete list[item];
// }

// GroceryList.prototype.updateQuantity = function updateQuantity(list, item, quantity) {
//   list[item] = quantity;
// }


// function newList() {
//   this.addItem = function(list, item, qty) {
//     list[item] = qty;
//   }

//   this.removeItem = function(list, item) {
//     delete list[item];
//   }

//   this.updateQuantity = function(list, item, quantity) {
//     list[item] = quantity;
//   }
// }

// // DRIVER CODE
// var newList = new GroceryList();
// newList.addItem(newList, "Apples", 1)
// console.log(newList)



// Release 5: Reflect
// - What concepts did you solidify in working on this challenge? 
	// I really enjoyed this challenge, I had never worked with 
// - What was the most difficult part of this challenge?
	// ...
// - Did you solve the problem in a new way this time?
	// ...
// - Was your pseudocode different from the Ruby version? What was the same and what was different?
	// ...