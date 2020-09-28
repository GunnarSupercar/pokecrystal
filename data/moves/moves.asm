; Characteristics of each move.

move: MACRO
	db \1 ; animation
	db \2 ; effect
	db \3 ; power
	db \4 | \5 ; type, followed by category
	db \6 percent ; accuracy
	db \7 ; pp
	db \8 percent ; effect chance
ENDM

Moves:
; entries correspond to constants/move_constants.asm
	; Pound
	move POUND,        EFFECT_NORMAL_HIT,         40, NORMAL,	PHYSICAL, 100, 35,   0
	; Karate Chop
	move KARATE_CHOP,  EFFECT_NORMAL_HIT,         50, FIGHTING,	PHYSICAL, 100, 25,   0
	; Double Slap, to be replaced
	move DOUBLESLAP,   EFFECT_MULTI_HIT,          15, NORMAL,   PHYSICAL,  85, 10,   0
	; Comet Punch, to be replaced
	move COMET_PUNCH,  EFFECT_MULTI_HIT,          18, NORMAL,   PHYSICAL,  85, 15,   0
	; Mega Punch
	move MEGA_PUNCH,   EFFECT_NORMAL_HIT,         80, NORMAL,	PHYSICAL,  85, 20,   0
	; Pay Day, to be replaced
	move PAY_DAY,      EFFECT_PAY_DAY,            40, NORMAL,   PHYSICAL, 100, 20,   0
	; Fire Punch
	move FIRE_PUNCH,   EFFECT_BURN_HIT,           75, FIRE,		PHYSICAL, 100, 15,  10
	; Ice Punch
	move ICE_PUNCH,    EFFECT_FREEZE_HIT,         75, ICE,		PHYSICAL, 100, 15,  10
	; ThunderPunch
	move THUNDERPUNCH, EFFECT_PARALYZE_HIT,       75, ELECTRIC,	PHYSICAL, 100, 15,  10
	; Scratch
	move SCRATCH,      EFFECT_NORMAL_HIT,         40, NORMAL,	PHYSICAL, 100, 35,   0
	; Vicegrip, to be replaced
	move VICEGRIP,     EFFECT_NORMAL_HIT,         55, NORMAL,   PHYSICAL, 100, 30,   0
	; Night Slash, previously Guillotine
	move NIGHT_SLASH,  EFFECT_NORMAL_HIT,         70, DARK,		PHYSICAL, 100, 15,   0
	; Air Slash, previously Razor Wind
	move AIR_SLASH,    EFFECT_FLINCH_HIT,         75, FLYING,	SPECIAL,   95, 15,  30
	; Swords Dance
	move SWORDS_DANCE, EFFECT_ATTACK_UP_2,         0, NORMAL,	STATUS,   100, 30,   0
	; Cut
	; HM moves will be removed in the future
	move CUT,          EFFECT_NORMAL_HIT,         50, NORMAL,   PHYSICAL,  95, 30,   0
	; Gust
	move GUST,         EFFECT_GUST,               40, FLYING,	SPECIAL,  100, 35,   0
	; Wing Attack
	; -10 PP
	move WING_ATTACK,  EFFECT_NORMAL_HIT,         60, FLYING,   PHYSICAL, 100, 25,   0
	; Whirlwind
	; changed to Flying, -10 PP
	move WHIRLWIND,    EFFECT_FORCE_SWITCH,        0, FLYING,   STATUS,	  100, 10,   0
	; Fly
	; HM moves will be removed in the future
	move FLY,          EFFECT_FLY,                70, FLYING,   PHYSICAL,  95, 15,   0
	; Bind
	; +20 power, +10 accuracy
	move BIND,         EFFECT_TRAP_TARGET,        35, NORMAL,	PHYSICAL,	 85, 20,   0
	; Aerial Ace, previously Slam
	move AERIAL_ACE,   EFFECT_ALWAYS_HIT,         60, FLYING,   PHYSICAL,	100, 15,   0
	; Vine Whip
	; +15 PP
	move VINE_WHIP,    EFFECT_NORMAL_HIT,         35, GRASS,    PHYSICAL,	100, 25,   0
	; Stomp
	move STOMP,        EFFECT_STOMP,              65, NORMAL,   PHYSICAL,	100, 20,  30
	; Double Kick
	move DOUBLE_KICK,  EFFECT_DOUBLE_HIT,         30, FIGHTING, PHYSICAL	100, 30,   0
	; Mega Kick
	move MEGA_KICK,    EFFECT_NORMAL_HIT,        120, NORMAL,   PHYSICAL,	 75,  5,   0
	; Jump Kick
	move JUMP_KICK,    EFFECT_JUMP_KICK,          70, FIGHTING, PHYSICAL,	 95, 25,   0
	; Rolling Kick, to be replaced later
	move ROLLING_KICK, EFFECT_FLINCH_HIT,         60, FIGHTING, PHYSICAL,  85, 15,  30
	; Sand Attack
	move SAND_ATTACK,  EFFECT_ACCURACY_DOWN,       0, GROUND,   STATUS,		100, 15,   0
	; Headbutt
	move HEADBUTT,     EFFECT_FLINCH_HIT,         70, NORMAL,   PHYSICAL,	100, 15,  30
	; Horn Attack
	move HORN_ATTACK,  EFFECT_NORMAL_HIT,         65, NORMAL,   PHYSICAL,	100, 25,   0
	; Fury Attack  ; +5 power, +5 accuracy, -5 PP
	move FURY_ATTACK,  EFFECT_MULTI_HIT,          20, NORMAL,   PHYSICAL,	 90, 15,   0
	; Drill Run, previously Horn Drill
	move DRILL_RUN,    EFFECT_NORMAL_HIT,         80, GROUND,	PHYSICAL,    95, 10,   0
	; Tackle  ; +5 power, +5 accuracy, -5 PP
	move TACKLE,       EFFECT_NORMAL_HIT,         40, NORMAL,   PHYSICAL,	100, 35,   0
	; Body Slam
	move BODY_SLAM,    EFFECT_PARALYZE_HIT,       85, NORMAL,   PHYSICAL,	100, 15,  30
	; Wrap
	move WRAP,         EFFECT_TRAP_TARGET,        15, NORMAL,   PHYSICAL,  85, 20,   0
	; Take Down
	move TAKE_DOWN,    EFFECT_RECOIL_HIT,         90, NORMAL,   PHYSICAL,	 85, 20,   0
	; Thrash  ; +30 power, -15 PP
	move THRASH,       EFFECT_RAMPAGE,           120, NORMAL,   PHYSICAL,	100,  5,   0
	; Double-Edge  ; -5 PP
	move DOUBLE_EDGE,  EFFECT_RECOIL_HIT,        120, NORMAL,   PHYSICAL,	100, 10,   0
	; Tail Whip
	move TAIL_WHIP,    EFFECT_DEFENSE_DOWN,        0, NORMAL,   STATUS,		100, 30,   0
	; Poison Sting  ;
	move POISON_STING, EFFECT_POISON_HIT,         30, POISON,   PHYSICAL,	100, 25,  30
	; Twineedle, to be replaced
	move TWINEEDLE,    EFFECT_POISON_MULTI_HIT,   25, BUG,      PHYSICAL, 100, 20,  20
	; Pin Missile  ; +11 power, +5 accuracy, -10 PP
	move PIN_MISSILE,  EFFECT_MULTI_HIT,          25, BUG,      PHYSICAL,  90, 10,   0
	; Leer
	move LEER,         EFFECT_DEFENSE_DOWN,        0, NORMAL,   STATUS,		100, 30,   0
	; Bite  ; -5 PP
	move BITE,         EFFECT_FLINCH_HIT,         60, DARK,     PHYSICAL,	100, 20,  30
	; Growl  ; -10 PP
	move GROWL,        EFFECT_ATTACK_DOWN,         0, NORMAL,   STATUS,		100, 30,   0
	; Roar  ; changed to Dark, -10 PP
	move ROAR,         EFFECT_FORCE_SWITCH,        0, DARK,   	STATUS,		100, 10,   0
	; Sing
	move SING,         EFFECT_SLEEP,               0, NORMAL,   STATUS,		 55, 15,   0
	; Supersonic
	move SUPERSONIC,   EFFECT_CONFUSE,             0, NORMAL,   STATUS,		 55, 20,   0
	; Sonicboom, to be replaced later
	move SONICBOOM,    EFFECT_STATIC_DAMAGE,      20, NORMAL,   SPECIAL,  90, 20,   0
	; Disable
	move DISABLE,      EFFECT_DISABLE,             0, NORMAL,	STATUS,		 55, 20,   0
	; Acid
	move ACID,         EFFECT_DEFENSE_DOWN_HIT,   40, POISON,	SPECIAL,	100, 30,  10
	; Ember
	move EMBER,        EFFECT_BURN_HIT,           40, FIRE,     SPECIAL,	100, 25,  10
	; Flamethrower  ; -5 power, -5 PP
	move FLAMETHROWER, EFFECT_BURN_HIT,           90, FIRE,     SPECIAL,	100, 10,  10
	; Mist
	move MIST,         EFFECT_MIST,                0, ICE,      STATUS,		100, 30,   0
	; Water Gun
	move WATER_GUN,    EFFECT_NORMAL_HIT,         40, WATER,    SPECIAL,	100, 25,   0
	; Hydro Pump  ; -10 power
	move HYDRO_PUMP,   EFFECT_NORMAL_HIT,        110, WATER,    SPECIAL,	 80,  5,   0
	; Surf, to be replaced by Water Pulse
	; HM moves will be removed in the future
	move SURF,         EFFECT_NORMAL_HIT,         90, WATER,    SPECIAL,  100, 15,   0
	; Ice Beam  ; -5 power
	move ICE_BEAM,     EFFECT_FREEZE_HIT,         90, ICE,      SPECIAL,	100, 10,  10
	; Blizzard  ; -10 power, +10 accuracy, +10 effect chance
	move BLIZZARD,     EFFECT_FREEZE_HIT,        110, ICE,      SPECIAL,	 80,  5,  20
	; Psybeam
	move PSYBEAM,      EFFECT_CONFUSE_HIT,        65, PSYCHIC,  SPECIAL,	100, 20,  10
	; Bubble Beam  ; note the adjusted constant
	move BUBBLE_BEAM,  EFFECT_SPEED_DOWN_HIT,     65, WATER,    SPECIAL,	100, 20,  10
	; Aurora Beam, to be replaced later
	move AURORA_BEAM,  EFFECT_ATTACK_DOWN_HIT,    65, ICE,      SPECIAL,  100, 20,  10
	; Hyper Beam  ; +30 power
	move HYPER_BEAM,   EFFECT_HYPER_BEAM,        180, NORMAL,   ADAPTIVE,  90,  5,   0
	; Peck  ; -10 PP
	move PECK,         EFFECT_NORMAL_HIT,         35, FLYING,   PHYSICAL, 100, 25,   0
	; Drill Peck  ; adjust PP?
	move DRILL_PECK,   EFFECT_NORMAL_HIT,         80, FLYING,   PHYSICAL, 100, 20,   0
	; Submission  ; +5 accuracy, -10 PP
	move SUBMISSION,   EFFECT_RECOIL_HIT,         80, FIGHTING, PHYSICAL,  85, 15,   0
	; Low Kick
	move LOW_KICK,     EFFECT_FLINCH_HIT,         50, FIGHTING, PHYSICAL,  90, 20,  30
	; Counter
	move COUNTER,      EFFECT_COUNTER,             1, FIGHTING, PHYSICAL, 100, 20,   0
	; Seismic Toss
	move SEISMIC_TOSS, EFFECT_LEVEL_DAMAGE,        1, FIGHTING, PHYSICAL, 100, 20,   0
	; Strength 
	; HM moves will be removed in the future
	move STRENGTH,     EFFECT_NORMAL_HIT,         80, NORMAL,   PHYSICAL, 100, 15,   0
	; Absorb, to be replaced later
	move ABSORB,       EFFECT_LEECH_HIT,          20, GRASS,    SPECIAL,  100, 20,   0
	; Mega Drain  ; +10 PP
	move MEGA_DRAIN,   EFFECT_LEECH_HIT,          40, GRASS,    SPECIAL,  100, 20,   0
	; Leech Seed
	move LEECH_SEED,   EFFECT_LEECH_SEED,          0, GRASS,    STATUS,	   90, 10,   0
	; Growth  ; changed to Grass, needs new effect
	move GROWTH,       EFFECT_SP_ATK_UP,           0, GRASS,    STATUS,	  100, 40,   0
	; Razor Leaf
	move RAZOR_LEAF,   EFFECT_NORMAL_HIT,         55, GRASS,    PHYSICAL,  95, 25,   0
	; Solar Beam
	; note the adjusted constant
	move SOLAR_BEAM,    EFFECT_SOLARBEAM,        120, GRASS,    ADAPTIVE, 100, 10,   0
	; PoisonPowder  ; PP adjustments needed
	move POISONPOWDER, EFFECT_POISON,              0, POISON,   STATUS,		 75, 35,   0
	; Stun Spore
	move STUN_SPORE,   EFFECT_PARALYZE,            0, GRASS,    STATUS,		 75, 30,   0
	; Sleep Powder
	move SLEEP_POWDER, EFFECT_SLEEP,               0, GRASS,    STATUS,		 75, 15,   0
	; Petal Dance  ; +30 power, -10 PP
	move PETAL_DANCE,  EFFECT_RAMPAGE,           100, GRASS,    SPECIAL,	100, 10,   0
	; String Shot
	move STRING_SHOT,  EFFECT_SPEED_DOWN,          0, BUG,      STATUS,		 95, 40,   0
	; Dragon Rage, will be replaced later
	move DRAGON_RAGE,  EFFECT_STATIC_DAMAGE,      40, DRAGON,   SPECIAL,  100, 10,   0
	; Fire Spin
	; +20 power, +15 accuracy
	move FIRE_SPIN,    EFFECT_TRAP_TARGET,        35, FIRE,     SPECIAL,	 85, 15,   0
	; ThunderShock
	move THUNDERSHOCK, EFFECT_PARALYZE_HIT,       40, ELECTRIC, SPECIAL,	100, 30,  10
	; Thunderbolt
	; -5 power, -5 PP
	move THUNDERBOLT,  EFFECT_PARALYZE_HIT,       90, ELECTRIC, SPECIAL,	100, 10,  10
	; Thunder Wave
	move THUNDER_WAVE, EFFECT_PARALYZE,            0, ELECTRIC, STATUS,		100, 20,   0
	; Thunder
	; -10 power, +10 accuracy, -5 PP
	move THUNDER,      EFFECT_THUNDER,           110, ELECTRIC, SPECIAL,	 80,  5,  30
	; Rock Throw
	move ROCK_THROW,   EFFECT_NORMAL_HIT,         50, ROCK,     PHYSICAL,	 90, 15,   0
	; Earthquake
	move EARTHQUAKE,   EFFECT_EARTHQUAKE,        100, GROUND,   PHYSICAL, 100, 10,   0
	; Fissure, to be replaced later
	move FISSURE,      EFFECT_OHKO,                1, GROUND,   PHYSICAL,  30,  5,   0
	; Dig
	; +20 power
	move DIG,          EFFECT_FLY,                80, GROUND,   PHYSICAL,	100, 10,   0
	; Toxic
	; effect needs to be updated
	move TOXIC,        EFFECT_TOXIC,               0, POISON,   STATUS,		 85, 10,   0
	; Confusion
	move CONFUSION,    EFFECT_CONFUSE_HIT,        50, PSYCHIC,  SPECIAL,	100, 25,  10
	; Psychic
	move PSYCHIC_M,    EFFECT_SP_DEF_DOWN_HIT,    90, PSYCHIC,  SPECIAL,	100, 10,  10
	; Hypnosis
	move HYPNOSIS,     EFFECT_SLEEP,               0, PSYCHIC,  STATUS,		 60, 20,   0
	; Meditate
	; new stat up undecided
	move MEDITATE,     EFFECT_ATTACK_UP,           0, PSYCHIC,  STATUS,		100, 40,   0
	; Agility
	move AGILITY,      EFFECT_SPEED_UP_2,          0, PSYCHIC,  STATUS,		100, 30,   0
	; Quick Attack
	move QUICK_ATTACK, EFFECT_PRIORITY_HIT,       40, NORMAL,   PHYSICAL,	100, 30,   0
	; Rage
	; effect needs to be updated
	move RAGE,         EFFECT_RAGE,               20, NORMAL,   PHYSICAL,	100, 20,   0
	; Teleport
	move TELEPORT,     EFFECT_TELEPORT,            0, PSYCHIC,  STATUS,		100, 20,   0
	; Night Shade
	move NIGHT_SHADE,  EFFECT_LEVEL_DAMAGE,        1, GHOST,    SPECIAL,	100, 15,   0
	; Mimic
	move MIMIC,        EFFECT_MIMIC,               0, NORMAL,   STATUS,		100, 10,   0
	; Screech
	move SCREECH,      EFFECT_DEFENSE_DOWN_2,      0, NORMAL,   STATUS,		 85, 40,   0
	; Double Team
	move DOUBLE_TEAM,  EFFECT_EVASION_UP,          0, NORMAL,   STATUS,		100, 15,   0
	; Recover
	; -15 PP
	move RECOVER,      EFFECT_HEAL,                0, NORMAL,   STATUS,		100,  5,   0
	; Harden  ; changed to Rock
	move HARDEN,       EFFECT_DEFENSE_UP,          0, ROCK,		STATUS,		100, 30,   0
	; Minimize, to be replaced later
	move MINIMIZE,     EFFECT_EVASION_UP,          0, NORMAL,   STATUS,     100, 20,   0
	; Smokescreen
	move SMOKESCREEN,  EFFECT_ACCURACY_DOWN,       0, NORMAL,   STATUS,		100, 20,   0
	; Confuse Ray
	move CONFUSE_RAY,  EFFECT_CONFUSE,             0, GHOST,    STATUS,		100, 10,   0
	; Withdraw, to be replaced later
	move WITHDRAW,     EFFECT_DEFENSE_UP,          0, WATER,    STATUS,     100, 40,   0
	; Defense Curl
	move DEFENSE_CURL, EFFECT_DEFENSE_CURL,        0, NORMAL,   STATUS,		100, 40,   0
	; Barrier, to be replaced later
	move BARRIER,      EFFECT_DEFENSE_UP_2,        0, PSYCHIC,  STATUS,     100, 30,   0
	; Light Screen
	; -20 PP
	move LIGHT_SCREEN, EFFECT_LIGHT_SCREEN,        0, PSYCHIC,  STATUS,		100, 10,   0
	; Haze
	move HAZE,         EFFECT_RESET_STATS,         0, ICE,      STATUS,		100, 30,   0
	; Reflect  ; -10 PP
	move REFLECT,      EFFECT_REFLECT,             0, PSYCHIC,  STATUS,		100, 10,   0
	; Focus Energy
	; changed to Fighting, adjust PP?
	move FOCUS_ENERGY, EFFECT_FOCUS_ENERGY,        0, FIGHTING, STATUS,		100, 30,   0
	; Bide
	move BIDE,         EFFECT_BIDE,                0, NORMAL,   STATUS,		100, 10,   0
	; Metronome
	move METRONOME,    EFFECT_METRONOME,           0, NORMAL,   STATUS,		100, 10,   0
	; Mirror Move
	move MIRROR_MOVE,  EFFECT_MIRROR_MOVE,         0, FLYING,   STATUS,		100, 20,   0
	; Selfdestruct
	move SELFDESTRUCT, EFFECT_SELFDESTRUCT,      200, NORMAL,   PHYSICAL,	100,  5,   0
	; Egg Bomb, to be replaced later
	move EGG_BOMB,     EFFECT_NORMAL_HIT,        100, NORMAL,   PHYSICAL,    75, 10,   0
	; Lick
	; +10 power, increased effect chance?
	move LICK,         EFFECT_PARALYZE_HIT,       30, GHOST,    PHYSICAL,	100, 30,  30
	; Smog
	; +10 power, +10 effect chance
	move SMOG,         EFFECT_POISON_HIT,         30, POISON,   SPECIAL,	 70, 20,  50
	; Sludge
	move SLUDGE,       EFFECT_POISON_HIT,         65, POISON,   SPECIAL,	100, 20,  30
	; Bone Club
	move BONE_CLUB,    EFFECT_FLINCH_HIT,         65, GROUND,   PHYSICAL,	 85, 20,  10
	; Fire Blast
	; -10 power
	move FIRE_BLAST,   EFFECT_BURN_HIT,          110, FIRE,     SPECIAL,	 85,  5,  10
	; Waterfall 
	; to be replaced by Liquidation or another physical Water move
	move WATERFALL,    EFFECT_NORMAL_HIT,         80, WATER,    PHYSICAL,   100, 15,   0
	; Clamp, to be replaced
	move CLAMP,        EFFECT_TRAP_TARGET,        35, WATER,    PHYSICAL,    75, 10,   0
	; Swift
	move SWIFT,        EFFECT_ALWAYS_HIT,         60, NORMAL,   ADAPTIVE,   100, 20,   0
	; Skull Bash
	move SKULL_BASH,   EFFECT_SKULL_BASH,        100, NORMAL,   PHYSICAL,   100, 15,   0
	; Poison Jab, previously Spike Cannon
	; -5 PP
	move POISON_JAB,   EFFECT_POISON_HIT,         80, POISON,   PHYSICAL,   100, 15,  30
	; Dragon Claw, previously Constrict
	move DRAGON_CLAW,  EFFECT_NORMAL_HiT,         80, DRAGON,   PHYSICAL,   100, 15,  10
	; Amnesia
	move AMNESIA,      EFFECT_SP_DEF_UP_2,         0, PSYCHIC,  STATUS,     100, 20,   0
	; Kinesis, to be replaced
	move KINESIS,      EFFECT_ACCURACY_DOWN,       0, PSYCHIC,  STATUS,      80, 15,   0
	; Soft-Boiled
	; -5 PP
	move SOFTBOILED,   EFFECT_HEAL,                0, NORMAL,   STATUS,     100,  5,   0
	; Hi Jump Kick, to be replaced
	move HI_JUMP_KICK, EFFECT_JUMP_KICK,          85, FIGHTING, PHYSICAL,    90, 20,   0
	; Glare
	move GLARE,        EFFECT_PARALYZE,            0, NORMAL,   STATUS,      75, 30,   0
	; Dream Eater
	move DREAM_EATER,  EFFECT_DREAM_EATER,       100, PSYCHIC,  SPECIAL,    100, 15,   0
	; Poison Gas
	move POISON_GAS,   EFFECT_POISON,              0, POISON,   STATUS,      55, 40,   0
	; Barrage, to be replaced
	move BARRAGE,      EFFECT_MULTI_HIT,          15, NORMAL,   PHYSICAL,    85, 20,   0
	; Leech Life
	; +55 power, -5 PP
	move LEECH_LIFE,   EFFECT_LEECH_HIT,          75, BUG,      PHYSICAL,   100, 10,   0
	; Lovely Kiss
	move LOVELY_KISS,  EFFECT_SLEEP,               0, NORMAL,   STATUS,      75, 10,   0
	; Sky Attack
	move SKY_ATTACK,   EFFECT_SKY_ATTACK,        140, FLYING,   PHYSICAL,    90,  5,   0
	; Transform
	move TRANSFORM,    EFFECT_TRANSFORM,           0, NORMAL,   STATUS,     100, 10,   0
	; Bubble, to be replaced
	move BUBBLE,       EFFECT_SPEED_DOWN_HIT,     20, WATER,    SPECIAL,    100, 30,  10
	; Dizzy Punch, to be replaced
	move DIZZY_PUNCH,  EFFECT_CONFUSE_HIT,        70, NORMAL,   PHYSICAL,   100, 10,  20
	; Spore
	; this one could use a PP nerf
	move SPORE,        EFFECT_SLEEP,               0, GRASS,    STATUS,     100, 15,   0
	; Flash
	move FLASH,        EFFECT_ACCURACY_DOWN,       0, NORMAL,   STATUS,      70, 20,   0
	; Psywave, to be replaced
	move PSYWAVE,      EFFECT_PSYWAVE,             1, PSYCHIC,  SPECIAL,     80, 15,   0
	; Splash
	move SPLASH,       EFFECT_SPLASH,              0, NORMAL,   STATUS,     100, 40,   0
	; Acid Armor, to be replaced
	move ACID_ARMOR,   EFFECT_DEFENSE_UP_2,        0, POISON,   STATUS,     100, 40,   0
	; Crabhammer
	move CRABHAMMER,   EFFECT_NORMAL_HIT,         90, WATER,    PHYSICAL,    85, 10,   0
	; Explosion
	move EXPLOSION,    EFFECT_SELFDESTRUCT,      250, NORMAL,   PHYSICAL,   100,  5,   0
	; Fury Swipes, to be replaced
	move FURY_SWIPES,  EFFECT_MULTI_HIT,          18, NORMAL,   PHYSICAL,    80, 15,   0
	; Bonemerang
	move BONEMERANG,   EFFECT_DOUBLE_HIT,         50, GROUND,   PHYSICAL,    90, 10,   0
	; Rest
	; -5 PP
	move REST,         EFFECT_HEAL,                0, PSYCHIC,  STATUS,   100,  5,   0
	; Rock Slide
	move ROCK_SLIDE,   EFFECT_FLINCH_HIT,         75, ROCK,     PHYSICAL,  90, 10,  30
	; Hyper Fang
	move HYPER_FANG,   EFFECT_FLINCH_HIT,         80, NORMAL,   PHYSICAL,  90, 15,  10
	; Sharpen
	; new animation required
	move SHARPEN,      EFFECT_ATTACK_UP,           0, NORMAL,   STATUS,   100, 30,   0
	; Conversion
	move CONVERSION,   EFFECT_CONVERSION,          0, NORMAL,   STATUS,   100, 30,   0
	; Tri Attack
	move TRI_ATTACK,   EFFECT_TRI_ATTACK,         80, NORMAL,   ADAPTIVE, 100, 10,  20
	; Super Fang
	move SUPER_FANG,   EFFECT_SUPER_FANG,          1, NORMAL,   PHYSICAL,  90, 10,   0
	; Slash
	move SLASH,        EFFECT_NORMAL_HIT,         70, NORMAL,   PHYSICAL, 100, 20,   0
	; Substitute
	move SUBSTITUTE,   EFFECT_SUBSTITUTE,          0, NORMAL,   STATUS,   100, 10,   0
	; Psystrike, previously Struggle
	; currently missing its effect
	move PSYSTRIKE,    EFFECT_NORMAL_HIT,        100, PSYCHIC,  SPECIAL,  100,  5,   0
	; everything below this line (except past Beat Up) is copied from elsewhere and will eventually need a second pass
	; Sketch
	move SKETCH,       EFFECT_SKETCH,              0, NORMAL,        STATUS,   100,  1,   0
	move TRIPLE_KICK,  EFFECT_TRIPLE_KICK,        10, FIGHTING,      PHYSICAL,  90, 10,   0
	move THIEF,        EFFECT_THIEF,              40, DARK,          PHYSICAL, 100, 10, 100
	move SPIDER_WEB,   EFFECT_MEAN_LOOK,           0, BUG,           STATUS,   100, 10,   0
	move MIND_READER,  EFFECT_LOCK_ON,             0, NORMAL,        STATUS,   100,  5,   0
	; Ominous Wind, previously Nightmare
	; +5 PP
	move OMINOUS_WIND, EFFECT_ALL_UP_HIT,         60, GHOST,    ADAPTIVE, 100, 10,  10
	move FLAME_WHEEL,  EFFECT_FLAME_WHEEL,        60, FIRE,          PHYSICAL, 100, 25,  10
	move SNORE,        EFFECT_SNORE,              40, NORMAL,        SPECIAL,  100, 15,  30
	move CURSE,        EFFECT_CURSE,               0, GHOST,         STATUS,   100, 10,   0
	move FLAIL,        EFFECT_REVERSAL,            1, NORMAL,        PHYSICAL, 100, 15,   0
	move CONVERSION2,  EFFECT_CONVERSION2,         0, NORMAL,        STATUS,   100, 30,   0
	move AEROBLAST,    EFFECT_NORMAL_HIT,        100, FLYING,        SPECIAL,   95,  5,   0
	move COTTON_SPORE, EFFECT_SPEED_DOWN_2,        0, GRASS,         STATUS,    85, 40,   0
	move REVERSAL,     EFFECT_REVERSAL,            1, FIGHTING,      PHYSICAL, 100, 15,   0
	move SPITE,        EFFECT_SPITE,               0, GHOST,         STATUS,   100, 10,   0
	move POWDER_SNOW,  EFFECT_FREEZE_HIT,         40, ICE,           SPECIAL,  100, 25,  10
	move PROTECT,      EFFECT_PROTECT,             0, NORMAL,        STATUS,   100, 10,   0
	move MACH_PUNCH,   EFFECT_PRIORITY_HIT,       40, FIGHTING,      PHYSICAL, 100, 30,   0
	move SCARY_FACE,   EFFECT_SPEED_DOWN_2,        0, NORMAL,        STATUS,    90, 10,   0
	move FAINT_ATTACK, EFFECT_ALWAYS_HIT,         60, DARK,          PHYSICAL, 100, 20,   0
	move SWEET_KISS,   EFFECT_CONFUSE,             0, NORMAL,        STATUS,    75, 10,   0
	move BELLY_DRUM,   EFFECT_BELLY_DRUM,          0, NORMAL,        STATUS,   100, 10,   0
	move SLUDGE_BOMB,  EFFECT_POISON_HIT,         90, POISON,        SPECIAL,  100, 10,  30
	move MUD_SLAP,     EFFECT_ACCURACY_DOWN_HIT,  20, GROUND,        SPECIAL,  100, 10, 100
	move OCTAZOOKA,    EFFECT_ACCURACY_DOWN_HIT,  65, WATER,         SPECIAL,   85, 10,  50
	move SPIKES,       EFFECT_SPIKES,              0, GROUND,        STATUS,   100, 20,   0
	move ZAP_CANNON,   EFFECT_PARALYZE_HIT,      100, ELECTRIC,      SPECIAL,   50,  5, 100
	move FORESIGHT,    EFFECT_FORESIGHT,           0, NORMAL,        STATUS,   100, 40,   0
	move DESTINY_BOND, EFFECT_DESTINY_BOND,        0, GHOST,         STATUS,   100,  5,   0
	move PERISH_SONG,  EFFECT_PERISH_SONG,         0, NORMAL,        STATUS,   100,  5,   0
	move ICY_WIND,     EFFECT_SPEED_DOWN_HIT,     55, ICE,           SPECIAL,   95, 15, 100
	move DETECT,       EFFECT_PROTECT,             0, FIGHTING,      STATUS,   100,  5,   0
	move BONE_RUSH,    EFFECT_MULTI_HIT,          25, GROUND,        PHYSICAL,  80, 10,   0
	move LOCK_ON,      EFFECT_LOCK_ON,             0, NORMAL,        STATUS,   100,  5,   0
	move OUTRAGE,      EFFECT_RAMPAGE,            90, DRAGON,        PHYSICAL, 100, 15,   0
	move SANDSTORM,    EFFECT_SANDSTORM,           0, ROCK,          STATUS,   100, 10,   0
	move GIGA_DRAIN,   EFFECT_LEECH_HIT,          60, GRASS,         SPECIAL,  100,  5,   0
	move ENDURE,       EFFECT_ENDURE,              0, NORMAL,        STATUS,   100, 10,   0
	move CHARM,        EFFECT_ATTACK_DOWN_2,       0, NORMAL,        STATUS,   100, 20,   0
	move ROLLOUT,      EFFECT_ROLLOUT,            30, ROCK,          PHYSICAL,  90, 20,   0
	move FALSE_SWIPE,  EFFECT_FALSE_SWIPE,        40, NORMAL,        PHYSICAL, 100, 40,   0
	move SWAGGER,      EFFECT_SWAGGER,             0, NORMAL,        STATUS,    90, 15, 100
	move MILK_DRINK,   EFFECT_HEAL,                0, NORMAL,        STATUS,   100, 10,   0
	move SPARK,        EFFECT_PARALYZE_HIT,       65, ELECTRIC,      PHYSICAL, 100, 20,  30
	move FURY_CUTTER,  EFFECT_FURY_CUTTER,        10, BUG,           PHYSICAL,  95, 20,   0
	move STEEL_WING,   EFFECT_DEFENSE_UP_HIT,     70, STEEL,         PHYSICAL,  90, 25,  10
	move MEAN_LOOK,    EFFECT_MEAN_LOOK,           0, NORMAL,        STATUS,   100,  5,   0
	move ATTRACT,      EFFECT_ATTRACT,             0, NORMAL,        STATUS,   100, 15,   0
	move SLEEP_TALK,   EFFECT_SLEEP_TALK,          0, NORMAL,        STATUS,   100, 10,   0
	move HEAL_BELL,    EFFECT_HEAL_BELL,           0, NORMAL,        STATUS,   100,  5,   0
	move RETURN,       EFFECT_RETURN,              1, NORMAL,        PHYSICAL, 100, 20,   0
	move PRESENT,      EFFECT_PRESENT,             1, NORMAL,        PHYSICAL,  90, 15,   0
	move FRUSTRATION,  EFFECT_FRUSTRATION,         1, NORMAL,        PHYSICAL, 100, 20,   0
	move SAFEGUARD,    EFFECT_SAFEGUARD,           0, NORMAL,        STATUS,   100, 25,   0
	move PAIN_SPLIT,   EFFECT_PAIN_SPLIT,          0, NORMAL,        STATUS,   100, 20,   0
	move SACRED_FIRE,  EFFECT_SACRED_FIRE,       100, FIRE,          PHYSICAL,  95,  5,  50
	move MAGNITUDE,    EFFECT_MAGNITUDE,           1, GROUND,        PHYSICAL, 100, 30,   0
	move DYNAMICPUNCH, EFFECT_CONFUSE_HIT,       100, FIGHTING,      PHYSICAL,  50,  5, 100
	move MEGAHORN,     EFFECT_NORMAL_HIT,        120, BUG,           PHYSICAL,  85, 10,   0
	move DRAGONBREATH, EFFECT_PARALYZE_HIT,       60, DRAGON,        SPECIAL,  100, 20,  30
	move BATON_PASS,   EFFECT_BATON_PASS,          0, NORMAL,        STATUS,   100, 40,   0
	move ENCORE,       EFFECT_ENCORE,              0, NORMAL,        STATUS,   100,  5,   0
	move PURSUIT,      EFFECT_PURSUIT,            40, DARK,          PHYSICAL, 100, 20,   0
	move RAPID_SPIN,   EFFECT_RAPID_SPIN,         20, NORMAL,        PHYSICAL, 100, 40,   0
	move SWEET_SCENT,  EFFECT_EVASION_DOWN,        0, NORMAL,        STATUS,   100, 20,   0
	move IRON_TAIL,    EFFECT_DEFENSE_DOWN_HIT,  100, STEEL,         PHYSICAL,  75, 15,  30
	move METAL_CLAW,   EFFECT_ATTACK_UP_HIT,      50, STEEL,         PHYSICAL,  95, 35,  10
	move VITAL_THROW,  EFFECT_ALWAYS_HIT,         70, FIGHTING,      PHYSICAL, 100, 10,   0
	move MORNING_SUN,  EFFECT_MORNING_SUN,         0, NORMAL,        STATUS,   100,  5,   0
	move SYNTHESIS,    EFFECT_SYNTHESIS,           0, GRASS,         STATUS,   100,  5,   0
	move MOONLIGHT,    EFFECT_MOONLIGHT,           0, NORMAL,        STATUS,   100,  5,   0
	move HIDDEN_POWER, EFFECT_HIDDEN_POWER,        1, NORMAL,        SPECIAL,  100, 15,   0
	move CROSS_CHOP,   EFFECT_NORMAL_HIT,        100, FIGHTING,      PHYSICAL,  80,  5,   0
	; Hurricane, previously Twister
	; +10 accuracy, -5 PP
	move HURRICANE,    EFFECT_HURRICANE,         110, FLYING,   SPECIAL,   80,  5,  30
	move RAIN_DANCE,   EFFECT_RAIN_DANCE,          0, WATER,         STATUS,    90,  5,   0
	move SUNNY_DAY,    EFFECT_SUNNY_DAY,           0, FIRE,          STATUS,    90,  5,   0
	move CRUNCH,       EFFECT_SP_DEF_DOWN_HIT,    80, DARK,          PHYSICAL, 100, 15,  20
	move MIRROR_COAT,  EFFECT_MIRROR_COAT,         1, PSYCHIC,  SPECIAL,  100, 20,   0
	move PSYCH_UP,     EFFECT_PSYCH_UP,            0, NORMAL,        STATUS,   100, 10,   0
	move EXTREMESPEED, EFFECT_PRIORITY_HIT,       80, NORMAL,        PHYSICAL, 100,  5,   0
	move ANCIENTPOWER, EFFECT_ALL_UP_HIT,         60, ROCK,          SPECIAL,  100,  5,  10
	move SHADOW_BALL,  EFFECT_SP_DEF_DOWN_HIT,    80, GHOST,         SPECIAL,  100, 15,  20
	move FUTURE_SIGHT, EFFECT_FUTURE_SIGHT,       80, PSYCHIC,  SPECIAL,   90, 15,   0
	move ROCK_SMASH,   EFFECT_DEFENSE_DOWN_HIT,   20, FIGHTING,      PHYSICAL, 100, 15,  50
	move WHIRLPOOL,    EFFECT_TRAP_TARGET,        15, WATER,         SPECIAL,   70, 15,   0
	move BEAT_UP,      EFFECT_BEAT_UP,            10, DARK,          PHYSICAL, 100, 10,   0
	; Fairy Wind
	move FAIRY_WIND    EFFECT_NORMAL_HIT,         40, FAIRY,    SPECIAL,  100, 25,   0
	; Moonblast                                   -5                           -5
	move MOONBLAST     EFFECT_SP_ATK_DOWN_HIT,    90, FAIRY,    SPECIAL,  100, 10,  30
	; Play Rough
	move PLAY_ROUGH    EFFECT_ATTACK_DOWN_HIT,    90, FAIRY,    PHYSICAL,  90, 10,  10
	; Struggle
	; this is $FF or -1, so it can never be used in a list
	move STRUGGLE,     EFFECT_RECOIL_HIT,         50, NORMAL,   100,  1,   0