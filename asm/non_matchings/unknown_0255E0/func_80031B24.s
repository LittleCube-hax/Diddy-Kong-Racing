glabel func_80031B24
/* 032724 80031B24 15E0FF99 */  bnez  $t7, .L8003198C
/* 032728 80031B28 00000000 */   nop   
/* 03272C 80031B2C 8FA80010 */  lw    $t0, 0x10($sp)
/* 032730 80031B30 2484000C */  addiu $a0, $a0, 0xc
/* 032734 80031B34 24A5000C */  addiu $a1, $a1, 0xc
/* 032738 80031B38 2508FFFF */  addiu $t0, $t0, -1
/* 03273C 80031B3C 24C60004 */  addiu $a2, $a2, 4
/* 032740 80031B40 24E70001 */  addiu $a3, $a3, 1
/* 032744 80031B44 1500FEB6 */  bnez  $t0, .L80031620
/* 032748 80031B48 AFA80010 */   sw    $t0, 0x10($sp)
.L80031B4C:
/* 03274C 80031B4C 03E00008 */  jr    $ra
/* 032750 80031B50 83A20000 */   lb    $v0, ($sp)

/* 032754 80031B54 00000000 */  nop   
/* 032758 80031B58 00000000 */  nop   
/* 03275C 80031B5C 00000000 */  nop   
