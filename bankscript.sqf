//Let's introduce a slight delay.

if (side player == west) then {
player sideChat "El Presidente is taking the money!";
};

sleep 20;

//Give El Presidente some money

//And finally tell everyone that this task is done.

if (side player == west) then {

bankTask setTaskState "Succeeded";
["TaskSucceeded",["","Bank Vist Successful"]] call BIS_fnc_showNotification;
"bankmarker" setMarkerColorLocal "ColorGreen";
};

if (side player == east) then {

player sideChat "El Presidente was spotted leaving the bank!";
"bankmarker" setMarkerColorLocal "ColorRed";
};

//Let's increment our objective counter
if (isServer) then {
  objcount = objcount + 1;
};
