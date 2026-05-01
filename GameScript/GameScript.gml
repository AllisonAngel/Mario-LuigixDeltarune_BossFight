//Action Library
global.actionLibrary =
{
	attack :
	{ 
		name : "Attack",
		description : "{0} attacks!",
		subMenu : -1,
		targetRequired : true,
		targetEnemyByDefault : true,
		targetAll : MODE.NEVER,
		userAnimation : "attack",
		effectSprite : sAttackBonk,
		effectOnTarget : MODE.ALWAYS,
		func : function(_user, _targets)
		{
			var _damage = ceil(_user.strength + random_range(-_user.strength * 0.25, _user.strength * 0.25));
			with (_targets[0]) hp = max(0, hp - _damage);
		}
	}
}
enum MODE 
{
	NEVER = 0,
	ALWAYS = 1,
	VARIES = 2
}
		
//Party data
global.party = 
[
	{
		name: "Kris",
		hp: 89,
		hpMax: 89,
		mp: 10,
		mpMax: 15,
		strength: 6,
		sprites : { idle: sKrisIdle, attack: sKrisAttack, act: sKrisAct, item: sKrisItem, defend: sKrisDefend, down: sKrisDowned},
		actions : []
	}
	,
	{
		name: "Mario",
		hp: 92,
		hpMax: 92,
		mp: 38,
		mpMax: 34,
		strength: 6,
		sprites : { idle: sMarioIdle, attack: sMarioAttack, act: sMarioAct, item: sMarioItem, down: sMarioDowned},
		actions : []
	}
	,
	{
			name: "Luigi",
		hp: 86,
		hpMax: 85,
		mp: 20,
		mpMax: 30,
		strength: 4,
		sprites : { idle: sLuigiIdle, attack: sLuigiAttack, act: sLuigiAct, item: sLuigiItem, down: sLuigiDowned},
		actions : []	
	}
]


//Enemy Data
global.enemy =
{
	kingG: 
	{
		name: "The King",
		hp: 400,
		hpMax: 30,
		mp: 6,
		mpMax: 0,
		strength: 10,
		sprites: { idle: sKingIdle, attack: sKingChainToss, down: sKingHurt},
		actions: [],
		xpValue : 1500,
		AIscript : function()
		{
			//enemy turn ai goes here
		}
	}
}