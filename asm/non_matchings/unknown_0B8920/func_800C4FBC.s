glabel func_800C4FBC
/* 0C5BBC 800C4FBC 1880000E */  blez  $a0, .L800C4FF8
/* 0C5BC0 800C4FC0 28810008 */   slti  $at, $a0, 8
/* 0C5BC4 800C4FC4 1020000C */  beqz  $at, .L800C4FF8
/* 0C5BC8 800C4FC8 00047080 */   sll   $t6, $a0, 2
/* 0C5BCC 800C4FCC 3C0F8013 */  lui   $t7, %hi(D_8012A7E8) # $t7, 0x8013
/* 0C5BD0 800C4FD0 8DEFA7E8 */  lw    $t7, %lo(D_8012A7E8)($t7)
/* 0C5BD4 800C4FD4 01C47021 */  addu  $t6, $t6, $a0
/* 0C5BD8 800C4FD8 000E70C0 */  sll   $t6, $t6, 3
/* 0C5BDC 800C4FDC 01CF1021 */  addu  $v0, $t6, $t7
/* 0C5BE0 800C4FE0 A0450010 */  sb    $a1, 0x10($v0)
/* 0C5BE4 800C4FE4 A0460011 */  sb    $a2, 0x11($v0)
/* 0C5BE8 800C4FE8 A0470012 */  sb    $a3, 0x12($v0)
/* 0C5BEC 800C4FEC 8FB80010 */  lw    $t8, 0x10($sp)
/* 0C5BF0 800C4FF0 00000000 */  nop   
/* 0C5BF4 800C4FF4 A0580013 */  sb    $t8, 0x13($v0)
.L800C4FF8:
/* 0C5BF8 800C4FF8 03E00008 */  jr    $ra
/* 0C5BFC 800C4FFC 00000000 */   nop   
