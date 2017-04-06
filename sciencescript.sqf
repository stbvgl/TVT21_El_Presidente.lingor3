//Let's introduce a slight delay.

if (side player == west) then {
player sideChat "El Presidente is speaking to the scientists!";
};

sleep 20;

//And finally tell everyone that this task is done.

if (side player == west) then {

scienceTask setTaskState "Succeeded";
["TaskSucceeded",["","Scientist Meeting Successful"]] call BIS_fnc_showNotification;
};

if (side player == east) then {

player sideChat "El Presidente was spotted leaving the research base!";

};

//Let's increment our objective counter

if (isServer) then {
  objcount = objcount + 1;
};
