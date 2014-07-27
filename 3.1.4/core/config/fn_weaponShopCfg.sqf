#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Armurerie Recrue",
					[
						["arifle_sdar_F","Taser Rifle",20000],
						["SMG_02_ACO_F",nil,30000],
						["30Rnd_9x21_Mag",nil,250],
						["hgun_P07_snds_F","Tazer",2000],
						["16Rnd_9x21_Mag","Munitions Tazer",50],
						["hgun_P07_F",nil,7500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["Laserdesignator",nil,1000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_Pistol_Signal_F",0],
						["6Rnd_GreenSignal_F",0],
						["6Rnd_RedSignal_F",0],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Tu ne fait pas parti du Smur"};
			default {
				["Centre Médical",
					[
						["U_Rangemaster","Tenue de patrouille",30],
						["U_I_HeliPilotCoveralls","Tenue D'urgence",120],
						["hgun_P07_snds_F","Légitime défense",2370],
						["hgun_Pistol_heavy_01_MRD_F","Intervention a risque",4900],
						["16Rnd_9x21_Mag","Munitions P07",55],
						["11Rnd_45ACP_Mag","Munitions 4Five",255],
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,15],
						["Medikit",nil,50],
						["NVGoggles",nil,1200]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
				["Armurerie brigadier",
					[
						["arifle_MXC_Black_F",nil,35000],
						["SMG_02_ACO_F",nil,30000],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["Laserdesignator",nil,1000],
						["30Rnd_65x39_caseless_mag",nil,130],
						["30Rnd_9x21_Mag",nil,250]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant rank!"};
			default
			{
				["Armurerie Sergent",
					[
						["SMG_02_ACO_F",nil,15000],
						["hgun_ACPC2_F",nil,17500],
						["arifle_MXC_Black_F",nil,35000],
						["arifle_MX_Black_F",nil,35000],
						["optic_Arco",nil,2500],
						["optic_SOS",nil,1000],
						["optic_MRCO",nil,2500],
						["optic_NVS",nil,2500],
						["optic_DMS",nil,2500],
						["optic_Hamr",nil,7500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_9x21_Mag",nil,60],
						["9Rnd_45ACP_Mag",nil,200]
					]
				];
			};
		};
	};
	
	case "cop_capitaine":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas policier!"};
			case (__GETC__(life_coplevel) < 4): {"Vous n'êtes pas capitaine!"};
			default
			{
				["Magasin Capitaine",
					[
						["SMG_02_ACO_F",nil,15000],
						["hgun_ACPC2_F",nil,17500],
						["arifle_MXC_Black_F",nil,35000],
						["arifle_MX_Black_F",nil,35000],
						["arifle_MXM_Black_F",nil,5000],
						["arifle_MX_GL_Black_F",nil,15000],
						["arifle_MX_SW_Black_F",nil,7500],
						["100Rnd_65x39_caseless_mag_Tracer",nil,10000],
						["srifle_LRR_SOS_F",nil,30000],
						["7Rnd_408_Mag",nil,1000],
						["srifle_GM6_LRPS_F","Netus",35000],
						["5Rnd_127x108_Mag","Munitions Netus",1000],
						["LMG_Mk200_F","SULFATEUSE",15000],
						["200Rnd_65x39_cased_Box_Tracer","PASTABOX",1000],
						["DemoCharge_Remote_Mag","Ifrit",0],
						["optic_Arco",nil,2500],
						["optic_SOS",nil,1000],
						["optic_MRCO",nil,2500],
						["optic_NVS",nil,2500],
						["optic_DMS",nil,2500],
						["optic_Hamr",nil,7500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_9x21_Mag",nil,60],
						["MiniGrenade","Flash",1000],
						["Laserdesignator",nil,1000],
						["B_UavTerminal",nil,1000],
						["9Rnd_45ACP_Mag",nil,200],
						["FakeWeapon",nil,0],
						["FakeWeapon","Grenades",0],
						["FakeWeapon",nil,0],
						["SmokeShell",nil,2500],
						["SmokeShellYellow",nil,2500],
						["SmokeShellGreen",nil,2500]
					]
				];
			};
		};
	};
	
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"Vous n'avez pas la license rebelle!"};
			default
			{
				["Marché Noir",
					[
						["hgun_Pistol_heavy_02_F",nil,15000],
						["arifle_SDAR_F",nil,30000],
						["SMG_01_F",nil,30000],
						["arifle_TRG20_F",nil,49000],
						["arifle_Mk20C_F",nil,70000],
						["arifle_Katiba_F",nil,95000],
						["srifle_EBR_F",nil,180000],
						["srifle_DMR_01_F",nil,190000],
						["LMG_Zafir_F",nil,800000],
						["srifle_GM6_LRPS_F",nil,1100000],
						["muzzle_snds_B",Silence,5000],
						["muzzle_snds_acp",Silence,5000],
						["muzzle_snds_H",Silence,5000],
						["muzzle_snds_M",Silence,5000],
						["optic_ACO_grn",nil,3500],
						["optic_Arco",nil,3500],
						["optic_Holosight",nil,3600],
						["optic_SOS",nil,50000],
						["optic_NVS",nil,25000],
						["optic_Hamr",nil,7500],
						["optic_MRCO",nil,7500],
						["optic_DMS",nil,2500],
						["optic_Yorris",nil,10000],
						["acc_flashlight",nil,1000],
						["5Rnd_127x108_Mag",nil,10000],
						["6Rnd_45ACP_Cylinder",nil,1000],
						["10Rnd_762x51_Mag",nil,500],
						["20Rnd_556x45_UW_mag",nil,125],
						["20Rnd_762x51_Mag",nil,1500],
						["30Rnd_9x21_Mag",nil,200],
						["30Rnd_45ACP_Mag_SMG_01",nil,200],
						["30Rnd_556x45_Stanag",nil,300],
						["30Rnd_65x39_caseless_green",nil,275],
						["30Rnd_9x21_Mag",nil,200],
						["ItemMap",0],
						["150Rnd_762x51_Box_Tracer",nil,2000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,8500],
						["hgun_Pistol_heavy_02_F",nil,12850],
						["hgun_ACPC2_F",nil,13500],
						["hgun_PDW2000_F",nil,22000],
						["optic_ACO_grn_smg",nil,2900],
						["V_Rangemaster_belt",nil,6900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"You are not a donator!"};
			case (__GETC__(life_donator) == 1):
			{
				["STS Donator Shop Tier 1",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["optic_ACO_grn_smg",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["STS Donator Shop Tier 2",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["arifle_MK20C_plain_F",nil,25000],
						["optic_ACO_grn_smg",nil,750],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["30Rnd_556x45_Stanag",nil,125]
					]
				];
			};

			case (__GETC__(life_donator) >= 3):
			{
				["STS Donator Shop Tier 3",
					[
						["hgun_Rook40_F",nil,500],
						["hgun_PDW2000_F",nil,6500],
						["hgun_pistol_heavy_01_F",nil,5850],
						["arifle_Mk20C_plain_F",nil,25000],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,10000],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["FirstAidKit",nil,25],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["11Rnd_45ACP_Mag",nil,85],
						["30Rnd_556x45_Stanag",nil,125]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["hgun_Pistol_Signal_F","Pistolet detresse",10000],
				["6Rnd_GreenSignal_F",nil,50],
				["6Rnd_RedSignal_F",nil,50],
				["ItemMap",0],
				["Chemlight_blue",nil,300]
			]
		];
	};
	
	case "merc_gun":
	{
		switch (true) do 
		{
			case (playerSide != west): {""};
			default {
				["Armurerie Mercenaire",
					[
						["hgun_Pistol_heavy_01_F",nil,10000],
						["11Rnd_45ACP_Mag",nil,10],
						["arifle_Mk20_F",nil,25000],
						["30Rnd_556x45_Stanag",nil,100],
						["arifle_MX_Black_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["arifle_MXC_Black_F",nil,35000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["arifle_MXM_Black_F",nil,50000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["arifle_MX_SW_Black_F",nil,75000],
						["100Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_65x39_caseless_mag",nil,100],
						["LMG_Mk200_F",nil,200000],
						["200Rnd_65x39_cased_Box",nil,100],
						["FakeWeapon",nil,0],
						["FakeWeapon","Accessoires",0],
						["FakeWeapon",nil,0],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,2500],
						["optic_Aco",nil,1000],
						["optic_SOS",nil,7500],
						["acc_flashlight",nil,100],
						["acc_pointer_IR",nil,150],
						["optic_MRCO",nil,5000],
						["optic_DMS",nil,5000],
						["optic_MRD",nil,1000],
						["optic_LRPS",nil,7500],
						["FakeWeapon",nil,0],
						["FakeWeapon","Grenades",0],
						["FakeWeapon",nil,0],
						["SmokeShell",nil,2500],
						["SmokeShellYellow",nil,2500],
						["SmokeShellGreen",nil,2500]
					]
				];
			};
		};
	};
	
	case "mercstore":
	{
		switch (true) do 
		{
			case (playerSide != west): {""};
			default 
			{
				["General Store",
					[
						["Binocular",nil,1000],
						["Rangefinder",nil,10000],
						["NVGoggles_OPFOR",nil,10000],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["ItemMap",nil,0],
						["NVGoggles",nil,2000],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300]
					]
				];
			};
		};
	};
};
