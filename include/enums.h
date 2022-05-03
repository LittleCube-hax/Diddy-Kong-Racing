#ifndef ENUMS_H
#define ENUMS_H

/* All the enums defined here can be used in asset files */

typedef enum Vehicle {
    VEHICLE_CAR,
    VEHICLE_HOVERCRAFT,
    VEHICLE_PLANE
} Vehicle;

typedef enum Language {
    LANGUAGE_ENGLISH,
    LANGUAGE_GERMAN,
    LANGUAGE_FRENCH,
    LANGUAGE_JAPANESE
} Language;

typedef enum World {
    WORLD_NONE = -1, // This enum starts at -1 instead of 0.
    WORLD_CENTRAL_AREA,
    WORLD_DINO_DOMAIN,
    WORLD_SHERBET_ISLAND,
    WORLD_SNOWFLAKE_MOUNTAIN,
    WORLD_DRAGON_FOREST,
    WORLD_FUTURE_FUN_LAND
} World;

typedef enum RaceType {
    RACETYPE_DEFAULT           =  0,
    RACETYPE_HORSESHOE_GULCH   =  3,
    RACETYPE_HUBWORLD          =  5,
    RACETYPE_CUTSCENE_1        =  6, // Not sure what the difference between these two are.
    RACETYPE_CUTSCENE_2        =  7,
    RACETYPE_BOSS              =  8,
    RACETYPE_CHALLENGE         = 64, // For masking
    RACETYPE_CHALLENGE_BATTLE  = 64,
    RACETYPE_CHALLENGE_BANANAS = 65,
    RACETYPE_CHALLENGE_EGGS    = 66
} RaceType;

typedef enum HorizontalAlignmentFlags {
    HORZ_ALIGN_LEFT   = 0,
    HORZ_ALIGN_RIGHT  = 1,
    HORZ_ALIGN_CENTER = 4
} HorizontalAlignmentFlags;

typedef enum VerticalAlignmentFlags {
    VERT_ALIGN_TOP    = 0,
    VERT_ALIGN_BOTTOM = 2,
    VERT_ALIGN_MIDDLE = 8
} VerticalAlignmentFlags;

typedef enum AlignmentFlags {
    ALIGN_TOP_LEFT      = VERT_ALIGN_TOP | HORZ_ALIGN_LEFT,
    ALIGN_TOP_CENTER    = VERT_ALIGN_TOP | HORZ_ALIGN_CENTER,
    ALIGN_TOP_RIGHT     = VERT_ALIGN_TOP | HORZ_ALIGN_RIGHT,
    ALIGN_MIDDLE_LEFT   = VERT_ALIGN_MIDDLE | HORZ_ALIGN_LEFT,
    ALIGN_MIDDLE_CENTER = VERT_ALIGN_MIDDLE | HORZ_ALIGN_CENTER,
    ALIGN_MIDDLE_RIGHT  = VERT_ALIGN_MIDDLE | HORZ_ALIGN_RIGHT,
    ALIGN_BOTTOM_LEFT   = VERT_ALIGN_BOTTOM | HORZ_ALIGN_LEFT,
    ALIGN_BOTTOM_CENTER = VERT_ALIGN_BOTTOM | HORZ_ALIGN_CENTER,
    ALIGN_BOTTOM_RIGHT  = VERT_ALIGN_BOTTOM | HORZ_ALIGN_RIGHT
} AlignmentFlags;

