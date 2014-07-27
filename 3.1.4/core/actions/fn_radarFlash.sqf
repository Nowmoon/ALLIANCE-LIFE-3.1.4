//Script codé par Chrysler5798 Team [SDG] - Si tu veux prendre ce code, tu peux. Mais respecte celui qui s'est cassé le cul à le faire en laissant cette ligne.//


private ["_amende","_speed"];
_speed = speed player;

if((round _speed > 93) && (round _speed < 120)) then {
    _amende = 3200;
	if(life_atmcash >= _amende) then {
		cutText[format"WHITE OUT"]
		sleep 2.0;
		cutText[format["Vous avez été flashé à %1 km/h ! \n\n\n Vous écopez d'une amende de %2 € retirés de votre compte en banque !",round _speed,[_amende] call life_fnc_numberText]];
		0.0001 cutFadeOut 5;
		sleep 0.7;
		0.0001 cutFadeOut 5;
		life_atmcash = life_atmcash - _amende;
	};
};

if(round _speed > 120) then {
	_amende = 5000;
	if(life_atmcash >= _amende) then {
		cutText[format[""],"WHITE OUT"];
		sleep 2.0;
		cutText[format["Vous avez été flashé à %1 km/h ! \n\n\n Vous écopez d'une amende de %2 € retirés de votre compte en banque !",round _speed,[_amende] call life_fnc_numberText]];
		0.0001 cutFadeOut 5;
		sleep 0.7;
		0.0001 cutFadeOut 5;
		life_atmcash = life_atmcash - _amende;
	};
	else {
		cutText[format[""],"WHITE OUT"];
		sleep 2.0;
		cutText[format["Vous venez de perdre votre permis de Conduire pour avoir été flashé a %1 km/h !"]];
		0.0001 cutFadeOut 5;
		license_civ_driver = false;
	};
};

[] call life_fnc_sessionUpdate;
[] call life_fnc_forceSyncData;




