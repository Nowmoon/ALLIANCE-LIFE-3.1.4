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
ctrlSetText[3103,"Marché Noir"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_IG_Guerilla1_1",nil,5000],
			["U_O_Protagonist_VR",nil,50000],
			["U_I_G_Story_Protagonist_F",nil,7500],
			["U_I_G_resistanceLeader_F",nil,11500],
			["U_I_CombatUniform_tshirt",nil,20000],
			["U_O_SpecopsUniform_ocamo",nil,20000],
			["U_O_CombatUniform_oucamo",nil,20000],
			["U_O_PilotCoveralls",nil,15610],
			["U_IG_leader","Guerilla Leader",15340],
			["U_O_GhillieSuit",nil,50000],
			["U_I_GhillieSuit",nil,50000],
			["U_B_GhillieSuit",nil,50000],
			["U_I_Wetsuit",nil,5000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Shemag_khk",nil,850],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,850],
			["H_Cap_tan_specops_US",nil,150],
			["H_Cap_blk_Raven",nil,150],
			["H_MilCap_oucamo",nil,1200],
			["H_MilCap_mcamo",nil,1200],
			["H_MilCap_gry",nil,1200],
			["H_MilCap_rucamo",nil,1200],
			["H_MilCap_ocamo",nil,1200],
			["H_MilCap_dgtl",nil,1200],
			["H_Bandanna_camo",nil,650],
			["H_Bandanna_mcamo",nil,650],
			["H_Watchcap_blk",nil,150],
			["H_Watchcap_camo",nil,150],
			["H_Watchcap_khk",nil,150],
			["H_Watchcap_sgg",nil,150],
			["H_HelmetO_ocamo",nil,10000],
			["H_CrewHelmetHeli_I",nil,10000],
			["H_HelmetLeaderO_ocamo",nil,20000]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Sport_Greenblack",nil,20],
			["G_Sport_Red",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Tactical_Black",nil,350],
			["G_Diving",nil,350],
			["G_Spectacles",nil,350],
			["G_Spectacles_Tinted",nil,350]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_Chestrig_oli",nil,75000],
			["V_TacVestCamo_khk",nil,50000],
			["V_TacVest_khk",nil,12500],
			["V_TacVest_blk",nil,12500],
			["V_TacVest_brn",nil,12500],
			["V_TacVest_camo",nil,12500],
			["V_TacVest_oli",nil,12500],
			["V_HarnessO_gry",nil,7500],
			["V_HarnessO_brn",nil,7500],
			["V_BandollierB_cbr",nil,4500],
			["V_BandollierB_blk",nil,4500],
			["V_BandollierB_khk",nil,4500],
			["V_BandollierB_oli",nil,4500],
			["V_BandollierB_rgr",nil,4500],
			["V_TacVestIR_blk",nil,25000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_OutdoorPack_blk",nil,1500],
			["B_AssaultPack_cbr",nil,2500],
			["B_AssaultPack_dgtl",nil,2500],
			["B_AssaultPack_khk",nil,2500],
			["B_AssaultPack_rgr",nil,2500],
			["B_AssaultPack_sgg",nil,2500],
			["B_AssaultPack_blk",nil,2500],
			["B_AssaultPack_mcamo",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Kitbag_sgg",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_FieldPack_blk",nil,3000],
			["B_FieldPack_cbr",nil,3000],
			["B_FieldPack_oucamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Bergen_mcamo",nil,4500],
			["B_Bergen_rgr",nil,4500],
			["B_Bergen_blk",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000],
			["B_Carryall_cbr",nil,5000],
			["B_Carryall_mcamo",nil,5000],
			["B_Carryall_ocamo",nil,5000],
			["B_Carryall_oucamo",nil,5000],
			["B_HuntingBackpack",nil,5000],
			["B_Parachute",parachoir,10000]
		];
	};
};