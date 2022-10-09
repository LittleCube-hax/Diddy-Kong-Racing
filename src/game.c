/* The comment below is needed for this file to be picked up by generate_ld */
/* RAM_POS: 0x8006A6B0 */

#include "game.h"

#include <PR/os_cont.h>
#include <PR/gu.h>
#include <PR/os_time.h>
#include "memory.h"
#include "types.h"
#include "macros.h"
#include "structs.h"
#include "f3ddkr.h"
#include "asset_enums.h"
#include "asset_loading.h"
#include "menu.h"
#include "video.h"
#include "set_rsp_segment.h"
#include "gzip.h"
#include "printf.h"
#include "thread0_epc.h"
#include "thread30.h"
#include "weather.h"
#include "audio.h"
#include "objects.h"
#include "camera.h"
#include "save_data.h"
#include "unknown_078050.h"
#include "unknown_003260.h"
#include "unknown_032760.h"
#include "textures_sprites.h"
#include "PR/os_internal.h"
#include "printf.h"
#include "fade_transition.h"
#include "unknown_077C50.h"
#include "unknown_008C40.h"
#include "unknown_0255E0.h"
#include "game_text.h"
#include "game_ui.h"
#include "main.h"
#include "object_models.h"
#include "racer.h"
#include "particles.h"
#include "string.h"
#include "stdarg.h"

/************ .rodata ************/

UNUSED const char sLevelErrorString[] = "LOADLEVEL Error: Level out of range\n";
UNUSED const char sBossErrorString[] = "BossLev problem\n";
UNUSED const char sAITableErrorString[] = "AITABLE Error: Table out of range\n";
UNUSED const char sDebugVersionInfoString[] = "1.1605";
UNUSED const char sDebugBuildDateString[] = "02/10/97 16:03";
UNUSED const char sDebugUsernameString[] = "pmountain";

const char D_800E7134[] = "BBB\n"; // Functionally unused.
UNUSED const char sDebugCarString[] = "CAR";
UNUSED const char sDebugHovercraftString[] = "HOV";
UNUSED const char sDebugPlaneString[] = "PLN";
UNUSED const char sDebugVehicleSwapString[] = "Swapping\n";

/*********************************/

/************ .data ************/

s8 *D_800DD310 = NULL; // Currently unknown, might be a different type.
s8 D_800DD314 = -1;
u8 D_800DD318 = 0;
s32 D_800DD31C = 0;

// Updated automatically from calc_func_checksums.py
s32 gFunc80068158Checksum = 0x585E;
s32 gFunc80068158Length = 0x154;

s16 D_800DD328 = 0;
s16 D_800DD32C = 0;

s8 D_800DD330 = 0;

UNUSED char *sDebugRomBuildInfo[6] = {
    NULL, NULL, NULL, // These could be a file boundary.
    (char *)sDebugVersionInfoString,
    (char *)sDebugBuildDateString,
    (char *)sDebugUsernameString
};

UNUSED char gBuildString[40] = "Version 7.7 29/09/97 15.00 L.Schuneman";

s8 sAntiPiracyTriggered = 0;
s32 D_800DD378 = 1;
s32 D_800DD37C = 0;
s32 D_800DD380 = 0;
s32 sControllerStatus = 0;
s32 D_800DD388 = 0; // Currently unknown, might be a different type.
s8 D_800DD38C = 0;
s8 D_800DD390 = 0;
s16 D_800DD394 = 0;
s8 D_800DD398 = 0;
s8 D_800DD39C = 0;
s8 D_800DD3A0 = FALSE;
s32 D_800DD3A4 = 0; // Currently unknown, might be a different type.
s32 D_800DD3A8 = 0; // Currently unknown, might be a different type.
s32 D_800DD3AC = 0; // Currently unknown, might be a different type.
s32 gNumF3dCmdsPerPlayer[4] = { 4500, 7000, 11000, 11000 };
s32 gNumHudVertsPerPlayer[4] = { 300, 600, 850, 900 };
s32 gNumHudMatPerPlayer[4] = { 300, 400, 550, 600 };
s32 gNumHudTrisPerPlayer[4] = { 20, 30, 40, 50 };
s8 D_800DD3F0 = 0;
FadeTransition D_800DD3F4 = FADE_TRANSITION(128, FADE_COLOR_BLACK, 20, 0);
// Unused?
FadeTransition D_800DD3FC = FADE_TRANSITION(0, FADE_COLOR_WHITE, 20, -1);
s32 sLogicUpdateRate = LOGIC_5FPS;
FadeTransition D_800DD408 = FADE_TRANSITION(0, FADE_COLOR_WHITE, 30, -1);
// Unused?
// CAR / HOV / PLN - So this is vehicle type?
UNUSED char *D_800DD410[3] = {
    (char *)sDebugCarString, (char *)sDebugHovercraftString, (char *)sDebugPlaneString
};
FadeTransition D_800DD41C = FADE_TRANSITION(0, FADE_COLOR_BLACK, 30, -1);
FadeTransition D_800DD424 = FADE_TRANSITION(0, FADE_COLOR_BLACK, 260, -1);
/*******************************/

extern s32 gShowControllerPakMenu;

/************ .bss ************/

s32 *gTempAssetTable;
s32 D_80121164;
LevelHeader *gCurrentLevelHeader;
u8 **gLevelNames;
s32 gNumberOfLevelHeaders;
s32 gNumberOfWorlds;

s8 *D_80121178;
unk8012117C *D_8012117C;

s32 D_80121180[16];

TempStruct5 *D_801211C0;
s16 D_801211C8[20];
Gfx *gDisplayLists[2];
Gfx *gCurrDisplayList;
s32 D_801211FC;
Mtx *gHudMatrices[2];
Mtx *gCurrHudMat;
VertexList *gHudVertices[2];
VertexList *gCurrHudVerts;
TriangleList *gHudTriangles[2];
TriangleList *gCurrHudTris;
s32 D_80121230[8];
s8 D_80121250[16]; //Settings4C
OSSched gMainSched; // 0x288 / 648 bytes
s8 D_80121268[8192]; // 0x2000 / 8192 bytes Padding?
s32 gSPTaskNum;
s32 sRenderContext;
s32 D_801234F0;
s32 D_801234F4;
s32 D_801234F8;
s32 D_801234FC;
s32 D_80123500;
s32 D_80123504;
s32 D_80123508;
s32 D_8012350C;
Settings *gSettingsPtr;
s8 gIsLoading;
s8 gIsPaused;
s8 D_80123516;
s32 gLevelDefaultVehicleID;
s32 D_8012351C; // Looks to be the current level's vehicle ID.
s32 sBootDelayTimer;
s8 D_80123524;
s8 D_80123525;
s8 D_80123526;
s32 gCurrNumF3dCmdsPerPlayer;
s32 gCurrNumHudMatPerPlayer;
s32 gCurrNumHudTrisPerPlayer;
s32 gCurrNumHudVertsPerPlayer;
OSScClient *gNMISched[3];
OSMesg gNMIMesgBuf;
OSMesgQueue gNMIMesgQueue;
s32 D_80123560[8];

/******************************/

#ifdef NON_MATCHING
// Only has regalloc issues.
void func_8006A6B0(void) {
  s32 i;
  s32 temp;
  s32 count;
  s32 checksumCount;
  u8 *sp44;
  s32 temp2;

  sp44 = allocate_from_main_pool_safe(sizeof(LevelHeader), COLOUR_TAG_YELLOW);
  gTempAssetTable = load_asset_section_from_rom(ASSET_LEVEL_HEADERS_TABLE);
  i = 0;
  while (i < 16) {
    D_80121180[i++] = 0;
  }
  gNumberOfLevelHeaders = 0;
  while (gTempAssetTable[gNumberOfLevelHeaders] != -1) {
    gNumberOfLevelHeaders++;
  }
  gNumberOfLevelHeaders--;
  D_8012117C = allocate_from_main_pool_safe(gNumberOfLevelHeaders * sizeof(unk8012117C), COLOUR_TAG_YELLOW);
  gCurrentLevelHeader = sp44;
  gNumberOfWorlds = -1;
  for (i = 0; i < gNumberOfLevelHeaders; i++) {
    load_asset_to_address(ASSET_LEVEL_HEADERS, gCurrentLevelHeader, gTempAssetTable[i], sizeof(LevelHeader));
    if (gNumberOfWorlds < gCurrentLevelHeader->world) {
      gNumberOfWorlds = gCurrentLevelHeader->world;
    }
    if ((gCurrentLevelHeader->race_type >= 0) && (gCurrentLevelHeader->race_type < 16)) {
      D_80121180[gCurrentLevelHeader->race_type]++;
    }
    D_8012117C[i].unk0 = gCurrentLevelHeader->world;
    D_8012117C[i].unk1 = gCurrentLevelHeader->race_type;
    D_8012117C[i].unk2 = ((u16)gCurrentLevelHeader->available_vehicles) << 4;
    D_8012117C[i].unk2 |= gCurrentLevelHeader->vehicle & 0xF;
    D_8012117C[i].unk3 = 1;
    D_8012117C[i].unk4 = gCurrentLevelHeader->unkB0;
  }

  gNumberOfWorlds++;
  D_80121178 = allocate_from_main_pool_safe(gNumberOfWorlds, COLOUR_TAG_YELLOW);
  for (i = 0; i < gNumberOfWorlds; i++) {
    D_80121178[i] = -1;
  }
  for (i = 0; i < gNumberOfLevelHeaders; i++) {
    if ((D_8012117C[i].unk1 == 5) != 0) {
      D_80121178[D_8012117C[i].unk0] = i;
    }
  }
  free_from_memory_pool(gTempAssetTable);
  free_from_memory_pool(sp44);

  gTempAssetTable = load_asset_section_from_rom(ASSET_LEVEL_NAMES_TABLE);

  for (i = 0; gTempAssetTable[i] != (-1); i++){}
  i--;

  temp = gTempAssetTable[i];
  temp -= gTempAssetTable[0];

  gLevelNames = allocate_from_main_pool_safe(i * sizeof(s32), COLOUR_TAG_YELLOW);
  D_800DD310 = allocate_from_main_pool_safe(temp, COLOUR_TAG_YELLOW);
  load_asset_to_address(ASSET_LEVEL_NAMES, D_800DD310, 0, temp);
  for (count = 0; count < i; count++) {
    gLevelNames[count] = &D_800DD310[gTempAssetTable[count]];
  }
  free_from_memory_pool(gTempAssetTable);

  checksumCount = 0;
  for (i = 0; i < gFunc80068158Length; i++) {
    checksumCount += ((u8 *) (&func_80068158))[i];
  }
  if (checksumCount != gFunc80068158Checksum) {
    disable_button_mask();
  }
}
#else
GLOBAL_ASM("asm/non_matchings/game/func_8006A6B0.s")
#endif

// Unused.
s16 func_8006ABB4(s32 arg0) {
    if (arg0 < 0) {
        return 0xE10;
    }
    if (arg0 >= gNumberOfLevelHeaders) {
        return 0xE10;
    }
    return D_8012117C[arg0].unk4;
}

// Unused?
GLOBAL_ASM("asm/non_matchings/game/func_8006AC00.s")

// Unused?
GLOBAL_ASM("asm/non_matchings/game/func_8006AE2C.s")

// Unused.
s32 func_8006B018(s8 arg0) {
    if ((arg0 >= 0) && (arg0 < 16)) {
        return D_80121180[arg0];
    }
    return 0;
}

// Unused.
s32 func_8006B054(s8 arg0) {
    s32 out, i;
    out = 0;
    for (i = 0; i < gNumberOfLevelHeaders; i++) {
        if (arg0 == D_8012117C[i].unk0) {
            out++;
        }
    }
    return out;
}

s32 func_8006B0AC(s32 arg0) {
    if (arg0 > 0 && arg0 < gNumberOfLevelHeaders) {
        return D_8012117C[arg0].unk2 & 0xF;
    }
    return 0;
}

s32 func_8006B0F8(s32 arg0) {
    if (arg0 > 0 && arg0 < gNumberOfLevelHeaders) {
        s32 temp = D_8012117C[arg0].unk2;
        if (temp != 0) {
            return (temp >> 4) & 0xF;
        }
    }
    return 1;
}

s8 func_8006B14C(s32 arg0) {
    if (arg0 >= 0 && arg0 < gNumberOfLevelHeaders) {
        return D_8012117C[arg0].unk1;
    }
    return -1;
}

s8 func_8006B190(s32 arg0) {
    if (arg0 >= 0 && arg0 < gNumberOfLevelHeaders) {
        return D_8012117C[arg0].unk0;
    }
    return 0;
}

