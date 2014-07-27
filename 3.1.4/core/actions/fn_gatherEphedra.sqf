/*
	File: fn_gatherephedra.sqf
	
	Description:
	Rémasser de l'Ephedrine
*/
private["_sum"];
_sum = ["ephedra",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	titleText["Recolte de l'ephedrine...","PLAIN"];
	titleFadeOut 5;
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 3;
	if(([true,"ephedra",3] call life_fnc_handleInv)) then
	{
		titleText["Vous venez de ramasser de l'ephedrine.","PLAIN"];
	};
};

life_action_inUse = false;