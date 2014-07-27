/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
		_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"],
			["Textures\merlin_co.paa","cop","Textures\merlin2_co.paa","Textures\merlin3_co.paa"],
			["Textures\heli_transport_02_1_noir.jpg","civ","Textures\heli_transport_02_2_noir.jpg","Textures\heli_transport_02_1_noir.jpg"]
		];
	};
	
	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			["Textures\hayon_gendarmerie.jpg","cop"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			[_path + "hatchback_01_ext_sport06_co.paa","civ"],
			["#(ai,64,64,1)Fresnel(1.3,7)","cop"],
			["Textures\hatch_gign.jpg","cop"]
		];
	};
		
	case "C_Offroad_01_F":
	{
		_ret = 
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"], 
			["Textures\pickup_gendarmerie.jpg","cop"],
			["Textures\CIV_cyan_offroad.jpg","civ"],
			["Textures\CIV_Monster_offroad.jpg","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["#(ai,64,64,1)Fresnel(0.3,3)","fed"],
			["#(ai,64,64,1)Fresnel(1.3,7)","cop"],
			["Textures\pickup_civil_1.jpg","civ"],
			["#(argb,8,8,3)color(0.6,0.3,0.01,1)","civ"],
			["Textures\pickup_smur.jpg","med"]
		];
	};
	
	case "B_MRAP_01_hmg_F":
	{
		_ret =
		[
			["Textures\mrap_police_noir.jpg","cop","Textures\mrap_police_noir_adds.jpg"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"],
			["Textures\CIV_Monster_hatch.jpg","civ"]
		];
	};
	
	case "C_SUV_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],       // Bordeau
			["Textures\suv_gendarmerie.jpg","cop"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],   // orange
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],   // orange rayure noir
			["Textures\CIV_DarkSkull_suv.jpg","civ"],
			["Textures\CIV_DarkRed_suv.jpg","civ"],
			["Textures\CIV_Yokohama_suv.jpg","civ"],
			["Textures\suv_smur.jpg","med"],
			["Textures\suv_taxi.jpg","civ"],
			["Textures\suv_gendarmerie.jpg","cop"],
			["Textures\suv_gign.jpg","cop"]
		];
	};
	
	case "O_MRAP_02_F":
	{
		_ret =
		[
			["Textures\ifritnoir.paa","reb","Textures\ifritnoir1.paa"],
			["Textures\rebel_ifrit_0.paa","reb","Textures\rebel_ifrit_1.paa"],
			["Textures\ifrit_forest_front.jpg","reb","Textures\ifrit_forest_back.jpg"],
			["Textures\ifrit_grey_front.jpg","reb","Textures\ifrit_grey_back.jpg"],
			["Textures\ifrit_lion_front.jpg","reb","Textures\ifrit_lion_back.jpg"]
		];
	};
	
	
	case "C_Van_01_box_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "C_Van_01_transport_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "B_Quadbike_01_F":
	{
		_ret = 
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","cop"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"],
			["Textures\cop_quad.paa","cop"]
		];
	};
	
	case "B_Heli_Light_01_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa","cop"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","fed"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["Textures\heli_police_light.jpg","cop"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["Textures\heli_police_light.jpg","cop"],
			["Textures\heli_med.jpg","med"]
		];
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","fed"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
			["Textures\heli2_med.jpg","med"]
		];
	};
	
	case "I_Heli_light_03_unarmed_F":
	{
		_ret =
		[
			["Textures\hellcat_gendarmerie.jpg","cop"],
			["Textures\hellcat_gign.jpg","cop"]	
		];
	};	
	
	case "B_MRAP_01_F":
	{
		_ret = 
		[
			["\A3\Soft_F\MRAP_01\Data\mrap_01_base_co.paa","cop"],
			["Textures\mrap_police_noir.jpg","cop","Textures\mrap_police_noir_adds.jpg"],
			["Textures\hunter_gendarmerie_trac.jpg","cop","Textures\hunter_gendarmerie_bache.jpg"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "I_Truck_02_covered_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["Textures\zamak_weed.jpg","civ","Textures\zamak_weed_back.jpg"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"],
			["Textures\truck_02_kab_co_noir.jpg","civ","Textures\truck_02_kuz_co_noir.jpg"]
		];
	};
	
	case "O_Truck_02_covered_F":
	{
		_ret = 
		[
			["Textures\zamak_weed.jpg","civ","Textures\zamak_weed_back.jpg"]
		];
	};
	
	case "I_Truck_02_transport_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "O_Truck_03_covered_F":
	{
		_ret =
		[
			["Textures\tempest_civil_1_div.jpg","civ","Textures\tempest_civil_1_rem.jpg","Textures\tempest_civil_1_trac.jpg"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "B_G_Offroad_01_F":
	{
		_ret =
		[
			["\A3\Soft_F_gamma\Offroad_01\data\offroad_01_ext_ig01_co.paa","reb"]
		];
	};
};

_ret;