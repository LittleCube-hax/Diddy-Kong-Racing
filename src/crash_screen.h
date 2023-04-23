#include "thread0_epc.h"
#include "types.h"
#include "macros.h"
#include "menu.h"
#include "save_data.h"
#include "lib/src/libc/xprintf.h"
#include "printf.h"
#include "objects.h"
#include "controller.h"
#include "game.h"
#include "stacks.h"
#include "stdarg.h"
#include "string.h"
#include "video.h"

s32 _Printf(outfun prout, char *dst, const char *fmt, va_list args);

#ifndef CRASH_SCREEN_H
#define CRASH_SCREEN_H

u16 sCrashX;
u16 sCrashY;
u8 gAssert = 0;
char gAssertString[64];

void puppyprint_assert(char *str) {
    s32 len = strlen(str);
    gAssert = 1;
    memcpy(&gAssertString, str, len);
    *(volatile int *) 0 = 0;
}

const char *const gCauseDesc[18] = {
    "Interrupt",
    "TLB modification",
    "TLB exception on load",
    "TLB exception on store",
    "Address error on load",
    "Address error on store",
    "Bus error on inst.",
    "Bus error on data",
    "System call exception",
    "Breakpoint exception",
    "Reserved instruction",
    "Coprocessor unusable",
    "Arithmetic overflow",
    "Trap exception",
    "Virtual coherency on inst.",
    "Floating point exception",
    "Watchpoint exception",
    "Virtual coherency on data",
};

const char *const gFpcsrDesc[6] = {
    "Unimplemented operation", "Invalid operation", "Division by zero", "Overflow", "Underflow",
    "Inexact operation",
};

const u8 gCrashScreenCharToGlyph[128] = {
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 41, -1, -1, -1, 43, -1, -1, 37, 38, -1, 42,
    -1, 39, 44, -1, 0,  1,  2,  3,  4,  5,  6,  7,  8,  9,  36, -1, -1, -1, -1, 40, -1, 10,
    11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32,
    33, 34, 35, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22,
    23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1,
};

