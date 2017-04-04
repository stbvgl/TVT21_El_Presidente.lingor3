//Let's introduce a slight delay.

if (side player == west) then {
player sideChat "El Presidente is taking the money!";
};

sleep 20;

//Let's increment our objective counter

objcount = objcount + 1;

//Give El Presidente some money

//And finally tell everyone that this task is done.

if (side player == west) then {

bankTask setTaskState "Succeeded";
["TaskSucceeded",["","Bank Vist Successful"]] call BIS_fnc_showNotification;
};

if (side player == east) then {

player sideChat "El Presidente was spotted leaving the bank!";

};
