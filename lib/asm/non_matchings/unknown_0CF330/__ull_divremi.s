glabel __ull_divremi
/* 0CF7F8 800CEBF8 87AF0012 */  lh    $t7, 0x12($sp)
/* 0CF7FC 800CEBFC AFA60008 */  sw    $a2, 8($sp)
/* 0CF800 800CEC00 AFA7000C */  sw    $a3, 0xc($sp)
/* 0CF804 800CEC04 DFAE0008 */  ld    $t6, 8($sp)
/* 0CF808 800CEC08 01E0C025 */  move  $t8, $t7
/* 0CF80C 800CEC0C 0300C825 */  move  $t9, $t8
/* 0CF810 800CEC10 01D9001F */  ddivu $zero, $t6, $t9
/* 0CF814 800CEC14 17200002 */  bnez  $t9, .L800CEC20
/* 0CF818 800CEC18 00000000 */   nop   
/* 0CF81C 800CEC1C 0007000D */  break 7
.L800CEC20:
/* 0CF820 800CEC20 00004012 */  mflo  $t0
/* 0CF824 800CEC24 FC880000 */  sd    $t0, ($a0)
/* 0CF828 800CEC28 87AA0012 */  lh    $t2, 0x12($sp)
/* 0CF82C 800CEC2C DFA90008 */  ld    $t1, 8($sp)
/* 0CF830 800CEC30 01405825 */  move  $t3, $t2
/* 0CF834 800CEC34 01606025 */  move  $t4, $t3
/* 0CF838 800CEC38 012C001F */  ddivu $zero, $t1, $t4
/* 0CF83C 800CEC3C 15800002 */  bnez  $t4, .L800CEC48
/* 0CF840 800CEC40 00000000 */   nop   
/* 0CF844 800CEC44 0007000D */  break 7
.L800CEC48:
/* 0CF848 800CEC48 00006810 */  mfhi  $t5
/* 0CF84C 800CEC4C FCAD0000 */  sd    $t5, ($a1)
/* 0CF850 800CEC50 03E00008 */  jr    $ra
/* 0CF854 800CEC54 00000000 */   nop   

glabel func_800CEC58
/* 0CF858 800CEC58 27BDFFF8 */  addiu $sp, $sp, -8
/* 0CF85C 800CEC5C AFA40008 */  sw    $a0, 8($sp)
/* 0CF860 800CEC60 AFA5000C */  sw    $a1, 0xc($sp)
/* 0CF864 800CEC64 AFA60010 */  sw    $a2, 0x10($sp)
/* 0CF868 800CEC68 AFA70014 */  sw    $a3, 0x14($sp)
/* 0CF86C 800CEC6C DFAF0010 */  ld    $t7, 0x10($sp)
/* 0CF870 800CEC70 DFAE0008 */  ld    $t6, 8($sp)
/* 0CF874 800CEC74 01CF001E */  ddiv  $zero, $t6, $t7
/* 0CF878 800CEC78 00000000 */  nop   
/* 0CF87C 800CEC7C 15E00002 */  bnez  $t7, .L800CEC88
/* 0CF880 800CEC80 00000000 */   nop   
/* 0CF884 800CEC84 0007000D */  break 7
.L800CEC88:
/* 0CF888 800CEC88 6401FFFF */  daddiu $at, $zero, -1
/* 0CF88C 800CEC8C 15E10005 */  bne   $t7, $at, .L800CECA4
/* 0CF890 800CEC90 64010001 */   daddiu $at, $zero, 1
/* 0CF894 800CEC94 00010FFC */  dsll32 $at, $at, 0x1f
/* 0CF898 800CEC98 15C10002 */  bne   $t6, $at, .L800CECA4
/* 0CF89C 800CEC9C 00000000 */   nop   
/* 0CF8A0 800CECA0 0006000D */  break 6
.L800CECA4:
/* 0CF8A4 800CECA4 0000C010 */  mfhi  $t8
/* 0CF8A8 800CECA8 FFB80000 */  sd    $t8, ($sp)
/* 0CF8AC 800CECAC 07010003 */  bgez  $t8, .L800CECBC
/* 0CF8B0 800CECB0 00000000 */   nop   
/* 0CF8B4 800CECB4 1DE00007 */  bgtz  $t7, .L800CECD4
/* 0CF8B8 800CECB8 00000000 */   nop   
.L800CECBC:
/* 0CF8BC 800CECBC DFB90000 */  ld    $t9, ($sp)
/* 0CF8C0 800CECC0 1B200008 */  blez  $t9, .L800CECE4
/* 0CF8C4 800CECC4 00000000 */   nop   
/* 0CF8C8 800CECC8 DFA80010 */  ld    $t0, 0x10($sp)
/* 0CF8CC 800CECCC 05010005 */  bgez  $t0, .L800CECE4
/* 0CF8D0 800CECD0 00000000 */   nop   
.L800CECD4:
/* 0CF8D4 800CECD4 DFA90000 */  ld    $t1, ($sp)
/* 0CF8D8 800CECD8 DFAA0010 */  ld    $t2, 0x10($sp)
/* 0CF8DC 800CECDC 012A582D */  daddu $t3, $t1, $t2
/* 0CF8E0 800CECE0 FFAB0000 */  sd    $t3, ($sp)
.L800CECE4:
/* 0CF8E4 800CECE4 8FA20000 */  lw    $v0, ($sp)
/* 0CF8E8 800CECE8 8FA30004 */  lw    $v1, 4($sp)
/* 0CF8EC 800CECEC 03E00008 */  jr    $ra
/* 0CF8F0 800CECF0 27BD0008 */   addiu $sp, $sp, 8

glabel func_800CECF4
/* 0CF8F4 800CECF4 AFA40000 */  sw    $a0, ($sp)
/* 0CF8F8 800CECF8 AFA50004 */  sw    $a1, 4($sp)
/* 0CF8FC 800CECFC AFA60008 */  sw    $a2, 8($sp)
/* 0CF900 800CED00 AFA7000C */  sw    $a3, 0xc($sp)
/* 0CF904 800CED04 DFAF0008 */  ld    $t7, 8($sp)
/* 0CF908 800CED08 DFAE0000 */  ld    $t6, ($sp)
/* 0CF90C 800CED0C 01EE1017 */  dsrav $v0, $t6, $t7
/* 0CF910 800CED10 0002183C */  dsll32 $v1, $v0, 0
/* 0CF914 800CED14 0003183F */  dsra32 $v1, $v1, 0
/* 0CF918 800CED18 03E00008 */  jr    $ra
/* 0CF91C 800CED1C 0002103F */   dsra32 $v0, $v0, 0