// Bit-compressed font. '#' = 1, '.' = 0
const u32 gCrashScreenFont[7 * 9] = {
    0x70871c30, // .###.. ..#... .###.. .###.. ..##.. ..
    0x8988a250, // #...#. .##... #...#. #...#. .#.#.. ..
    0x88808290, // #...#. ..#... ....#. ....#. #..#.. ..
    0x88831c90, // #...#. ..#... ..##.. .###.. #..#.. ..
    0x888402f8, // #...#. ..#... .#.... ....#. #####. ..
    0x88882210, // #...#. ..#... #..... #...#. ...#.. ..
    0x71cf9c10, // .###.. .###.. #####. .###.. ...#.. ..

    0xf9cf9c70, // #####. .###.. #####. .###.. .###.. ..
    0x8228a288, // #..... #...#. #...#. #...#. #...#. ..
    0xf200a288, // ####.. #..... ....#. #...#. #...#. ..
    0x0bc11c78, // ....#. ####.. ...#.. .###.. .####. ..
    0x0a222208, // ....#. #...#. ..#... #...#. ....#. ..
    0x8a222288, // #...#. #...#. ..#... #...#. #...#. ..
    0x71c21c70, // .###.. .###.. ..#... .###.. .###.. ..

    0x23c738f8, // ..#... ####.. .###.. ###... #####. ..
    0x5228a480, // .#.#.. #...#. #...#. #..#.. #..... ..
    0x8a282280, // #...#. #...#. #..... #...#. #..... ..
    0x8bc822f0, // #...#. ####.. #..... #...#. ####.. ..
    0xfa282280, // #####. #...#. #..... #...#. #..... ..
    0x8a28a480, // #...#. #...#. #...#. #..#.. #..... ..
    0x8bc738f8, // #...#. ####.. .###.. ###... #####. ..

    0xf9c89c08, // #####. .###.. #...#. .###.. ....#. ..
    0x82288808, // #..... #...#. #...#. ..#... ....#. ..
    0x82088808, // #..... #..... #...#. ..#... ....#. ..
    0xf2ef8808, // ####.. #.###. #####. ..#... ....#. ..
    0x82288888, // #..... #...#. #...#. ..#... #...#. ..
    0x82288888, // #..... #...#. #...#. ..#... #...#. ..
    0x81c89c70, // #..... .###.. #...#. .###.. .###.. ..

    0x8a08a270, // #...#. #..... #...#. #...#. .###.. ..
    0x920da288, // #..#.. #..... ##.##. #...#. #...#. ..
    0xa20ab288, // #.#... #..... #.#.#. ##..#. #...#. ..
    0xc20aaa88, // ##.... #..... #.#.#. #.#.#. #...#. ..
    0xa208a688, // #.#... #..... #...#. #..##. #...#. ..
    0x9208a288, // #..#.. #..... #...#. #...#. #...#. ..
    0x8be8a270, // #...#. #####. #...#. #...#. .###.. ..

    0xf1cf1cf8, // ####.. .###.. ####.. .###.. #####. ..
    0x8a28a220, // #...#. #...#. #...#. #...#. ..#... ..
    0x8a28a020, // #...#. #...#. #...#. #..... ..#... ..
    0xf22f1c20, // ####.. #...#. ####.. .###.. ..#... ..
    0x82aa0220, // #..... #.#.#. #.#... ....#. ..#... ..
    0x82492220, // #..... #..#.. #..#.. #...#. ..#... ..
    0x81a89c20, // #..... .##.#. #...#. .###.. ..#... ..

    0x8a28a288, // #...#. #...#. #...#. #...#. #...#. ..
    0x8a28a288, // #...#. #...#. #...#. #...#. #...#. ..
    0x8a289488, // #...#. #...#. #...#. .#.#.. #...#. ..
    0x8a2a8850, // #...#. #...#. #.#.#. ..#... .#.#.. ..
    0x894a9420, // #...#. .#.#.. #.#.#. .#.#.. ..#... ..
    0x894aa220, // #...#. .#.#.. #.#.#. #...#. ..#... ..
    0x70852220, // .###.. ..#... .#.#.. #...#. ..#... ..

    0xf8011000, // #####. ...... ...#.. .#.... ...... ..
    0x08020800, // ....#. ...... ..#... ..#... ...... ..
    0x10840400, // ...#.. ..#... .#.... ...#.. ...... ..
    0x20040470, // ..#... ...... .#.... ...#.. .###.. ..
    0x40840400, // .#.... ..#... .#.... ...#.. ...... ..
    0x80020800, // #..... ...... ..#... ..#... ...... ..
    0xf8011000, // #####. ...... ...#.. .#.... ...... ..

    0x70800000, // .###.. ..#... ...... ...... ...... ..
    0x88822200, // #...#. ..#... ..#... #...#. ...... ..
    0x08820400, // ....#. ..#... ..#... ...#.. ...... ..
    0x108f8800, // ...#.. ..#... #####. ..#... ...... ..
    0x20821000, // ..#... ..#... ..#... .#.... ...... ..
    0x00022200, // ...... ...... ..#... #...#. ...... ..
    0x20800020, // ..#... ..#... ...... ...... ..#... ..
};

extern u64 osClockRate;

struct {
    OSThread thread;
    u64 stack[0x400 / sizeof(u64)];
    OSMesgQueue mesgQueue;
    OSMesg mesg;
    u16 *framebuffer;
    u16 width;
    u16 height;
} gCrashScreen;

void crash_screen_draw_rect(s32 x, s32 y, s32 w, s32 h) {
    u16 *ptr;
    s32 i, j;

    ptr = gCrashScreen.framebuffer + gCrashScreen.width * y + x;
    for (i = 0; i < h; i++) {
        for (j = 0; j < w; j++) {
            // 0xe738 = 0b1110011100111000
            *ptr = ((*ptr & 0xe738) >> 2) | 1;
            ptr++;
        }
        ptr += gCrashScreen.width - w;
    }
}

void crash_screen_draw_glyph(s32 x, s32 y, s32 glyph) {
    const u32 *data;
    u16 *ptr;
    u32 bit;
    u32 rowMask;
    s32 i, j;

    data = &gCrashScreenFont[glyph / 5 * 7];
    ptr = gCrashScreen.framebuffer + gCrashScreen.width * y + x;

    for (i = 0; i < 7; i++) {
        bit = 0x80000000U >> ((glyph % 5) * 6);
        rowMask = *data++;

        for (j = 0; j < 6; j++) {
            *ptr++ = (bit & rowMask) ? 0xffff : 1;
            bit >>= 1;
        }
        ptr += gCrashScreen.width - 6;
    }
}

static char *write_to_buf(char *buffer, const char *data, size_t size) {
    return (char *) memcpy(buffer, data, size) + size;
}

