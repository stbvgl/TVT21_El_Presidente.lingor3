
  //start the objective counter
  if (isServer) then {
    objcount = 0;
  };

  //Initialize Briefings
  execVM "briefing.sqf";

null=[] execVM "cos\cosInit.sqf";


if (side player == east) then {
  "opf_start" setMarkerAlphaLocal 1;
};
