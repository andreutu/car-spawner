# Information

A basic and simple FiveM car spawner that works with a command.

Usage: `/spawnveh <modelname>` <br>

Features:
- No framework required.
- No restrictions - everyone in the server can spawn **ANY** vehicle.
- Player is put in the driver seat when the vehicle is spawned.
- When spawned, the car will be heading towards the direction the player was looking at before executing the command.

# Installation

1. Extract the folder from the downloaded **".zip"** file and put it into your resources folder.
2. [OPTIONAL] Rename the folder however you like.
3. [OPTIONAL] Delete the "README.md" and "LICENSE" files as these are not needed.
4. Put the following line in your **"server.cfg"** file:
``` 
ensure car-spawner-main
```
NOTE: If you renamed the folder at step 2, you would have to change **"car-spawner-main"** with the name you assigned.