void crash_screen_print(s32 x, s32 y, const char *fmt, ...) {
    char *ptr;
    char buf[0x108];
    u32 glyph;
    va_list args;

    va_start(args, fmt);
    if (_Printf(write_to_buf, buf, fmt, args) > 0) {
        ptr = buf;
        while (*ptr) {
            glyph = gCrashScreenCharToGlyph[*ptr & 0x7f];
            if (glyph != 0xff) {
                crash_screen_draw_glyph(x, y, glyph);
            }
            ptr++;
            x += 6;
        }
    }
    va_end(args);
}

void crash_screen_print_float_reg(s32 x, s32 y, s32 regNum, void *addr) {
    u32 bits;
    s32 exponent;

    bits = *(u32 *) addr;
    exponent = ((bits & 0x7f800000U) >> 0x17) - 0x7f;
    if ((exponent >= -0x7e && exponent <= 0x7f) || bits == 0) {
        crash_screen_print(x, y, "F%02d:%.3e", regNum, *(f32 *) addr);
    } else {
        crash_screen_print(x, y, "F%02d:---------", regNum);
    }
}

void crash_screen_print_fpcsr(u32 fpcsr) {
    s32 i;
    u32 bit;

    bit = 1 << 17;
    crash_screen_print(sCrashX + 10, sCrashY + 130, "FPCSR:%08XH", fpcsr);
    for (i = 0; i < 6; i++) {
        if (fpcsr & bit) {
            crash_screen_print(sCrashX + 110, sCrashY + 135, "(%s)", gFpcsrDesc[i]);
            return;
        }
        bit >>= 1;
    }
}

void draw_crash_screen(OSThread *thread) {
    s16 cause;
    __OSThreadContext *tc = &thread->context;

    cause = (tc->cause >> 2) & 0x1f;
    if (cause == 23) // EXC_WATCH
    {
        cause = 16;
    }
    if (cause == 31) // EXC_VCED
    {
        cause = 17;
    }

    sCrashX = (SCREEN_WIDTH - 270) / 2;
    sCrashY = (SCREEN_HEIGHT - 205) / 2;
    crash_screen_draw_rect(sCrashX, sCrashY, 270, 205);
    crash_screen_print(sCrashX + 10, sCrashY + 5, "THREAD:%d  (%s)", thread->id, gCauseDesc[cause]);
    crash_screen_print(sCrashX + 10, sCrashY + 15, "PC:%08XH   SR:%08XH   VA:%08XH", tc->pc, tc->sr, tc->badvaddr);
    osWritebackDCacheAll();
    if (!gAssert) {
        crash_screen_print(sCrashX + 10, sCrashY + 30, "AT:%08XH   V0:%08XH   V1:%08XH", (u32) tc->at, (u32) tc->v0, (u32) tc->v1);
        crash_screen_print(sCrashX + 10, sCrashY + 40, "A0:%08XH   A1:%08XH   A2:%08XH", (u32) tc->a0, (u32) tc->a1, (u32) tc->a2);
        crash_screen_print(sCrashX + 10, sCrashY + 50, "A3:%08XH   T0:%08XH   T1:%08XH", (u32) tc->a3, (u32) tc->t0, (u32) tc->t1);
        crash_screen_print(sCrashX + 10, sCrashY + 60, "T2:%08XH   T3:%08XH   T4:%08XH", (u32) tc->t2, (u32) tc->t3, (u32) tc->t4);
        crash_screen_print(sCrashX + 10, sCrashY + 70, "T5:%08XH   T6:%08XH   T7:%08XH", (u32) tc->t5, (u32) tc->t6, (u32) tc->t7);
        crash_screen_print(sCrashX + 10, sCrashY + 80, "S0:%08XH   S1:%08XH   S2:%08XH", (u32) tc->s0, (u32) tc->s1, (u32) tc->s2);
        crash_screen_print(sCrashX + 10, sCrashY + 90, "S3:%08XH   S4:%08XH   S5:%08XH", (u32) tc->s3, (u32) tc->s4, (u32) tc->s5);
        crash_screen_print(sCrashX + 10, sCrashY + 100, "S6:%08XH   S7:%08XH   T8:%08XH", (u32) tc->s6, (u32) tc->s7, (u32) tc->t8);
        crash_screen_print(sCrashX + 10, sCrashY + 110, "T9:%08XH   GP:%08XH   SP:%08XH", (u32) tc->t9, (u32) tc->gp, (u32) tc->sp);
        crash_screen_print(sCrashX + 10, sCrashY + 120, "S8:%08XH   RA:%08XH", (u32) tc->s8, (u32) tc->ra);
        crash_screen_print_fpcsr(tc->fpcsr);
        osWritebackDCacheAll();
        crash_screen_print_float_reg(sCrashX + 10, sCrashY + 145, 0, &tc->fp0.f.f_even);
        crash_screen_print_float_reg(sCrashX + 100, sCrashY + 145, 2, &tc->fp2.f.f_even);
        crash_screen_print_float_reg(sCrashX + 190, sCrashY + 145, 4, &tc->fp4.f.f_even);
        crash_screen_print_float_reg(sCrashX + 10, sCrashY + 155, 6, &tc->fp6.f.f_even);
        crash_screen_print_float_reg(sCrashX + 100, sCrashY + 155, 8, &tc->fp8.f.f_even);
        crash_screen_print_float_reg(sCrashX + 190, sCrashY + 155, 10, &tc->fp10.f.f_even);
        crash_screen_print_float_reg(sCrashX + 10, sCrashY + 165, 12, &tc->fp12.f.f_even);
        crash_screen_print_float_reg(sCrashX + 100, sCrashY + 165, 14, &tc->fp14.f.f_even);
        crash_screen_print_float_reg(sCrashX + 190, sCrashY + 165, 16, &tc->fp16.f.f_even);
        crash_screen_print_float_reg(sCrashX + 10, sCrashY + 175, 18, &tc->fp18.f.f_even);
        crash_screen_print_float_reg(sCrashX + 100, sCrashY + 175, 20, &tc->fp20.f.f_even);
        crash_screen_print_float_reg(sCrashX + 190, sCrashY + 175, 22, &tc->fp22.f.f_even);
        crash_screen_print_float_reg(sCrashX + 10, sCrashY + 185, 24, &tc->fp24.f.f_even);
        crash_screen_print_float_reg(sCrashX + 100, sCrashY + 185, 26, &tc->fp26.f.f_even);
        crash_screen_print_float_reg(sCrashX + 190, sCrashY + 185, 28, &tc->fp28.f.f_even);
        crash_screen_print_float_reg(sCrashX + 10, sCrashY + 195, 30, &tc->fp30.f.f_even);
    } else {
        crash_screen_print(sCrashX + 10, sCrashY + 30, "Assert tripped");
        crash_screen_print(sCrashX + 10, sCrashY + 45, gAssertString);
    }
    osWritebackDCacheAll();
    osViBlack(FALSE);
    change_vi(&gGlobalVI, SCREEN_WIDTH, SCREEN_HEIGHT);
    osViSwapBuffer(gCrashScreen.framebuffer);
}

