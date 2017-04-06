//Let's introduce a slight delay.

if (side player == west) then {
player sideChat "El Presidente is attempting to strike a deal!";
};

sleep 20;

//And finally tell everyone that this task is done.

if (side player == west) then {

manorTask setTaskState "Succeeded";
["TaskSucceeded",["","Property Purchased"]] call BIS_fnc_showNotification;
};

if (side player == east) then {

player sideChat "El Presidente was spotted leaving the manor!";

};

//Let's increment our objective counter

if (isServer) then {
  objcount = objcount + 1;
};
