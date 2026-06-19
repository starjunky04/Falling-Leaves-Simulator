# Forest scene project 3: 


### How it works:
- Press r to restart the simmulation
- hold the mouse button down to add a stronger gust of wind
- when a stronger gust of wind is applied, the animals will move faster with the wind, the leaves will be blown further and the tire swing will also be moved with the wind

### Demonstration


https://git.arts.ac.uk/storage/user/773/files/9c207e21-45e9-49b1-bda4-97d6ddee4c63




### Progress of making it:

- originally made basic layout - had green balls fall/accellerate from top of the screen 

###### PROGRESS:
- drew out the leaves/flower designs i wanted in a pixelArt grid, then coded them
- adjusted the forces quantity
- used sine wave to make aspects like clouds + the falling sprites to bop up and down -> a * sin(b * x) + y
- used lerp colour + update/loadpixels to create a gradient background for the sky
- since i drew 4 different sprites, i generated a random number and set if conditions to choose which version to draw when they spawn in

###### NEXT UP:

- have more leaves fall after they fall to the bottom/offscreen
- finish drawing background - minecraft cherry blossom biome inspiration
- put animals/sprites moving in the background - rabbits, birds/parrots


###### PROGRESS:
- made the leaves rotate using sine - reasoning behind this is because sine is repetative between -1 and +1 so it should invert and rotate in the opposite direction after constant period of time
- added a bounce to the clouds in the background using sine
- if leaves go off screen (x axis) then itll be redrawn at the top of the screen as a new leaf
- if every minute if a leaf is on the ground then itll be removed and redrawn
- added a tireswing to move in the wind when its increased
- want to make it so that if the wind is increased then the tireswing will move and then when its released itll return to the original position
- make it so that the leaves are constantly falling rather than just redrawing them
- started working on this by marking the leaves on the ground as off screen after a minute has passed.


###### NEXT UP:
- make the leaves constantly fall - use array lists

###### PROGRESS:
Added array list so that theyre constantly falling
if a leafs offscreen its removed from the list rather than being redrawn
array will still keep increasing even though theyre being removed so, i want to make it so if a certain amount of leaves are on the ground, then let them fall offscreen and be removed

- done this by making a coutner of how many leaves are on the ground and resetting it to 0 when the leaves are cleared and if they counters at the max then any leaves that fall will just go offscreen
- added a bunny using position vectors to change its location and make it bounce up and down as it moves across the screen, then when it reaches the end of the screen itll return to the beginning and keep hopping from one end to the other.
- finished drawing tree, added some of the flowers to it also so it looked nicer

###### NEXT UP:
add birds

###### PROGRESS:
- added birds
- Made a class for the birds, and used a normal array and added 3 birds of random sizes, bigger birds move slower smaller ones move faster.
