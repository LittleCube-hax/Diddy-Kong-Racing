#ifndef CONFIG_H
#define CONFIG_H

// Can be TITLE, CHARACTER or MENU.
#define SKIP_TITLE 1
#define SKIP_CHARACTER 2
#define SKIP_MENU 3

/// Optional toggles.
#define DISABLE_AA // Globally disable anti-aliasing, reducing RDP load.
#define PUPPYPRINT_DEBUG // Enable debug features
#define SKIP_INTRO SKIP_TITLE // Skip the boot screen, making getting ingame faster.
#define DEFAULT_CHARACTER 7 // If you skip character select, pick a default character.
#define EXPANSION_PAK // Enable expansion pak requirement
// #define FORCE_4MB_MEMORY // Pretend the expansion pak is not installed.
#define DISABLE_ANTI_TAMPER // Disable all the anti tamperment measures in the ROM
#define UNLOCK_ALL // Unlock all characters, tracks and adventure 2.
#define FIFO_UCODE // Allow usage of the faster FIFO microcode. Emulators will still use xbus.
// #define DISABLE_AUDIO // Disable all ingame audio, and prevent the RSP from working on audio tasks.
#define NUM_CONTROLLERS 3

#define NUM_RACERS_1P 8 // Default is 8
#define NUM_RACERS_2P 6 // Default is 6
#define NUM_RACERS_3P 4 // Default is 4
#define NUM_RACERS_4P 4 // Default is 4

#define SCREEN_WIDTH 304
#define SCREEN_HEIGHT 224
#define HIGH_RES_SCREEN_WIDTH 640
#define HIGH_RES_SCREEN_HEIGHT 480





// Don't touch any of this below.

#ifdef DISABLE_AA
#define AA_DEF 0
#define RD_DEF 0
#else
#define AA_DEF AA_EN
#define RD_DEF IM_RD
#endif

#endif // CONFIG_H
