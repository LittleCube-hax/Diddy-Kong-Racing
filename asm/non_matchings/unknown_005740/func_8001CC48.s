glabel func_8001CC48
/* 01D848 8001CC48 27BDFFF8 */  addiu $sp, $sp, -8
/* 01D84C 8001CC4C AFB00004 */  sw    $s0, 4($sp)
/* 01D850 8001CC50 2881FFFF */  slti  $at, $a0, -1
/* 01D854 8001CC54 14200004 */  bnez  $at, .L8001CC68
/* 01D858 8001CC58 00A08025 */   move  $s0, $a1
/* 01D85C 8001CC5C 28810080 */  slti  $at, $a0, 0x80
/* 01D860 8001CC60 14200003 */  bnez  $at, .L8001CC70
/* 01D864 8001CC64 3C0E8012 */   lui   $t6, %hi(D_8011AF04) # $t6, 0x8012
.L8001CC68:
/* 01D868 8001CC68 1000002C */  b     .L8001CD1C
/* 01D86C 8001CC6C 240200FF */   li    $v0, 255
.L8001CC70:
/* 01D870 8001CC70 8DCEAF04 */  lw    $t6, %lo(D_8011AF04)($t6)
/* 01D874 8001CC74 00047880 */  sll   $t7, $a0, 2
/* 01D878 8001CC78 01CFC021 */  addu  $t8, $t6, $t7
/* 01D87C 8001CC7C 8F020000 */  lw    $v0, ($t8)
/* 01D880 8001CC80 30D90003 */  andi  $t9, $a2, 3
/* 01D884 8001CC84 14400003 */  bnez  $v0, .L8001CC94
/* 01D888 8001CC88 00002825 */   move  $a1, $zero
/* 01D88C 8001CC8C 10000023 */  b     .L8001CD1C
/* 01D890 8001CC90 240200FF */   li    $v0, 255
.L8001CC94:
/* 01D894 8001CC94 8C440064 */  lw    $a0, 0x64($v0)
/* 01D898 8001CC98 8C43003C */  lw    $v1, 0x3c($v0)
/* 01D89C 8001CC9C 00994021 */  addu  $t0, $a0, $t9
/* 01D8A0 8001CCA0 81070018 */  lb    $a3, 0x18($t0)
/* 01D8A4 8001CCA4 240400FF */  li    $a0, 255
/* 01D8A8 8001CCA8 24E70001 */  addiu $a3, $a3, 1
/* 01D8AC 8001CCAC 30EA0003 */  andi  $t2, $a3, 3
/* 01D8B0 8001CCB0 01403825 */  move  $a3, $t2
/* 01D8B4 8001CCB4 00004825 */  move  $t1, $zero
.L8001CCB8:
/* 01D8B8 8001CCB8 00675821 */  addu  $t3, $v1, $a3
/* 01D8BC 8001CCBC 9162000A */  lbu   $v0, 0xa($t3)
/* 01D8C0 8001CCC0 00000000 */  nop   
/* 01D8C4 8001CCC4 10820006 */  beq   $a0, $v0, .L8001CCE0
/* 01D8C8 8001CCC8 00000000 */   nop   
/* 01D8CC 8001CCCC 12020005 */  beq   $s0, $v0, .L8001CCE4
/* 01D8D0 8001CCD0 25290001 */   addiu $t1, $t1, 1
/* 01D8D4 8001CCD4 A1070018 */  sb    $a3, 0x18($t0)
/* 01D8D8 8001CCD8 24090004 */  li    $t1, 4
/* 01D8DC 8001CCDC 24A50001 */  addiu $a1, $a1, 1
.L8001CCE0:
/* 01D8E0 8001CCE0 25290001 */  addiu $t1, $t1, 1
.L8001CCE4:
/* 01D8E4 8001CCE4 24E70001 */  addiu $a3, $a3, 1
/* 01D8E8 8001CCE8 29210004 */  slti  $at, $t1, 4
/* 01D8EC 8001CCEC 30EC0003 */  andi  $t4, $a3, 3
/* 01D8F0 8001CCF0 1420FFF1 */  bnez  $at, .L8001CCB8
/* 01D8F4 8001CCF4 01803825 */   move  $a3, $t4
/* 01D8F8 8001CCF8 14A00003 */  bnez  $a1, .L8001CD08
/* 01D8FC 8001CCFC 00000000 */   nop   
/* 01D900 8001CD00 10000006 */  b     .L8001CD1C
/* 01D904 8001CD04 240200FF */   li    $v0, 255
.L8001CD08:
/* 01D908 8001CD08 810D0018 */  lb    $t5, 0x18($t0)
/* 01D90C 8001CD0C 00000000 */  nop   
/* 01D910 8001CD10 006D7021 */  addu  $t6, $v1, $t5
/* 01D914 8001CD14 91C2000A */  lbu   $v0, 0xa($t6)
/* 01D918 8001CD18 00000000 */  nop   
.L8001CD1C:
/* 01D91C 8001CD1C 8FB00004 */  lw    $s0, 4($sp)
/* 01D920 8001CD20 03E00008 */  jr    $ra
/* 01D924 8001CD24 27BD0008 */   addiu $sp, $sp, 8
