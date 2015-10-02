 // JavaScript Olympics

// I paired [with: Irina] on this challenge.

// This challenge took me [#] hours.


// Release 1: Bulk Up

var athletes = [
					ath1 = {name: "Sarah Hughes", event_name: "Ladies Single"},
  	    			ath2 = {name: "Sarah Smith", event_name: "Ladies Doubles"}
				]

// function olympics(athletes) {
// athletes.name = name;
// athletes.event_name = event_name;					// Create a function that takes an array of athletes that INCLUDE an name and event property.
athletes.win = (" won the ");

console.log(ath1.name + athletes.win + ath1.event_name + "!");
console.log(ath2.name + athletes.win + ath2.event_name + "!");
// };

// Release 2: Jumble your words
function reverse(string) {
console.log(string.split('').reverse().join(''));
}
	
////DRIVER CODE
reverse("hey")


// Release 3: 2,4,6,8
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
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Release 5: Reflection
// - What JavaScript knowledge did you solidify in this challenge?
	// ...
// - What are constructor functions?
	// ...
// - How are constructors different from Ruby classes (in your research)?
	// ...