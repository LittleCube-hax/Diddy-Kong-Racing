.include "globals.inc"
.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # dont insert nops after branches
.set gp=64     # 64-bit instructions are used

glabel func_800CF3E0
/* 0CFFE0 800CF3E0 27BDFED0 */  addiu $sp, $sp, -0x130
/* 0CFFE4 800CF3E4 AFA40130 */  sw    $a0, 0x130($sp)
/* 0CFFE8 800CF3E8 8FAE0130 */  lw    $t6, 0x130($sp)
/* 0CFFEC 800CF3EC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CFFF0 800CF3F0 AFA50134 */  sw    $a1, 0x134($sp)
/* 0CFFF4 800CF3F4 AFA00128 */  sw    $zero, 0x128($sp)
/* 0CFFF8 800CF3F8 AFA00024 */  sw    $zero, 0x24($sp)
/* 0CFFFC 800CF3FC 8DCF0000 */  lw    $t7, ($t6)
/* 0D0000 800CF400 31F80001 */  andi  $t8, $t7, 1
/* 0D0004 800CF404 17000003 */  bnez  $t8, .L800CF414
/* 0D0008 800CF408 00000000 */   nop   
/* 0D000C 800CF40C 10000043 */  b     .L800CF51C
/* 0D0010 800CF410 24020005 */   li    $v0, 5
.L800CF414:
/* 0D0014 800CF414 0C0356F0 */  jal   func_800D5BC0
/* 0D0018 800CF418 8FA40130 */   lw    $a0, 0x130($sp)
/* 0D001C 800CF41C 24010002 */  li    $at, 2
/* 0D0020 800CF420 14410003 */  bne   $v0, $at, .L800CF430
/* 0D0024 800CF424 00000000 */   nop   
/* 0D0028 800CF428 1000003C */  b     .L800CF51C
/* 0D002C 800CF42C 24020002 */   li    $v0, 2
.L800CF430:
/* 0D0030 800CF430 8FB90130 */  lw    $t9, 0x130($sp)
/* 0D0034 800CF434 A3A00023 */  sb    $zero, 0x23($sp)
/* 0D0038 800CF438 93280064 */  lbu   $t0, 0x64($t9)
/* 0D003C 800CF43C 19000031 */  blez  $t0, .L800CF504
/* 0D0040 800CF440 00000000 */   nop   
.L800CF444:
/* 0D0044 800CF444 8FA40130 */  lw    $a0, 0x130($sp)
/* 0D0048 800CF448 27A50028 */  addiu $a1, $sp, 0x28
/* 0D004C 800CF44C 00003025 */  move  $a2, $zero
/* 0D0050 800CF450 0C03572F */  jal   func_800D5CBC
/* 0D0054 800CF454 93A70023 */   lbu   $a3, 0x23($sp)
/* 0D0058 800CF458 AFA20024 */  sw    $v0, 0x24($sp)
/* 0D005C 800CF45C 8FA90024 */  lw    $t1, 0x24($sp)
/* 0D0060 800CF460 11200003 */  beqz  $t1, .L800CF470
/* 0D0064 800CF464 00000000 */   nop   
/* 0D0068 800CF468 1000002C */  b     .L800CF51C
/* 0D006C 800CF46C 01201025 */   move  $v0, $t1
.L800CF470:
/* 0D0070 800CF470 93AA0023 */  lbu   $t2, 0x23($sp)
/* 0D0074 800CF474 19400004 */  blez  $t2, .L800CF488
/* 0D0078 800CF478 00000000 */   nop   
/* 0D007C 800CF47C 240B0001 */  li    $t3, 1
/* 0D0080 800CF480 10000004 */  b     .L800CF494
/* 0D0084 800CF484 AFAB001C */   sw    $t3, 0x1c($sp)
.L800CF488:
/* 0D0088 800CF488 8FAC0130 */  lw    $t4, 0x130($sp)
/* 0D008C 800CF48C 8D8D0060 */  lw    $t5, 0x60($t4)
/* 0D0090 800CF490 AFAD001C */  sw    $t5, 0x1c($sp)
.L800CF494:
/* 0D0094 800CF494 8FAE001C */  lw    $t6, 0x1c($sp)
/* 0D0098 800CF498 29C10080 */  slti  $at, $t6, 0x80
/* 0D009C 800CF49C 10200010 */  beqz  $at, .L800CF4E0
/* 0D00A0 800CF4A0 AFAE012C */   sw    $t6, 0x12c($sp)
.L800CF4A4:
/* 0D00A4 800CF4A4 8FAF012C */  lw    $t7, 0x12c($sp)
/* 0D00A8 800CF4A8 24010003 */  li    $at, 3
/* 0D00AC 800CF4AC 000FC040 */  sll   $t8, $t7, 1
/* 0D00B0 800CF4B0 03B8C821 */  addu  $t9, $sp, $t8
/* 0D00B4 800CF4B4 97390028 */  lhu   $t9, 0x28($t9)
/* 0D00B8 800CF4B8 17210004 */  bne   $t9, $at, .L800CF4CC
/* 0D00BC 800CF4BC 00000000 */   nop   
/* 0D00C0 800CF4C0 8FA80128 */  lw    $t0, 0x128($sp)
/* 0D00C4 800CF4C4 25090001 */  addiu $t1, $t0, 1
/* 0D00C8 800CF4C8 AFA90128 */  sw    $t1, 0x128($sp)
.L800CF4CC:
/* 0D00CC 800CF4CC 8FAA012C */  lw    $t2, 0x12c($sp)
/* 0D00D0 800CF4D0 254B0001 */  addiu $t3, $t2, 1
/* 0D00D4 800CF4D4 29610080 */  slti  $at, $t3, 0x80
/* 0D00D8 800CF4D8 1420FFF2 */  bnez  $at, .L800CF4A4
/* 0D00DC 800CF4DC AFAB012C */   sw    $t3, 0x12c($sp)
.L800CF4E0:
/* 0D00E0 800CF4E0 93AC0023 */  lbu   $t4, 0x23($sp)
/* 0D00E4 800CF4E4 8FAF0130 */  lw    $t7, 0x130($sp)
/* 0D00E8 800CF4E8 258D0001 */  addiu $t5, $t4, 1
/* 0D00EC 800CF4EC A3AD0023 */  sb    $t5, 0x23($sp)
/* 0D00F0 800CF4F0 91F80064 */  lbu   $t8, 0x64($t7)
/* 0D00F4 800CF4F4 31AE00FF */  andi  $t6, $t5, 0xff
/* 0D00F8 800CF4F8 01D8082A */  slt   $at, $t6, $t8
/* 0D00FC 800CF4FC 1420FFD1 */  bnez  $at, .L800CF444
/* 0D0100 800CF500 00000000 */   nop   
.L800CF504:
/* 0D0104 800CF504 8FB90128 */  lw    $t9, 0x128($sp)
/* 0D0108 800CF508 8FAA0134 */  lw    $t2, 0x134($sp)
/* 0D010C 800CF50C 00001025 */  move  $v0, $zero
/* 0D0110 800CF510 001940C0 */  sll   $t0, $t9, 3
/* 0D0114 800CF514 00084940 */  sll   $t1, $t0, 5
/* 0D0118 800CF518 AD490000 */  sw    $t1, ($t2)
.L800CF51C:
/* 0D011C 800CF51C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0D0120 800CF520 27BD0130 */  addiu $sp, $sp, 0x130
/* 0D0124 800CF524 03E00008 */  jr    $ra
/* 0D0128 800CF528 00000000 */   nop   

/* 0D012C 800CF52C 00000000 */  nop   
