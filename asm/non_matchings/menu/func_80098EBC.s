glabel func_80098EBC
/* 099ABC 80098EBC 3C028012 */  lui   $v0, %hi(gOptionBlinkTimer) # $v0, 0x8012
/* 099AC0 80098EC0 244263BC */  addiu $v0, %lo(gOptionBlinkTimer) # addiu $v0, $v0, 0x63bc
/* 099AC4 80098EC4 8C4E0000 */  lw    $t6, ($v0)
/* 099AC8 80098EC8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 099ACC 80098ECC 01C47821 */  addu  $t7, $t6, $a0
/* 099AD0 80098ED0 31F8003F */  andi  $t8, $t7, 0x3f
/* 099AD4 80098ED4 0018C8C0 */  sll   $t9, $t8, 3
/* 099AD8 80098ED8 2B210100 */  slti  $at, $t9, 0x100
/* 099ADC 80098EDC AFBF0014 */  sw    $ra, 0x14($sp)
/* 099AE0 80098EE0 AC580000 */  sw    $t8, ($v0)
/* 099AE4 80098EE4 14200003 */  bnez  $at, .L80098EF4
/* 099AE8 80098EE8 03203025 */   move  $a2, $t9
/* 099AEC 80098EEC 240C01FF */  li    $t4, 511
/* 099AF0 80098EF0 01993023 */  subu  $a2, $t4, $t9
.L80098EF4:
/* 099AF4 80098EF4 3C09800E */  lui   $t1, %hi(D_800E0FE4) # $t1, 0x800e
/* 099AF8 80098EF8 8D290FE4 */  lw    $t1, %lo(D_800E0FE4)($t1)
/* 099AFC 80098EFC 00002025 */  move  $a0, $zero
/* 099B00 80098F00 19200024 */  blez  $t1, .L80098F94
/* 099B04 80098F04 3C0A800E */   lui   $t2, %hi(gNumberOfActivePlayers) # $t2, 0x800e
/* 099B08 80098F08 3C05800E */  lui   $a1, %hi(D_800E1048+64) # $a1, 0x800e
/* 099B0C 80098F0C 3C0B8012 */  lui   $t3, %hi(D_801263E0) # $t3, 0x8012
/* 099B10 80098F10 3C088012 */  lui   $t0, %hi(D_80126420) # $t0, 0x8012
/* 099B14 80098F14 3C078012 */  lui   $a3, %hi(D_80126418) # $a3, 0x8012
/* 099B18 80098F18 8D4AF4BC */  lw    $t2, %lo(gNumberOfActivePlayers)($t2)
/* 099B1C 80098F1C 24E76418 */  addiu $a3, %lo(D_80126418) # addiu $a3, $a3, 0x6418
/* 099B20 80098F20 25086420 */  addiu $t0, %lo(D_80126420) # addiu $t0, $t0, 0x6420
/* 099B24 80098F24 256B63E0 */  addiu $t3, %lo(D_801263E0) # addiu $t3, $t3, 0x63e0
/* 099B28 80098F28 24A51088 */  addiu $a1, %lo(D_800E1048+64) # addiu $a1, $a1, 0x1088
.L80098F2C:
/* 099B2C 80098F2C 29410003 */  slti  $at, $t2, 3
/* 099B30 80098F30 10200011 */  beqz  $at, .L80098F78
/* 099B34 80098F34 240200FF */   li    $v0, 255
/* 099B38 80098F38 8D630000 */  lw    $v1, ($t3)
/* 099B3C 80098F3C 00E46821 */  addu  $t5, $a3, $a0
/* 099B40 80098F40 14600005 */  bnez  $v1, .L80098F58
/* 099B44 80098F44 00000000 */   nop   
/* 099B48 80098F48 91AE0000 */  lbu   $t6, ($t5)
/* 099B4C 80098F4C 00000000 */  nop   
/* 099B50 80098F50 15C00007 */  bnez  $t6, .L80098F70
/* 099B54 80098F54 00000000 */   nop   
.L80098F58:
/* 099B58 80098F58 10600007 */  beqz  $v1, .L80098F78
/* 099B5C 80098F5C 01047821 */   addu  $t7, $t0, $a0
/* 099B60 80098F60 91F80000 */  lbu   $t8, ($t7)
/* 099B64 80098F64 00000000 */  nop   
/* 099B68 80098F68 13000003 */  beqz  $t8, .L80098F78
/* 099B6C 80098F6C 00000000 */   nop   
.L80098F70:
/* 099B70 80098F70 00061043 */  sra   $v0, $a2, 1
/* 099B74 80098F74 24420080 */  addiu $v0, $v0, 0x80
.L80098F78:
/* 099B78 80098F78 24840001 */  addiu $a0, $a0, 1
/* 099B7C 80098F7C 0089082A */  slt   $at, $a0, $t1
/* 099B80 80098F80 24A50060 */  addiu $a1, $a1, 0x60
/* 099B84 80098F84 A0A2FFAC */  sb    $v0, -0x54($a1)
/* 099B88 80098F88 A0A2FFAD */  sb    $v0, -0x53($a1)
/* 099B8C 80098F8C 1420FFE7 */  bnez  $at, .L80098F2C
/* 099B90 80098F90 A0A2FFAE */   sb    $v0, -0x52($a1)
.L80098F94:
/* 099B94 80098F94 3C0B8012 */  lui   $t3, %hi(D_801263E0) # $t3, 0x8012
/* 099B98 80098F98 256B63E0 */  addiu $t3, %lo(D_801263E0) # addiu $t3, $t3, 0x63e0
/* 099B9C 80098F9C 8D620000 */  lw    $v0, ($t3)
/* 099BA0 80098FA0 24010002 */  li    $at, 2
/* 099BA4 80098FA4 10410003 */  beq   $v0, $at, .L80098FB4
/* 099BA8 80098FA8 24040001 */   li    $a0, 1
/* 099BAC 80098FAC 24010003 */  li    $at, 3
/* 099BB0 80098FB0 14410004 */  bne   $v0, $at, .L80098FC4
.L80098FB4:
/* 099BB4 80098FB4 3C05800E */   lui   $a1, %hi(D_800E1048) # $a1, 0x800e
/* 099BB8 80098FB8 24A51048 */  addiu $a1, %lo(D_800E1048) # addiu $a1, $a1, 0x1048
/* 099BBC 80098FBC 0C02087B */  jal   draw_menu_elements
/* 099BC0 80098FC0 3C063F80 */   lui   $a2, 0x3f80
.L80098FC4:
/* 099BC4 80098FC4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 099BC8 80098FC8 27BD0018 */  addiu $sp, $sp, 0x18
/* 099BCC 80098FCC 03E00008 */  jr    $ra
/* 099BD0 80098FD0 00000000 */   nop   

