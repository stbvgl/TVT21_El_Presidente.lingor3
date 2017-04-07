//Debug: is this thing on?
//player sideChat "castlescript working!";

//Now we let Blufor know there's a minute long timer.

if (side player == west) then {

player sideChat "El Presidente is visiting the castle.";
sleep 5;
player sideChat "2 Minutes Remaining";
sleep 30;
player sideChat "1:30 Remaining";
sleep 30;
player sideChat "1 Minute Remaining";
sleep 30;
player sideChat "30 Seconds Remaining";
sleep 30;
["TaskSucceeded",["","Landmark Visit Succeeded"]] call BIS_fnc_showNotification;
castleTask setTaskState "Succeeded";
"castlemark" setMarkerColorLocal "ColorGreen";
};

if (side player == east) then {

//El Presidente is at the castle! Let OPFOR know.
player sideChat "El Presidente was spotted at the castle, but he won't be there long!";
sleep 120;
player sideChat "El Presidente was spotted leaving the castle.";
"castlemark" setMarkerColorLocal "ColorRed";
};

//Let's increment our objective counter

if (isServer) then {
  objcount = objcount + 1;
};
