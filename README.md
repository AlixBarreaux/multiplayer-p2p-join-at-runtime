# Multiplayer-P2P-Join-At-Runtime

Demo for creating and joining a Peer to Peer game at runtime. Made with Godot using GDscript. Last update: 06/29/2020



# Introduction

Before you do anything, you should know there are 2 main "parts" in this project:

1) The builds for the end user: Windows, Linux, Mac. We will call it the PLAYABLE VERSION.

2) The source code running in the engine available to you. We will call it the DEVELOPPER VERSION.




# Instructions for the PLAYABLE VERSION

Make sure you read the Introduction chapter before you start.

1) Go into the EXPORT folder.

2) Go to the folder with the name of your operating system (example: You are on Linux, go in the folder 'Multiplayer-P2P-Join-at-Runtime-LINUX')

3) Extract the file wherever you want SO LONG AS the .pck and the executable file are together, otherwise it won't work!

4) Run the executable file

NOTE:
You can run the executable file 2 times to open 2 windows of the game.
That way, you can connect to your local

5) Now please continue reading in this text file at # Creating/Joining Server




# Intructions for the DEVELOPPER VERSION

Make sure you read the Introduction chapter before you start.

1) Download Godot 3.2.2 here: https://github.com/godotengine/godot/releases

You can choose a more recent version but it will be different from the one that was used to build this project, which could lead to incompatibility issues. If you want the last version of Godot anyway, download it here: https://godotengine.org/download

2) In the folder of the project, right click on the file 'project.godot' and execute it with Godot.

3) Press F5 to run an instance of the game.

4) Obvisouly, you want to test the multiplayer feature.
Just keep the Godot editor and the game windows opened and go in the project folder again. Open project.godot as before and press F5 once you are in the editor.
You can now create a server on one instance of the game and then join it with the other instance of the game that you just opened.

NOTE:
This is not very practical as you can see for the moment, but some features may be added in the future to make it easier directly into only one editor.

5) Now please continue reading in this text file at # Creating/Joining Server


# Creating/Joining Server

There are 2 scenarios:

1) You opened 2 instances of the game.
2) You opened 1 instance of the game of several machines

Case 1) -> Use 127.0.0.1 in the IP adress fields for both creating and joining.
Case 2) -> Use the IP adress you want to create the server. Then join it on the other machine by just entering this same IP adress into the join text field.




# Known issues

Entering strings (something else than an IP adress) in the text fields or joining before the server is created will create errors.
It is simply not polished because I just wanted to test how to join a P2P (Peer to Peer) game at runtime, that's it.

I didn't test it over the internet but it should normally work. Trying to join a server hosted through a Proxy/VPN might not work if you try to join the server by entering the Proxy/VPN IP adress, I didn't test it myself though.

There are also some other errors that may occur but don't worry, I will make an authoritative server/client prototype later to fix all of this.
I will also try to implement a LAN discovery feature later so that the user doesn't have to manually type the IP. (and know how to enter the right one)