s32 get_hub_area_id(s32 worldId) {
    s8 *hubAreaIds;

    if (worldId < 0 || worldId >= gNumberOfWorlds) {
        worldId = 0;
    }
    hubAreaIds = (s8 *)get_misc_asset(MISC_ASSET_UNK1B); //hub_area_ids

    return hubAreaIds[worldId];
}

void get_number_of_levels_and_worlds(s32 *outLevelCount, s32 *outWorldCount) {
    *outLevelCount = gNumberOfLevelHeaders;
    *outWorldCount = gNumberOfWorlds;
}

s32 func_8006B240(void) {
    return D_800DD31C;
}

// This isn't matching, but there shouldn't be any issues (hopefully).
#ifdef NON_EQUIVALENT

void load_level(s32 levelId, s32 numberOfPlayers, s32 entranceId, s32 vehicleId, s32 cutsceneId) {
    s32 maxLevelCount;
    s32 sp44;
    s32 noPlayers;
    s32 phi_s0;
    s32 vehicle;
    s32 i;
    s32 size;
    s32 offset;
    s32 temp;
    s32 phi_v1_2;
    s32 phi_v0_2;
    s8 *someAsset;
    Settings *settings;

    func_80072708();
    if (cutsceneId == -1) {
        cutsceneId = 0;
    }
    if (numberOfPlayers == ZERO_PLAYERS) {
        noPlayers = TRUE;
        numberOfPlayers = ONE_PLAYER;
    } else {
        noPlayers = FALSE;
    }
    if (numberOfPlayers == ONE_PLAYER) {
        set_sound_channel_count(8);
    } else if (numberOfPlayers == TWO_PLAYERS) {
        set_sound_channel_count(12);
    } else {
        set_sound_channel_count(16);
    }

    settings = get_settings();
    gTempAssetTable = load_asset_section_from_rom(ASSET_LEVEL_HEADERS_TABLE);
    maxLevelCount = 0;
    while (gTempAssetTable[maxLevelCount] != -1) {
        maxLevelCount++;
    }
    maxLevelCount--;
    if (levelId >= maxLevelCount) {
        levelId = 0;
    }
    offset = gTempAssetTable[levelId];
    size = gTempAssetTable[levelId + 1] - offset;
    gCurrentLevelHeader = (LevelHeader *)allocate_from_main_pool_safe(size, COLOUR_TAG_YELLOW);
    load_asset_to_address(ASSET_LEVEL_HEADERS, gCurrentLevelHeader, offset, size);
    D_800DD330 = 0;
    sp44 = levelId;
    if (gCurrentLevelHeader->race_type == RACETYPE_DEFAULT) {
        func_8006C2E4();
    }
    if (func_8006C2F0() == 0) {
        if (D_800DD32C == 0) {
            if (gCurrentLevelHeader->race_type == RACETYPE_BOSS) {
                phi_v1_2 = settings->courseFlagsPtr[levelId];
                phi_v0_2 = FALSE;
                if (gCurrentLevelHeader->world == 0 || gCurrentLevelHeader->world == 5) {
                    phi_v0_2 = TRUE;
                }
                if (!(phi_v1_2 & 1) || phi_v0_2) {
                    func_8006C1AC(levelId, entranceId, vehicleId, cutsceneId);
                    if (settings->bosses & (1 << settings->worldId)) {
                        cutsceneId = 7;
                    } else {
                        cutsceneId = 3;
                    }
                    if (phi_v0_2) {
                        cutsceneId = 0;
                        if (phi_v1_2 & 1) {
                            D_800DD330 = (u8)2;
                        }
                    }
                    someAsset = get_misc_asset(MISC_ASSET_UNK43);
                    phi_s0 = 0;
                    while (levelId != someAsset[phi_s0 + 1]) {
                        phi_s0++;
                    }
                    levelId = someAsset[phi_s0 + 1];
                    entranceId = cutsceneId;
                }
            }
            if (gCurrentLevelHeader->race_type == RACETYPE_HUBWORLD) {
                s32 curWorld = gCurrentLevelHeader->world;
                if (curWorld > 0 && curWorld < 5) {
                    if (settings->keys & (1 << curWorld)) {
                        s32 temp_v0_5 = 0x4000 << (curWorld + 0x1F);
                        if (!(settings->cutsceneFlags & temp_v0_5)) {
                            // Trigger World Key unlocking Challenge Door cutscene.
                            func_8006C1AC(levelId, entranceId, vehicleId, cutsceneId);
                            settings->cutsceneFlags |= temp_v0_5;
                            levelId = get_misc_asset(MISC_ASSET_UNK44)[curWorld - 1];
                            entranceId = 0;
                            cutsceneId = 5;
                        }
                    }
                }
            }
            if (gCurrentLevelHeader->race_type == RACETYPE_HUBWORLD && gCurrentLevelHeader->world == 0 && !(settings->cutsceneFlags & CUTSCENE_WIZPIG_FACE) && settings->wizpigAmulet >= 4) {
                // Trigger wizpig face cutscene
                s32 savedEntranceId = entranceId;
                s32 savedCutsceneId = cutsceneId;
                cutsceneId = 0;
                entranceId = 0;
                func_8006C1AC(levelId, savedEntranceId, vehicleId, savedCutsceneId);
                settings->cutsceneFlags |= CUTSCENE_WIZPIG_FACE;
                levelId = get_misc_asset(MISC_ASSET_UNK44)[1];
            }
        }
    }
    D_800DD32C = 0;
    if (sp44 != levelId) {
        free_from_memory_pool(gCurrentLevelHeader);
        offset = gTempAssetTable[levelId];
        size = gTempAssetTable[levelId + 1] - offset;
        gCurrentLevelHeader = allocate_from_main_pool_safe(size, COLOUR_TAG_YELLOW);
        load_asset_to_address(ASSET_LEVEL_HEADERS, gCurrentLevelHeader, offset, size);
    }
    free_from_memory_pool(gTempAssetTable);
    func_8006BFC8(&gCurrentLevelHeader->unk20);
    func_8000CBC0();
    D_80121164 = levelId;
    for (i = 0; i < 7; i++) {
        if ((s32)gCurrentLevelHeader->unk74[i] != -1) {
            gCurrentLevelHeader->unk74[i] = get_misc_asset((s32)gCurrentLevelHeader->unk74[i]);
            func_8007F1E8(gCurrentLevelHeader->unk74[i]);
        }
    }
    if (cutsceneId == 0x64) {
        if (get_trophy_race_world_id() != 0 && gCurrentLevelHeader->race_type == RACETYPE_DEFAULT) {
            cutsceneId = 0;
        } else if (is_in_tracks_mode() == 1 && gCurrentLevelHeader->race_type == RACETYPE_DEFAULT) {
            cutsceneId = 0;
        }
    }
    if (gCurrentLevelHeader->race_type == RACETYPE_DEFAULT || gCurrentLevelHeader->race_type == RACETYPE_BOSS) {
        D_800DD31C = 1;
    } else {
        D_800DD31C = 0;
    }
    if (noPlayers && gCurrentLevelHeader->race_type != RACETYPE_CUTSCENE_2) {
        gCurrentLevelHeader->race_type = RACETYPE_CUTSCENE_1;
    }
    set_music_player_voice_limit(gCurrentLevelHeader->voiceLimit);
    func_80000CBC();
    func_80031BB8(0x20);
    vehicle = VEHICLE_CAR;
    if (vehicleId >= VEHICLE_CAR && vehicleId < NUMBER_OF_VEHICLE_TYPES) {
        vehicle = gCurrentLevelHeader->unk4F[vehicleId];
    }
    func_80017E74(vehicle);
    temp = settings->worldId;
    if (gCurrentLevelHeader->world != -1) {
        settings->worldId = gCurrentLevelHeader->world;
    }
    settings->courseId = levelId;
    if (temp == 0 && settings->worldId > 0) {
        D_800DD314 = get_level_default_vehicle();
    }
    if (settings->worldId == 0 && temp > 0 && D_800DD314 != -1) {
        vehicleId = D_800DD314;
    }
    func_8006DB20(vehicleId);
    if (gCurrentLevelHeader->race_type == RACETYPE_HUBWORLD) {
        if (settings->worldId > 0) {
            s32 temp_s0_5 = 8 << (settings->worldId + 31);
            if (settings->worldId == 5) {
                if (settings->balloonsPtr[0] >= 47) {
                    if (settings->ttAmulet >= 4) {
                        if ((settings->cutsceneFlags & temp_s0_5) == 0) {
                            settings->cutsceneFlags |= temp_s0_5;
                            cutsceneId = 5;
                        }
                    }
                }
            } else {
                if (settings->balloonsPtr[settings->worldId] >= 4) {
                    if ((settings->cutsceneFlags & temp_s0_5) == 0) {
                        settings->cutsceneFlags |= temp_s0_5;
                        cutsceneId = 5;
                    }
                }
                if (settings->balloonsPtr[settings->worldId] >= 8) {
                    s32 temp3 = temp_s0_5 << 5;
                    if (!(settings->cutsceneFlags & temp3)) {
                        settings->cutsceneFlags |= temp3;
                        cutsceneId = 5;
                    }
                }
            }
        }
    }
    if (numberOfPlayers != ONE_PLAYER && gCurrentLevelHeader->race_type == RACETYPE_DEFAULT) {
        cutsceneId = 0x64;
    }
    if ((gCurrentLevelHeader->race_type == RACETYPE_DEFAULT || (gCurrentLevelHeader->race_type & RACETYPE_CHALLENGE)) && is_in_two_player_adventure()) {
        D_800DD318 = 1;
        cutsceneId = 0x64;
    } else {
        D_800DD318 = 0;
    }
    if (gCurrentLevelHeader->race_type == RACETYPE_DEFAULT && !noPlayers && is_time_trial_enabled()) {
        cutsceneId = 0x64;
    }
    func_8001E450(cutsceneId);
    func_800249F0(gCurrentLevelHeader->geometry, gCurrentLevelHeader->skybox, numberOfPlayers, vehicleId, entranceId, gCurrentLevelHeader->collectables, gCurrentLevelHeader->unkBA);
    if (gCurrentLevelHeader->fogNear == 0 && gCurrentLevelHeader->fogFar == 0 && gCurrentLevelHeader->fogR == 0 && gCurrentLevelHeader->fogG == 0 && gCurrentLevelHeader->fogB == 0) {
        for (i = 0; i < 4; i++) {
            func_800307BC(i);
        }
    } else {
        for (i = 0; i < 4; i++) {
            func_80030664(i, gCurrentLevelHeader->fogNear, gCurrentLevelHeader->fogFar, (u8)gCurrentLevelHeader->fogR, gCurrentLevelHeader->fogG, gCurrentLevelHeader->fogB);
        }
    }
    settings = get_settings();
    if (gCurrentLevelHeader->world != -1) {
        settings->worldId = gCurrentLevelHeader->world;
    }
    settings->courseId = levelId;
    if (gCurrentLevelHeader->weatherEnable > 0) {
        func_800AB4A8(
            gCurrentLevelHeader->weatherType,
            gCurrentLevelHeader->weatherEnable,
            gCurrentLevelHeader->weatherVelX << 8,
            gCurrentLevelHeader->weatherVelY << 8,
            gCurrentLevelHeader->weatherVelZ << 8,
            gCurrentLevelHeader->weatherIntensity * 0x101,
            gCurrentLevelHeader->weatherOpacity * 0x101);
        func_800AB308(-1, -0x200);
    }
    if (gCurrentLevelHeader->unk49 == -1) {
        gCurrentLevelHeader->unkA4 = load_texture(gCurrentLevelHeader->unkA4);
        gCurrentLevelHeader->unkA8 = (u16)0;
        gCurrentLevelHeader->unkAA = (u16)0;
    }
    if ((s32)gCurrentLevelHeader->pulseLightData != -1) {
        // Only used in spaceport alpha for some pulsating lights.
        gCurrentLevelHeader->pulseLightData = get_misc_asset((s32)gCurrentLevelHeader->pulseLightData);
        init_pulsating_light_data(gCurrentLevelHeader->pulseLightData);
    }
    update_camera_fov(gCurrentLevelHeader->cameraFOV);
    set_background_prim_colour(gCurrentLevelHeader->bgColorRed, gCurrentLevelHeader->bgColorGreen, gCurrentLevelHeader->bgColorBlue);
    func_8007A974();
    func_8007AB24(gCurrentLevelHeader->unk4[numberOfPlayers]);
}
#else
GLOBAL_ASM("asm/non_matchings/game/load_level.s")
#endif