typedef enum ObjectBehavior {
    OBJECT_BEHAVIOR_NONE = -1, 
    OBJECT_BEHAVIOR_0, 
    OBJECT_BEHAVIOR_RACER, 
    OBJECT_BEHAVIOR_SCENERY, 
    OBJECT_BEHAVIOR_FISH, 
    OBJECT_BEHAVIOR_ANIMATOR, 
    OBJECT_BEHAVIOR_WEAPON_TRAP,
    OBJECT_BEHAVIOR_SMOKE,  
    OBJECT_BEHAVIOR_EXIT,  
    OBJECT_BEHAVIOR_AUDIO,  
    OBJECT_BEHAVIOR_AUDIOLINE,  
    OBJECT_BEHAVIOR_CAMERACONTROL,
    OBJECT_BEHAVIOR_SETUPPOINT,
    OBJECT_BEHAVIOR_DINO_WHALE,
    OBJECT_BEHAVIOR_CHECKPOINT,
    OBJECT_BEHAVIOR_DOOR,
    OBJECT_BEHAVIOR_FOGCHANGER,
    OBJECT_BEHAVIOR_AI_NODE,
    OBJECT_BEHAVIOR_WEAPONBALLOON,
    OBJECT_BEHAVIOR_WEAPON_MISSLE,
    OBJECT_BEHAVIOR_AUDIOSEQLINE,
    OBJECT_BEHAVIOR_AUDIOSEQ,
    OBJECT_BEHAVIOR_21,
    OBJECT_BEHAVIOR_BOMBEXPLOSION,
    OBJECT_BEHAVIOR_WBALLOONPOP,
    OBJECT_BEHAVIOR_24,
    OBJECT_BEHAVIOR_25,
    OBJECT_BEHAVIOR_SKYCONTROL,
    OBJECT_BEHAVIOR_AUDIOREVERB,
    OBJECT_BEHAVIOR_TORCH_MIST,
    OBJECT_BEHAVIOR_TEXSCROLL,
    OBJECT_BEHAVIOR_MODECHANGE,
    OBJECT_BEHAVIOR_STOPWATCH_MAN,
    OBJECT_BEHAVIOR_BANANA,
    OBJECT_BEHAVIOR_RGBALIGHT,
    OBJECT_BEHAVIOR_34,
    OBJECT_BEHAVIOR_35,
    OBJECT_BEHAVIOR_BUOY_PIRATESHOP,
    OBJECT_BEHAVIOR_WEATHER,
    OBJECT_BEHAVIOR_BRIDGE_WHALERAMP,
    OBJECT_BEHAVIOR_RAMPSWITCH,
    OBJECT_BEHAVIOR_SEAMONSTER,
    OBJECT_BEHAVIOR_BONUS,
    OBJECT_BEHAVIOR_INTROCAM,
    OBJECT_BEHAVIOR_LENSFLARE,
    OBJECT_BEHAVIOR_LENSFLARESWITCH,
    OBJECT_BEHAVIOR_COLLECTEGG,
    OBJECT_BEHAVIOR_EGGCREATOR,
    OBJECT_BEHAVIOR_CHARACTERFLAG,
    OBJECT_BEHAVIOR_48,
    OBJECT_BEHAVIOR_ANIMATION,
    OBJECT_BEHAVIOR_50,
    OBJECT_BEHAVIOR_ANIMCAMERA,
    OBJECT_BEHAVIOR_INFOPOINT,
    OBJECT_BEHAVIOR_ANIMCAR,
    OBJECT_BEHAVIOR_54,
    OBJECT_BEHAVIOR_TRIGGER,
    OBJECT_BEHAVIOR_INTROANIM,
    OBJECT_BEHAVIOR_AIRZIPPER,
    OBJECT_BEHAVIOR_58,
    OBJECT_BEHAVIOR_WAVEGENERATOR,
    OBJECT_BEHAVIOR_WAVEPOWER,
    OBJECT_BEHAVIOR_BUTTERFLY,
    OBJECT_BEHAVIOR_PARKWARDEN,
    OBJECT_BEHAVIOR_STOPWATCHICON,
    OBJECT_BEHAVIOR_WORLDKEY,
    OBJECT_BEHAVIOR_BANANACREATOR,
    OBJECT_BEHAVIOR_TREASURESUCKER,
    OBJECT_BEHAVIOR_LOG,
    OBJECT_BEHAVIOR_LAVASPURT,
    OBJECT_BEHAVIOR_POSARROW,
    OBJECT_BEHAVIOR_HITTESTER,
    OBJECT_BEHAVIOR_MIDIFADE,
    OBJECT_BEHAVIOR_72,
    OBJECT_BEHAVIOR_EFFECTBOX,
    OBJECT_BEHAVIOR_TROPHYCABINET,
    OBJECT_BEHAVIOR_BUBBLER,
    OBJECT_BEHAVIOR_FLYCOIN,
    OBJECT_BEHAVIOR_GOLDENBALLOON,
    OBJECT_BEHAVIOR_LASERBOLT,
    OBJECT_BEHAVIOR_LASERGUN,
    OBJECT_BEHAVIOR_GBPARKWARDEN,
    OBJECT_BEHAVIOR_SPACESHIP,
    OBJECT_BEHAVIOR_GROUNDZIPPER,
    OBJECT_BEHAVIOR_OVERRIDEPOS,
    OBJECT_BEHAVIOR_SPACESHIP2,
    OBJECT_BEHAVIOR_BUTTERFLYBAIT,
    OBJECT_BEHAVIOR_86,
    OBJECT_BEHAVIOR_PARKWARDEN_SAFETELEPORT,
    OBJECT_BEHAVIOR_SILVERCOIN,
    OBJECT_BEHAVIOR_BOOST,
    OBJECT_BEHAVIOR_WARDENSMOKE,
    OBJECT_BEHAVIOR_TROPHY,
    OBJECT_BEHAVIOR_HEADFORPOINT,
    OBJECT_BEHAVIOR_WATERZIPPER,
    OBJECT_BEHAVIOR_94,
    OBJECT_BEHAVIOR_PIGHEADCOLOURS,
    OBJECT_BEHAVIOR_96,
    OBJECT_BEHAVIOR_SNOWBALL,
    OBJECT_BEHAVIOR_TELEPORT,
    OBJECT_BEHAVIOR_LIGHTHOUSE,
    OBJECT_BEHAVIOR_ROCKETSIGNPOST,
    OBJECT_BEHAVIOR_101,
    OBJECT_BEHAVIOR_102,
    OBJECT_BEHAVIOR_103,
    OBJECT_BEHAVIOR_WINDSAIL,
    OBJECT_BEHAVIOR_RANGETRIGGER,
    OBJECT_BEHAVIOR_CHECKARROW,
    OBJECT_BEHAVIOR_FIREBALLATTRACT,
    OBJECT_BEHAVIOR_FIREBALL_OCTOBOMB,
    OBJECT_BEHAVIOR_FROG,
    OBJECT_BEHAVIOR_SILVERCOIN_ADV2,
    OBJECT_BEHAVIOR_TTDOOR,
    OBJECT_BEHAVIOR_MIDIFADEPOINT,
    OBJECT_BEHAVIOR_DOOROPENER,
    OBJECT_BEHAVIOR_114,
    OBJECT_BEHAVIOR_PIGROCKETEER,
    OBJECT_BEHAVIOR_OCTOBUBBLE,
    OBJECT_BEHAVIOR_LEVELNAME,
    OBJECT_BEHAVIOR_MIDICHSET,
    OBJECT_BEHAVIOR_WIZGHOSTS
} ObjectBehavior;

#endif
