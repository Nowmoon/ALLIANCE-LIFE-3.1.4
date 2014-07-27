//Script codé par Chrysler5798 Team [SDG] - Si tu veux prendre ce code, tu peux. Mais respecte celui qui s'est cassé le cul à le faire en laissant cette ligne.//


private ["_amende","_speed"];
_speed = speed player;

if((round _speed > 121) && (round _speed < 120)) then {
    _amende = 3200;
	if(life_atmcash >= _amende) then {
		cutText[format["Vous avez été flashé à %1 km/h ! \n\n\n Vous écopez d'une amende de %2 € retirés de votre compte en banque !",round _speed,[_amende] call life_fnc_numberText],"WHITE OUT"];
		0.0001 cutFadeOut 5;
		sleep 0.7;
		0.0001 cutFadeOut 5;
		life_atmcash = life_atmcash - _amende;
	};
};

if(round _speed > 149) then {
	_amende = 5000;
	if(life_atmcash >= _amende) then {
		cutText[format["Vous avez été flashé à %1 km/h ! \n\n\n Vous écopez d'une amende de %2€ retirés de votre compte en banque !",round _speed,[_amende] call life_fnc_numberText],"WHITE OUT"];
		0.0001 cutFadeOut 5;
		sleep 0.7;
		0.0001 cutFadeOut 5;
		life_atmcash = life_atmcash - _amende;
	};
	else{
	license_civ_driver = true
	};
};

[] call life_fnc_sessionUpdate;
[] call life_fnc_forceSyncData;




