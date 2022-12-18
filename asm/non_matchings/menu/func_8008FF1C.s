glabel func_8008FF1C
/* 090B1C 8008FF1C 27BDFF80 */  addiu $sp, $sp, -0x80
/* 090B20 8008FF20 AFBF0054 */  sw    $ra, 0x54($sp)
/* 090B24 8008FF24 AFBE0050 */  sw    $fp, 0x50($sp)
/* 090B28 8008FF28 AFB7004C */  sw    $s7, 0x4c($sp)
/* 090B2C 8008FF2C AFB60048 */  sw    $s6, 0x48($sp)
/* 090B30 8008FF30 AFB50044 */  sw    $s5, 0x44($sp)
/* 090B34 8008FF34 AFB40040 */  sw    $s4, 0x40($sp)
/* 090B38 8008FF38 AFB3003C */  sw    $s3, 0x3c($sp)
/* 090B3C 8008FF3C AFB20038 */  sw    $s2, 0x38($sp)
/* 090B40 8008FF40 AFB10034 */  sw    $s1, 0x34($sp)
/* 090B44 8008FF44 AFB00030 */  sw    $s0, 0x30($sp)
/* 090B48 8008FF48 0C01BAA4 */  jal   get_settings
/* 090B4C 8008FF4C AFA40080 */   sw    $a0, 0x80($sp)
/* 090B50 8008FF50 AFA20058 */  sw    $v0, 0x58($sp)
/* 090B54 8008FF54 0C0078A7 */  jal   get_misc_asset
/* 090B58 8008FF58 2404001A */   li    $a0, 26
/* 090B5C 8008FF5C 3C03800E */  lui   $v1, %hi(gMenuDelay) # $v1, 0x800e
/* 090B60 8008FF60 8C63F47C */  lw    $v1, %lo(gMenuDelay)($v1)
/* 090B64 8008FF64 AFA2005C */  sw    $v0, 0x5c($sp)
/* 090B68 8008FF68 2861FFEA */  slti  $at, $v1, -0x16
/* 090B6C 8008FF6C 14200152 */  bnez  $at, .L800904B8
/* 090B70 8008FF70 28610017 */   slti  $at, $v1, 0x17
/* 090B74 8008FF74 10200150 */  beqz  $at, .L800904B8
/* 090B78 8008FF78 3C0E8012 */   lui   $t6, %hi(gFFLUnlocked) # $t6, 0x8012
/* 090B7C 8008FF7C 85CE6918 */  lh    $t6, %lo(gFFLUnlocked)($t6)
/* 090B80 8008FF80 2401FFFF */  li    $at, -1
/* 090B84 8008FF84 15C10004 */  bne   $t6, $at, .L8008FF98
/* 090B88 8008FF88 24180004 */   li    $t8, 4
/* 090B8C 8008FF8C 240F0003 */  li    $t7, 3
/* 090B90 8008FF90 10000002 */  b     .L8008FF9C
/* 090B94 8008FF94 AFAF0060 */   sw    $t7, 0x60($sp)
.L8008FF98:
/* 090B98 8008FF98 AFB80060 */  sw    $t8, 0x60($sp)
.L8008FF9C:
/* 090B9C 8008FF9C 3C018012 */  lui   $at, %hi(gTrackSelectX) # $at, 0x8012
/* 090BA0 8008FFA0 C42469DC */  lwc1  $f4, %lo(gTrackSelectX)($at)
/* 090BA4 8008FFA4 3C0143A0 */  li    $at, 0x43A00000 # 320.000000
/* 090BA8 8008FFA8 44813000 */  mtc1  $at, $f6
/* 090BAC 8008FFAC 3C098012 */  lui   $t1, %hi(gTrackSelectViewportY) # $t1, 0x8012
/* 090BB0 8008FFB0 46062203 */  div.s $f8, $f4, $f6
/* 090BB4 8008FFB4 8D296480 */  lw    $t1, %lo(gTrackSelectViewportY)($t1)
/* 090BB8 8008FFB8 240CFFFF */  li    $t4, -1
/* 090BBC 8008FFBC 00095023 */  negu  $t2, $t1
/* 090BC0 8008FFC0 448A9000 */  mtc1  $t2, $f18
/* 090BC4 8008FFC4 3C108012 */  lui   $s0, %hi(gTrackSelectRenderDetails) # $s0, 0x8012
/* 090BC8 8008FFC8 26106930 */  addiu $s0, %lo(gTrackSelectRenderDetails) # addiu $s0, $s0, 0x6930
/* 090BCC 8008FFCC AFAC007C */  sw    $t4, 0x7c($sp)
/* 090BD0 8008FFD0 241E0003 */  li    $fp, 3
/* 090BD4 8008FFD4 24170004 */  li    $s7, 4
/* 090BD8 8008FFD8 4459F800 */  cfc1  $t9, $31
/* 090BDC 8008FFDC 00000000 */  nop   
/* 090BE0 8008FFE0 37210003 */  ori   $at, $t9, 3
/* 090BE4 8008FFE4 38210002 */  xori  $at, $at, 2
/* 090BE8 8008FFE8 44C1F800 */  ctc1  $at, $31
/* 090BEC 8008FFEC 3C018012 */  lui   $at, %hi(gTrackSelectY) # $at, 0x8012
/* 090BF0 8008FFF0 460042A4 */  cvt.w.s $f10, $f8
/* 090BF4 8008FFF4 C43069E4 */  lwc1  $f16, %lo(gTrackSelectY)($at)
/* 090BF8 8008FFF8 44D9F800 */  ctc1  $t9, $31
/* 090BFC 8008FFFC 44085000 */  mfc1  $t0, $f10
/* 090C00 80090000 46809120 */  cvt.s.w $f4, $f18
/* 090C04 80090004 AFA8006C */  sw    $t0, 0x6c($sp)
/* 090C08 80090008 46048183 */  div.s $f6, $f16, $f4
/* 090C0C 8009000C 444BF800 */  cfc1  $t3, $31
/* 090C10 80090010 00000000 */  nop   
/* 090C14 80090014 35610003 */  ori   $at, $t3, 3
/* 090C18 80090018 38210002 */  xori  $at, $at, 2
/* 090C1C 8009001C 44C1F800 */  ctc1  $at, $31
/* 090C20 80090020 00000000 */  nop   
/* 090C24 80090024 46003224 */  cvt.w.s $f8, $f6
/* 090C28 80090028 44024000 */  mfc1  $v0, $f8
/* 090C2C 8009002C 44CBF800 */  ctc1  $t3, $31
/* 090C30 80090030 2453FFFF */  addiu $s3, $v0, -1
/* 090C34 80090034 00000000 */  nop   
.L80090038:
/* 090C38 80090038 2416FFFF */  li    $s6, -1
.L8009003C:
/* 090C3C 8009003C 0660000A */  bltz  $s3, .L80090068
/* 090C40 80090040 00000000 */   nop   
/* 090C44 80090044 8FAD0060 */  lw    $t5, 0x60($sp)
/* 090C48 80090048 8FAE006C */  lw    $t6, 0x6c($sp)
/* 090C4C 8009004C 01B3082A */  slt   $at, $t5, $s3
/* 090C50 80090050 14200005 */  bnez  $at, .L80090068
/* 090C54 80090054 01D69021 */   addu  $s2, $t6, $s6
/* 090C58 80090058 06400003 */  bltz  $s2, .L80090068
/* 090C5C 8009005C 2A410006 */   slti  $at, $s2, 6
/* 090C60 80090060 14200003 */  bnez  $at, .L80090070
/* 090C64 80090064 240F0001 */   li    $t7, 1
.L80090068:
/* 090C68 80090068 100000C2 */  b     .L80090374
/* 090C6C 8009006C A200000C */   sb    $zero, 0xc($s0)
.L80090070:
/* 090C70 80090070 0013C080 */  sll   $t8, $s3, 2
/* 090C74 80090074 0313C023 */  subu  $t8, $t8, $s3
/* 090C78 80090078 0018C080 */  sll   $t8, $t8, 2
/* 090C7C 8009007C 0012A080 */  sll   $s4, $s2, 2
/* 090C80 80090080 0012C840 */  sll   $t9, $s2, 1
/* 090C84 80090084 3C098012 */  lui   $t1, %hi(D_801268E8) # $t1, 0x8012
/* 090C88 80090088 252968E8 */  addiu $t1, %lo(D_801268E8) # addiu $t1, $t1, 0x68e8
/* 090C8C 8009008C 03194021 */  addu  $t0, $t8, $t9
/* 090C90 80090090 0292A021 */  addu  $s4, $s4, $s2
/* 090C94 80090094 A20F000C */  sb    $t7, 0xc($s0)
/* 090C98 80090098 0014A180 */  sll   $s4, $s4, 6
/* 090C9C 8009009C 01098821 */  addu  $s1, $t0, $t1
/* 090CA0 800900A0 26640001 */  addiu $a0, $s3, 1
/* 090CA4 800900A4 0C01AC75 */  jal   get_hub_area_id
/* 090CA8 800900A8 0013A823 */   negu  $s5, $s3
/* 090CAC 800900AC 0C01AF77 */  jal   get_level_name
/* 090CB0 800900B0 00402025 */   move  $a0, $v0
/* 090CB4 800900B4 862A0000 */  lh    $t2, ($s1)
/* 090CB8 800900B8 2401FFFF */  li    $at, -1
/* 090CBC 800900BC 11410022 */  beq   $t2, $at, .L80090148
/* 090CC0 800900C0 AE020000 */   sw    $v0, ($s0)
/* 090CC4 800900C4 00135880 */  sll   $t3, $s3, 2
/* 090CC8 800900C8 01735823 */  subu  $t3, $t3, $s3
/* 090CCC 800900CC 8FAD005C */  lw    $t5, 0x5c($sp)
/* 090CD0 800900D0 000B5840 */  sll   $t3, $t3, 1
/* 090CD4 800900D4 01726021 */  addu  $t4, $t3, $s2
/* 090CD8 800900D8 018D8821 */  addu  $s1, $t4, $t5
/* 090CDC 800900DC 82240000 */  lb    $a0, ($s1)
/* 090CE0 800900E0 0C01AF77 */  jal   get_level_name
/* 090CE4 800900E4 00000000 */   nop   
/* 090CE8 800900E8 1657000B */  bne   $s2, $s7, .L80090118
/* 090CEC 800900EC AE020004 */   sw    $v0, 4($s0)
/* 090CF0 800900F0 8FAE0058 */  lw    $t6, 0x58($sp)
/* 090CF4 800900F4 0013C040 */  sll   $t8, $s3, 1
/* 090CF8 800900F8 95CF000E */  lhu   $t7, 0xe($t6)
/* 090CFC 800900FC 24090002 */  li    $t1, 2
/* 090D00 80090100 030FC807 */  srav  $t9, $t7, $t8
/* 090D04 80090104 33280003 */  andi  $t0, $t9, 3
/* 090D08 80090108 17C80013 */  bne   $fp, $t0, .L80090158
/* 090D0C 8009010C 00000000 */   nop   
/* 090D10 80090110 10000011 */  b     .L80090158
/* 090D14 80090114 A209000C */   sb    $t1, 0xc($s0)
.L80090118:
/* 090D18 80090118 8FAA0058 */  lw    $t2, 0x58($sp)
/* 090D1C 8009011C 822C0000 */  lb    $t4, ($s1)
/* 090D20 80090120 8D4B0004 */  lw    $t3, 4($t2)
/* 090D24 80090124 000C6880 */  sll   $t5, $t4, 2
/* 090D28 80090128 016D7021 */  addu  $t6, $t3, $t5
/* 090D2C 8009012C 8DCF0000 */  lw    $t7, ($t6)
/* 090D30 80090130 24190002 */  li    $t9, 2
/* 090D34 80090134 31F80002 */  andi  $t8, $t7, 2
/* 090D38 80090138 13000007 */  beqz  $t8, .L80090158
/* 090D3C 8009013C 00000000 */   nop   
/* 090D40 80090140 10000005 */  b     .L80090158
/* 090D44 80090144 A219000C */   sb    $t9, 0xc($s0)
.L80090148:
/* 090D48 80090148 3C08800E */  lui   $t0, %hi(gQMarkPtr) # $t0, 0x800e
/* 090D4C 8009014C 8D080978 */  lw    $t0, %lo(gQMarkPtr)($t0)
/* 090D50 80090150 00000000 */  nop   
/* 090D54 80090154 AE080004 */  sw    $t0, 4($s0)
.L80090158:
/* 090D58 80090158 44945000 */  mtc1  $s4, $f10
/* 090D5C 8009015C 3C018012 */  lui   $at, %hi(gTrackSelectX) # $at, 0x8012
/* 090D60 80090160 468054A0 */  cvt.s.w $f18, $f10
/* 090D64 80090164 C43069DC */  lwc1  $f16, %lo(gTrackSelectX)($at)
/* 090D68 80090168 3C0C8012 */  lui   $t4, %hi(gTrackSelectViewportY) # $t4, 0x8012
/* 090D6C 8009016C 46109101 */  sub.s $f4, $f18, $f16
/* 090D70 80090170 240F00FF */  li    $t7, 255
/* 090D74 80090174 4449F800 */  cfc1  $t1, $31
/* 090D78 80090178 3C188012 */  lui   $t8, %hi(gSelectedTrackX) # $t8, 0x8012
/* 090D7C 8009017C 35210003 */  ori   $at, $t1, 3
/* 090D80 80090180 38210002 */  xori  $at, $at, 2
/* 090D84 80090184 44C1F800 */  ctc1  $at, $31
/* 090D88 80090188 3C018012 */  lui   $at, %hi(gTrackSelectY) # $at, 0x8012
/* 090D8C 8009018C 460021A4 */  cvt.w.s $f6, $f4
/* 090D90 80090190 3C198012 */  lui   $t9, %hi(gSelectedTrackY) # $t9, 0x8012
/* 090D94 80090194 440A3000 */  mfc1  $t2, $f6
/* 090D98 80090198 44C9F800 */  ctc1  $t1, $31
/* 090D9C 8009019C A60A0008 */  sh    $t2, 8($s0)
/* 090DA0 800901A0 8D8C6480 */  lw    $t4, %lo(gTrackSelectViewportY)($t4)
/* 090DA4 800901A4 C43269E4 */  lwc1  $f18, %lo(gTrackSelectY)($at)
/* 090DA8 800901A8 02AC0019 */  multu $s5, $t4
/* 090DAC 800901AC A20F000D */  sb    $t7, 0xd($s0)
/* 090DB0 800901B0 00005812 */  mflo  $t3
/* 090DB4 800901B4 448B4000 */  mtc1  $t3, $f8
/* 090DB8 800901B8 00000000 */  nop   
/* 090DBC 800901BC 468042A0 */  cvt.s.w $f10, $f8
/* 090DC0 800901C0 46125401 */  sub.s $f16, $f10, $f18
/* 090DC4 800901C4 444DF800 */  cfc1  $t5, $31
/* 090DC8 800901C8 00000000 */  nop   
/* 090DCC 800901CC 35A10003 */  ori   $at, $t5, 3
/* 090DD0 800901D0 38210002 */  xori  $at, $at, 2
/* 090DD4 800901D4 44C1F800 */  ctc1  $at, $31
/* 090DD8 800901D8 00000000 */  nop   
/* 090DDC 800901DC 46008124 */  cvt.w.s $f4, $f16
/* 090DE0 800901E0 440E2000 */  mfc1  $t6, $f4
/* 090DE4 800901E4 44CDF800 */  ctc1  $t5, $31
/* 090DE8 800901E8 A60E000A */  sh    $t6, 0xa($s0)
/* 090DEC 800901EC 8F1869F4 */  lw    $t8, %lo(gSelectedTrackX)($t8)
/* 090DF0 800901F0 00000000 */  nop   
/* 090DF4 800901F4 16580010 */  bne   $s2, $t8, .L80090238
/* 090DF8 800901F8 00000000 */   nop   
/* 090DFC 800901FC 8F3969F8 */  lw    $t9, %lo(gSelectedTrackY)($t9)
/* 090E00 80090200 00000000 */  nop   
/* 090E04 80090204 1679000C */  bne   $s3, $t9, .L80090238
/* 090E08 80090208 00000000 */   nop   
/* 090E0C 8009020C 9209000E */  lbu   $t1, 0xe($s0)
/* 090E10 80090210 3C028012 */  lui   $v0, %hi(gOpacityDecayTimer) # $v0, 0x8012
/* 090E14 80090214 352A0080 */  ori   $t2, $t1, 0x80
/* 090E18 80090218 A20A000E */  sb    $t2, 0xe($s0)
/* 090E1C 8009021C 8C4263D8 */  lw    $v0, %lo(gOpacityDecayTimer)($v0)
/* 090E20 80090220 00000000 */  nop   
/* 090E24 80090224 28410020 */  slti  $at, $v0, 0x20
/* 090E28 80090228 10200007 */  beqz  $at, .L80090248
/* 090E2C 8009022C 000260C0 */   sll   $t4, $v0, 3
/* 090E30 80090230 10000005 */  b     .L80090248
/* 090E34 80090234 A20C000D */   sb    $t4, 0xd($s0)
.L80090238:
/* 090E38 80090238 920B000E */  lbu   $t3, 0xe($s0)
/* 090E3C 8009023C 00000000 */  nop   
/* 090E40 80090240 316DFF7F */  andi  $t5, $t3, 0xff7f
/* 090E44 80090244 A20D000E */  sb    $t5, 0xe($s0)
.L80090248:
/* 090E48 80090248 920E000E */  lbu   $t6, 0xe($s0)
/* 090E4C 8009024C 3C18800E */  lui   $t8, %hi(gMenuDelay) # $t8, 0x800e
/* 090E50 80090250 31CFFF80 */  andi  $t7, $t6, 0xff80
/* 090E54 80090254 A20F000E */  sb    $t7, 0xe($s0)
/* 090E58 80090258 8F18F47C */  lw    $t8, %lo(gMenuDelay)($t8)
/* 090E5C 8009025C 2A410005 */  slti  $at, $s2, 5
/* 090E60 80090260 17000039 */  bnez  $t8, .L80090348
/* 090E64 80090264 00000000 */   nop   
/* 090E68 80090268 1A600005 */  blez  $s3, .L80090280
/* 090E6C 8009026C 35E80001 */   ori   $t0, $t7, 1
/* 090E70 80090270 3109007F */  andi  $t1, $t0, 0x7f
/* 090E74 80090274 31EAFF80 */  andi  $t2, $t7, 0xff80
/* 090E78 80090278 012A6025 */  or    $t4, $t1, $t2
/* 090E7C 8009027C A20C000E */  sb    $t4, 0xe($s0)
.L80090280:
/* 090E80 80090280 10200009 */  beqz  $at, .L800902A8
/* 090E84 80090284 8FB90060 */   lw    $t9, 0x60($sp)
/* 090E88 80090288 920B000E */  lbu   $t3, 0xe($s0)
/* 090E8C 8009028C 00000000 */  nop   
/* 090E90 80090290 356D0002 */  ori   $t5, $t3, 2
/* 090E94 80090294 31AE007F */  andi  $t6, $t5, 0x7f
/* 090E98 80090298 316FFF80 */  andi  $t7, $t3, 0xff80
/* 090E9C 8009029C 01CFC025 */  or    $t8, $t6, $t7
/* 090EA0 800902A0 A218000E */  sb    $t8, 0xe($s0)
/* 090EA4 800902A4 8FB90060 */  lw    $t9, 0x60($sp)
.L800902A8:
/* 090EA8 800902A8 00000000 */  nop   
/* 090EAC 800902AC 0279082A */  slt   $at, $s3, $t9
/* 090EB0 800902B0 10200008 */  beqz  $at, .L800902D4
/* 090EB4 800902B4 00000000 */   nop   
/* 090EB8 800902B8 9208000E */  lbu   $t0, 0xe($s0)
/* 090EBC 800902BC 00000000 */  nop   
/* 090EC0 800902C0 35090004 */  ori   $t1, $t0, 4
/* 090EC4 800902C4 312A007F */  andi  $t2, $t1, 0x7f
/* 090EC8 800902C8 310CFF80 */  andi  $t4, $t0, 0xff80
/* 090ECC 800902CC 014C5825 */  or    $t3, $t2, $t4
/* 090ED0 800902D0 A20B000E */  sb    $t3, 0xe($s0)
.L800902D4:
/* 090ED4 800902D4 1A400008 */  blez  $s2, .L800902F8
/* 090ED8 800902D8 24010005 */   li    $at, 5
/* 090EDC 800902DC 920D000E */  lbu   $t5, 0xe($s0)
/* 090EE0 800902E0 00000000 */  nop   
/* 090EE4 800902E4 35AE0008 */  ori   $t6, $t5, 8
/* 090EE8 800902E8 31CF007F */  andi  $t7, $t6, 0x7f
/* 090EEC 800902EC 31B8FF80 */  andi  $t8, $t5, 0xff80
/* 090EF0 800902F0 01F8C825 */  or    $t9, $t7, $t8
/* 090EF4 800902F4 A219000E */  sb    $t9, 0xe($s0)
.L800902F8:
/* 090EF8 800902F8 16570009 */  bne   $s2, $s7, .L80090320
/* 090EFC 800902FC 00000000 */   nop   
/* 090F00 80090300 16770007 */  bne   $s3, $s7, .L80090320
/* 090F04 80090304 00000000 */   nop   
/* 090F08 80090308 9209000E */  lbu   $t1, 0xe($s0)
/* 090F0C 8009030C 00000000 */  nop   
/* 090F10 80090310 312A007D */  andi  $t2, $t1, 0x7d
/* 090F14 80090314 312CFF80 */  andi  $t4, $t1, 0xff80
/* 090F18 80090318 014C5825 */  or    $t3, $t2, $t4
/* 090F1C 8009031C A20B000E */  sb    $t3, 0xe($s0)
.L80090320:
/* 090F20 80090320 16410009 */  bne   $s2, $at, .L80090348
/* 090F24 80090324 00000000 */   nop   
/* 090F28 80090328 167E0007 */  bne   $s3, $fp, .L80090348
/* 090F2C 8009032C 00000000 */   nop   
/* 090F30 80090330 920E000E */  lbu   $t6, 0xe($s0)
/* 090F34 80090334 00000000 */  nop   
/* 090F38 80090338 31CF007B */  andi  $t7, $t6, 0x7b
/* 090F3C 8009033C 31D8FF80 */  andi  $t8, $t6, 0xff80
/* 090F40 80090340 01F8C825 */  or    $t9, $t7, $t8
/* 090F44 80090344 A219000E */  sb    $t9, 0xe($s0)
.L80090348:
/* 090F48 80090348 16570004 */  bne   $s2, $s7, .L8009035C
/* 090F4C 8009034C 24010005 */   li    $at, 5
/* 090F50 80090350 24080006 */  li    $t0, 6
/* 090F54 80090354 10000007 */  b     .L80090374
/* 090F58 80090358 A208000F */   sb    $t0, 0xf($s0)
.L8009035C:
/* 090F5C 8009035C 16410004 */  bne   $s2, $at, .L80090370
/* 090F60 80090360 240A0004 */   li    $t2, 4
/* 090F64 80090364 24090005 */  li    $t1, 5
/* 090F68 80090368 10000002 */  b     .L80090374
/* 090F6C 8009036C A209000F */   sb    $t1, 0xf($s0)
.L80090370:
/* 090F70 80090370 A20A000F */  sb    $t2, 0xf($s0)
.L80090374:
/* 090F74 80090374 26D60001 */  addiu $s6, $s6, 1
/* 090F78 80090378 24010002 */  li    $at, 2
/* 090F7C 8009037C 16C1FF2F */  bne   $s6, $at, .L8009003C
/* 090F80 80090380 26100010 */   addiu $s0, $s0, 0x10
/* 090F84 80090384 8FAC007C */  lw    $t4, 0x7c($sp)
/* 090F88 80090388 26730001 */  addiu $s3, $s3, 1
/* 090F8C 8009038C 258B0001 */  addiu $t3, $t4, 1
/* 090F90 80090390 29610002 */  slti  $at, $t3, 2
/* 090F94 80090394 1420FF28 */  bnez  $at, .L80090038
/* 090F98 80090398 AFAB007C */   sw    $t3, 0x7c($sp)
/* 090F9C 8009039C 00002025 */  move  $a0, $zero
/* 090FA0 800903A0 0C019A25 */  jal   func_80066894
/* 090FA4 800903A4 24050001 */   li    $a1, 1
/* 090FA8 800903A8 0C026F57 */  jal   func_8009BD5C
/* 090FAC 800903AC 00000000 */   nop   
/* 090FB0 800903B0 3C118012 */  lui   $s1, %hi(sMenuCurrDisplayList) # $s1, 0x8012
/* 090FB4 800903B4 263163A0 */  addiu $s1, %lo(sMenuCurrDisplayList) # addiu $s1, $s1, 0x63a0
/* 090FB8 800903B8 3C058012 */  lui   $a1, %hi(sMenuCurrHudMat) # $a1, 0x8012
/* 090FBC 800903BC 24A563A8 */  addiu $a1, %lo(sMenuCurrHudMat) # addiu $a1, $a1, 0x63a8
/* 090FC0 800903C0 0C019FCB */  jal   set_ortho_matrix_view
/* 090FC4 800903C4 02202025 */   move  $a0, $s1
/* 090FC8 800903C8 0C01ECF4 */  jal   reset_render_settings
/* 090FCC 800903CC 02202025 */   move  $a0, $s1
/* 090FD0 800903D0 8E230000 */  lw    $v1, ($s1)
/* 090FD4 800903D4 3C0EE700 */  lui   $t6, 0xe700
/* 090FD8 800903D8 246D0008 */  addiu $t5, $v1, 8
/* 090FDC 800903DC AE2D0000 */  sw    $t5, ($s1)
/* 090FE0 800903E0 240F0040 */  li    $t7, 64
/* 090FE4 800903E4 3C018012 */  lui   $at, %hi(D_80126928) # $at, 0x8012
/* 090FE8 800903E8 AC600004 */  sw    $zero, 4($v1)
/* 090FEC 800903EC AC6E0000 */  sw    $t6, ($v1)
/* 090FF0 800903F0 AC2F6928 */  sw    $t7, %lo(D_80126928)($at)
/* 090FF4 800903F4 3C018012 */  lui   $at, %hi(D_8012692C) # $at, 0x8012
/* 090FF8 800903F8 24180020 */  li    $t8, 32
/* 090FFC 800903FC AC38692C */  sw    $t8, %lo(D_8012692C)($at)
/* 091000 80090400 3C018012 */  lui   $at, %hi(D_801269F0) # $at, 0x8012
/* 091004 80090404 3C108012 */  lui   $s0, %hi(gTrackSelectRenderDetails) # $s0, 0x8012
/* 091008 80090408 3C14800E */  lui   $s4, %hi(D_800E05F4) # $s4, 0x800e
/* 09100C 8009040C 3C138012 */  lui   $s3, %hi(gTrackSelectRenderDetails) # $s3, 0x8012
/* 091010 80090410 3C12800E */  lui   $s2, %hi(D_800E05D4) # $s2, 0x800e
/* 091014 80090414 AC2069F0 */  sw    $zero, %lo(D_801269F0)($at)
/* 091018 80090418 265205D4 */  addiu $s2, %lo(D_800E05D4) # addiu $s2, $s2, 0x5d4
/* 09101C 8009041C 267369C0 */  addiu $s3, %lo(gTrackSelectRenderDetails+0x90) # addiu $s3, $s3, 0x69c0
/* 091020 80090420 269405F4 */  addiu $s4, %lo(D_800E05F4) # addiu $s4, $s4, 0x5f4
/* 091024 80090424 26106930 */  addiu $s0, %lo(gTrackSelectRenderDetails) # addiu $s0, $s0, 0x6930
/* 091028 80090428 AFA0007C */  sw    $zero, 0x7c($sp)
/* 09102C 8009042C 24110001 */  li    $s1, 1
.L80090430:
/* 091030 80090430 9202000C */  lbu   $v0, 0xc($s0)
/* 091034 80090434 00000000 */  nop   
/* 091038 80090438 10400016 */  beqz  $v0, .L80090494
/* 09103C 8009043C 00000000 */   nop   
/* 091040 80090440 16220004 */  bne   $s1, $v0, .L80090454
/* 091044 80090444 02801025 */   move  $v0, $s4
/* 091048 80090448 10000002 */  b     .L80090454
/* 09104C 8009044C 02401025 */   move  $v0, $s2
/* 091050 80090450 02801025 */  move  $v0, $s4
.L80090454:
/* 091054 80090454 9609000E */  lhu   $t1, 0xe($s0)
/* 091058 80090458 920C000E */  lbu   $t4, 0xe($s0)
/* 09105C 8009045C 9219000D */  lbu   $t9, 0xd($s0)
/* 091060 80090460 9208000F */  lbu   $t0, 0xf($s0)
/* 091064 80090464 86040008 */  lh    $a0, 8($s0)
/* 091068 80090468 8605000A */  lh    $a1, 0xa($s0)
/* 09106C 8009046C 8E060000 */  lw    $a2, ($s0)
/* 091070 80090470 8E070004 */  lw    $a3, 4($s0)
/* 091074 80090474 000953C2 */  srl   $t2, $t1, 0xf
/* 091078 80090478 318B007F */  andi  $t3, $t4, 0x7f
/* 09107C 8009047C AFAB0020 */  sw    $t3, 0x20($sp)
/* 091080 80090480 AFAA0018 */  sw    $t2, 0x18($sp)
/* 091084 80090484 AFA2001C */  sw    $v0, 0x1c($sp)
/* 091088 80090488 AFB90010 */  sw    $t9, 0x10($sp)
/* 09108C 8009048C 0C023E95 */  jal   renderTrackSelect
/* 091090 80090490 AFA80014 */   sw    $t0, 0x14($sp)
.L80090494:
/* 091094 80090494 26100010 */  addiu $s0, $s0, 0x10
/* 091098 80090498 1613FFE5 */  bne   $s0, $s3, .L80090430
/* 09109C 8009049C 00000000 */   nop   
/* 0910A0 800904A0 3C028012 */  lui   $v0, %hi(D_80126924) # $v0, 0x8012
/* 0910A4 800904A4 24426924 */  addiu $v0, %lo(D_80126924) # addiu $v0, $v0, 0x6924
/* 0910A8 800904A8 8C4D0000 */  lw    $t5, ($v0)
/* 0910AC 800904AC 00000000 */  nop   
/* 0910B0 800904B0 022D7023 */  subu  $t6, $s1, $t5
/* 0910B4 800904B4 AC4E0000 */  sw    $t6, ($v0)
.L800904B8:
/* 0910B8 800904B8 8FBF0054 */  lw    $ra, 0x54($sp)
/* 0910BC 800904BC 8FB00030 */  lw    $s0, 0x30($sp)
/* 0910C0 800904C0 8FB10034 */  lw    $s1, 0x34($sp)
/* 0910C4 800904C4 8FB20038 */  lw    $s2, 0x38($sp)
/* 0910C8 800904C8 8FB3003C */  lw    $s3, 0x3c($sp)
/* 0910CC 800904CC 8FB40040 */  lw    $s4, 0x40($sp)
/* 0910D0 800904D0 8FB50044 */  lw    $s5, 0x44($sp)
/* 0910D4 800904D4 8FB60048 */  lw    $s6, 0x48($sp)
/* 0910D8 800904D8 8FB7004C */  lw    $s7, 0x4c($sp)
/* 0910DC 800904DC 8FBE0050 */  lw    $fp, 0x50($sp)
/* 0910E0 800904E0 03E00008 */  jr    $ra
/* 0910E4 800904E4 27BD0080 */   addiu $sp, $sp, 0x80

