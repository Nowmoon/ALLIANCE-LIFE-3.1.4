#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Magasin Police"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if(__GETC__(life_coplevel) == 1) then
		{
			_ret set[count _ret,["U_Rangemaster","Gendarmerie",0]];
		};
		
		if(__GETC__(life_coplevel) == 2) then
		{
			_ret set[count _ret,["U_Rangemaster","Gendarmerie",0]];
			_ret set[count _ret,["U_BG_Guerilla2_1","GendarmerieBlack",50]];
		};
		
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret set[count _ret,["U_Rangemaster","Gendarmerie",0]];
			_ret set[count _ret,["U_BG_Guerilla2_1","GendarmerieBlack",2500]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_tshirt",nil,350]];
			_ret set[count _ret,["U_B_survival_uniform",nil,1250]];
		};
		
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret set[count _ret,["U_Rangemaster","Gendarmerie",0]];
			_ret set[count _ret,["U_BG_Guerilla2_1","GendarmerieBlack",2500]];
			_ret set[count _ret,["U_BG_Guerilla3_1","Detective",2500]];
			_ret set[count _ret,["U_B_CombatUniform_mcam","TenueGrader1",2500]];
			_ret set[count _ret,["U_I_G_resistanceLeader_F","TenuEte",2500]];
			_ret set[count _ret,["U_I_CombatUniform",nil,2500]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_worn",nil,550]];
			_ret set[count _ret,["U_B_Wetsuit",nil,3000]];
			_ret set[count _ret,["U_I_GhillieSuit",nil,5000]];
		};
		
		if(__GETC__(life_coplevel) == 5) then
		{
			_ret set[count _ret,["U_Rangemaster","Gendarmerie",0]];
			_ret set[count _ret,["U_BG_Guerilla2_1","GendarmerieBlack",2500]];
			_ret set[count _ret,["U_BG_Guerilla3_1","Detective",2500]];
			_ret set[count _ret,["U_B_CombatUniform_mcam","TenueGrader1",2500]];
			_ret set[count _ret,["U_I_G_resistanceLeader_F","TenuEte",2500]];
			_ret set[count _ret,["U_I_CombatUniform",nil,2500]];
			_ret set[count _ret,["U_B_survival_uniform",nil,1250]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_worn",nil,550]];
			_ret set[count _ret,["U_B_Wetsuit",nil,3000]];
			_ret set[count _ret,["U_B_GhillieSuit",nil,5000]];
		};
		
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret set[count _ret,["U_Rangemaster","Gendarmerie",0]];
			_ret set[count _ret,["U_BG_Guerilla2_1","GendarmerieBlack",2500]];
			_ret set[count _ret,["U_BG_Guerilla3_1","Detective",2500]];
			_ret set[count _ret,["U_B_CombatUniform_mcam","TenueGrader1",2500]];
			_ret set[count _ret,["U_I_G_resistanceLeader_F","TenuEte",2500]];
			_ret set[count _ret,["U_B_CTRG_3",nil,2500]];
			_ret set[count _ret,["U_I_CombatUniform",nil,2500]];
			_ret set[count _ret,["U_B_survival_uniform",nil,1250]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_worn",nil,550]];
			_ret set[count _ret,["U_B_Wetsuit",nil,3000]];
		};
		
		if(__GETC__(life_coplevel) == 7) then
		{
			_ret set[count _ret,["U_Rangemaster","Gendarmerie",0]];
			_ret set[count _ret,["U_BG_Guerilla2_1","GendarmerieBlack",2500]];
			_ret set[count _ret,["U_BG_Guerilla3_1","Detective",2500]];
			_ret set[count _ret,["U_B_CombatUniform_mcam","TenueGrader1",2500]];
			_ret set[count _ret,["U_I_G_resistanceLeader_F","TenuEte",2500]];
			_ret set[count _ret,["U_B_CTRG_3","TenueGrader2",2500]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_tshirt","Militaire",350]];
			_ret set[count _ret,["U_B_survival_uniform","Militaire",1250]];
			_ret set[count _ret,["U_B_Wetsuit","Conbinaison",3000]];
			_ret set[count _ret,["U_B_GhillieSuit","Sniper",5000]];
			_ret set[count _ret,["U_B_PilotCoveralls","General",1000]];
		};
		
		if(__GETC__(life_coplevel) > 8) then
		{
			_ret set[count _ret,["U_Rangemaster","Gendarmerie",0]];
			_ret set[count _ret,["U_BG_Guerilla2_1","Gendarmerie 1",2500]];
			_ret set[count _ret,["U_BG_Guerilla3_1","Detective",2500]];
			_ret set[count _ret,["U_B_CombatUniform_mcam","TenueGrader1",2500]];
			_ret set[count _ret,["U_I_G_resistanceLeader_F","TenuEte",2500]];
			_ret set[count _ret,["U_B_CTRG_3","TenueGrader2",2500]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_tshirt","Militaire",350]];
			_ret set[count _ret,["U_B_survival_uniform","Militaire",1250]];
			_ret set[count _ret,["U_B_Wetsuit","Conbinaison",3000]];
			_ret set[count _ret,["U_B_GhillieSuit","Sniper",5000]];
			_ret set[count _ret,["U_B_PilotCoveralls","General",1000]];
			
		};
		
		if(__GETC__(life_coplevel) > 9) then
		{
			_ret set[count _ret,["U_Rangemaster","Gendarmerie",0]];
			_ret set[count _ret,["U_BG_Guerilla2_1","Gendarmerie 1",2500]];
			_ret set[count _ret,["U_BG_Guerilla3_1","Detective",2500]];
			_ret set[count _ret,["U_B_CombatUniform_mcam","TenueGrader1",2500]];
			_ret set[count _ret,["U_I_G_resistanceLeader_F","TenuEte",2500]];
			_ret set[count _ret,["U_B_CTRG_3","TenueGrader2",2500]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_tshirt","Militaire",350]];
			_ret set[count _ret,["U_B_survival_uniform","Militaire",1250]];
			_ret set[count _ret,["U_B_Wetsuit","Conbinaison",3000]];
			_ret set[count _ret,["U_B_GhillieSuit","Sniper",5000]];
			_ret set[count _ret,["U_B_PilotCoveralls","General",1000]];
			
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) == 1) then
		{
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
			_ret set[count _ret,["H_Cap_blu",nil,120]];
		};
		
		if(__GETC__(life_coplevel) == 2) then
		{
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
			_ret set[count _ret,["H_PilotHelmetFighter_B",nil,1000]];
			_ret set[count _ret,["H_HelmetB_camo",nil,1000]];
			_ret set[count _ret,["H_HelmetB_light",nil,1000]];
			_ret set[count _ret,["H_Cap_blu",nil,120]];
		};
		
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,1000]];
			_ret set[count _ret,["H_Beret_Colonel",nil,1000]];
			_ret set[count _ret,["H_PilotHelmetFighter_B",nil,1000]];
			_ret set[count _ret,["H_HelmetB_camo",nil,1000]];
			_ret set[count _ret,["H_HelmetB_light",nil,1000]];
			_ret set[count _ret,["H_Cap_blu",nil,120]];
		};
		
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,1000]];
			_ret set[count _ret,["H_Beret_Colonel",nil,1000]];
			_ret set[count _ret,["H_PilotHelmetFighter_B",nil,1000]];
			_ret set[count _ret,["H_HelmetB_camo",nil,1000]];
			_ret set[count _ret,["H_HelmetB_light",nil,1000]];
			_ret set[count _ret,["H_Cap_headphones",nil,1000]];
			_ret set[count _ret,["H_Cap_blu",nil,120]];
		};
		
		if(__GETC__(life_coplevel) == 5) then
		{
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,1000]];
			_ret set[count _ret,["H_Beret_Colonel",nil,1000]];
			_ret set[count _ret,["H_PilotHelmetFighter_B",nil,1000]];
			_ret set[count _ret,["H_HelmetB_camo",nil,1000]];
			_ret set[count _ret,["H_HelmetB_light",nil,1000]];
			_ret set[count _ret,["H_HelmetIA_camo",nil,1000]];
			_ret set[count _ret,["H_Cap_headphones",nil,1000]];
			_ret set[count _ret,["H_Cap_blu",nil,120]];
		};
		
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,1000]];
			_ret set[count _ret,["H_Beret_Colonel",nil,1000]];
			_ret set[count _ret,["H_PilotHelmetFighter_B",nil,1000]];
			_ret set[count _ret,["H_HelmetB_camo",nil,1000]];
			_ret set[count _ret,["H_HelmetB_light",nil,1000]];
			_ret set[count _ret,["H_Watchcap_blk",nil,1000]];
			_ret set[count _ret,["H_HelmetIA_camo",nil,1000]];
			_ret set[count _ret,["H_Cap_headphones",nil,1000]];
			_ret set[count _ret,["H_Cap_blu",nil,120]];
		};
		
		if(__GETC__(life_coplevel) == 7) then
		{
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,1000]];
			_ret set[count _ret,["H_Beret_Colonel",nil,1000]];
			_ret set[count _ret,["H_PilotHelmetFighter_B",nil,1000]];
			_ret set[count _ret,["H_HelmetB_camo",nil,1000]];
			_ret set[count _ret,["H_HelmetB_light",nil,1000]];
			_ret set[count _ret,["H_Watchcap_blk",nil,1000]];
			_ret set[count _ret,["H_HelmetIA_camo",nil,1000]];
			_ret set[count _ret,["H_HelmetCrew_I",nil,1000]];
			_ret set[count _ret,["H_Cap_headphones",nil,1000]];
			_ret set[count _ret,["H_BandMask_reaper",nil,75]];
			_ret set[count _ret,["H_Cap_blu",nil,120]];
		};
		
		if(__GETC__(life_coplevel) > 7) then
		{
			_ret set[count _ret,["H_BandMask_reaper",nil,75]];
			_ret set[count _ret,["H_Watchcap_camo",nil,120]];
			_ret set[count _ret,["H_Bandanna_gry",nil,120]];
		};
	};
	
	//Glasses
	case 2:
	{
		if(__GETC__(life_coplevel) < 8) then
		{
			_ret set[count _ret,["G_Shades_Black",nil,25]];
			_ret set[count _ret,["G_Shades_Blue",nil,20]];
			_ret set[count _ret,["G_Sport_Blackred",nil,20]];
			_ret set[count _ret,["G_Sport_Checkered",nil,20]];
			_ret set[count _ret,["G_Sport_Blackyellow",nil,20]];
			_ret set[count _ret,["G_Sport_BlackWhite",nil,20]];
			_ret set[count _ret,["G_Aviator",nil,75]];
			_ret set[count _ret,["G_Squares",nil,10]];
			_ret set[count _ret,["G_Lowprofile",nil,30]];
			_ret set[count _ret,["G_Combat",nil,55]];
			_ret set[count _ret,["G_Diving",nil,500]];
		};
		
		if(__GETC__(life_coplevel) > 7) then
		{
			_ret set[count _ret,["G_Shades_Black",nil,25]];
			_ret set[count _ret,["G_Shades_Blue",nil,20]];
			_ret set[count _ret,["G_Sport_Blackred",nil,20]];
			_ret set[count _ret,["G_Sport_Checkered",nil,20]];
			_ret set[count _ret,["G_Sport_Blackyellow",nil,20]];
			_ret set[count _ret,["G_Sport_BlackWhite",nil,20]];
			_ret set[count _ret,["G_Squares",nil,10]];
			_ret set[count _ret,["G_Lowprofile",nil,30]];
			_ret set[count _ret,["G_Combat",nil,55]];
		};
	};
	
	//Vest
	case 3:
	{
		if(__GETC__(life_coplevel) == 1 ) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
		};
		
		if(__GETC__(life_coplevel) == 2) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
			_ret set[count _ret,["V_PlateCarrier2_rgr",nil,1500]];
		};
		
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
			_ret set[count _ret,["V_PlateCarrier2_rgr",nil,1500]];
			_ret set[count _ret,["V_TacVestIR_blk",nil,1500]];
			_ret set[count _ret,["V_TacVest_blk_POLICE",nil,1500]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,1500]];
			_ret set[count _ret,["V_RebreatherB",nil,2500]];
			_ret set[count _ret,["V_HarnessOGL_brn","Boum",50000]];
		};
		
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
			_ret set[count _ret,["V_PlateCarrier2_rgr",nil,1500]];
			_ret set[count _ret,["V_TacVestIR_blk",nil,1500]];
			_ret set[count _ret,["V_TacVest_blk_POLICE",nil,1500]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,1500]];
			_ret set[count _ret,["V_RebreatherB",nil,2500]];
			_ret set[count _ret,["V_HarnessOGL_brn","Boum",50000]];
		};
		
		if(__GETC__(life_coplevel) == 5) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
			_ret set[count _ret,["V_PlateCarrier2_rgr",nil,1500]];
			_ret set[count _ret,["V_TacVestIR_blk",nil,1500]];
			_ret set[count _ret,["V_TacVest_blk_POLICE",nil,1500]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,1500]];
			_ret set[count _ret,["V_RebreatherB",nil,2500]];
			_ret set[count _ret,["V_HarnessOGL_brn","Boum",50000]];
		};
		
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
			_ret set[count _ret,["V_PlateCarrier2_rgr",nil,1500]];
			_ret set[count _ret,["V_TacVestIR_blk",nil,1500]];
			_ret set[count _ret,["V_TacVest_blk_POLICE",nil,1500]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,1500]];
			_ret set[count _ret,["V_RebreatherB",nil,2500]];
			_ret set[count _ret,["V_HarnessOGL_brn","Boum",50000]];
		};
		
		if(__GETC__(life_coplevel) == 7) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
			_ret set[count _ret,["V_PlateCarrier2_rgr",nil,1500]];
			_ret set[count _ret,["V_TacVestIR_blk",nil,1500]];
			_ret set[count _ret,["V_TacVest_blk_POLICE",nil,1500]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,1500]];
			_ret set[count _ret,["V_RebreatherB",nil,2500]];
			_ret set[count _ret,["V_HarnessOGL_brn","Boum",50000]];
		};
		
		if(__GETC__(life_coplevel) > 7) then
		{
			_ret set[count _ret,["V_PlateCarrier1_rgr",nil,800]];
		};
		
		if(__GETC__(life_coplevel) > 8) then
		{
			_ret set[count _ret,["V_TacVest_blk",nil,1500]];
		};
	};
	
	//Backpacks
	case 4:
	{
		if(__GETC__(life_coplevel) < 8) then
		{
			_ret set[count _ret,["B_Kitbag_cbr",nil,800]];
			_ret set[count _ret,["B_OutdoorPack_blk",nil,800]];
			_ret set[count _ret,["B_FieldPack_cbr",nil,500]];
			_ret set[count _ret,["B_UAV_01_backpack_F",nil,500]];
			_ret set[count _ret,["B_AssaultPack_cbr",nil,700]];
			_ret set[count _ret,["B_Bergen_sgg",nil,2500]];
			_ret set[count _ret,["NonSteerable_Parachute_F ","Parachoir",2500]];
			_ret set[count _ret,["B_Parachute","Chinois",2500]];
			_ret set[count _ret,["B_Carryall_cbr",nil,3500]];
		};
		
		if(__GETC__(life_coplevel) > 7) then
		{
			_ret set[count _ret,["B_Carryall_cbr",nil,3500]];
			_ret set[count _ret,["B_Kitbag_cbr",nil,800]];
			_ret set[count _ret,["B_FieldPack_cbr",nil,500]];
			_ret set[count _ret,["B_AssaultPack_cbr",nil,700]];
			_ret set[count _ret,["B_Bergen_sgg",nil,2500]];
		};
	};
};

_ret;