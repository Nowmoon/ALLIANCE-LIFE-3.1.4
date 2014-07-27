#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if(!(str(player) in ["cop_1","cop_2","cop_3","cop_4"])) then {
	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};


player setVariable["rank",(__GETC__(life_coplevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_Rangemaster"};
		player setObjectTextureGlobal [0,"Textures\gendarmerie_uniform_base.jpg"];
		waitUntil {uniform player != "U_Rangemaster"};
	};
};
[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_BG_Guerilla2_1"};
		player setObjectTextureGlobal [0,"Textures\Policier2.jpg"];
		waitUntil {uniform player != "U_BG_Guerilla2_1"};
	};
};
[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_BG_Guerilla3_1"};
		player setObjectTextureGlobal [0,"Textures\Detective.jpg"];
		waitUntil {uniform player != "U_BG_Guerilla3_1"};
	};
};
[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_B_CombatUniform_mcam"};
		player setObjectTextureGlobal [0,"Textures\Policier4.jpg"];
		waitUntil {uniform player != "U_B_CombatUniform_mcam"};
	};
};
[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_I_G_resistanceLeader_F"};
		player setObjectTextureGlobal [0,"Textures\Policier5.jpg"];
		waitUntil {uniform player != "U_I_G_resistanceLeader_F"};
	};
};
[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_B_CTRG_3"};
		player setObjectTextureGlobal [0,"Textures\Policier6.jpg"];
		waitUntil {uniform player != "U_B_CTRG_3"};
	};
};
[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_I_CombatUniform"};
		player setObjectTextureGlobal [0,"Textures\Policier3.jpg"];
		waitUntil {uniform player != "U_I_CombatUniform"};
	};
};