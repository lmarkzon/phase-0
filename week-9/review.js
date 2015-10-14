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


// Release 3: Initial Solution
var groceryList = {}

var addItem = function (item, qty, list) {
	list[item] = qty;
}

var removeItem = function (item, list) {
  delete list[item];
}

var updateQuantity = function (item, qty, list) {
  list[item] = qty;
}

var printList = function (list){
  for (item in list) {
  	console.log(item + ", " + list[item]);
  }
}

// DRIVER CODE
addItem(groceryList, "Lemonade", 1)
addItem(groceryList, "Tomatoes", 2)
addItem(groceryList, "Onions", 3)
addItem(groceryList, "Ice Cream", 4)
printList(groceryList)
console.log(groceryList)
// removeItem(groceryList)

// updateQuantity(groceryList)



// Release 4: Refactor



// Release 5: Reflect
// - What concepts did you solidify in working on this challenge? 
	// ...
// - What was the most difficult part of this challenge?
	// ...
// - Did you solve the problem in a new way this time?
	// ...
// - Was your pseudocode different from the Ruby version? What was the same and what was different?
	// ...