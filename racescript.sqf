//Now we let Blufor know there's a minute long timer.

if (side player == west) then {

player sideChat "El Presidente is watching the race.";
sleep 5;
player sideChat "2 Minutes Remaining";
sleep 30;
player sideChat "1:30 Remaining";
sleep 30;
player sideChat "1 Minute Remaining";
sleep 30;
player sideChat "30 Seconds Remaining";
sleep 30;
["TaskSucceeded",["","Speech Delivery Successful"]] call BIS_fnc_showNotification;
raceTask setTaskState "Succeeded";

};

if (side player == east) then {

//El Presidente is at the castle! Let OPFOR know.
player sideChat "El Presidente was spotted at the racetrack, but he won't be there long!";
sleep 120;
player sideChat "El Presidente was spotted leaving the racetrack.";

};

//Let's increment our objective counter
if (isServer) then {
  objcount = objcount + 1;
};
