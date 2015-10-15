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
	// define function that deletes an item/qty pair from the list
	// define function to update an item's quantity to a new amount
    // find the item then update it's qty(loop over list)
	// define function to print grocery list to console pretty


// Release 3: Initial Solution 1: basic ruby solution translated to JS
// var groceryList = []

// function addItem(list, item, qty) {
// 	list[item] = qty;
//   console.log(groceryList)
// }

// function removeItem(list, item) {
//   delete list[item];
//   console.log(groceryList)
// }

// function updateQuantity(list, item, newqty) {
//   list[item] = newqty;
//   console.log(groceryList)
// }

// function printList(list){
//   for (var item in list) {
//   	console.log(item + ", " + list[item]);
//   }
// }

// // DRIVER CODE
// addItem(groceryList, "Onions", 5);
// addItem(groceryList, "Apples", 5);
// addItem(groceryList, "Tomatoes", 5);
// addItem(groceryList, "Pears", 5);
// removeItem(groceryList, "Onions");
// removeItem(groceryList, "Pears");
// updateQuantity(groceryList, "Tomatoes", 8);
// printList(groceryList)


// Release 4: Refactored using constructors/prototypes :)
function groceryList() {
}

groceryList.prototype.addItem = function (list, item, qty) {
  list[item] = qty;
}

groceryList.prototype.removeItem = function (list, item) {
  delete list[item];
}

groceryList.prototype.updateQuantity = function (list, item, newqty) {
  list[item] = newqty;
}

// Driver Code
var newlist = new groceryList();
newlist.addItem(newlist, "Apples", 3)
newlist.addItem(newlist, "Onions", 2)
newlist.addItem(newlist, "Oranges", 4)
newlist.addItem(newlist, "Bananas", 6)
newlist.removeItem(newlist, "Apples")
newlist.updateQuantity(newlist, "Bananas", 5)
console.log(newlist)


// Release 5: Reflect
// - What concepts did you solidify in working on this challenge? 
	// I really enjoyed working on this challenge, I had never used/worked with
  // prototypes this much so it was nice to be able to play around with them
  // to really get a solid understand of their syntax and how they work.
  // For my initial solution I just took my original Ruby solution and literally
  // translated it into JavaScript syntax. I especially love this challenge because
  // it gives you a review of both Ruby and JavaScript by translating the code from
  // one language to the other. It also helped solidify my understanding of taking
  // Ruby syntax and translating it into JS syntax.
// - What was the most difficult part of this challenge?
	// The most difficult part at first was getting the Driver code to work/display
  // my solutions properly, and then figuring out if I could incorporate any of it
  // into the actual function instead of having it in the driver code. Once I was 
  // able to display the output properly, the only parts I struggled with were getting
  // the correct syntax for the refactored solution using prototype, and again figuring
  // out what was needed in the Driver code once I had refactored using prototypes.
// - Did you solve the problem in a new way this time?
	// I didn't want to "bite off more than I could chew" for my initial solution, so I
  // started with as basic of a solution as possible (mvp) which was literally my exact
  // Ruby solution just translated into JavaScript syntax. I wanted to make sure I had
  // complete understanding before moving on to learn something new. Then for my 
  // refactored solution I went and researched prototype syntax and solved it that way
  // as well, which has really improved my understanding of prototypes.
// - Was your pseudocode different from the Ruby version? What was 
// the same and what was different?
	// My pseudocode for this JavaScript challenge was pretty much identical to my 
  // pseudocode in the Ruby challenge. My input was in a different format/type of object
  // than the Ruby challenge, and pretty much the steps of what I needed to do were the
  // same. It was just how I needed to do it and the syntax that was different.