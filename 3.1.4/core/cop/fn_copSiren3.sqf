/*
	File: fn_copLock.sqf
*/
private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {};
_distance = player distance _vehicle;
_vehicle say3D "siren3";