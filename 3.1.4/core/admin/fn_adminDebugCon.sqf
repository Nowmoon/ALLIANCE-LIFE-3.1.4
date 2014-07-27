#include <macro.h>
/*
	File: fn_adminDebugCon.sqf
	Author: ColinM9991
	
	Description:
	Opens the Debug Console.
*/
if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0; hint "";};

createDialog "RscDisplayDebugPublic";
[[0,format["",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; //Alert so players can report possible abuse