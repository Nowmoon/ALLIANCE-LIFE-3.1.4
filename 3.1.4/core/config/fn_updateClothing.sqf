/*

	Updates player clothing by replacing vanilla by custom ones
        by Audacious

*/

private["_uniform","_backpack"];

///Uniform
////////////////

_uniform = uniform player;

switch(true) do
{
	case (playerSide == west && _uniform == "U_Rangemaster"):
	{
		if( (call life_coplevel) > 0) then
		{
			player setObjectTextureGlobal  [0,"Textures\gendarmerie_uniform_base.jpg"]; 
		}
	};
	
	case (playerSide == west && _uniform == "U_B_CombatUniform_mcam_worn"):
	{
		if( (call life_coplevel) > 0) then
		{
			player setObjectTextureGlobal [0,"Textures\gendarmerie_uniform_bleu.jpg"];
		}
	};
	
	
	case (playerSide == west && _uniform == "U_BG_Guerilla2_1"):
	{
		if( (call life_coplevel) > 0) then
		{
			player setObjectTextureGlobal [0,"Textures\Policier2.jpg"];
		}
	};
	
	case (playerSide == west && _uniform == "U_BG_Guerilla3_1"):
	{
		if( (call life_coplevel) > 0) then
		{
			player setObjectTextureGlobal [0,"Textures\Detective.jpg"];
		}
	};
	
	case (playerSide == west && _uniform == "U_B_CombatUniform_mcam"):
	{
		if( (call life_coplevel) > 0) then
		{
			player setObjectTextureGlobal [0,"Textures\Policier4.jpg"];
		}
	};
	
	case (playerSide == west && _uniform == "U_I_G_resistanceLeader_F"):
	{
		if( (call life_coplevel) > 0) then
		{
			player setObjectTextureGlobal [0,"Textures\Policier5.jpg"];
		}
	};
	
	case (playerSide == west && _uniform == "U_B_CTRG_3"):
	{
		if( (call life_coplevel) > 0) then
		{
			player setObjectTextureGlobal [0,"Textures\Policier6.jpg"];
		}
	};
	
	case (playerSide == west && _uniform == "U_I_CombatUniform"):
	{
		if( (call life_coplevel) > 0) then
		{
			player setObjectTextureGlobal [0,"Textures\Policier3.jpg"];
		}
	};
	
	case (playerSide == independent && _uniform == "U_Rangemaster"):
	{
		if( (call life_medlevel) > 3) then
		{
			player setObjectTextureGlobal  [0,"Textures\medic_uniform.jpg"];
		}
	};
};