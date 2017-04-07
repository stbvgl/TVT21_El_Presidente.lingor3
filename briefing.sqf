//////////////////////
//Blufor objectives

if (side player == west) then {

//Diary slash Notes
player createDiaryRecord ["Diary", ["Opposition", "El Presidente is a very wealthy, generous and kind man. Wealthy, generous, kind men have decietful, unhonorable enemies. Escort The People's Magnificant Leader Of The Revolution to all seven locations, and be sure to keep him alive"]];
player createDiaryRecord ["Diary", ["Objective", "El Presidente is a very busy man, and very busy men have very many errands to run. Help Our Glorious General accomplish all seven tasks, and then return here."]];


//Tasks

endTask = player createSimpleTask ["Return to palace"];
endTask setSimpleTaskDescription ["El Presidente will be tired once all of his errands are done. Return to the palace so he can rest.", "Return to palace", "Palace"];

bankTask = player createSimpleTask ["Withdraw money from the bank"];
bankTask setSimpleTaskDescription ["While El Presidente is accomodating and humble, many good socialist workers cannot be paid in political favors.", "Withdraw money from the bank", "Bank"];

voterTask = player createSimpleTask ["Make a speech"];
voterTask setSimpleTaskDescription ["The good, humble people of Lingor are beginning to feel the weight of capitalist oppression on their shoulders. Make a speech to uplift their spirits.", "Make a speech", "Speech"];

scienceTask = player createSimpleTask ["Speak to the scientists"];
sciencetask setSimpleTaskDescription ["Our genius scientists have created a weapon of unparalled power! Speak to them about funding and such.", "Speak to the scientists", "Scientists"];

castleTask = player createSimpleTask ["Admire Landmark"];
castleTask setSimpleTaskDescription ["While still a symbol of capitalist pig-dog oppression, El Presidente (The Popular Intellectual) wisely admires it for its cultural and historical significance.", "Admire Landmark", "Castle"];

manorTask = player createSimpleTask ["Purchase Manor"];
manorTask setSimpleTaskDescription ["El Presidente is a shrewd investor, and believes this beautiful house will make a fine gift for Ms. Rivera. Buy it.", "Purchase Manor", "Manor"];

mistressTask = player createSimpleTask ["Visit El Presidente's Secret Lover"];
mistressTask setSimpleTaskDescription ["The relationship between El Presidente and the Vicor is strictly platonic. El Presidente loves him like his own sister, and would never be unfaithful to Mrs. El Presidente.", "Visit El Presidente's Secret Lover", "Mistress"];

raceTask = player createSimpleTask ["Watch Race"];
raceTask setSimpleTaskDescription ["El Presidente enjoys sports as much as any comrade. Escort him to the racetrack.", "Watch Race", "Racetrack"];

primaryTask = player createSimpleTask ["Protect El Presidente"];
primaryTask setSimpleTaskDescription ["Do not allow El Presidente's cowardly and unsightly enemies to harm a single thick, luxerious hair on his full, perfect scalp.", "Protect El Presidente", "Protect"];


};

///////////////////
//Opfor objectives

if (side player == east) then {

player createDiaryRecord ["Diary", ["Escape", "Our mysterious back has a helicopter for us to escape with. Only once El Presidente is dead will we be told where it is. We are to fly east to freedom."]];
player createDiaryRecord ["Diary", ["Finding El Presidente", "We have a copy of his itinerary, and we know that he will be visiting all seven locations as marked on the map. We just don't know which order he'll visit them in."]];
player createDiaryRecord ["Diary", ["Objective", "You know what? I kind of miss voting. Let's show El Presidente how we feel by voting with our wallets (and buying guns)."]];

redTask2 = player createSimpleTask ["Escape"];
redTask2 setSimpleTaskDescription ["Make your way to the marker, find the helicopter and escape", "Escape", "Escape"];

redTask1 = player createSimpleTask ["Find and kill El Presidente"];
redTask1 setSimpleTaskDescription ["He has HOW many bodyguards?!", "Find and kill El Presidente", "Kill"];

};