void func_8006BD10(f32 arg0) {
    if (gCurrentLevelHeader->music != 0) {
        func_800012E8();
        play_music(gCurrentLevelHeader->music);
        func_800014BC(arg0);
        func_80001074(gCurrentLevelHeader->instruments);
    }
}

s32 func_8006BD88(void) {
    return D_80121164;
}

/**
 * Return the race type ID of the current level.
 */
u8 get_current_level_race_type(void) {
    return gCurrentLevelHeader->race_type;
}

/**
 * Return the header data of the current level.
 */
LevelHeader *get_current_level_header(void) {
    return gCurrentLevelHeader;
}

/**
 * Returns the amount of level headers there are in the game.
 * Goes unused.
 */
UNUSED u8 get_total_level_header_count(void) {
    return gNumberOfLevelHeaders - 1;
}

/**
 * Returns the name of the level from the passed ID
 */
u8 *get_level_name(s32 levelId) {
    u8 *levelName;
    u8 numberOfNullPointers = 0;

    if (levelId < 0 || levelId >= gNumberOfLevelHeaders) {
        return NULL;
    }

    levelName = gLevelNames[levelId];
    switch (get_language()) {
        case LANGUAGE_GERMAN:
            while (numberOfNullPointers < 1) {
                if (*(levelName++) == 0) {
                    numberOfNullPointers++;
                }
            }
            break;
        case LANGUAGE_FRENCH:
            while (numberOfNullPointers < 2) {
                if (*(levelName++) == 0) {
                    numberOfNullPointers++;
                }
            }
            break;
        case LANGUAGE_JAPANESE:
            while (numberOfNullPointers < 3) {
                if (*(levelName++) == 0) {
                    numberOfNullPointers++;
                }
            }
            break;
    }
    return levelName;
}

void func_8006BEFC(void) {
    func_8006C164();
    set_background_prim_colour(0, 0, 0);
    free_from_memory_pool(gCurrentLevelHeader);
    func_800049D8();
    func_80001844();
    func_800018E0();
    func_800012E8();
    func_80031B60();
    func_8002C7D4();
    func_80008174();
    func_80000968(0);
    if (gCurrentLevelHeader->weatherEnable > 0) {
        free_weather_memory();
    }
    //! @bug this will never be true because unk49 is signed.
    if (gCurrentLevelHeader->unk49 == 0xFF) {
        free_texture(gCurrentLevelHeader->unkA4);
    }
}

void func_8006BFC8(s8 *arg0) {
    s32 temp, temp2;
    s16 phi_v1;
    s8 phi_s0;
    Settings *settings;

    phi_s0 = 0;
    if (!is_in_tracks_mode()) {
        settings = get_settings();
        temp = settings->courseFlagsPtr[settings->courseId];
        if (temp & 2) {
            phi_s0 = 1;
        }
        if (temp & 4) {
            phi_s0 = 2;
        }
    } else {
        phi_s0 = 3;
    }

    if (get_trophy_race_world_id() != 0) {
        phi_s0 = 4;
    }

    if (is_in_adventure_two()) {
        phi_s0 += 5;
    }

    phi_s0 = arg0[phi_s0];

    // Check if CHEAT_ULTIMATE_AI is active
    // This check works because a << 6 will but a 1 in the sign bit making it negative
    if ((get_filtered_cheats() << 6) < 0) {
        phi_s0 = 9;
    }
    if (get_render_context() == DRAW_MENU) {
        phi_s0 = 5;
    }
    gTempAssetTable = load_asset_section_from_rom(ASSET_UNKNOWN_0_TABLE);
    phi_v1 = 0;
    while (-1U != gTempAssetTable[phi_v1]) {
        phi_v1++;
    }
    phi_v1--;
    if (phi_s0 >= phi_v1) {
        phi_s0 = 0;
    }
    temp2 = gTempAssetTable[phi_s0];
    temp = gTempAssetTable[phi_s0 + 1] - temp2;
    D_801211C0 = allocate_from_main_pool_safe(temp, COLOUR_TAG_YELLOW);
    load_asset_to_address(ASSET_UNKNOWN_0, D_801211C0, temp2, temp);
    free_from_memory_pool(gTempAssetTable);
}

void func_8006C164(void) {
    free_from_memory_pool(D_801211C0);
}

TempStruct5 *func_8006C18C(void) {
    return D_801211C0;
}

s8 func_8006C19C(void) {
    return D_800DD318;
}

// Push a stack onto D_801211C8
void func_8006C1AC(s32 levelId, s32 entranceId, s32 vehicleId, s32 cutsceneId) {
    D_801211C8[D_800DD328++] = levelId;
    D_801211C8[D_800DD328++] = entranceId;
    D_801211C8[D_800DD328++] = vehicleId;
    D_801211C8[D_800DD328++] = cutsceneId;
}

// Pop a stack from D_801211C8
void func_8006C22C(s32 *levelId, s32 *entranceId, s32 *vehicleId, s32 *cutsceneId) {
    s16 temp_v1;

    D_800DD328--;
    *cutsceneId = D_801211C8[D_800DD328];
    D_800DD328--;
    temp_v1 = D_801211C8[D_800DD328];
    D_800DD328--;
    *entranceId = D_801211C8[D_800DD328];
    D_800DD328--;
    *levelId = D_801211C8[D_800DD328];

    if (temp_v1 != -1) {
        *vehicleId = temp_v1;
    }

    D_800DD32C = 1;
}

void func_8006C2E4(void) {
    D_800DD328 = 0;
}

s16 func_8006C2F0(void) {
    return D_800DD328;
}

s32 func_8006C300(void) {
    if (D_800DD330 >= 2) {
        D_800DD330 = 1;
        return 0;
    } else {
        return D_800DD330;
    }
}

/**
 * Main looping function for the main thread.
 */

void thread3_main(UNUSED void *unused) {
    init_game();
    D_800DD37C = func_8006A1C4(D_800DD37C, 0);
    sBootDelayTimer = 0;
    sRenderContext = DRAW_INTRO;
    while (1) {
        if (is_reset_pressed()) {
            func_80072708();
            audioStopThread();
            stop_thread30();
            __osSpSetStatus(SP_SET_HALT | SP_CLR_INTR_BREAK | SP_CLR_YIELD | SP_CLR_YIELDED | SP_CLR_TASKDONE | SP_CLR_RSPSIGNAL
                            | SP_CLR_CPUSIGNAL | SP_CLR_SIG5 | SP_CLR_SIG6 | SP_CLR_SIG7);
            osDpSetStatus(DPC_SET_XBUS_DMEM_DMA | DPC_CLR_FREEZE | DPC_CLR_FLUSH | DPC_CLR_TMEM_CTR | DPC_CLR_PIPE_CTR
                            | DPC_CLR_CMD_CTR | DPC_CLR_CMD_CTR);
            while (1); // Infinite loop
        }
        main_game_loop();
        thread3_verify_stack();
    }
}

#ifdef FIFO_UCODE
s8 suCodeSwitch = 0;
u8 suCodeTimer = 0;
#endif

/**
 * Setup all of the necessary pieces required for the game to function.
 * This includes the memory pool. controllers, video, audio, core assets and more.
 */
void init_game(void) {
    s32 mode;

    init_main_memory_pool();
    func_800C6170(); // Initialise gzip decompression related things
    sAntiPiracyTriggered = TRUE;
    if (check_imem_validity()) {
        sAntiPiracyTriggered = FALSE;
    }
    gIsLoading = FALSE;
    gLevelDefaultVehicleID = VEHICLE_CAR;

    if (osTvType == TV_TYPE_PAL) {
        mode = 14;
    } else if (osTvType == TV_TYPE_NTSC) {
        mode = 0;
    } else if (osTvType == TV_TYPE_MPAL) {
        mode = 28;
    }

    osCreateScheduler(&gMainSched, &gSPTaskNum, /*priority*/ 13, (u8) mode, 1);
    D_800DD3A0 = FALSE;
    if (!func_8006EFB8()) {
        D_800DD3A0 = TRUE;
    }
    init_video(VIDEO_MODE_LOWRES_LPN, &gMainSched);
    func_80076BA0();
    setup_gfx_mesg_queues(&gMainSched);
    audio_init(&gMainSched);
    func_80008040(); // Should be very similar to func_8005F850
    sControllerStatus = init_controllers();
    func_8007AC70(); // Should be very similar to func_8005F850
    func_8005F850(); // Matched
    func_8000BF8C();
    func_800B5E88();
    func_800598D0();
    init_particle_assets();
    func_800AB1F0();
    calc_and_alloc_heap_for_settings();
    func_8006EFDC();
    load_fonts();
    init_controller_paks();
    func_80081218();
    create_and_start_thread30();
    osCreateMesgQueue(&gNMIMesgQueue, &gNMIMesgBuf, 1);
    osScAddClient(&gMainSched, gNMISched, &gNMIMesgQueue, OS_SC_ID_PRENMI);
    D_80123560[0] = 0;
    D_80123504 = 0;
    D_80123508 = 0;
    gSPTaskNum = 0;
    /*if (IO_READ(DPC_BUFBUSY_REG) == 0) {
        suCodeSwitch = 1;
    }*/

    gCurrDisplayList = gDisplayLists[gSPTaskNum];
    gDPFullSync(gCurrDisplayList++);
    gSPEndDisplayList(gCurrDisplayList++);

    osSetTime(0);
}

#ifdef PUPPYPRINT_DEBUG
u8 perfIteration = 0;
s32 gFPS = 0;
u8 gProfilerOn = 0;
u8 gWidescreen = 0;
s32 sTriCount = 0;
s32 sVtxCount = 0;
s32 prevTime = 0;
u32 sTimerTemp = 0;
u8 sProfilerPage = 0;
struct PuppyPrintTimers gPuppyTimers;

#define FRAMETIME_COUNT 10

OSTime frameTimes[FRAMETIME_COUNT];
u8 curFrameTimeIndex = 0;

// Call once per frame
void calculate_and_update_fps(void) {
    OSTime newTime = osGetTime();
    OSTime oldTime = frameTimes[curFrameTimeIndex];
    frameTimes[curFrameTimeIndex] = newTime;

    curFrameTimeIndex++;
    if (curFrameTimeIndex >= FRAMETIME_COUNT) {
        curFrameTimeIndex = 0;
    }
    gFPS = (FRAMETIME_COUNT * 1000000) / (s32)OS_CYCLES_TO_USEC(newTime - oldTime);
}

void rdp_profiler_update(u32 *time, u32 time2) {
    time[PERF_AGGREGATE] -= time[perfIteration];
    time[perfIteration] = time2;
    time[PERF_AGGREGATE] += time[perfIteration];
}

void profiler_update(u32 *time, u32 time2) {
    s32 tmm = (osGetTime() - time2);
    if (tmm > OS_USEC_TO_CYCLES(99999)) {
        tmm =  OS_USEC_TO_CYCLES(99999);
    }
    time[PERF_AGGREGATE] -= time[perfIteration];
    time[perfIteration] = tmm;
    time[PERF_AGGREGATE] += time[perfIteration];
}

void profiler_offset(u32 *time, u32 offset) {
    time[PERF_AGGREGATE] -= offset;
    time[perfIteration] -= offset;
}

void profiler_add(u32 *time, u32 offset) {
    time[PERF_AGGREGATE] += offset;
    time[perfIteration] += offset;
}


static char *proutSprintf(char *dst, const char *src, size_t count)
{
    return (char *)memcpy((u8 *)dst, (u8 *)src, count) + count;
}

int puppyprintf(char *dst, const char *fmt, ...)
{
    s32 ans;
    va_list ap;
    va_start(ap, fmt);
    ans = _Printf(proutSprintf, dst, fmt, ap);
    if (ans >= 0)
    {
        dst[ans] = 0;
    }
    return ans; 
}

