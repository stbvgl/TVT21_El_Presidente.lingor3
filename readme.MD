v1 - First port to A3

ToDo:
- disable damage on objective people
- reduce minimum objectives to 5 (OR: see ideas discussion below)
- randomise OPFOR escape routes
- Reduce explosives and weapons for OPFOR
- Tell OPFOR where they start
- Fix President dead & OPFOR dead end condition


Ideas discussion:

Sniper Party
```Make it so he has to do all objectives
But the objective is immediately done if president-side units are in the area AND enemies are in the area
So if the president team goes "yeah this area def has enemies in it waiting to ambush" you can skip
But it's conditional on there actually being enemies there
So you can't just skip a couple and then go
have an objectivesDone array
Which contains string IDs of all the objectives that have been done
And count objectivesDone is the one that you check when you decide whether enough have been done
2 triggers per objective
One of the classic ones. El Presidente in objective area for some time
One of the new ones: "{ side _x == west && alive _x } count thisList > 0 && { side _x == east && alive _x } count thisList > 0" condition
Maybe a larger area
Both have objectivesDone pushBackUnique "objectiveID" in them
So if both get completed it doesn't add 2 elements to the completed missions array```
