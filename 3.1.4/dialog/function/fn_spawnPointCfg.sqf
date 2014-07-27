/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_spawn_1","Kavala","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_2","Pyrgos","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_3","Athira","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","Camp Police","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_5","Douane","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_6","Camp GIGN","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
	 case civilian:
            {
                   
                   
                    //if have reb license, only spawn here
                    if(license_civ_rebel && playerSide == civilian) then {
                    _return = [
                                    ["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
									["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
									["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
									["civ_spawn_4","Sofia Reb","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
                                    ];
                    };
                   
                    if(!license_civ_rebel && playerSide == civilian) then {
                    _return = [
                                    ["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
                                    ["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
                                    ["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
                                    ];
                    };
					
					if((getPlayerUID player) in ["76561198134441765","76561198035297552","76561198076146782","76561198123783789","76561198085117416","76561198099573019","76561198055734795","76561198127603073","76561198120284948","76561198119346825","76561198081613689","76561198134781984","76561198045793029","76561198132609575","76561198091970774","76561198108796895","76561198120826273","76561198132189753"])then {
                   _return = [
									["civ_spawn_5","Base Titan","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
									["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
									["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
									["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
									["civ_spawn_4","Sofia Reb","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
									];
					};		
				   
                    if(count life_houses > 0) then {
                            {
                                    _pos = call compile format["%1",_x select 0];
                                    _house = nearestBuilding _pos;
                                    _houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
                                   
                                    _return set[count _return,[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
                            } foreach life_houses;
                    };     
            };
	
	case independent: {
		_return = [
			["medic_spawn_1","Kavala Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Athira Regional","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Pygros Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_return;