void render_profiler(void) {
    char textBytes[32];
    s32 printY;
    s32 totalGfx;
    /*render_printf("FPS: %02d\n", gFPS);
    render_printf("CPU: %dus (%d%%)\n", gPuppyTimers.cpuTime, gPuppyTimers.cpuTime / 333);
    render_printf("RSP: %dus (%d%%)\n", gPuppyTimers.rspTime, gPuppyTimers.rspTime / 333);
    render_printf("RDP: %dus (%d%%)\n", gPuppyTimers.rdpTime, gPuppyTimers.rdpTime / 333);
    render_printf("Logic: %dus\n", gPuppyTimers.behaviourTime[PERF_TOTAL]);
    render_printf("Scene: %dus\n", gPuppyTimers.graphTime[PERF_TOTAL]);
    if (gPuppyTimers.racerTime[PERF_TOTAL])
        render_printf("Racer: %dus\n", gPuppyTimers.racerTime[PERF_TOTAL]);
    if (gPuppyTimers.lightTime[PERF_TOTAL])
        render_printf("Light: %dus\n", gPuppyTimers.lightTime[PERF_TOTAL]);
    render_printf("Audio: %dus\n", gPuppyTimers.thread4Time[PERF_TOTAL]);
    render_printf("Tri: %d\n", sTriCount);
#ifdef FIFO_UCODE
    if (!suCodeSwitch) {
        render_printf("GFX: FIFO");
    } else {
        render_printf("GFX: XBUS");
    }
#else
    render_printf("GFX: XBUS");
#endif*/
    set_text_font(FONT_SMALL);
    set_text_colour(255, 255, 255, 255, 255);
    set_text_background_colour(0,0, 0, 192);
    puppyprintf(textBytes,  "FPS: %d", gFPS);
    draw_text(&gCurrDisplayList, 4, 10, textBytes, ALIGN_TOP_LEFT);
    puppyprintf(textBytes,  "CPU: %dus (%d%%)", gPuppyTimers.cpuTime, gPuppyTimers.cpuTime / 333);
    draw_text(&gCurrDisplayList, 4, 20, textBytes, ALIGN_TOP_LEFT);
    printY = 30;
    if (IO_READ(DPC_PIPEBUSY_REG)) {
        puppyprintf(textBytes,  "RSP: %dus (%d%%)", gPuppyTimers.rspTime, gPuppyTimers.rspTime / 333);
        draw_text(&gCurrDisplayList, 4, 30, textBytes, ALIGN_TOP_LEFT);
        puppyprintf(textBytes,  "RDP: %dus (%d%%)", gPuppyTimers.rdpTime, gPuppyTimers.rdpTime / 333);
        draw_text(&gCurrDisplayList, 4, 40, textBytes, ALIGN_TOP_LEFT);
        printY = 50;
    }
#ifdef FIFO_UCODE
    if (!suCodeSwitch) {
        draw_text(&gCurrDisplayList, 4, printY, "GFX: FIFO", ALIGN_TOP_LEFT);
    } else {
 #endif
        draw_text(&gCurrDisplayList, 4, printY, "GFX: XBUS", ALIGN_TOP_LEFT);
 #ifdef FIFO_UCODE
    }
 #endif
    puppyprintf(textBytes,  "Tri: %d Vtx: %d", sTriCount, sVtxCount);
    draw_text(&gCurrDisplayList, SCREEN_WIDTH_HALF, SCREEN_HEIGHT - 14, textBytes, ALIGN_BOTTOM_CENTER);
    puppyprintf(textBytes, "Gfx: %d / %d", ((u32)gDisplayLists[gSPTaskNum] - ((u32)gCurrDisplayList | 0x20000000)) / 4, 11000);
    draw_text(&gCurrDisplayList, SCREEN_WIDTH_HALF, SCREEN_HEIGHT - 4, textBytes, ALIGN_BOTTOM_CENTER);

    if (sProfilerPage == 0) {
        printY = 40;
        puppyprintf(textBytes,  "Logic: %dus", gPuppyTimers.behaviourTime[PERF_TOTAL]);
        draw_text(&gCurrDisplayList, SCREEN_WIDTH - 4, 10, textBytes, ALIGN_TOP_RIGHT);
        puppyprintf(textBytes,  "Scene: %dus", gPuppyTimers.graphTime[PERF_TOTAL]);
        draw_text(&gCurrDisplayList, SCREEN_WIDTH - 4, 20, textBytes, ALIGN_TOP_RIGHT);
        puppyprintf(textBytes,  "Audio: %dus", gPuppyTimers.thread4Time[PERF_TOTAL]);
        draw_text(&gCurrDisplayList, SCREEN_WIDTH - 4, 30, textBytes, ALIGN_TOP_RIGHT);
        if (gPuppyTimers.objectsTime[PERF_TOTAL]) {
            puppyprintf(textBytes,  "Object: %dus", gPuppyTimers.objectsTime[PERF_TOTAL]);
            draw_text(&gCurrDisplayList, SCREEN_WIDTH - 4, printY, textBytes, ALIGN_TOP_RIGHT);
            printY+=10;
        }
        if (gPuppyTimers.racerTime[PERF_TOTAL]) {
            puppyprintf(textBytes,  "Racer: %dus", gPuppyTimers.racerTime[PERF_TOTAL]);
            draw_text(&gCurrDisplayList, SCREEN_WIDTH - 4, printY, textBytes, ALIGN_TOP_RIGHT);
            printY+=10;
        }
        if (gPuppyTimers.lightTime[PERF_TOTAL]) {
            puppyprintf(textBytes,  "Light: %dus", gPuppyTimers.lightTime[PERF_TOTAL]);
            draw_text(&gCurrDisplayList, SCREEN_WIDTH - 4, printY, textBytes, ALIGN_TOP_RIGHT);
            printY+=10;
        }
        if (gPuppyTimers.collisionTime[PERF_TOTAL]) {
            puppyprintf(textBytes,  "Collision: %dus", gPuppyTimers.collisionTime[PERF_TOTAL]);
            draw_text(&gCurrDisplayList, SCREEN_WIDTH - 4, printY, textBytes, ALIGN_TOP_RIGHT);
            printY+=10;
        }
        if (gPuppyTimers.controllerTime[PERF_TOTAL]) {
            puppyprintf(textBytes,  "Pad: %dus", gPuppyTimers.controllerTime[PERF_TOTAL]);
            draw_text(&gCurrDisplayList, SCREEN_WIDTH - 4, printY, textBytes, ALIGN_TOP_RIGHT);
            printY+=10;
        }
        if (gPuppyTimers.hudTime[PERF_TOTAL]) {
            puppyprintf(textBytes,  "HUD: %dus", gPuppyTimers.hudTime[PERF_TOTAL]);
            draw_text(&gCurrDisplayList, SCREEN_WIDTH - 4, printY, textBytes, ALIGN_TOP_RIGHT);
            printY+=10;
        }
    }
}

/// Add whichever times you wish to create aggregates of.
void puppyprint_calculate_average_times(void) {
    rdp_profiler_update(gPuppyTimers.rdpBufTime, IO_READ(DPC_BUFBUSY_REG));
    rdp_profiler_update(gPuppyTimers.rdpTmmTime, IO_READ(DPC_TMEM_REG));
    rdp_profiler_update(gPuppyTimers.rdpBusTime, IO_READ(DPC_PIPEBUSY_REG));
    IO_WRITE(DPC_STATUS_REG, DPC_CLR_CLOCK_CTR | DPC_CLR_CMD_CTR | DPC_CLR_PIPE_CTR | DPC_CLR_TMEM_CTR);
    if ((sTimerTemp % 2) == 0) {
        gPuppyTimers.collisionTime[PERF_TOTAL] = OS_CYCLES_TO_USEC(gPuppyTimers.collisionTime[PERF_AGGREGATE]) / NUM_PERF_ITERATIONS;
        gPuppyTimers.behaviourTime[PERF_TOTAL] = OS_CYCLES_TO_USEC(gPuppyTimers.behaviourTime[PERF_AGGREGATE]) / NUM_PERF_ITERATIONS;
        gPuppyTimers.racerTime[PERF_TOTAL] = OS_CYCLES_TO_USEC(gPuppyTimers.racerTime[PERF_AGGREGATE]) / NUM_PERF_ITERATIONS;
        gPuppyTimers.hudTime[PERF_TOTAL] = OS_CYCLES_TO_USEC(gPuppyTimers.hudTime[PERF_AGGREGATE]) / NUM_PERF_ITERATIONS;
        gPuppyTimers.lightTime[PERF_TOTAL] = OS_CYCLES_TO_USEC(gPuppyTimers.lightTime[PERF_AGGREGATE]) / NUM_PERF_ITERATIONS;
        gPuppyTimers.objectsTime[PERF_TOTAL] = OS_CYCLES_TO_USEC(gPuppyTimers.objectsTime[PERF_AGGREGATE]) / NUM_PERF_ITERATIONS;
        gPuppyTimers.thread2Time[PERF_TOTAL] = OS_CYCLES_TO_USEC(gPuppyTimers.thread2Time[PERF_AGGREGATE]) / NUM_PERF_ITERATIONS;
        gPuppyTimers.thread3Time[PERF_TOTAL] = OS_CYCLES_TO_USEC(gPuppyTimers.thread3Time[PERF_AGGREGATE]) / NUM_PERF_ITERATIONS;
        gPuppyTimers.thread4Time[PERF_TOTAL] = OS_CYCLES_TO_USEC(gPuppyTimers.thread4Time[PERF_AGGREGATE]) / NUM_PERF_ITERATIONS;
        gPuppyTimers.thread5Time[PERF_TOTAL] = OS_CYCLES_TO_USEC(gPuppyTimers.thread5Time[PERF_AGGREGATE]) / NUM_PERF_ITERATIONS;
        gPuppyTimers.thread6Time[PERF_TOTAL] = OS_CYCLES_TO_USEC(gPuppyTimers.thread6Time[PERF_AGGREGATE]) / NUM_PERF_ITERATIONS;
        gPuppyTimers.graphTime[PERF_TOTAL] = OS_CYCLES_TO_USEC(gPuppyTimers.graphTime[PERF_AGGREGATE]) / NUM_PERF_ITERATIONS;
        gPuppyTimers.dmaTime[PERF_TOTAL] = OS_CYCLES_TO_USEC(gPuppyTimers.dmaTime[PERF_AGGREGATE]) / NUM_PERF_ITERATIONS;
        gPuppyTimers.dmaAudioTime[PERF_TOTAL] = OS_CYCLES_TO_USEC(gPuppyTimers.dmaAudioTime[PERF_AGGREGATE]) / NUM_PERF_ITERATIONS;
        gPuppyTimers.cameraTime[PERF_TOTAL] = OS_CYCLES_TO_USEC(gPuppyTimers.cameraTime[PERF_AGGREGATE]) / NUM_PERF_ITERATIONS;
        gPuppyTimers.profilerTime[PERF_TOTAL] = OS_CYCLES_TO_USEC(gPuppyTimers.profilerTime[PERF_AGGREGATE]) / NUM_PERF_ITERATIONS;
        gPuppyTimers.controllerTime[PERF_TOTAL] = OS_CYCLES_TO_USEC(gPuppyTimers.controllerTime[PERF_AGGREGATE]) / NUM_PERF_ITERATIONS;
        gPuppyTimers.rspAudioTime[PERF_TOTAL] = OS_CYCLES_TO_USEC(gPuppyTimers.rspAudioTime[PERF_AGGREGATE]) / NUM_PERF_ITERATIONS;
        gPuppyTimers.rspGfxTime[PERF_TOTAL] = OS_CYCLES_TO_USEC(gPuppyTimers.rspGfxTime[PERF_AGGREGATE]) / NUM_PERF_ITERATIONS;
        gPuppyTimers.rdpBufTime[PERF_TOTAL] = (gPuppyTimers.rdpBufTime[PERF_AGGREGATE] * 10) / (625*NUM_PERF_ITERATIONS);
        gPuppyTimers.rdpBusTime[PERF_TOTAL] = (gPuppyTimers.rdpBusTime[PERF_AGGREGATE] * 10) / (625*NUM_PERF_ITERATIONS);

        gPuppyTimers.dmaTime[PERF_TOTAL] += gPuppyTimers.dmaAudioTime[PERF_TOTAL];
        gPuppyTimers.cpuTime = gPuppyTimers.thread2Time[PERF_TOTAL] + gPuppyTimers.thread3Time[PERF_TOTAL] + gPuppyTimers.thread4Time[PERF_TOTAL] + gPuppyTimers.thread5Time[PERF_TOTAL] +
        gPuppyTimers.thread6Time[PERF_TOTAL]; //Thread timers are all added together to get the total CPU time.
        gPuppyTimers.threadsTime = gPuppyTimers.thread2Time[PERF_TOTAL] + gPuppyTimers.thread3Time[PERF_TOTAL] + gPuppyTimers.thread6Time[PERF_TOTAL];
        gPuppyTimers.rspTime = gPuppyTimers.rspAudioTime[PERF_TOTAL] + gPuppyTimers.rspGfxTime[PERF_TOTAL];
        gPuppyTimers.rdpTime = MAX(gPuppyTimers.rdpBufTime[PERF_TOTAL], gPuppyTimers.rdpTmmTime[PERF_TOTAL]);
        gPuppyTimers.rdpTime = MAX(gPuppyTimers.rdpBusTime[PERF_TOTAL], gPuppyTimers.rdpTime);
    }
}

