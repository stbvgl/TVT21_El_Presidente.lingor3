//Let's introduce a slight delay.

if (side player == west) then {
player sideChat "El Presidente is talking to his Secret Lover.";
};

sleep 15;

//Let's increment our objective counter
objcount = objcount + 1;

//Give El Presidente some pictures

//And finally tell everyone that this task is done.

if (side player == west) then {

mistressTask setTaskState "Succeeded";
["TaskSucceeded",["","Secret Lover visit successful"]] call BIS_fnc_showNotification;

};


if (side player == east) then {

player sideChat "El Presidente was spotted leaving his Secret Lover's home!";

};
