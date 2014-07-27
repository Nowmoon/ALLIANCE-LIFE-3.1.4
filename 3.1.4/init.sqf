enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.3.5";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "Scripts\zlt_fastrope.sqf";
[] execVM "Scripts\Chair\init.sqf";
[] execVM "status.sqf";
[] execVM "hackerSpanker.sqf";
[] execVM "hackerSpanker2.sqf";

StartProgress = true;

onPlayerDisconnected { [_id, _name, _uid] call compile preProcessFileLineNumbers "core\functions\fn_onPlayerDisconnect.sqf" };

[] spawn
{
	sleep 60;
	[] call life_fnc_updateClothing;
};

0 = execVM "IgiLoad\IgiLoadInit.sqf";