glabel func_8003C9EC
/* 03D5EC 8003C9EC 90AE0008 */  lbu   $t6, 8($a1)
/* 03D5F0 8003C9F0 8C820064 */  lw    $v0, 0x64($a0)
/* 03D5F4 8003C9F4 A08E003A */  sb    $t6, 0x3a($a0)
/* 03D5F8 8003C9F8 90B80009 */  lbu   $t8, 9($a1)
/* 03D5FC 8003C9FC C4840010 */  lwc1  $f4, 0x10($a0)
/* 03D600 8003CA00 0018CA80 */  sll   $t9, $t8, 0xa
/* 03D604 8003CA04 A4990000 */  sh    $t9, ($a0)
/* 03D608 8003CA08 E4440000 */  swc1  $f4, ($v0)
/* 03D60C 8003CA0C 8C89004C */  lw    $t1, 0x4c($a0)
/* 03D610 8003CA10 24080021 */  li    $t0, 33
/* 03D614 8003CA14 A5280014 */  sh    $t0, 0x14($t1)
/* 03D618 8003CA18 8C8B004C */  lw    $t3, 0x4c($a0)
/* 03D61C 8003CA1C 240A0002 */  li    $t2, 2
/* 03D620 8003CA20 A16A0011 */  sb    $t2, 0x11($t3)
/* 03D624 8003CA24 8C8D004C */  lw    $t5, 0x4c($a0)
/* 03D628 8003CA28 240C0014 */  li    $t4, 20
/* 03D62C 8003CA2C A1AC0010 */  sb    $t4, 0x10($t5)
/* 03D630 8003CA30 8C8E004C */  lw    $t6, 0x4c($a0)
/* 03D634 8003CA34 00000000 */  nop   
/* 03D638 8003CA38 A1C00012 */  sb    $zero, 0x12($t6)
/* 03D63C 8003CA3C AC400004 */  sw    $zero, 4($v0)
/* 03D640 8003CA40 8C980040 */  lw    $t8, 0x40($a0)
/* 03D644 8003CA44 808F003A */  lb    $t7, 0x3a($a0)
/* 03D648 8003CA48 83190055 */  lb    $t9, 0x55($t8)
/* 03D64C 8003CA4C 00000000 */  nop   
/* 03D650 8003CA50 01F9082A */  slt   $at, $t7, $t9
/* 03D654 8003CA54 14200002 */  bnez  $at, .L8003CA60
/* 03D658 8003CA58 00000000 */   nop   
/* 03D65C 8003CA5C A080003A */  sb    $zero, 0x3a($a0)
.L8003CA60:
/* 03D660 8003CA60 03E00008 */  jr    $ra
/* 03D664 8003CA64 00000000 */   nop   
