glabel func_800392B8
/* 039EB8 800392B8 AFA50004 */  sw    $a1, 4($sp)
/* 039EBC 800392BC 8C8F004C */  lw    $t7, 0x4c($a0)
/* 039EC0 800392C0 240E0001 */  li    $t6, 1
/* 039EC4 800392C4 A5EE0014 */  sh    $t6, 0x14($t7)
/* 039EC8 800392C8 8C98004C */  lw    $t8, 0x4c($a0)
/* 039ECC 800392CC 2419001E */  li    $t9, 30
/* 039ED0 800392D0 A3000011 */  sb    $zero, 0x11($t8)
/* 039ED4 800392D4 8C88004C */  lw    $t0, 0x4c($a0)
/* 039ED8 800392D8 44802000 */  mtc1  $zero, $f4
/* 039EDC 800392DC A1190010 */  sb    $t9, 0x10($t0)
/* 039EE0 800392E0 8C89004C */  lw    $t1, 0x4c($a0)
/* 039EE4 800392E4 240A00FF */  li    $t2, 255
/* 039EE8 800392E8 A1200012 */  sb    $zero, 0x12($t1)
/* 039EEC 800392EC 8C820064 */  lw    $v0, 0x64($a0)
/* 039EF0 800392F0 3C018012 */  lui   $at, %hi(D_8011D4D4) # $at, 0x8012
/* 039EF4 800392F4 A04A000D */  sb    $t2, 0xd($v0)
/* 039EF8 800392F8 E4440000 */  swc1  $f4, ($v0)
/* 039EFC 800392FC A4400028 */  sh    $zero, 0x28($v0)
/* 039F00 80039300 AC40002C */  sw    $zero, 0x2c($v0)
/* 039F04 80039304 A4400034 */  sh    $zero, 0x34($v0)
/* 039F08 80039308 A0400036 */  sb    $zero, 0x36($v0)
/* 039F0C 8003930C AC20D4D4 */  sw    $zero, %lo(D_8011D4D4)($at)
/* 039F10 80039310 3C018012 */  lui   $at, 0x8012
/* 039F14 80039314 240B010F */  li    $t3, 271
/* 039F18 80039318 03E00008 */  jr    $ra
/* 039F1C 8003931C A42BD4E2 */   sh    $t3, -0x2b1e($at)
