; TypeNames indexes (see data/types/names.asm)
; also used in:
; - PokedexTypeSearchConversionTable (see data/types/search_types.asm)
; - PokedexTypeSearchStrings (see data/types/search_strings.asm)
; - TypeMatchups (see data/types/type_matchups.asm)
; - TypeBoostItems (see data/types/type_boost_items.asm)
	const_def

	const NORMAL
	const FIGHTING
	const FLYING
	const POISON
	const GROUND
	const ROCK
	const BUG
	const DARK
	const STEEL

UNUSED_TYPES EQU const_value
	const BIRD
	const CURSE_T
UNUSED_TYPES_END EQU const_value

	const FIRE
	const WATER
	const GRASS
	const ELECTRIC
	const PSYCHIC
	const ICE
	const DRAGON
	const GHOST
	const FAIRY
TYPES_END EQU const_value

NUM_TYPES EQU TYPES_END + UNUSED_TYPES - UNUSED_TYPES_END

TYPE_MASK EQU %00111111
ADAPTIVE  EQU %00000000
PHYSICAL  EQU %01000000
SPECIAL   EQU %10000000
STATUS    EQU %11000000