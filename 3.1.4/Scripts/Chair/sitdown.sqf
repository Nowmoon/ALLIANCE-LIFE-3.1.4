//////////////////////////////////////////////////////////////////////////
//                            Script Made By                            //
//                            MacRae edited by Ideo                     //
//                                                                      //
//                                                                      //
//1.Place a Camping Chair on the map.                                   //
//                                                                      //
//2.Add this to the Camping chair Init:                                 //
//this addAction ["<t color='#0099FF'>Sit Down</t>","Chair\sitdown.sqf"]//
//                                                                      //
//////////////////////////////////////////////////////////////////////////

player removeAction standup;
_chair = _this select 0; 
_unit = _this select 1; 
			
if ((_chair distance _unit) < 3) then 
{
	[[_unit, "Crew"], "MAC_fnc_switchMove"] spawn BIS_fnc_MP; 
	_unit setPos (getPos _chair); 
	_unit setDir ((getDir _chair) - 180); 

	standup = _unit addaction ["<t color='#3399FF'>Se lever</t>","scripts\Chair\standup.sqf"];
	_unit setpos [getpos _unit select 0, getpos _unit select 1,((getpos _unit select 2) +1)];
} 
else 
{
	hint "Vous êtes trop loins de la chaise.";
};




