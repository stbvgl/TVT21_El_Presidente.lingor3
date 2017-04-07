
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
killTask setSimpleTaskDescription ["El Presidente has been killed! find where their escape helicopter is and don't let them escape!", "Kill The Assassins", "Kill The Assassins"];
["TaskFailed",["","Protect El Presidente"]] call BIS_fnc_showNotification;
sleep 3;
player sideChat "The assassins are attempting to escape in a helicopter. Possible liftoff point are marked in yellow on your map. Kill them before they escape!";
["TaskCreated",["","Kill The Assassins"]] call BIS_fnc_showNotification;
};

if (side player == east) then {

redTask1 setTaskState "Succeeded";
player sideChat "The dicator is dead! Quick, get to the helicopter marked on your map and fly east to escape!";
["TaskSucceeded",["","Kill El Presidente"]] call BIS_fnc_showNotification;
sleep 5;
redTask2 setTaskState "Assigned";
["TaskCreated",["","Escape"]] call BIS_fnc_showNotification;

};

_objMkr = ["bankmarker","racemark","sciencetask","votermarker","manormarker","mistressmarker","castlemark"]
_mkrArray = ["escape_0", "escape_1", "escape_2", "escape_3"];
_escapeMkr =  _mkrArray call BIS_fnc_selectRandom;
_escapePos = getMarkerPos _escapeMkr;
heli setPos _escapePos;


if (side player == east) then {
  _marker = createMarkerLocal ["Escape", _escapePos];
  "Escape" setMarkerColorLocal "ColorRed";
  "Escape" setMarkerTypeLocal "hd_objective";
  "Escape" setMarkerTextLocal "Escape Vehicle";
  "escape_mkr" setMarkerAlphaLocal 1;
};

if (side player == west) then {

{
    _x setMarkerAlphaLocal 1;
} forEach _mkrArray

{
    _x setMarkerAlphaLocal 0.02
} forEach _objMkr;

};
