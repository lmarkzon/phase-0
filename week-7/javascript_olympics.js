 // JavaScript Olympics

// I paired [with: Irina] on this challenge.

// This challenge took me [#] hours.


// Release 1: Bulk Up

var athletes = ["Sarah Hughes", "Ladies Single"]

function olympics(athletes) {
	athletes.push("win")
if (athletes.indexOf("win") != -1 ) {
	console.log(athletes[0] + " won the " + athletes[1] + "!");
}
};

olympics(athletes)

// Release 2: Jumble your words
function reverse(string) {
 console.log(string.split('').reverse().join(''));
}

	// Driver Code: 
	var x = reverse("hey")


// // Release 3: 2,4,6,8
function even(array) {
var n = array.filter(function(value){
      if (value % 2 == 0) {
        return value;
      }

  });
console.log(n)
}

	// Driver Code:
	var numbers = [1,4,6,7,8,10]
	var x = even(numbers)


// Release 4: "We built this city"
function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Release 5: Reflection
// - What JavaScript knowledge did you solidify in this challenge?
	// This challenged helped solidify my knowledge of creating new functions and 
	// helping me adjust to JS syntax. It has been quite an adjustment from Ruby
	// getting used to all of the little differences, but this challenge helped
	// solidify this difference a bit. It also helped me get used to the differences
	// between using brackets or dots when calling objects within an array in JS, as 
	// well as working with loops.
// - What are constructor functions?
	// Contructor functions is one of the ways you can create a JS object. 
// - How are constructors different from Ruby classes (in your research)?
	// 