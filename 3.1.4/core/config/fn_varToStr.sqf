/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {"Pétrole"};
	case "life_inv_oilp": {"Essence"};
	case "life_inv_heroinu": {"Heroïne Pur"};
	case "life_inv_heroinp": {"Heroïne Traitée"};
	case "life_inv_cannabis": {"Cannabis"};
	case "life_inv_marijuana": {"Marijuana"};
	case "life_inv_apple": {"Pomme"};
	case "life_inv_applep": {"Jus de pomme"};
	case "life_inv_rabbit": {"Viande de Lapin"};
	case "life_inv_salema": {"Viande de Saumon"};
	case "life_inv_ornate": {"Viande d'Ornate"};
	case "life_inv_mackerel": {"Viande de Maquereau"};
	case "life_inv_tuna": {"Viande de Thon"};
	case "life_inv_mullet": {"Viande de Mullet"};
	case "life_inv_catshark": {"Viande de Poisson Chat²"};
	case "life_inv_turtle": {"Viande de Tortue"};
	case "life_inv_fishingpoles": {"Canne à pêche"};
	case "life_inv_water": {"Bouteille d'Eau"};
	case "life_inv_coffee": {"Café"};
	case "life_inv_turtlesoup": {"Soupe de Tortue"};
	case "life_inv_donuts": {"Donuts"};
	case "life_inv_fuelE": {"Jerrican Vide"};
	case "life_inv_fuelF": {"Jerrican Pleine"};
	case "life_inv_pickaxe": {"Pioche"};
	case "life_inv_copperore": {"Minerai de Cuivre"};
	case "life_inv_ironore": {"Minerai de Fer"};
	case "life_inv_ironr": {"Lingot de Fer"};
	case "life_inv_copperr": {"Lingot de Cuivre"};
	case "life_inv_sand": {"Sable"};
	case "life_inv_ephedra": {"Ephedrine non traitee"};
	case "life_inv_ephedrap": {"Methamphetamine"};
	case "life_inv_salt": {"Sel"};
	case "life_inv_saltr": {"Sel Raffiné"};
	case "life_inv_glass": {"Verre"};
	case "life_inv_diamond": {"Diamant Pur"};
	case "life_inv_diamondr": {"Diamant Taillé"};
	case "life_inv_tbacon": {"Big Mac"};
	case "life_inv_redgull": {"Red Bull"};
	case "life_inv_lockpick": {"Kit de crochetage"};
	case "life_inv_peach": {"Pêche"};
	case "life_inv_coke": {"Cocaïne Pur"};
	case "life_inv_cokep": {"Cocaïne Traité"};
	case "life_inv_spikeStrip": {"Herse"};
	case "life_inv_barriere": {"Barrière"};
	case "life_inv_cone": {"Cône"};
	case "life_inv_rock": {"Pierre"};
	case "life_inv_cement": {"Sac de Ciment"};
	case "life_inv_oru": {"Minerai d'or"};
	case "life_inv_or": {"Lingot d'or"};
	case "life_inv_goldbar": {"Lingot d'or de banque"};
	case "life_inv_blastingcharge": {"Charge explosive"};
	case "life_inv_boltcutter": {"Sécateur"};
	case "life_inv_defusekit": {"Kit de désamorçage"};
	case "life_inv_storagesmall": {"Maison grand stockage"};
	case "life_inv_storagebig": {"Maison petit stockage"};


	

	
	//License Block
	case "license_civ_driver": {"Permis de Conduire"};
	case "license_civ_air": {"Brevet de Pilote"};
	case "license_civ_heroin": {"Traitement d'Heroïne"};
	case "license_civ_gang": {"License de Gang"};
	case "license_civ_oil": {"Traitement de Pétrole"};
	case "license_civ_dive": {"Formation de Plongée"};
	case "license_civ_boat": {"Permis Bateau"};
	case "license_civ_apple": {"Pressage de Pomme"};
	case "license_civ_ephedra": {"Traitement d'Ephedrine"};
	case "license_civ_gun": {"License du Port d'Arme"};
	case "license_cop_air": {"Brevet de Pilote"};
	case "license_cop_swat": {"License Intervention Spéciale"};
	case "license_cop_cg": {"Garde Côte"};
	case "license_civ_rebel": {"Rebéllions D'Altis"};
	case "license_civ_truck": {"License de Poids Lourd"};
	case "license_civ_diamond": {"Formation du Taillage de Diamant"};
	case "license_civ_copper": {"Formation production de Cuivre"};
	case "license_civ_iron": {"Formation production de Fer"};
	case "license_civ_sand": {"Formation production de Sable"};
	case "license_civ_salt": {"Formation production de Sel"};
	case "license_civ_coke": {"Formation production de Cocaïne"};
	case "license_civ_marijuana": {"Formation production de Marijuana"};
	case "license_civ_cement": {"Formation production de Ciment"};
	case "license_civ_or": {"Formation à la Fonte d'or"};
	case "license_med_air": {"Brevet de Pilote"};
	case "license_civ_home": {"Carnet immobilier"};	
};
