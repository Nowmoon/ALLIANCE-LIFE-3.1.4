/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rouge";};
			case 1: {_color = "Gendarmerie";};
			case 2: {_color = "CyanTuning";};
			case 3: {_color = "Monster";};
			case 4: {_color = "White";};
			case 5: {_color = "Blue";};
			case 6: {_color = "Dark Red";};
			case 7: {_color = "Blue / White"};
			case 8: {_color = "Black"};
			case 9: {_color = "Black"};
			case 10: {_color = "GIPN"};
			case 11: {_color = "Sport"};
			case 12: {_color = "Jaune"};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Vert";};
			case 2: {_color = "Bleu";};
			case 3: {_color = "Bleu fonce";};
			case 4: {_color = "Jaune";};
			case 5: {_color = "Blanc"};
			case 6: {_color = "Gris"};
			case 7: {_color = "Noir"};
			case 8: {_color = "Monster"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Red"};
			case 1: {_color = "Gendarmerie"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Black / White"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Green"};
			case 6: {_color = "Cop"};
			case 7: {_color = "GIGN"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Bordeau";};
			case 1: {_color = "Gendarmerie";};
			case 2: {_color = "Orange";};
			case 3: {_color = "Orange et rayure noir";};
			case 4: {_color = "Darkskull";};
			case 5: {_color = "DarkRed";};
			case 6: {_color = "Yokohama";};
			case 7: {_color = "SMUR";};
			case 8: {_color = "TAXI";};
			case 9: {_color = "GIPN";};
			case 10: {_color = "GIGN";};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "GIPN"};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Noir"};
			case 3: {_color = "Bleu"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Blanc"};
			case 6: {_color = "Digi Green"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebelle"};
			case 9: {_color = "Gendarmerie"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "PSIG"};
			case 1: {_color = "Black"};
			case 2: {_color = "Civ Blue"};
			case 3: {_color = "Civ Red"};
			case 4: {_color = "Digi Green"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Gendarmerie"};
			case 9: {_color = "Jeans"};
			case 10: {_color = "Speedy Redline"};
			case 11: {_color = "Sunset"};
			case 12: {_color = "Vrana"};
			case 13: {_color = "Waves Blue"};
			case 14: {_color = "Rebel Digital"};
			case 15: {_color = "GIPN"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "Gendarmerie"};
			case 2: {_color = "Digi Green"};
			case 3: {_color = "Desert Digi"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Classique"};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Militaire"};
			case 1: {_color = "GIGN"};
			case 2: {_color = "Gendarmerie"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Weed"};
			case 2: {_color = ""};
			case 3: {_color = "Noir"};
		};
	};
	
	case "O_Truck_03_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Civil";};
			case 1: {_color = "Autre";};
			case 2: {_color = "Mercenaire";};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Noir"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir et Blanc"};
			case 1: {_color = "Vert et Blanc"};
			case 2: {_color = "Noir"};
			case 3: {_color = "Mercenaire"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "B_G_Offroad_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Rebelle";};
			case 1: {_color = "Mercenaire";};
		};
	};
	
	case "O_MRAP_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Marron";};
			case 2: {_color = "Foret";};
			case 3: {_color = "Hiver";};
			case 4: {_color = "Lion";};
			case 5: {_color = "Mercenaire";};
		};
	};
	
	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Gendarmerie";};
			case 1: {_color = "GIGN";};
		};
	};
};

_color;