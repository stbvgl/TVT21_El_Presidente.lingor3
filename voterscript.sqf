//Let's introduce a slight delay.

if (side player == west) then {
player sideChat "El Presidente is making a rousing and inspirational speech!";
};

sleep 20;

//Let's increment our objective counter

objcount = objcount + 1;

//And finally tell everyone that this task is done.

if (side player == west) then {

voterTask setTaskState "Succeeded";
["TaskSucceeded",["","Speech Delivery Successful"]] call BIS_fnc_showNotification;
};

if (side player == east) then {

player sideChat "El Presidente was spotted leaving the shanty town!";

};