extern OSThread *__osFaultedThread;

OSThread *get_crashed_thread(void) {
    OSThread *thread;

    thread = __osFaultedThread;
    while (thread->priority != -1) {
        if (thread->priority > OS_PRIORITY_IDLE && thread->priority < OS_PRIORITY_APPMAX
            && (thread->flags & 3) != 0) {
            return thread;
        }
        thread = thread->tlnext;
    }
    return NULL;
}

void thread2_crash_screen(UNUSED void *arg) {
    OSMesg mesg;
    OSThread *thread;

    osSetEventMesg(OS_EVENT_CPU_BREAK, &gCrashScreen.mesgQueue, (OSMesg) 1);
    osSetEventMesg(OS_EVENT_FAULT, &gCrashScreen.mesgQueue, (OSMesg) 2);
    do {
        osRecvMesg(&gCrashScreen.mesgQueue, &mesg, 1);
        if (gVideoCurrFramebuffer) {
            gCrashScreen.framebuffer = (u16 *) gVideoCurrFramebuffer; 
        }
        thread = get_crashed_thread();
    } while (thread == NULL);
    draw_crash_screen(thread);
    for (;;) {
    }
}

void crash_screen_set_framebuffer(u16 *framebuffer, s16 width, s16 height) {
    gCrashScreen.framebuffer = framebuffer;
    gCrashScreen.width = width;
    gCrashScreen.height = height;
}

void crash_screen_init(void) {
    gCrashScreen.framebuffer = (u16 *) (0x80300000) - SCREEN_WIDTH * SCREEN_HEIGHT;
    gCrashScreen.width = SCREEN_WIDTH;
    gCrashScreen.height = SCREEN_HEIGHT;
    osCreateMesgQueue(&gCrashScreen.mesgQueue, &gCrashScreen.mesg, 1);
    osCreateThread(&gCrashScreen.thread, 2, thread2_crash_screen, NULL, (u8 *) gCrashScreen.stack + sizeof(gCrashScreen.stack), OS_PRIORITY_APPMAX);
    osStartThread(&gCrashScreen.thread);
}

#endif