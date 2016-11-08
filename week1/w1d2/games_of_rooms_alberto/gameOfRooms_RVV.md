#Game Of Rooms

##Iteration 1 & 2

First of all, we need at least 3 classes: Game, Room and Character

----
Game: Here I make all the logic that evolves the three classes, two or more of them, and also the game loop.
On the initialize we just need to create a new character or player for it. I created a function just for every time I need a new Room, because I don´t know when the player is gonna miss. 

Besides, I made a function to init the game loop, what´s gonna repeat all the process until the player die.
---
---
Room: In this class we need to create the contain of the room, wich I divide on 3 different text: Enter text, success text and fail text. To make it simpler and more automatic, I made a different class called Path to assign it to the current room. To make it even more automatic, the next function choose between 1 to 4 directions, and then get one of that valid directions as the correct direction. This give as also a hint of the correct answer.
---
---
Character: This create a player for the game. Has a name, and a number of lifes that are going to lose every time the user fail choosing the path.

##Iteration 3

Now, we need to add an object to every room, so I made an array of some objects names (Strings), and I´ve chose one randomly to be the room object. Then, I can pick it, or I can select drop to eliminate the first object of my bag.

#ObjectOrientation #GameLogic #Automatize