void puppyprint_update_rsp(u8 flags) {
    switch (flags)
    {
    case RSP_GFX_START:
        gPuppyTimers.rspGfxBufTime = (u32)osGetTime();
        gPuppyTimers.rspPauseTime = 0;
        break;
    case RSP_AUDIO_START:
        gPuppyTimers.rspAudioBufTime = (u32)osGetTime();
        break;
    case RSP_GFX_PAUSED:
        gPuppyTimers.rspPauseTime = (u32)osGetTime();
        break;
    case RSP_GFX_RESUME:
        gPuppyTimers.rspPauseTime = (u32)osGetTime() - gPuppyTimers.rspPauseTime;
        break;
    case RSP_GFX_FINISHED:
        gPuppyTimers.rspGfxTime[PERF_AGGREGATE] -= gPuppyTimers.rspGfxTime[perfIteration];
        gPuppyTimers.rspGfxTime[perfIteration] = (u32)(osGetTime() - gPuppyTimers.rspGfxBufTime) + gPuppyTimers.rspPauseTime;
        gPuppyTimers.rspGfxTime[PERF_AGGREGATE] += gPuppyTimers.rspGfxTime[perfIteration];
        break;
    case RSP_AUDIO_FINISHED:
        gPuppyTimers.rspAudioTime[PERF_AGGREGATE] -= gPuppyTimers.rspAudioTime[perfIteration];
        gPuppyTimers.rspAudioTime[perfIteration] = (u32)osGetTime() - gPuppyTimers.rspAudioBufTime;
        gPuppyTimers.rspAudioTime[PERF_AGGREGATE] += gPuppyTimers.rspAudioTime[perfIteration];
        break;
    }
}

s32 count_triangles_in_dlist(u8 *dlist, u8 *dlistEnd) {
    s32 triCount = 0;
    while(dlist < dlistEnd) {
        switch(dlist[0]) {
            case G_TRIN: // TRIN
                triCount += (dlist[1] >> 4) + 1;
                break;
            case G_VTX:
                sVtxCount += (dlist[1] >> 4) + 1;
                break;
            case G_ENDDL: // ENDDL
                return triCount;
        }
        dlist += 8;
    }
    return triCount;
}

void count_triangles(u8 *dlist, u8 *dlistEnd) {
    sTimerTemp++;
    if ((sTimerTemp % 16) == 0) {
        s32 first = osGetCount();
        sVtxCount = 0;
        sTriCount = count_triangles_in_dlist(dlist, dlistEnd);
        sTimerTemp = (s32) OS_CYCLES_TO_USEC(osGetCount() - first);
    }
}
#endif

u32 sPrevTime = 0;
u32 sDeltaTime = 0;
s32 sTotalTime = 0;

/**
 * The main gameplay loop.
 * Contains all game logic, audio and graphics processing.
 */
void main_game_loop(void) {
    s32 debugLoopCounter;
    s32 framebufferSize;
    s32 tempLogicUpdateRate, tempLogicUpdateRateMax;
#ifdef PUPPYPRINT_DEBUG
    u32 first = osGetTime();
    gPuppyTimers.racerTime[PERF_AGGREGATE] -= gPuppyTimers.racerTime[perfIteration];
    gPuppyTimers.racerTime[perfIteration] = 0;
    gPuppyTimers.lightTime[PERF_AGGREGATE] -= gPuppyTimers.lightTime[perfIteration];
    gPuppyTimers.lightTime[perfIteration] = 0;
    gPuppyTimers.hudTime[PERF_AGGREGATE] -= gPuppyTimers.hudTime[perfIteration];
    gPuppyTimers.hudTime[perfIteration] = 0;
    gPuppyTimers.objectsTime[PERF_AGGREGATE] -= gPuppyTimers.objectsTime[perfIteration];
    gPuppyTimers.objectsTime[perfIteration] = 0;
    if (get_buttons_held_from_player(0) & U_JPAD && get_buttons_pressed_from_player(0) & L_TRIG) {
        gProfilerOn ^= 1;
    }
#endif

    if (D_800DD380 == 8) {
        gCurrDisplayList = gDisplayLists[gSPTaskNum];
        set_rsp_segment(&gCurrDisplayList, 0, 0);
        set_rsp_segment(&gCurrDisplayList, 1, (s32)gVideoCurrFramebuffer);
        set_rsp_segment(&gCurrDisplayList, 2, gVideoLastDepthBuffer);
        set_rsp_segment(&gCurrDisplayList, 4, (s32)gVideoCurrFramebuffer - 0x500);
    }
    if (D_800DD3F0 == 0) {
#ifndef FIFO_UCODE
        setup_ostask_xbus(gDisplayLists[gSPTaskNum], gCurrDisplayList, 0);
#else
    #ifdef PUPPYPRINT_DEBUG
        if (get_buttons_pressed_from_player(PLAYER_ONE) & D_JPAD && gProfilerOn) {
            suCodeSwitch ^= 1;
        }
        if (suCodeSwitch == FALSE && IO_READ(DPC_BUFBUSY_REG) + IO_READ(DPC_CLOCK_REG) + IO_READ(DPC_TMEM_REG) != 0) {
    #endif
            setup_ostask_fifo(gDisplayLists[gSPTaskNum], gCurrDisplayList, 0);
    #ifdef PUPPYPRINT_DEBUG
        } else {
            setup_ostask_xbus(gDisplayLists[gSPTaskNum], gCurrDisplayList, 0);
        }
    #endif
#endif
        gSPTaskNum += 1;
        gSPTaskNum &= 1;
    }
    if (D_800DD3F0 != 0) {
        D_800DD3F0 -= 1;
    }

    sDeltaTime = osGetTime() - sPrevTime;
    sPrevTime = osGetTime();
    sTotalTime += OS_CYCLES_TO_USEC(sDeltaTime);
    sTotalTime -= 16666;
    sLogicUpdateRate = LOGIC_60FPS;
    while (sTotalTime > 16666) {
        sTotalTime -= 16666;
        sLogicUpdateRate++;
        if (sLogicUpdateRate == 4) {
            sTotalTime = 0;
        }
    }

    gCurrDisplayList = gDisplayLists[gSPTaskNum];
    gCurrHudMat = gHudMatrices[gSPTaskNum];
    gCurrHudVerts = gHudVertices[gSPTaskNum];
    gCurrHudTris = gHudTriangles[gSPTaskNum];

    set_rsp_segment(&gCurrDisplayList, 0, 0);
    set_rsp_segment(&gCurrDisplayList, 1, gVideoLastFramebuffer);
    set_rsp_segment(&gCurrDisplayList, 2, gVideoLastDepthBuffer);
    set_rsp_segment(&gCurrDisplayList, 4, gVideoLastFramebuffer - 0x500);
    init_rsp(&gCurrDisplayList);
    init_rdp_and_framebuffer(&gCurrDisplayList);
    render_background(&gCurrDisplayList, &gCurrHudMat, 1);
    D_800DD37C = func_8006A1C4(D_800DD37C, sLogicUpdateRate);
    if (get_lockup_status()) {
        render_epc_lock_up_display();
        sRenderContext = DRAW_CRASH_SCREEN;
    }
    if (D_800DD3A0) {
        debugLoopCounter = 0;
        while (debugLoopCounter != 10000000) {
            debugLoopCounter += 1;
        }
        if (debugLoopCounter >= 20000001) { // This shouldn't ever be true?
            render_printf(D_800E7134 /* "BBB\n" */);
        }
    }
    switch (sRenderContext) {
        case DRAW_INTRO: // Pre-boot screen
            pre_intro_loop();
            break;
        case DRAW_MENU: // In a menu
            func_8006DCF8(sLogicUpdateRate);
            break;
        case DRAW_GAME: // In game (Controlling a character)
            func_8006CCF0(sLogicUpdateRate);
            break;
        case DRAW_CRASH_SCREEN: // EPC (lockup display)
            lockup_screen_loop(sLogicUpdateRate);
            break;
    }

    // This is a good spot to place custom text if you want it to overlay it over ALL the
    // menus & gameplay.

#ifdef PUPPYPRINT_DEBUG
    if (gProfilerOn) {
        render_profiler();
        count_triangles((u8*)gDisplayLists[gSPTaskNum], (u8*)gCurrDisplayList);
    }
#endif

    handle_music_fade(sLogicUpdateRate);
    print_debug_strings(&gCurrDisplayList);
    render_dialogue_boxes(&gCurrDisplayList, &gCurrHudMat, &gCurrHudVerts);
    close_dialogue_box(4);
    assign_dialogue_box_id(4);
    // handle_transitions will perform the logic of transitions and return the transition ID.
    if (handle_transitions(sLogicUpdateRate)) {
        render_fade_transition(&gCurrDisplayList, &gCurrHudMat, &gCurrHudVerts);
    }
    if ((sBootDelayTimer >= 8) && (is_controller_missing())) {
        print_missing_controller_text(&gCurrDisplayList, sLogicUpdateRate);
    }

    gDPFullSync(gCurrDisplayList++);
    gSPEndDisplayList(gCurrDisplayList++);

    func_80066610();
#ifdef PUPPYPRINT_DEBUG
    profiler_update(gPuppyTimers.thread3Time, first);
    profiler_update(gPuppyTimers.behaviourTime, first);
    profiler_offset(gPuppyTimers.behaviourTime, gPuppyTimers.graphTime[perfIteration]);
    profiler_offset(gPuppyTimers.behaviourTime, gPuppyTimers.lightTime[perfIteration]);
    profiler_offset(gPuppyTimers.behaviourTime, gPuppyTimers.racerTime[perfIteration]);
    profiler_offset(gPuppyTimers.behaviourTime, gPuppyTimers.hudTime[perfIteration]);
    profiler_offset(gPuppyTimers.behaviourTime, gPuppyTimers.cameraTime[perfIteration]);
    profiler_offset(gPuppyTimers.behaviourTime, gPuppyTimers.controllerTime[perfIteration]);
    profiler_offset(gPuppyTimers.objectsTime, gPuppyTimers.racerTime[perfIteration]);
    profiler_offset(gPuppyTimers.behaviourTime, gPuppyTimers.objectsTime[perfIteration]);
#endif
    if (D_800DD3F0 != 1) {
        if (D_800DD38C == 0) {
            D_800DD380 = wait_for_gfx_task();
        }
    } else {
        D_800DD3F0 = 0;
    }
    D_800DD38C = 0;
    clear_free_queue();
    if (!gIsPaused) {
        func_80066520();
    }
#ifdef PUPPYPRINT_DEBUG
    calculate_and_update_fps();
    puppyprint_calculate_average_times();
    perfIteration++;
    if (perfIteration == NUM_PERF_ITERATIONS - 1)
        perfIteration = 0;
#endif
    if (D_800DD3F0 == 2) {
        framebufferSize = SCREEN_WIDTH * SCREEN_HEIGHT * 2;
        if (osTvType == TV_TYPE_PAL) {
            framebufferSize = (s32)((SCREEN_WIDTH * SCREEN_HEIGHT * 2) * 1.1f);
        }
        func_80070B04(gVideoLastFramebuffer, (s32)gVideoCurrFramebuffer, (s32)gVideoCurrFramebuffer + framebufferSize);
    }
    // tempLogicUpdateRate will be set to a value 2 or higher, based on the framerate.
    // the mul factor is hardcapped at 6, which happens at 10FPS. The mul factor
    // affects frameskipping, to maintain consistent game speed, through the (many)
    // dropped frames in DKR.
    tempLogicUpdateRate = func_8007A98C(D_800DD380);
    sLogicUpdateRate = tempLogicUpdateRate;
    tempLogicUpdateRateMax = LOGIC_10FPS;
    if (tempLogicUpdateRate > tempLogicUpdateRateMax) {
        sLogicUpdateRate = tempLogicUpdateRateMax;
    }
}

void func_8006CAE4(s32 arg0, s32 arg1, s32 arg2) {
    D_80123500 = arg0 - 1;
    if (arg1 == -1) {
        D_801234F4 = get_track_id_to_load();
    } else {
        D_801234F4 = arg1;
    }
    load_level_2(D_801234F4, D_80123500, D_80123504, arg2);
}

/**
 * Calls load_level() with the same arguments except for the cutsceneId,
 * which is the value at D_80123508. Also does some other stuff.
 * Needs a better name!
 */
void load_level_2(s32 levelId, s32 numberOfPlayers, s32 entranceId, s32 vehicleId) {
    func_8006ECFC(numberOfPlayers);
    set_free_queue_state(0);
    func_80065EA0();
    func_800C3048();
    load_level(levelId, numberOfPlayers, entranceId, vehicleId, D_80123508);
    func_8009ECF0(get_viewport_count());
    func_800AE728(8, 0x10, 0x96, 0x64, 0x32, 0);
    func_8001BF20();
    osSetTime(0);
    set_free_queue_state(2);
    func_80072298(1);
}

