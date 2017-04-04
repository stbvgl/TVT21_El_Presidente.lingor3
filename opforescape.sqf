
if (side player == west) then {

//First: cancel all Blufor objectives/mark as failed
primaryTask setTaskState "Failed";
endTask setTaskState "Failed";
bankTask setTaskState "Failed";
voterTask setTaskState "Failed";
scienceTask setTaskState "Failed";
mistressTask setTaskState "Failed";
castleTask setTaskState "Failed";
manorTask setTaskState "Failed";
raceTask setTaskState "Failed";

//Give Blufor a new objective.
killTask = player createSimpleTask ["Kill The Assassins"];
killTask setSimpleTaskDescription ["El Presidente has been killed! Cut the assassins off at the northern airport and don't let them escape!", "Kill The Assassins", "Kill The Assassins"];
["TaskFailed",["","Protect El Presidente"]] call BIS_fnc_showNotification;
sleep 3;
player sideChat "The assassins are attempting to escape in a plane at the northern airport. Don't let them!";
["TaskCreated",["","Kill The Assassins"]] call BIS_fnc_showNotification;
};

if (side player == east) then {

redTask1 setTaskState "Succeeded";
player sideChat "The dicator is dead! Quick, get to the northern airport and fly east to escape!";
["TaskSucceeded",["","Kill El Presidente"]] call BIS_fnc_showNotification;
sleep 5;
redTask2 setTaskState "Assigned";
["TaskCreated",["","Escape"]] call BIS_fnc_showNotification;

};
