glabel menu_trophy_race_rankings_init
/* 099624 80098A24 27BDFF90 */  addiu $sp, $sp, -0x70
/* 099628 80098A28 AFBF001C */  sw    $ra, 0x1c($sp)
/* 09962C 80098A2C 0C01BAA4 */  jal   get_settings
/* 099630 80098A30 00000000 */   nop   
/* 099634 80098A34 2404001A */  li    $a0, 26
/* 099638 80098A38 0C0078A7 */  jal   get_misc_asset
/* 09963C 80098A3C AFA20040 */   sw    $v0, 0x40($sp)
/* 099640 80098A40 3C018012 */  lui   $at, %hi(D_801263E0) # $at, 0x8012
/* 099644 80098A44 AC2063E0 */  sw    $zero, %lo(D_801263E0)($at)
/* 099648 80098A48 3C01800E */  lui   $at, %hi(gMenuDelay) # $at, 0x800e
/* 09964C 80098A4C AC20F47C */  sw    $zero, %lo(gMenuDelay)($at)
/* 099650 80098A50 3C018012 */  lui   $at, %hi(D_801263BC) # $at, 0x8012
/* 099654 80098A54 AC2063BC */  sw    $zero, %lo(D_801263BC)($at)
/* 099658 80098A58 3C018012 */  lui   $at, %hi(D_801263D8) # $at, 0x8012
/* 09965C 80098A5C AC2063D8 */  sw    $zero, %lo(D_801263D8)($at)
/* 099660 80098A60 0C026F97 */  jal   reset_controller_sticks
/* 099664 80098A64 AFA2003C */   sw    $v0, 0x3c($sp)
/* 099668 80098A68 3C04800E */  lui   $a0, %hi(D_800E1024) # $a0, 0x800e
/* 09966C 80098A6C 0C02719D */  jal   func_8009C674
/* 099670 80098A70 24841024 */   addiu $a0, %lo(D_800E1024) # addiu $a0, $a0, 0x1024
/* 099674 80098A74 3C04800E */  lui   $a0, %hi(D_800E1040) # $a0, 0x800e
/* 099678 80098A78 0C027229 */  jal   allocate_menu_images
/* 09967C 80098A7C 24841040 */   addiu $a0, %lo(D_800E1040) # addiu $a0, $a0, 0x1040
/* 099680 80098A80 3C03800E */  lui   $v1, %hi(gTrophyRaceRound) # $v1, 0x800e
/* 099684 80098A84 24630FEC */  addiu $v1, %lo(gTrophyRaceRound) # addiu $v1, $v1, 0xfec
/* 099688 80098A88 8C620000 */  lw    $v0, ($v1)
/* 09968C 80098A8C 3C01800E */  lui   $at, %hi(D_800E0FF0) # $at, 0x800e
/* 099690 80098A90 3C05800E */  lui   $a1, %hi(gTrophyRaceWorldId) # $a1, 0x800e
/* 099694 80098A94 8FA7003C */  lw    $a3, 0x3c($sp)
/* 099698 80098A98 8FA90040 */  lw    $t1, 0x40($sp)
/* 09969C 80098A9C 24A50FE8 */  addiu $a1, %lo(gTrophyRaceWorldId) # addiu $a1, $a1, 0xfe8
/* 0996A0 80098AA0 24060006 */  li    $a2, 6
/* 0996A4 80098AA4 2404FFFF */  li    $a0, -1
/* 0996A8 80098AA8 AC220FF0 */  sw    $v0, %lo(D_800E0FF0)($at)
/* 0996AC 80098AAC 244E0001 */  addiu $t6, $v0, 1
.L80098AB0:
/* 0996B0 80098AB0 29C10004 */  slti  $at, $t6, 4
/* 0996B4 80098AB4 AC6E0000 */  sw    $t6, ($v1)
/* 0996B8 80098AB8 1020000B */  beqz  $at, .L80098AE8
/* 0996BC 80098ABC 01C01025 */   move  $v0, $t6
/* 0996C0 80098AC0 8CAF0000 */  lw    $t7, ($a1)
/* 0996C4 80098AC4 00000000 */  nop   
/* 0996C8 80098AC8 01E60019 */  multu $t7, $a2
/* 0996CC 80098ACC 0000C012 */  mflo  $t8
/* 0996D0 80098AD0 030EC821 */  addu  $t9, $t8, $t6
/* 0996D4 80098AD4 03276821 */  addu  $t5, $t9, $a3
/* 0996D8 80098AD8 81AEFFFA */  lb    $t6, -6($t5)
/* 0996DC 80098ADC 00000000 */  nop   
/* 0996E0 80098AE0 108EFFF3 */  beq   $a0, $t6, .L80098AB0
/* 0996E4 80098AE4 244E0001 */   addiu $t6, $v0, 1
.L80098AE8:
/* 0996E8 80098AE8 28410004 */  slti  $at, $v0, 4
/* 0996EC 80098AEC 1020000D */  beqz  $at, .L80098B24
/* 0996F0 80098AF0 3C038012 */   lui   $v1, %hi(D_80126BF0) # $v1, 0x8012
/* 0996F4 80098AF4 3C02800E */  lui   $v0, %hi(gMenuText) # $v0, 0x800e
/* 0996F8 80098AF8 8C42F4A0 */  lw    $v0, %lo(gMenuText)($v0)
/* 0996FC 80098AFC 3C038012 */  lui   $v1, %hi(D_80126BF0) # $v1, 0x8012
/* 099700 80098B00 8C4F0188 */  lw    $t7, 0x188($v0)
/* 099704 80098B04 24636BF0 */  addiu $v1, %lo(D_80126BF0) # addiu $v1, $v1, 0x6bf0
/* 099708 80098B08 AC6F0000 */  sw    $t7, ($v1)
/* 09970C 80098B0C 8C580204 */  lw    $t8, 0x204($v0)
/* 099710 80098B10 24190003 */  li    $t9, 3
/* 099714 80098B14 3C018012 */  lui   $at, %hi(D_80126C14) # $at, 0x8012
/* 099718 80098B18 AC780004 */  sw    $t8, 4($v1)
/* 09971C 80098B1C 10000009 */  b     .L80098B44
/* 099720 80098B20 AC396C14 */   sw    $t9, %lo(D_80126C14)($at)
.L80098B24:
/* 099724 80098B24 3C0D800E */  lui   $t5, %hi(gMenuText) # $t5, 0x800e
/* 099728 80098B28 8DADF4A0 */  lw    $t5, %lo(gMenuText)($t5)
/* 09972C 80098B2C 24636BF0 */  addiu $v1, %lo(D_80126BF0) # addiu $v1, $v1, 0x6bf0
/* 099730 80098B30 8DAE0244 */  lw    $t6, 0x244($t5)
/* 099734 80098B34 240F0001 */  li    $t7, 1
/* 099738 80098B38 3C018012 */  lui   $at, %hi(D_80126C14) # $at, 0x8012
/* 09973C 80098B3C AC6E0000 */  sw    $t6, ($v1)
/* 099740 80098B40 AC2F6C14 */  sw    $t7, %lo(D_80126C14)($at)
.L80098B44:
/* 099744 80098B44 3C018012 */  lui   $at, %hi(D_80126A68) # $at, 0x8012
/* 099748 80098B48 AC206A68 */  sw    $zero, %lo(D_80126A68)($at)
/* 09974C 80098B4C 0C025181 */  jal   func_80094604
/* 099750 80098B50 AFA90040 */   sw    $t1, 0x40($sp)
/* 099754 80098B54 3C0B800E */  lui   $t3, %hi(gNumberOfActivePlayers) # $t3, 0x800e
/* 099758 80098B58 256BF4BC */  addiu $t3, %lo(gNumberOfActivePlayers) # addiu $t3, $t3, -0xb44
/* 09975C 80098B5C 8D620000 */  lw    $v0, ($t3)
/* 099760 80098B60 8FA90040 */  lw    $t1, 0x40($sp)
/* 099764 80098B64 28410003 */  slti  $at, $v0, 3
/* 099768 80098B68 14200004 */  bnez  $at, .L80098B7C
/* 09976C 80098B6C 3C0C800E */   lui   $t4, %hi(D_800E0FE4) # $t4, 0x800e
/* 099770 80098B70 258C0FE4 */  addiu $t4, %lo(D_800E0FE4) # addiu $t4, $t4, 0xfe4
/* 099774 80098B74 10000017 */  b     .L80098BD4
/* 099778 80098B78 AD820000 */   sw    $v0, ($t4)
.L80098B7C:
/* 09977C 80098B7C 24010002 */  li    $at, 2
/* 099780 80098B80 10410007 */  beq   $v0, $at, .L80098BA0
/* 099784 80098B84 00000000 */   nop   
/* 099788 80098B88 0C027B20 */  jal   is_in_two_player_adventure
/* 09978C 80098B8C AFA90040 */   sw    $t1, 0x40($sp)
/* 099790 80098B90 8FA90040 */  lw    $t1, 0x40($sp)
/* 099794 80098B94 3C0B800E */  lui   $t3, %hi(gNumberOfActivePlayers) # $t3, 0x800e
/* 099798 80098B98 1040000A */  beqz  $v0, .L80098BC4
/* 09979C 80098B9C 256BF4BC */   addiu $t3, %lo(gNumberOfActivePlayers) # addiu $t3, $t3, -0xb44
.L80098BA0:
/* 0997A0 80098BA0 0C027110 */  jal   get_multiplayer_racer_count
/* 0997A4 80098BA4 AFA90040 */   sw    $t1, 0x40($sp)
/* 0997A8 80098BA8 3C0C800E */  lui   $t4, %hi(D_800E0FE4) # $t4, 0x800e
/* 0997AC 80098BAC 258C0FE4 */  addiu $t4, %lo(D_800E0FE4) # addiu $t4, $t4, 0xfe4
/* 0997B0 80098BB0 8FA90040 */  lw    $t1, 0x40($sp)
/* 0997B4 80098BB4 3C0B800E */  lui   $t3, %hi(gNumberOfActivePlayers) # $t3, 0x800e
/* 0997B8 80098BB8 256BF4BC */  addiu $t3, %lo(gNumberOfActivePlayers) # addiu $t3, $t3, -0xb44
/* 0997BC 80098BBC 10000005 */  b     .L80098BD4
/* 0997C0 80098BC0 AD820000 */   sw    $v0, ($t4)
.L80098BC4:
/* 0997C4 80098BC4 3C0C800E */  lui   $t4, %hi(D_800E0FE4) # $t4, 0x800e
/* 0997C8 80098BC8 258C0FE4 */  addiu $t4, %lo(D_800E0FE4) # addiu $t4, $t4, 0xfe4
/* 0997CC 80098BCC 24180008 */  li    $t8, 8
/* 0997D0 80098BD0 AD980000 */  sw    $t8, ($t4)
.L80098BD4:
/* 0997D4 80098BD4 8D850000 */  lw    $a1, ($t4)
/* 0997D8 80098BD8 00004025 */  move  $t0, $zero
/* 0997DC 80098BDC 18A0001C */  blez  $a1, .L80098C50
/* 0997E0 80098BE0 3C048012 */   lui   $a0, %hi(D_80126428) # $a0, 0x8012
/* 0997E4 80098BE4 24846428 */  addiu $a0, %lo(D_80126428) # addiu $a0, $a0, 0x6428
/* 0997E8 80098BE8 240A0001 */  li    $t2, 1
.L80098BEC:
/* 0997EC 80098BEC 18A00013 */  blez  $a1, .L80098C3C
/* 0997F0 80098BF0 00003825 */   move  $a3, $zero
/* 0997F4 80098BF4 01201825 */  move  $v1, $t1
.L80098BF8:
/* 0997F8 80098BF8 8079005A */  lb    $t9, 0x5a($v1)
/* 0997FC 80098BFC 00886821 */  addu  $t5, $a0, $t0
/* 099800 80098C00 1519000A */  bne   $t0, $t9, .L80098C2C
/* 099804 80098C04 3C0E8012 */   lui   $t6, %hi(D_80126418) # $t6, 0x8012
/* 099808 80098C08 A1A70000 */  sb    $a3, ($t5)
/* 09980C 80098C0C 8D6F0000 */  lw    $t7, ($t3)
/* 099810 80098C10 25CE6418 */  addiu $t6, %lo(D_80126418) # addiu $t6, $t6, 0x6418
/* 099814 80098C14 00EF082A */  slt   $at, $a3, $t7
/* 099818 80098C18 10200003 */  beqz  $at, .L80098C28
/* 09981C 80098C1C 010E1021 */   addu  $v0, $t0, $t6
/* 099820 80098C20 10000002 */  b     .L80098C2C
/* 099824 80098C24 A04A0000 */   sb    $t2, ($v0)
.L80098C28:
/* 099828 80098C28 A0400000 */  sb    $zero, ($v0)
.L80098C2C:
/* 09982C 80098C2C 24E70001 */  addiu $a3, $a3, 1
/* 099830 80098C30 00E5082A */  slt   $at, $a3, $a1
/* 099834 80098C34 1420FFF0 */  bnez  $at, .L80098BF8
/* 099838 80098C38 24630018 */   addiu $v1, $v1, 0x18
.L80098C3C:
/* 09983C 80098C3C 25080001 */  addiu $t0, $t0, 1
/* 099840 80098C40 0105082A */  slt   $at, $t0, $a1
/* 099844 80098C44 1420FFE9 */  bnez  $at, .L80098BEC
/* 099848 80098C48 00000000 */   nop   
/* 09984C 80098C4C 00004025 */  move  $t0, $zero
.L80098C50:
/* 099850 80098C50 18A00011 */  blez  $a1, .L80098C98
/* 099854 80098C54 3C188012 */   lui   $t8, %hi(D_801263F8) # $t8, 0x8012
/* 099858 80098C58 270263F8 */  addiu $v0, $t8, %lo(D_801263F8)
/* 09985C 80098C5C 0005C880 */  sll   $t9, $a1, 2
/* 099860 80098C60 3C04800E */  lui   $a0, %hi(gTrophyRacePointsArray) # $a0, 0x800e
/* 099864 80098C64 24841004 */  addiu $a0, %lo(gTrophyRacePointsArray) # addiu $a0, $a0, 0x1004
/* 099868 80098C68 03223021 */  addu  $a2, $t9, $v0
/* 09986C 80098C6C 01201825 */  move  $v1, $t1
.L80098C70:
/* 099870 80098C70 806D005A */  lb    $t5, 0x5a($v1)
/* 099874 80098C74 24420004 */  addiu $v0, $v0, 4
/* 099878 80098C78 000D7080 */  sll   $t6, $t5, 2
/* 09987C 80098C7C 008E7821 */  addu  $t7, $a0, $t6
/* 099880 80098C80 8DF90000 */  lw    $t9, ($t7)
/* 099884 80098C84 0046082B */  sltu  $at, $v0, $a2
/* 099888 80098C88 24630018 */  addiu $v1, $v1, 0x18
/* 09988C 80098C8C 1420FFF8 */  bnez  $at, .L80098C70
/* 099890 80098C90 AC59FFFC */   sw    $t9, -4($v0)
/* 099894 80098C94 00004025 */  move  $t0, $zero
.L80098C98:
/* 099898 80098C98 18A00012 */  blez  $a1, .L80098CE4
/* 09989C 80098C9C 3C028012 */   lui   $v0, %hi(D_801263F8) # $v0, 0x8012
/* 0998A0 80098CA0 3C048012 */  lui   $a0, %hi(D_80126430) # $a0, 0x8012
/* 0998A4 80098CA4 24846430 */  addiu $a0, %lo(D_80126430) # addiu $a0, $a0, 0x6430
/* 0998A8 80098CA8 244263F8 */  addiu $v0, %lo(D_801263F8) # addiu $v0, $v0, 0x63f8
/* 0998AC 80098CAC 01201825 */  move  $v1, $t1
/* 0998B0 80098CB0 27A60048 */  addiu $a2, $sp, 0x48
.L80098CB4:
/* 0998B4 80098CB4 A0880000 */  sb    $t0, ($a0)
/* 0998B8 80098CB8 8C6D0054 */  lw    $t5, 0x54($v1)
/* 0998BC 80098CBC 8C580000 */  lw    $t8, ($v0)
/* 0998C0 80098CC0 25080001 */  addiu $t0, $t0, 1
/* 0998C4 80098CC4 0105082A */  slt   $at, $t0, $a1
/* 0998C8 80098CC8 030D7021 */  addu  $t6, $t8, $t5
/* 0998CC 80098CCC 24420004 */  addiu $v0, $v0, 4
/* 0998D0 80098CD0 24630018 */  addiu $v1, $v1, 0x18
/* 0998D4 80098CD4 24840001 */  addiu $a0, $a0, 1
/* 0998D8 80098CD8 24C60004 */  addiu $a2, $a2, 4
/* 0998DC 80098CDC 1420FFF5 */  bnez  $at, .L80098CB4
/* 0998E0 80098CE0 ACCEFFFC */   sw    $t6, -4($a2)
.L80098CE4:
/* 0998E4 80098CE4 24A8FFFF */  addiu $t0, $a1, -1
/* 0998E8 80098CE8 1900003D */  blez  $t0, .L80098DE0
/* 0998EC 80098CEC 3C098012 */   lui   $t1, %hi(D_80126430) # $t1, 0x8012
/* 0998F0 80098CF0 8FA5004C */  lw    $a1, 0x4c($sp)
/* 0998F4 80098CF4 8FA30048 */  lw    $v1, 0x48($sp)
/* 0998F8 80098CF8 25296430 */  addiu $t1, %lo(D_80126430) # addiu $t1, $t1, 0x6430
.L80098CFC:
/* 0998FC 80098CFC 19000033 */  blez  $t0, .L80098DCC
/* 099900 80098D00 00003825 */   move  $a3, $zero
/* 099904 80098D04 31020001 */  andi  $v0, $t0, 1
/* 099908 80098D08 1040000E */  beqz  $v0, .L80098D44
/* 09990C 80098D0C 0065082A */   slt   $at, $v1, $a1
/* 099910 80098D10 1020000B */  beqz  $at, .L80098D40
/* 099914 80098D14 24070001 */   li    $a3, 1
/* 099918 80098D18 00601025 */  move  $v0, $v1
/* 09991C 80098D1C 00A01825 */  move  $v1, $a1
/* 099920 80098D20 00402825 */  move  $a1, $v0
/* 099924 80098D24 3C028012 */  lui   $v0, %hi(D_80126430) # $v0, 0x8012
/* 099928 80098D28 3C0F8012 */  lui   $t7, %hi(D_80126431) # $t7, 0x8012
/* 09992C 80098D2C 91EF6431 */  lbu   $t7, %lo(D_80126431)($t7)
/* 099930 80098D30 90426430 */  lbu   $v0, %lo(D_80126430)($v0)
/* 099934 80098D34 3C018012 */  lui   $at, %hi(D_80126431) # $at, 0x8012
/* 099938 80098D38 A02F6430 */  sb    $t7, %lo(D_80126430)($at)
/* 09993C 80098D3C A0226431 */  sb    $v0, %lo(D_80126431)($at)
.L80098D40:
/* 099940 80098D40 10E80022 */  beq   $a3, $t0, .L80098DCC
.L80098D44:
/* 099944 80098D44 0007C880 */   sll   $t9, $a3, 2
/* 099948 80098D48 27B80048 */  addiu $t8, $sp, 0x48
/* 09994C 80098D4C 03382021 */  addu  $a0, $t9, $t8
/* 099950 80098D50 AFA30048 */  sw    $v1, 0x48($sp)
/* 099954 80098D54 AFA5004C */  sw    $a1, 0x4c($sp)
.L80098D58:
/* 099958 80098D58 8C860000 */  lw    $a2, ($a0)
/* 09995C 80098D5C 8C850004 */  lw    $a1, 4($a0)
/* 099960 80098D60 01271821 */  addu  $v1, $t1, $a3
/* 099964 80098D64 00C5082A */  slt   $at, $a2, $a1
/* 099968 80098D68 10200008 */  beqz  $at, .L80098D8C
/* 09996C 80098D6C 00000000 */   nop   
/* 099970 80098D70 90620000 */  lbu   $v0, ($v1)
/* 099974 80098D74 906D0001 */  lbu   $t5, 1($v1)
/* 099978 80098D78 AC850000 */  sw    $a1, ($a0)
/* 09997C 80098D7C AC860004 */  sw    $a2, 4($a0)
/* 099980 80098D80 00C02825 */  move  $a1, $a2
/* 099984 80098D84 A0620001 */  sb    $v0, 1($v1)
/* 099988 80098D88 A06D0000 */  sb    $t5, ($v1)
.L80098D8C:
/* 09998C 80098D8C 8C860008 */  lw    $a2, 8($a0)
/* 099990 80098D90 01271821 */  addu  $v1, $t1, $a3
/* 099994 80098D94 00A6082A */  slt   $at, $a1, $a2
/* 099998 80098D98 10200007 */  beqz  $at, .L80098DB8
/* 09999C 80098D9C 00000000 */   nop   
/* 0999A0 80098DA0 90620001 */  lbu   $v0, 1($v1)
/* 0999A4 80098DA4 906E0002 */  lbu   $t6, 2($v1)
/* 0999A8 80098DA8 AC860004 */  sw    $a2, 4($a0)
/* 0999AC 80098DAC AC850008 */  sw    $a1, 8($a0)
/* 0999B0 80098DB0 A0620002 */  sb    $v0, 2($v1)
/* 0999B4 80098DB4 A06E0001 */  sb    $t6, 1($v1)
.L80098DB8:
/* 0999B8 80098DB8 8FA30048 */  lw    $v1, 0x48($sp)
/* 0999BC 80098DBC 8FA5004C */  lw    $a1, 0x4c($sp)
/* 0999C0 80098DC0 24E70002 */  addiu $a3, $a3, 2
/* 0999C4 80098DC4 14E8FFE4 */  bne   $a3, $t0, .L80098D58
/* 0999C8 80098DC8 24840008 */   addiu $a0, $a0, 8
.L80098DCC:
/* 0999CC 80098DCC 2508FFFF */  addiu $t0, $t0, -1
/* 0999D0 80098DD0 1D00FFCA */  bgtz  $t0, .L80098CFC
/* 0999D4 80098DD4 00000000 */   nop   
/* 0999D8 80098DD8 AFA5004C */  sw    $a1, 0x4c($sp)
/* 0999DC 80098DDC AFA30048 */  sw    $v1, 0x48($sp)
.L80098DE0:
/* 0999E0 80098DE0 0C027B20 */  jal   is_in_two_player_adventure
/* 0999E4 80098DE4 00000000 */   nop   
/* 0999E8 80098DE8 3C0B800E */  lui   $t3, %hi(gNumberOfActivePlayers) # $t3, 0x800e
/* 0999EC 80098DEC 3C0C800E */  lui   $t4, %hi(D_800E0FE4) # $t4, 0x800e
/* 0999F0 80098DF0 258C0FE4 */  addiu $t4, %lo(D_800E0FE4) # addiu $t4, $t4, 0xfe4
/* 0999F4 80098DF4 256BF4BC */  addiu $t3, %lo(gNumberOfActivePlayers) # addiu $t3, $t3, -0xb44
/* 0999F8 80098DF8 10400003 */  beqz  $v0, .L80098E08
/* 0999FC 80098DFC 240A0001 */   li    $t2, 1
/* 099A00 80098E00 10000003 */  b     .L80098E10
/* 099A04 80098E04 24070002 */   li    $a3, 2
.L80098E08:
/* 099A08 80098E08 8D670000 */  lw    $a3, ($t3)
/* 099A0C 80098E0C 00000000 */  nop   
.L80098E10:
/* 099A10 80098E10 8D850000 */  lw    $a1, ($t4)
/* 099A14 80098E14 3C048012 */  lui   $a0, %hi(D_80126430) # $a0, 0x8012
/* 099A18 80098E18 18A00010 */  blez  $a1, .L80098E5C
/* 099A1C 80098E1C 24846430 */   addiu $a0, %lo(D_80126430) # addiu $a0, $a0, 0x6430
/* 099A20 80098E20 3C0F8012 */  lui   $t7, %hi(D_80126420) # $t7, 0x8012
/* 099A24 80098E24 25E26420 */  addiu $v0, $t7, %lo(D_80126420)
/* 099A28 80098E28 00A21821 */  addu  $v1, $a1, $v0
.L80098E2C:
/* 099A2C 80098E2C 90990000 */  lbu   $t9, ($a0)
/* 099A30 80098E30 00000000 */  nop   
/* 099A34 80098E34 0327082A */  slt   $at, $t9, $a3
/* 099A38 80098E38 10200003 */  beqz  $at, .L80098E48
/* 099A3C 80098E3C 00000000 */   nop   
/* 099A40 80098E40 10000002 */  b     .L80098E4C
/* 099A44 80098E44 A04A0000 */   sb    $t2, ($v0)
.L80098E48:
/* 099A48 80098E48 A0400000 */  sb    $zero, ($v0)
.L80098E4C:
/* 099A4C 80098E4C 24420001 */  addiu $v0, $v0, 1
/* 099A50 80098E50 0043082B */  sltu  $at, $v0, $v1
/* 099A54 80098E54 1420FFF5 */  bnez  $at, .L80098E2C
/* 099A58 80098E58 24840001 */   addiu $a0, $a0, 1
.L80098E5C:
/* 099A5C 80098E5C 0C03105C */  jal   load_font
/* 099A60 80098E60 24040002 */   li    $a0, 2
/* 099A64 80098E64 0C0002F8 */  jal   set_music_player_voice_limit
/* 099A68 80098E68 24040018 */   li    $a0, 24
/* 099A6C 80098E6C 0C0002CD */  jal   play_music
/* 099A70 80098E70 24040018 */   li    $a0, 24
/* 099A74 80098E74 0C000326 */  jal   set_music_fade_timer
/* 099A78 80098E78 24040100 */   li    $a0, 256
/* 099A7C 80098E7C 0C0261DD */  jal   func_80098774
/* 099A80 80098E80 00002025 */   move  $a0, $zero
/* 099A84 80098E84 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 099A88 80098E88 44810000 */  mtc1  $at, $f0
/* 099A8C 80098E8C 3C04800E */  lui   $a0, %hi(D_800E1048) # $a0, 0x800e
/* 099A90 80098E90 44050000 */  mfc1  $a1, $f0
/* 099A94 80098E94 44070000 */  mfc1  $a3, $f0
/* 099A98 80098E98 24841048 */  addiu $a0, %lo(D_800E1048) # addiu $a0, $a0, 0x1048
/* 099A9C 80098E9C 3C0641A0 */  lui   $a2, 0x41a0
/* 099AA0 80098EA0 AFA00010 */  sw    $zero, 0x10($sp)
/* 099AA4 80098EA4 0C020795 */  jal   func_80081E54
/* 099AA8 80098EA8 AFA00014 */   sw    $zero, 0x14($sp)
/* 099AAC 80098EAC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 099AB0 80098EB0 27BD0070 */  addiu $sp, $sp, 0x70
/* 099AB4 80098EB4 03E00008 */  jr    $ra
/* 099AB8 80098EB8 00000000 */   nop   