// Guessing this is the "unload everything ready for level swap" function.
void func_8006CC14(void) {
    set_free_queue_state(0);
    if (D_800DD38C == 0) {
        if (D_800DD3F0 != 1) {
            wait_for_gfx_task();
        }
        D_800DD38C = 1;
    }
    func_8006BEFC();
    func_800C01D8(&D_800DD3F4);
    func_800AE270();
    func_800A003C();
    func_800C30CC();
    gCurrDisplayList = gDisplayLists[gSPTaskNum];
    gDPFullSync(gCurrDisplayList++);
    gSPEndDisplayList(gCurrDisplayList++);
    set_free_queue_state(2);
}

void func_8006CCF0(s32 updateRate) {
    s32 buttonPressedInputs, buttonHeldInputs, i, sp40, sp3C;
#ifdef PUPPYPRINT_DEBUG
    u32 first;
#endif

    sp40 = 0;
    buttonHeldInputs = 0;
    buttonPressedInputs = 0;

    for (i = 0; i < get_active_player_count(); i++) {
        buttonHeldInputs |= get_buttons_held_from_player(i);
        buttonPressedInputs |= get_buttons_pressed_from_player(i);
    }
    if (sAntiPiracyTriggered) {
        buttonPressedInputs |= START_BUTTON;
    }
    if (!gIsPaused) {
#ifdef PUPPYPRINT_DEBUG
    first = osGetTime();
#endif
        func_80010994(updateRate);
#ifdef PUPPYPRINT_DEBUG
    profiler_add(gPuppyTimers.objectsTime, osGetTime() - first);
#endif
        if (func_80066510() == 0 || func_8001139C()) {
            if ((buttonPressedInputs & START_BUTTON) && (func_8006C2F0() == 0) && (D_800DD390 == 0)
                && (sRenderContext == DRAW_GAME) && (D_80123516 == 0) && (D_800DD394 == 0) && (D_800DD398 == 0)) {
                buttonPressedInputs = 0;
                gIsPaused = TRUE;
                func_80093A40();
            }
        }
    } else {
        func_80028FA0(1);
    }
    D_800DD398 -= updateRate;
    if (D_800DD398 < 0) {
        D_800DD398 = 0;
    }
    if (D_80123516 != 0) {
        gIsPaused = FALSE;
    }
    gParticlePtrList_flush();
    func_8001BF20();
    func_80024D54(&gCurrDisplayList, &gCurrHudMat, &gCurrHudVerts, &gCurrHudTris, updateRate);
    if (sRenderContext == DRAW_GAME) {
        // Ignore the user's L/R/Z buttons.
        buttonHeldInputs &= ~(L_TRIG | R_TRIG | Z_TRIG);
    }
    if (D_80123516 != 0) {
        i = func_80095728(&gCurrDisplayList, &gCurrHudMat, &gCurrHudVerts, updateRate);
        switch (i - 1) {
            case 1:
                buttonHeldInputs |= (L_TRIG | Z_TRIG);
                break;
            case 0:
                D_80123516 = 0;
                func_8006D8F0(-1);
                break;
            case 3:
                func_8006C2E4();
                D_800DD390 = 0;
                buttonHeldInputs |= (L_TRIG | R_TRIG);
                break;
            case 4:
                buttonHeldInputs |= L_TRIG,
                sp40 = 1;
                break;
            case 7:
                buttonHeldInputs |= L_TRIG,
                sp40 = 2;
                break;
            case 8:
                buttonHeldInputs |= L_TRIG,
                sp40 = 3;
                break;
            case 9:
                buttonHeldInputs |= L_TRIG,
                sp40 = 4;
                break;
            case 10:
                buttonHeldInputs |= L_TRIG,
                sp40 = 5;
                break;
            case 11:
                buttonHeldInputs |= L_TRIG,
                sp40 = 6;
                break;
            case 12:
                buttonHeldInputs |= L_TRIG,
                sp40 = 7;
                break;
        }
    }
    func_800C3440(updateRate);
    i = func_800C3400();
    if (i != 0) {
        if (i == 2) {
            gIsPaused = TRUE;
        }
        if (func_800C3400() != 2) {
            gIsPaused = FALSE;
            n_alSeqpDelete();
        }
    }
    if (gIsPaused) {
        i = func_80094170(&gCurrDisplayList, updateRate);
        switch (i - 1) {
            case 0:
                gIsPaused = FALSE;
                break;
            case 1:
                func_80001050();
                func_800C314C();
                if (func_80023568() != 0 && is_in_two_player_adventure()) {
                    func_8006F398();
                }
                buttonHeldInputs |= (L_TRIG | Z_TRIG);
                break;
            case 2:
                func_80001050();
                func_800C314C();
                if (func_80023568() != 0 && is_in_two_player_adventure()) {
                    func_8006F398();
                }
                buttonHeldInputs |= L_TRIG;
                break;
            case 4:
                sp40 = 1;
                func_800C314C();
                buttonHeldInputs |= L_TRIG;
                break;
            case 11:
                sp40 = 6;
                func_800C314C();
                buttonHeldInputs |= L_TRIG;
                break;
            case 5:
                gIsPaused = FALSE;
                break;
            case 6:
                func_80022E18(1);
                gIsPaused = FALSE;
                break;
            case 3:
                D_800DD390 = 0;
                func_80001050();
                func_800C314C();
                func_8006C2E4();
                buttonHeldInputs |= (L_TRIG | R_TRIG);
                break;
        }
    }
    init_rdp_and_framebuffer(&gCurrDisplayList);
    render_borders_for_multiplayer(&gCurrDisplayList);
    func_800A8474(&gCurrDisplayList, &gCurrHudMat, &gCurrHudVerts, updateRate);
    func_80077268(&gCurrDisplayList);
    if (D_800DD39C != 0) {
        if (func_800214C4() != 0) {
            D_801234F4 = 0x23;
            D_801234F8 = 1;
            D_80123504 = 0;
            D_800DD39C = 0;
        }
    }
    sp3C = FALSE;
    if (D_800DD390 != 0) {
        D_800DD390 -= updateRate;
        if (D_800DD390 <= 0) {
            D_800DD390 = 0;
            func_8006C1AC(0, 0, 0, 0);
            func_8006C1AC(0x2B, 0, -1, 0xA);
            sp3C = TRUE;
        }
    }
    if (D_800DD394 > 0) {
        D_800DD394 -= updateRate;
        if (D_800DD394 <= 0) {
            buttonHeldInputs = L_TRIG;
            sp3C = TRUE;
            switch (D_80123524) {
                case 1:
                    buttonHeldInputs = (L_TRIG | Z_TRIG);
                    break;
                case 2:
                    sp40 = 3;
                    func_80098208();
                    D_801234FC = 2;
                    break;
                case 3:
                    D_800DD39C = 1;
                    // fall-through
                case 4:
                    D_801234F8 = 1;
                    D_801234F4 = D_80123525;
                    D_80123504 = 0;
                    D_80123508 = 0;
                    buttonHeldInputs = 0;
                    break;
            }
            D_80123524 = 0;
            D_800DD394 = 0;
        }
    }
    if (sp3C) {
        if (func_8006C2F0() != 0) {
            func_8006C22C(&D_801234F4, &D_80123504, &i, &D_80123508);
            func_8006F42C();
            if (D_801234F4 < 0) {
                if (D_801234F4 == -1 || D_801234F4 == -10) {
                    if (D_801234F4 == -10 && is_in_two_player_adventure()) {
                        func_8006F398();
                    }
                    buttonHeldInputs |= L_TRIG;
                    D_801234FC = 2;
                } else {
                    buttonHeldInputs = 0;
                    D_801234FC = 1;
                    sp40 = 8;
                }
            } else {
                D_801234FC = 0;
                D_801234F8 = 1;
                buttonHeldInputs = 0;
            }
        }
    } else {
        sp3C = func_8006C300();
        if (func_8006C2F0()) {
            if (D_800DD394 == 0) {
                i = func_800214C4();
                if ((i != 0) || ((buttonPressedInputs & A_BUTTON) && (sp3C != 0))) {
                    if (sp3C != 0) {
                        func_80000B28();
                    }
                    func_8006F42C();
                    func_8006C22C(&D_801234F4, &D_80123504, &i, &D_80123508);
                    if (D_801234F4 < 0) {
                        if (D_801234F4 == -1 || D_801234F4 == -10) {
                            if (D_801234F4 == -10 && is_in_two_player_adventure()) {
                                func_8006F398();
                            }
                            buttonHeldInputs |= L_TRIG;
                            D_801234FC = 2;
                        } else {
                            buttonHeldInputs = 0;
                            D_801234FC = 1;
                            sp40 = 8;
                        }
                    } else {
                        D_801234F8 = 1;
                    }
                }
            }
        }
    }
    if (((buttonHeldInputs & L_TRIG) && (sRenderContext == DRAW_GAME)) || (D_801234FC != 0)) {
        gIsPaused = FALSE;
        D_800DD394 = 0;
        D_80123516 = 0;
        func_8006CC14();
        func_8006EC48(get_save_file_index());
        if (sp40 != 0) {
            gIsLoading = FALSE;
            switch (sp40) {
                case 1:
                    // Go to track select menu from "Select Track" option in tracks menu.
                    load_menu_with_level_background(MENU_TRACK_SELECT, -1, 1);
                    break;
                case 2:
                    load_menu_with_level_background(MENU_RESULTS, 0x22, 0);
                    break;
                case 3:
                    load_menu_with_level_background(MENU_TROPHY_RACE_ROUND, 0x22, 0);
                    break;
                case 4:
                    load_menu_with_level_background(MENU_TROPHY_RACE_RANKINGS, 0x22, 0);
                    break;
                case 5:
                    // Trophy race related?
                    load_menu_with_level_background(MENU_UNUSED_22, 0x22, 0);
                    break;
                case 6:
                    // Go to character select menu from "Select Character" option in tracks menu.
                    i = 0;
                    if (is_drumstick_unlocked()) {
                        i ^= 1;
                    }
                    if (is_tt_unlocked()) {
                        i ^= 3;
                    }
                    func_8008AEB4(1, 0);
                    load_menu_with_level_background(MENU_CHARACTER_SELECT, 0x16, i);
                    break;
                case 7:
                    gIsLoading = TRUE;
                    load_menu_with_level_background(MENU_UNKNOWN_23, -1, 0);
                    gIsLoading = FALSE;
                    break;
                case 8:
                    load_menu_with_level_background(MENU_CREDITS, -1, 0);
                    break;
            }
        } else if (D_801234FC == 1) {
            if (D_80121250[2] == -1) {
                load_menu_with_level_background(MENU_UNUSED_8, -1, 0);
            } else {
                gIsLoading = TRUE;
                load_menu_with_level_background(MENU_UNKNOWN_5, -1, -1);
            }
        } else if (!(buttonHeldInputs & R_TRIG)) {
            if (!(buttonHeldInputs & Z_TRIG)) {
                D_801234F4 = D_80121250[0];
                D_80123504 = D_80121250[15];
                D_80123508 = D_80121250[D_80121250[1] + 8];
                gLevelDefaultVehicleID = func_8006B0AC(D_801234F4);
                if (D_80123508 < 0) {
                    D_80123508 = 0x64;
                }
            }
            load_level_2(D_801234F4, D_80123500, D_80123504, gLevelDefaultVehicleID);
        } else {
            func_8006EC48(get_save_file_index());
            load_menu_with_level_background(MENU_TITLE, -1, 0);
        }
        D_801234FC = 0;
    }
    if (D_801234F8 != 0) {
        D_80123516 = 0;
        func_8006CC14();
        load_level_2(D_801234F4, D_80123500, D_80123504, gLevelDefaultVehicleID);
        func_8006EC48(get_save_file_index());
        D_801234F8 = 0;
    }
}

void func_8006D8A4(void) {
    D_800DD390 = 0x2C;
    gIsPaused = 0;
    n_alSeqpDelete();
    func_800C01D8(&D_800DD408);
}

void func_8006D8E0(s32 arg0) {
    D_80123516 = arg0 + 1;
}

void func_8006D8F0(UNUSED s32 arg0) {
    s32 temp;
    if (sRenderContext != DRAW_UNK_04) {
        D_801234F4 = D_80121250[0];
        D_80123504 = 0;
        D_80123508 = 0x64;
        temp = D_80121250[1];
        if (D_80121250[15] >= 0) {
            D_80123504 = D_80121250[15];
        }
        if (D_80121250[temp + 8] >= 0) {
            D_80123508 = D_80121250[temp + 8];
        }
        D_801234F8 = 1;
    }
}

