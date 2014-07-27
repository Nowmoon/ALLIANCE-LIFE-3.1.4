/*
	File: fn_copYelp.sqf
	Author: Bryan "Tonic" Boardwine // Edited by Aphec & SaOk
	
	Description:
	Starts the cop yelp sound for other players
*/
private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _vehicle) exitWith {};
if(isNil {_vehicle getVariable "yelp"}) exitWith {};

while {true} do
{
	if(!(_vehicle getVariable "yelp")) exitWith {};
	if(count (crew (_vehicle)) == 0) then {_vehicle setVariable["yelp",false,true]};
	if(!alive _vehicle) exitWith {};
	if(isNull _vehicle) exitWith {};
	_vehicle say3D "Yelp";
	sleep 5,1;
	if(!(_vehicle getVariable "yelp")) exitWith {};
};