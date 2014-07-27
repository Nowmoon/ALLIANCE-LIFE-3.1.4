#include <macro.h>
/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Magasin Mercenaire"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret =
		[
			["U_B_CombatUniform_mcam",nil,10000],
			["U_B_survival_uniform",nil,15000]
		];
	};
	
	//Hats
	case 1:
	{
		_ret =
		[
			["H_BandMask_reaper",nil,1000],
			["H_Watchcap_camo",nil,1500]
		];
	};
	
	//Glasses
	case 2:
	{
		_ret =
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		_ret =
		[
			["V_PlateCarrier1_rgr",nil,15000],
			["V_TacVest_blk",nil,20000]
		];
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_mcamo",nil,1250],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,5000]
		];
	};
};