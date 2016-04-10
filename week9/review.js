

/*User stories:
- As a user I want to create a new shopping list
- As a user I want to add a new item and its' quantity to the list
- As a user I want to remove an item from the list
- As a user I want to update the quantity of an item in the list
- As a user I want to print the entire list*/


/*
Pseudocode:
- define a function List, create an empty shopping list object
- define a function addItem, take an item and quantity and add them to the shopping list object
- define a function removeItem, take the name of the item and delete it from the shopping list object
- define a function updateItem, take an item and quantity and update the item's quantity in the shopping list object
- define a function printList, display the entire list object
*/

function List() {
  this.shoppingList = {};

   this.add = function(item, quant){
    this.shoppingList[item] = quant;
  }

   this.remove = function(item){
    delete this.shoppingList[item];
  }

   this.update = function(item, quant){
    this.shoppingList[item] = quant;
  }

   this.print = function(list){
  for (i in list) {
    quant = list[i]
    console.log(i + ' -- ' + quant);
    }
  }
}

var newList = new List();
newList.add('brocoli', 5);
newList.add('buns', 10);
newList.add('barbed-wire', 15);
newList.add('bread', 1);
newList.add('bad', 5);
newList.remove('bad');
newList.update('buns', 50);
newList.print(newList.shoppingList);

// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// This mostly solidified working with objects and constructors for me, through I'm feeling myself get better at switching between languages!

// What was the most difficult part of this challenge?
// This ensured that I had a good understanding of constructor functions. The this keyword was really hard for me to throughly understand, but there were more than enough resource online.

// Did an array or object make more sense to use and why?
// I needed to use an object because I had to store more than one varaible each instance.