void func_8006D968(s8 *arg0) {
    s32 i;
    if (sRenderContext != DRAW_UNK_04) {
        D_80121250[0] = D_801234F4;
        for (i = 0; i < 2; i++) {
            D_80121250[i + 2] = arg0[i + 8];
            D_80121250[i + 4] = arg0[i + 10];
            D_80121250[i + 6] = arg0[i + 12];
            D_80121250[i + 8] = arg0[i + 14];
            D_80121250[i + 10] = arg0[i + 18];
            D_80121250[i + 12] = arg0[i + 20];
        }
        D_80121250[14] = arg0[22];
        D_80121250[15] = arg0[23];
        D_801234FC = 1;
    }
}

s32 get_render_context(void) {
    return sRenderContext;
}

/* Unused function used to set the render context from outside this file */
UNUSED void set_render_context(s32 changeTo) {
    sRenderContext = changeTo;
}

void load_menu_with_level_background(s32 menuId, s32 levelId, s32 cutsceneId) {
    func_8006ECFC(0);
    sRenderContext = DRAW_MENU;
    D_801234F0 = 1;
    func_80004A60(0, 32767);
    func_80004A60(1, 32767);
    func_80004A60(2, 32767);
    func_80065EA0();

    if (!gIsLoading) {
        gIsLoading = FALSE;
        if (levelId < 0) {
            gIsLoading = TRUE;
        } else {
            load_level_3(levelId, -1, 0, 2, cutsceneId);
        }
    }
    if (menuId == MENU_UNUSED_2 || menuId == MENU_LOGOS || menuId == MENU_TITLE) {
        func_800813C0();
    }
    menu_init(menuId);
    D_80123504 = 0;
}

/**
 * Set the default vehicle option from the current loaded level.
 */
void set_level_default_vehicle(s32 vehicleID) {
    gLevelDefaultVehicleID = vehicleID;
}

void func_8006DB20(s32 vehicleId) {
    D_8012351C = vehicleId;
}

/**
 * Get the default vehicle option, set by a loaded level.
 */
s32 get_level_default_vehicle(void) {
    return gLevelDefaultVehicleID;
}

/**
 * Calls load_level() with the same arguments, but also does some other stuff.
 * Needs a better name!
 */
void load_level_3(s32 levelId, s32 numberOfPlayers, s32 entranceId, s32 vehicleId, s32 cutsceneId) {
    set_free_queue_state(0);
    func_80065EA0();
    func_800C3048();
    load_level(levelId, numberOfPlayers, entranceId, vehicleId, cutsceneId);
    func_8009ECF0(get_viewport_count());
    func_800AE728(4, 4, 0x6E, 0x30, 0x20, 0);
    func_8001BF20();
    osSetTime(0);
    set_free_queue_state(2);
}

void func_8006DBE4(void) {
    if (!gIsLoading) {
        gIsLoading = TRUE;
        set_free_queue_state(0);
        func_8006BEFC();
        func_800C01D8(&D_800DD3F4);
        func_800AE270();
        func_800A003C();
        func_800C30CC();
        set_free_queue_state(2);
    }
    gIsLoading = FALSE;
}

void func_8006DC58(s32 updateRate) {
#ifdef PUPPYPRINT_DEBUG
    u32 first;
#endif
    if (get_thread30_level_id_to_load() == 0) {
#ifdef PUPPYPRINT_DEBUG
    first =  osGetTime();
#endif
        func_80010994(updateRate);
#ifdef PUPPYPRINT_DEBUG
    profiler_add(gPuppyTimers.objectsTime, osGetTime() - first);
#endif
        gParticlePtrList_flush();
        func_8001BF20();
        func_80024D54(&gCurrDisplayList, &gCurrHudMat, &gCurrHudVerts, &gCurrHudTris, updateRate);
        func_800C3440(updateRate);
        init_rdp_and_framebuffer(&gCurrDisplayList);
        render_borders_for_multiplayer(&gCurrDisplayList);
        func_80077268(&gCurrDisplayList);
    }
}

#ifdef NON_EQUIVALENT
// Minor & regalloc issues.
void func_8006DCF8(s32 updateRate) {
    s32 menuLoopResult, temp, temp2, tempResult;

    gIsPaused = FALSE;
    D_80123516 = 0;
    if (!gIsLoading && D_801234F0) {
        func_8006DC58(updateRate);
    }
    menuLoopResult = menu_loop(&gCurrDisplayList, &gCurrHudMat, &gCurrHudVerts, &gCurrHudTris, updateRate);
    D_801234F0 = TRUE;
    if (menuLoopResult == -2) {
        D_801234F0 = FALSE;
        return;
    }
    if ((menuLoopResult != -1) && (menuLoopResult & 0x200)) {
        func_8006DBE4();
        gCurrDisplayList = gDisplayLists[gSPTaskNum];
        gDPFullSync(gCurrDisplayList++);
        gSPEndDisplayList(gCurrDisplayList++);
        D_801234F4 = menuLoopResult & 0x7F;
        gLevelDefaultVehicleID = func_8006B0AC(D_801234F4);
        D_80123504 = 0;
        D_80123508 = 0x64;
        sRenderContext = DRAW_GAME;
        gIsPaused = FALSE;
        D_80123516 = 0;
        load_level_2(D_801234F4, D_80123500, D_80123504, gLevelDefaultVehicleID);
        func_8006EC48(get_save_file_index());
        return;
    }
    if ((menuLoopResult != -1) && (menuLoopResult & 0x100)) {
        func_8006CC14();
        gIsPaused = FALSE;
        D_80123516 = 0;
        switch (menuLoopResult & 0x7F) {
            case 5:
                load_menu_with_level_background(MENU_TRACK_SELECT, -1, 1);
                break;
            case 14:
                D_801234F4 = 0;
                D_80123504 = 0;
                D_80123508 = 0x64;
                sRenderContext = DRAW_GAME;
                load_level_2(D_801234F4, D_80123500, D_80123504, gLevelDefaultVehicleID);
                func_8006EC48(get_save_file_index());
                break;
            case 1:
                D_80123504 = 0;
                D_80123508 = 0x64;
                D_801234F4 = D_80121250[0];
                sRenderContext = DRAW_GAME;
                // Minor issue with these 2 if statements
                temp2 = D_80121250[D_80121250[1] + 8];
                temp = D_80121250[15];
                if (temp >= 0) {
                    D_80123504 = temp;
                }
                if (temp2 >= 0) {
                    D_80123508 = temp2;
                }
                load_level_2(D_801234F4, D_80123500, D_80123504, gLevelDefaultVehicleID);
                func_8006EC48(get_save_file_index());
                break;
            case 2:
                sRenderContext = DRAW_GAME;
                load_level_2(D_801234F4, D_80123500, D_80123504, gLevelDefaultVehicleID);
                break;
            case 3:
                sRenderContext = DRAW_GAME;
                D_801234F4 = D_80121250[0];
                D_80123504 = D_80121250[15];
                D_80123508 = D_80121250[D_80121250[1] + 8];
                gLevelDefaultVehicleID = func_8006B0AC(D_801234F4);
                load_level_2(D_801234F4, D_80123500, D_80123504, gLevelDefaultVehicleID);
                break;
            default:
                load_menu_with_level_background(MENU_TITLE, -1, 0);
                break;
        }
        return;
    }
    if ((menuLoopResult & 0x80) && (menuLoopResult != -1)) {
        func_8006DBE4();
        // Minor issue here.
        gCurrDisplayList = gDisplayLists[gSPTaskNum];
        gDPFullSync(gCurrDisplayList++);
        gSPEndDisplayList(gCurrDisplayList++);
        temp = menuLoopResult & 0x7F;
        D_80121250[1] = temp;
        D_80121250[0] = D_801234F4;
        D_801234F4 = D_80121250[temp + 2];
        D_80123504 = D_80121250[temp + 4];
        sRenderContext = DRAW_GAME;
        D_80123508 = D_80121250[temp + 12];
        temp = get_player_selected_vehicle(0);
        D_80123500 = gSettingsPtr->gObjectCount - 1;
        load_level_2(D_801234F4, D_80123500, D_80123504, temp);
        D_801234FC = 0;
        gLevelDefaultVehicleID = D_8012351C;
        return;
    }
    if (menuLoopResult > 0) {
        func_8006DBE4();
        gCurrDisplayList = gDisplayLists[gSPTaskNum];
        gDPFullSync(gCurrDisplayList++);
        gSPEndDisplayList(gCurrDisplayList++);
        sRenderContext = DRAW_GAME;
        func_8006CAE4(menuLoopResult, -1, gLevelDefaultVehicleID);
        if (gSettingsPtr->newGame && !is_in_tracks_mode()) {
            func_80000B28();
            gSettingsPtr->newGame = FALSE;
        }
    }
}

#else
GLOBAL_ASM("asm/non_matchings/game/func_8006DCF8.s")
#endif

void load_level_for_menu(s32 levelId, s32 numberOfPlayers, s32 cutsceneId) {
    if (!gIsLoading) {
        func_8006DBE4();
        if (get_thread30_level_id_to_load() == 0) {
            gCurrDisplayList = gDisplayLists[gSPTaskNum];
            gDPFullSync(gCurrDisplayList++);
            gSPEndDisplayList(gCurrDisplayList++);
        }
    }
    if (levelId != -1) {
        load_level_3(levelId, numberOfPlayers, 0, 2, cutsceneId);
        gIsLoading = FALSE;
        return;
    }
    gIsLoading = TRUE;
}

void calc_and_alloc_heap_for_settings(void) {
    s32 dataSize;
    u32 sizes[15];
    s32 numWorlds, numLevels;

    func_8006A6B0();
    reset_character_id_slots();
    get_number_of_levels_and_worlds(&numLevels, &numWorlds);
    sizes[0] = sizeof(Settings);
    sizes[1] = sizes[0] + (numLevels * 4); // balloonsPtr
    sizes[2] = sizes[1] + (numWorlds * 2); // flapInitialsPtr[0]
    dataSize = (numLevels * 2);
    sizes[3] = sizes[2] + dataSize;   // flapInitialsPtr[1]
    sizes[4] = sizes[3] + dataSize;   // flapInitialsPtr[2]
    sizes[5] = sizes[4] + dataSize;   // flapTimesPtr[0]
    sizes[6] = sizes[5] + dataSize;   // flapTimesPtr[1]
    sizes[7] = sizes[6] + dataSize;   // flapTimesPtr[2]
    sizes[8] = sizes[7] + dataSize;   // courseInitialsPtr[0]
    sizes[9] = sizes[8] + dataSize;   // courseInitialsPtr[1]
    sizes[10] = sizes[9] + dataSize;  // courseInitialsPtr[2]
    sizes[11] = sizes[10] + dataSize; // courseTimesPtr[0]
    sizes[12] = sizes[11] + dataSize; // courseTimesPtr[1]
    sizes[13] = sizes[12] + dataSize; // courseTimesPtr[2]
    sizes[14] = sizes[13] + dataSize; // total size

    gSettingsPtr = allocate_from_main_pool_safe(sizes[14], COLOUR_TAG_WHITE);
    gSettingsPtr->courseFlagsPtr = (s32 *)((u8 *)gSettingsPtr + sizes[0]);
    gSettingsPtr->balloonsPtr = (s16 *)((u8 *)gSettingsPtr + sizes[1]);
    gSettingsPtr->tajFlags = 0;
    gSettingsPtr->flapInitialsPtr[0] = (u16 *)((u8 *)gSettingsPtr + sizes[2]);
    gSettingsPtr->flapInitialsPtr[1] = (u16 *)((u8 *)gSettingsPtr + sizes[3]);
    gSettingsPtr->flapInitialsPtr[2] = (u16 *)((u8 *)gSettingsPtr + sizes[4]);
    gSettingsPtr->flapTimesPtr[0] = (u16 *)((u8 *)gSettingsPtr + sizes[5]);
    gSettingsPtr->flapTimesPtr[1] = (u16 *)((u8 *)gSettingsPtr + sizes[6]);
    gSettingsPtr->flapTimesPtr[2] = (u16 *)((u8 *)gSettingsPtr + sizes[7]);
    gSettingsPtr->courseInitialsPtr[0] = (u16 *)((u8 *)gSettingsPtr + sizes[8]);
    gSettingsPtr->courseInitialsPtr[1] = (u16 *)((u8 *)gSettingsPtr + sizes[9]);
    gSettingsPtr->courseInitialsPtr[2] = (u16 *)((u8 *)gSettingsPtr + sizes[10]);
    gSettingsPtr->courseTimesPtr[0] = (u16 *)((u8 *)gSettingsPtr + sizes[11]);
    gSettingsPtr->courseTimesPtr[1] = (u16 *)((u8 *)gSettingsPtr + sizes[12]);
    gSettingsPtr->courseTimesPtr[2] = (u16 *)((u8 *)gSettingsPtr + sizes[13]);
    gSettingsPtr->unk4C = &D_80121250;
    D_800DD37C = 263;
}

