glabel func_8000C8B4
/* 00D4B4 8000C8B4 3C0E8000 */  lui   $t6, %hi(D_80000300) # $t6, 0x8000
/* 00D4B8 8000C8B8 8DCE0300 */  lw    $t6, %lo(D_80000300)($t6)
/* 00D4BC 8000C8BC 00000000 */  nop   
/* 00D4C0 8000C8C0 15C00003 */  bnez  $t6, .L8000C8D0
/* 00D4C4 8000C8C4 00000000 */   nop   
/* 00D4C8 8000C8C8 04810003 */  bgez  $a0, .L8000C8D8
/* 00D4CC 8000C8CC 00041080 */   sll   $v0, $a0, 2
.L8000C8D0:
/* 00D4D0 8000C8D0 03E00008 */  jr    $ra
/* 00D4D4 8000C8D4 00801025 */   move  $v0, $a0

.L8000C8D8:
/* 00D4D8 8000C8D8 00441021 */  addu  $v0, $v0, $a0
/* 00D4DC 8000C8DC 24010006 */  li    $at, 6
/* 00D4E0 8000C8E0 0041001A */  div   $zero, $v0, $at
/* 00D4E4 8000C8E4 00001012 */  mflo  $v0
/* 00D4E8 8000C8E8 00000000 */  nop   
/* 00D4EC 8000C8EC 00000000 */  nop   
/* 00D4F0 8000C8F0 03E00008 */  jr    $ra
/* 00D4F4 8000C8F4 00000000 */   nop   

