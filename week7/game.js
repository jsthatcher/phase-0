 // Design Basic Game Solo Challenge

// This is a solo challenge
// In the future there will be customers ordering things, and money exchanged, but for now:
// Your mission description: All your food is expired! Empty the pantry before the health inspector comes.
// Overall mission: Empty the Pantry
// Goals: Make your favorite breakfast dishes
// Characters: Cook Carl
// Objects: Pantry, Table
// Functions: Make(all storts of foods), checkPantry, checkTable

// Pseudocode

/*

MAKE(food)
IF food is eggs
	decrement egg value in pantry
	increment egg in table

IF food is panckes
	decrement milk, flour,eggs,secret ingredients in pantry
	increment
....
check if pantry empty


CHECKTABLE
move through each element of table
	IF the value of the element is > 0
		THEN print element and value




CHECK PANTRY
Move through each element in the pantry
Sum all of the values
IF the sum is 0
	THEN return END OF GAME
END



// Initial Code
pantry = {
	eggs: 9,
	milk: 4,
	flour: 3,
	secrets: 2,
	love:3,
	bacon:1,
	veggies:3,
}

table = {
	eggs: 0,
	pancakes:0,
	omelette:0,
	bacon:0,
	keesh:0,
	crepes:0,
	muffins:0
}

function make(food){
	if (food == 'eggs') {
		pantry.eggs -= 1
		table.eggs += 1
	}
	else if (food == 'pancakes') {
		pantry.eggs -= 2
		pantry.milk -= 1
		pantry.flour -= 1
		pantry.secrets -= 1
		table.pancakes += 1
	}
	else if (food == 'omelette') {
		pantry.eggs -= 2
		pantry.veggies -= 2
		pantry.love -= 2
		table.omelette += 1
	}
	else if (food == 'bacon') {
		pantry.bacon -= 1
		table.bacon += 1
	}
	else if (food == 'keesh') {
		pantry.eggs -= 2
		pantry.milk -= 1
		pantry.flour -= 1
		pantry.secrets -= 1
		table.keesh += 1
	}
	else if (food == 'crepes') {
		pantry.milk -= 1
		pantry.eggs -= 1
		pantry.flour -= 1
		pantry.love -= 1
		pantry.veggies -= 1
		table.crepes += 1
	}
	else if (food == 'muffins') {
		pantry.milk -= 1
		pantry.eggs -= 1
		table.muffins += 1
	}
	checkPantry();
};

function checkPantry(){
	var sum = 0;
	for (property in pantry) {
		sum = sum + pantry[property]
	}
	if (sum == 0)
	console.log("The pantry is empty. Good Job!");
	console.log("You've made the following:");
	console.log(table);
}


make('eggs');
make('pancakes');
make('omelette');
make('bacon');
make('keesh');
make('crepes');
make('muffins');

*/

// Refactored Code
 
pantry = {
	eggs: 9,
	milk: 4,
	flour: 3,
	secrets: 2,
	love:3,
	bacon:1,
	veggies:3,
}

table = {
	eggs: 0,
	pancakes:0,
	omelette:0,
	bacon:0,
	keesh:0,
	crepes:0,
	muffins:0
}

function make(food){
	switch (food){


		case 'eggs':
			pantry.eggs -= 1;
			table.eggs += 1;
			break;
		
		case 'pancakes': 
			pantry.eggs -= 2
			pantry.milk -= 1
			pantry.flour -= 1
			pantry.secrets -= 1
			table.pancakes += 1
			break;			
		
		case 'omelette':
			pantry.eggs -= 2
			pantry.veggies -= 2
			pantry.love -= 2
			table.omelette += 1
			break;
		
		case 'bacon':
			pantry.bacon -= 1
			table.bacon += 1
			break;
		
		case 'keesh':
			pantry.eggs -= 2
			pantry.milk -= 1
			pantry.flour -= 1
			pantry.secrets -= 1
			table.keesh += 1
			break;

		case 'crepes':
			pantry.milk -= 1
			pantry.eggs -= 1
			pantry.flour -= 1
			pantry.love -= 1
			pantry.veggies -= 1
			table.crepes += 1
			break;
		
		case 'muffins':
			pantry.milk -= 1
			pantry.eggs -= 1
			table.muffins += 1
			break;
	}
	checkPantry();
};

function checkPantry(){
	var sum = 0;
	for (property in pantry) {
		sum = sum + pantry[property]
	}
	if (sum == 0)
	console.log("The pantry is empty. Good Job!");
	console.log("You've made the following:");
	console.log(table);
}


make('eggs');
make('pancakes');
make('omelette');
make('bacon');
make('keesh');
make('crepes');
make('muffins');

/*
Reflection:
What was the most difficult part of this challenge?
This was very open ended compared to otehr challenges that we do, so comming up with an actaully idea, and design was new to me in the context.

What did you learn about creating objects and functions that interact with one another?
This solifified  the syntax in my head. Because my objects had so many properties there was alot fo manual typing, which has gotten me used to javascript syntax.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
I was able to use a case statement in my refactored version. This replaced my long if and else statement and made it much more readable. Case statements allows you to define the varaible you will be testing so you don't have to call it for each test.

How can you access and manipulate properties of objects?
You can interate through them (using and for/in loop) and check their proportites to see if it's the one you need.