void func_8006E5BC(void) {
    s32 i, j;
    gSettingsPtr->gObjectCount = get_number_of_active_players();
    for (i = 0; i < 8; i++) {
        gSettingsPtr->racers[i].best_times = 0;
        gSettingsPtr->racers[i].character = get_character_id_from_slot(i);
        if (gSettingsPtr->gObjectCount >= 2) {
            gSettingsPtr->racers[i].starting_position = i;
        } else if (is_in_two_player_adventure()) {
            gSettingsPtr->racers[i].starting_position = 5 - i;
        } else {
            gSettingsPtr->racers[i].starting_position = 7 - i;
        }
        gSettingsPtr->racers[i].unk7 = 0;
        for (j = 0; j < 4; j++) {
            gSettingsPtr->racers[i].placements[j] = 0;
        }
        gSettingsPtr->racers[i].course_time = 0;
        for (j = 0; j < 3; j++) {
            gSettingsPtr->racers[i].lap_times[j] = 0;
        }
    }
    gSettingsPtr->timeTrialRacer = 0;
    gSettingsPtr->unk115[0] = 0;
    gSettingsPtr->unk115[1] = 0;
    gSettingsPtr->display_times = 0;
    gSettingsPtr->worldId = 0;
    gSettingsPtr->courseId = 0;
}

void func_8006E770(Settings *settings, s32 arg1) {
    s32 i, j;
    s32 numWorlds, numLevels;
    s32 index;
    u16 *temp_v0;

    get_number_of_levels_and_worlds(&numLevels, &numWorlds);
    temp_v0 = (u16 *)get_misc_asset(MISC_ASSET_UNK17);
    for (i = 0; i < 3; i++) { // 3 = number of save files?
        for (j = 0; j < numLevels; j++) {
            index = (j * 12) + (i * 4);
            if (arg1 & 1) {
                settings->flapInitialsPtr[i][j] = temp_v0[index + 3];
                settings->flapTimesPtr[i][j] = temp_v0[index + 2];
            }
            if (arg1 & 2) {
                settings->courseInitialsPtr[i][j] = temp_v0[index + 1];
                settings->courseTimesPtr[i][j] = temp_v0[index];
            }
        }
    }
}

void func_8006E994(Settings *settings) {
    s32 i;
    s32 sp20;
    s32 sp1C;

    get_number_of_levels_and_worlds(&sp1C, &sp20);
    settings->newGame = 1;

    for (i = 0; i < sp20; i++) {
        settings->balloonsPtr[i] = 0;
    }
    for (i = 0; i < sp1C; i++) {
        settings->courseFlagsPtr[i] = 0;
    }

    settings->keys = 0;
    settings->unkA = 0;
    settings->bosses = 0;
    settings->trophies = 0;
    settings->cutsceneFlags = 0;
    settings->tajFlags = 0;
    settings->ttAmulet = 0;
    settings->wizpigAmulet = 0;
}

UNUSED void func_8006EA58(void) {
    func_8006E770(gSettingsPtr, 3);
    func_8006E994(gSettingsPtr);
}

Settings *get_settings(void) {
    return gSettingsPtr;
}

/**
 * Returns the value in gIsPaused.
 */
s8 is_game_paused(void) {
    return gIsPaused;
}

s8 func_8006EAB0(void) {
    return D_80123516;
}

/**
 * Sets and returns (nonzero) the message set when pressing the reset button.
 */
s32 is_reset_pressed(void) {
    if (D_80123560[0] == 0) {
        D_80123560[0] = (s32)((osRecvMesg(&gNMIMesgQueue, NULL, OS_MESG_NOBLOCK) + 1) != 0);
    }
    return D_80123560[0];
}

s32 func_8006EB14(void) {
    return D_801234F4;
}

/* Unused? */
void func_8006EB24(void) {
    D_800DD37C |= 0x01;
}

/* Unused? */
void func_8006EB40(void) {
    D_800DD37C |= 0x02;
}

void func_8006EB5C(void) {
    D_800DD37C |= 0x03;
}

void func_8006EB78(s32 saveFileIndex) {
    D_800DD37C &= -0x301;
    D_800DD37C |= (0x04 | ((saveFileIndex & 3) << 8));
}

void func_8006EBA8(void) {
    D_800DD37C |= 0x08;
}

void func_8006EBC4(void) {
    D_800DD37C |= 0x10;
}

void func_8006EBE0(void) {
    D_800DD37C |= 0x20;
}

void func_8006EBFC(void) {
    D_800DD37C |= 0x30;
}

void func_8006EC18(s32 arg0) {
    D_800DD37C &= -0xC01;
    D_800DD37C |= (0x40 | ((arg0 & 3) << 0xA));
}

void func_8006EC48(s32 saveFileIndex) {
    if (sRenderContext == DRAW_GAME && !is_in_tracks_mode()) {
        D_800DD37C &= -0xC01;
        D_800DD37C |= (0x40 | ((saveFileIndex & 3) << 0xA));
    }
}

void func_8006ECAC(s32 arg0) {
    D_800DD37C = ((arg0 & 0x03) << 10) | 0x80;
}

/* Unused? */
void func_8006ECC4(void) {
    D_800DD37C |= 0x100;
}

//Always called after updating a value in sEepromSettings
void func_8006ECE0(void) {
    D_800DD37C |= 0x200;
}

GLOBAL_ASM("asm/non_matchings/game/func_8006ECFC.s")

s32 func_8006EFB8(void) {
    //Could be SP_DMEM_START / CACHERR_EE / SR_FR / M_K0 / LEO_STATUS_BUFFER_MANAGER_INTERRUPT
    if (IO_READ(SP_DMEM_START) != -1U) {
        return FALSE;
    }
    return TRUE;
}

#ifdef NON_EQUIVALENT

// Not close to matching, but should be the same functionality-wise.
void func_8006EFDC(void) {
    s32 size1, size2, size3, size4, totalSize;

    D_8012350C = 3;

    size1 = (gNumF3dCmdsPerPlayer[3] * sizeof(Gwords));
    size2 = (gNumHudMatPerPlayer[3] * sizeof(Mtx));
    size3 = (gNumHudVertsPerPlayer[3] * sizeof(Vertex));
    size4 = (gNumHudTrisPerPlayer[3] * sizeof(Triangle));
    totalSize = size1 + size2 + size3 + size4;

    gDisplayLists[0] = (u8 *)allocate_from_main_pool_safe(totalSize, COLOUR_TAG_RED);
    gHudMatrices[0] = (u8 *)gDisplayLists[0] + size1;
    gHudVertices[0] = (u8 *)gHudMatrices[0] + size2;
    gHudTriangles[0] = (u8 *)gHudVertices[0] + size3;

    gDisplayLists[1] = (u8 *)allocate_from_main_pool_safe(totalSize, COLOUR_TAG_YELLOW);
    gHudMatrices[1] = (u8 *)gDisplayLists[1] + size1;
    gHudVertices[1] = (u8 *)gHudMatrices[1] + size2;
    gHudTriangles[1] = (u8 *)gHudVertices[1] + size3;

    gCurrNumF3dCmdsPerPlayer = gNumF3dCmdsPerPlayer[3];
    gCurrNumHudMatPerPlayer = gNumHudMatPerPlayer[3];
    gCurrNumHudTrisPerPlayer = gNumHudTrisPerPlayer[3];
    gCurrNumHudVertsPerPlayer = gNumHudVertsPerPlayer[3];
}
#else
GLOBAL_ASM("asm/non_matchings/game/func_8006EFDC.s")
#endif

void func_8006F140(s32 arg0) {
    if (D_800DD394 == 0) {
        D_800DD394 = 0x28;
        D_80123524 = 0;
        D_80123526 = 0;
        if (arg0 == 1) {
            func_800C01D8(&D_800DD41C);
        }
        if (arg0 == 3) {
            D_800DD394 = 0x11A;
            func_800C01D8(&D_800DD424);
        }
        if (arg0 == 4) {
            D_800DD394 = 0x168;
            func_800C01D8(&D_800DD424);
        }
        if (arg0 == 0) {
            D_800DD394 = 2;
        }
    }
}

// Unused?
void func_8006F20C(void) {
    if (D_800DD394 == 0) {
        func_800C01D8(&D_800DD41C);
        D_800DD394 = 0x28;
        D_80123524 = 1;
    }
}

void func_8006F254(void) {
    if (D_800DD394 == 0) {
        func_800C01D8(&D_800DD41C);
        D_800DD394 = 0x28;
        D_80123524 = 2;
    }
}

void func_8006F29C(void) {
    if (D_800DD394 == 0) {
        if ((gSettingsPtr->trophies & 0xFF) == 0xFF && !(gSettingsPtr->cutsceneFlags & CUTSCENE_LIGHTHOUSE_ROCKET) && gSettingsPtr->bosses & 1) {
            gSettingsPtr->cutsceneFlags |= CUTSCENE_LIGHTHOUSE_ROCKET;
            func_800C01D8(&D_800DD41C);
            D_800DD394 = 0x28;
            D_80123525 = 0x2D;
            D_80123524 = 3;
        }
    }
}

void func_8006F338(s32 arg0) {
    if (D_800DD394 == 0) {
        D_80123525 = arg0;
        func_800C01D8(&D_800DD41C);
        D_800DD394 = 0x28;
        D_80123524 = 4;
    }
}

void func_8006F388(u8 time) {
    D_800DD398 = time;
}

void func_8006F398(void) {
    s32 i;
    u8 temp;
    u8 *first_racer_data;
    u8 *second_racer_data;

    swap_player_1_and_2_ids();
    func_8000E194();

    first_racer_data = (u8 *)(gSettingsPtr->racers);
    second_racer_data = (u8 *)(gSettingsPtr->racers + 1);

    for (i = 0; i < (s32)sizeof(Racer); i++) {
        temp = first_racer_data[i];
        first_racer_data[i] = second_racer_data[i];
        second_racer_data[i] = temp;
    }
}

void func_8006F42C(void) {
    D_800DD3F0 = 2;
}

#if SKIP_INTRO == SKIP_TITLE
 #define BOOT_LVL MENU_TITLE
#elif SKIP_INTRO == SKIP_CHARACTER
 #define BOOT_LVL MENU_CHARACTER_SELECT
#elif SKIP_INTRO == SKIP_MENU
 #define BOOT_LVL MENU_GAME_SELECT
#else
 #define BOOT_LVL MENU_BOOT
#endif // SKIP_INTRO

/**
 * Give the player 8 frames to enter the CPak menu with start, then load the intro sequence.
 */
void pre_intro_loop(void) {
    s32 i;
    s32 buttonInputs = 0;

    for (i = 0; i < MAXCONTROLLERS; i++) {
        buttonInputs |= get_buttons_held_from_player(i);
    }
    if (buttonInputs & START_BUTTON) {
        gShowControllerPakMenu = TRUE;
    }
#ifndef SKIP_INTRO
    sBootDelayTimer++;
#else
    sBootDelayTimer = 8;
#endif
    if (sBootDelayTimer >= 8) {
        load_menu_with_level_background(BOOT_LVL, 0x27, 2);
    }
}

/**
 * Returns TRUE if the game doesn't detect any controllers.
 */
s32 is_controller_missing(void) {
    if (sControllerStatus == CONTROLLER_MISSING) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/**
 * Ran on boot, will make sure the CIC chip (CIC6103) is to spec. Will return true if it's all good, otherwise it returns false.
 * The intention of this function, is an attempt to check that the cartridge is a legitimate copy.
 * A false read, meaning you're caught running an illegitimate copy, will force the game to pause when you enter the world.
 */
s32 check_imem_validity(void) {
    /*(SP_STATUS_HALT | SP_STATUS_BROKE | SP_STATUS_DMA_BUSY | SP_STATUS_IO_FULL | SP_STATUS_INTR_BREAK | SP_STATUS_YIELD |
    SP_STATUS_YIELDED | SP_STATUS_TASKDONE | SP_STATUS_TASKDONE | SP_STATUS_RSPSIGNAL | SP_STATUS_SIG5))*/
    if (IO_READ(SP_IMEM_START) != 0x17D7) {
        return FALSE;
    }
    return TRUE;
}
