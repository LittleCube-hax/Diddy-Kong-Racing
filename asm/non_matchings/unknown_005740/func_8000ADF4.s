glabel func_8000ADF4
/* 00B9F4 8000ADF4 00051080 */  sll   $v0, $a1, 2
/* 00B9F8 8000ADF8 8C8E0060 */  lw    $t6, 0x60($a0)
/* 00B9FC 8000ADFC 00451021 */  addu  $v0, $v0, $a1
/* 00BA00 8000AE00 00021080 */  sll   $v0, $v0, 2
/* 00BA04 8000AE04 01C27821 */  addu  $t7, $t6, $v0
/* 00BA08 8000AE08 A1E00006 */  sb    $zero, 6($t7)
/* 00BA0C 8000AE0C 8C980060 */  lw    $t8, 0x60($a0)
/* 00BA10 8000AE10 24080040 */  li    $t0, 64
/* 00BA14 8000AE14 0302C821 */  addu  $t9, $t8, $v0
/* 00BA18 8000AE18 A320000A */  sb    $zero, 0xa($t9)
/* 00BA1C 8000AE1C 8C890060 */  lw    $t1, 0x60($a0)
/* 00BA20 8000AE20 2403007F */  li    $v1, 127
/* 00BA24 8000AE24 01225021 */  addu  $t2, $t1, $v0
/* 00BA28 8000AE28 A1480007 */  sb    $t0, 7($t2)
/* 00BA2C 8000AE2C 8C8B0060 */  lw    $t3, 0x60($a0)
/* 00BA30 8000AE30 240F0005 */  li    $t7, 5
/* 00BA34 8000AE34 01626021 */  addu  $t4, $t3, $v0
/* 00BA38 8000AE38 A1830009 */  sb    $v1, 9($t4)
/* 00BA3C 8000AE3C 8C8D0060 */  lw    $t5, 0x60($a0)
/* 00BA40 8000AE40 240A00C8 */  li    $t2, 200
/* 00BA44 8000AE44 01A27021 */  addu  $t6, $t5, $v0
/* 00BA48 8000AE48 A1C30010 */  sb    $v1, 0x10($t6)
/* 00BA4C 8000AE4C 8C980060 */  lw    $t8, 0x60($a0)
/* 00BA50 8000AE50 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 00BA54 8000AE54 0302C821 */  addu  $t9, $t8, $v0
/* 00BA58 8000AE58 A32F0008 */  sb    $t7, 8($t9)
/* 00BA5C 8000AE5C 8C890060 */  lw    $t1, 0x60($a0)
/* 00BA60 8000AE60 44812000 */  mtc1  $at, $f4
/* 00BA64 8000AE64 01224021 */  addu  $t0, $t1, $v0
/* 00BA68 8000AE68 A100000B */  sb    $zero, 0xb($t0)
/* 00BA6C 8000AE6C 8C8B0060 */  lw    $t3, 0x60($a0)
/* 00BA70 8000AE70 00000000 */  nop   
/* 00BA74 8000AE74 01626021 */  addu  $t4, $t3, $v0
/* 00BA78 8000AE78 A58A0004 */  sh    $t2, 4($t4)
/* 00BA7C 8000AE7C 8C8D0060 */  lw    $t5, 0x60($a0)
/* 00BA80 8000AE80 00000000 */  nop   
/* 00BA84 8000AE84 01A27021 */  addu  $t6, $t5, $v0
/* 00BA88 8000AE88 03E00008 */  jr    $ra
/* 00BA8C 8000AE8C E5C4000C */   swc1  $f4, 0xc($t6)

