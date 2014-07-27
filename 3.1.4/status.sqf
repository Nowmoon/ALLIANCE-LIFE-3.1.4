waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

_rscLayer = "osefStatusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["osefStatusBar","PLAIN"];
systemChat format["[Happiness Life] HUD Chargement %1!", _rscLayer];

[] spawn {
	sleep 5;
	_statusText = "Bienvenue sur le serveur";
	_counter = 180;
	_timeSinceLastUpdate = 0;
	while {true} do
	{
		sleep 1;
		_counter = _counter - 1;
		_statusText = "Alliance Life [Communauté SDG]";
		((uiNamespace getVariable "osefStatusBar")displayCtrl 1000)ctrlSetText format["%3 | FPS: %1 | Joueurs: %2", round diag_fps, count playableUnits, _statusText, _counter];
	};
};
