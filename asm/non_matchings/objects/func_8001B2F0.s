glabel func_8001B2F0
/* 01BEF0 8001B2F0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 01BEF4 8001B2F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 01BEF8 8001B2F8 0C01AC2B */  jal   get_map_default_vehicle
/* 01BEFC 8001B2FC AFA40028 */   sw    $a0, 0x28($sp)
/* 01BF00 8001B300 3C058012 */  lui   $a1, %hi(D_8011AE84) # $a1, 0x8012
/* 01BF04 8001B304 24A5AE84 */  addiu $a1, %lo(D_8011AE84) # addiu $a1, $a1, -0x517c
/* 01BF08 8001B308 A4A20000 */  sh    $v0, ($a1)
/* 01BF0C 8001B30C 0C01DB16 */  jal   load_asset_section_from_rom
/* 01BF10 8001B310 24040030 */   li    $a0, 48
/* 01BF14 8001B314 3C058012 */  lui   $a1, %hi(D_8011AE84) # $a1, 0x8012
/* 01BF18 8001B318 8FA60028 */  lw    $a2, 0x28($sp)
/* 01BF1C 8001B31C 24A5AE84 */  addiu $a1, %lo(D_8011AE84) # addiu $a1, $a1, -0x517c
/* 01BF20 8001B320 AFA20024 */  sw    $v0, 0x24($sp)
/* 01BF24 8001B324 00401825 */  move  $v1, $v0
/* 01BF28 8001B328 240700FF */  li    $a3, 255
.L8001B32C:
/* 01BF2C 8001B32C 906E0000 */  lbu   $t6, ($v1)
/* 01BF30 8001B330 00602025 */  move  $a0, $v1
/* 01BF34 8001B334 14CE0009 */  bne   $a2, $t6, .L8001B35C
/* 01BF38 8001B338 00000000 */   nop   
/* 01BF3C 8001B33C 84AF0000 */  lh    $t7, ($a1)
/* 01BF40 8001B340 90780001 */  lbu   $t8, 1($v1)
/* 01BF44 8001B344 00000000 */  nop   
/* 01BF48 8001B348 15F80004 */  bne   $t7, $t8, .L8001B35C
/* 01BF4C 8001B34C 00000000 */   nop   
/* 01BF50 8001B350 90820000 */  lbu   $v0, ($a0)
/* 01BF54 8001B354 10000005 */  b     .L8001B36C
/* 01BF58 8001B358 00000000 */   nop   
.L8001B35C:
/* 01BF5C 8001B35C 90820000 */  lbu   $v0, ($a0)
/* 01BF60 8001B360 24630008 */  addiu $v1, $v1, 8
/* 01BF64 8001B364 14E2FFF1 */  bne   $a3, $v0, .L8001B32C
/* 01BF68 8001B368 00000000 */   nop   
.L8001B36C:
/* 01BF6C 8001B36C 10E20008 */  beq   $a3, $v0, .L8001B390
/* 01BF70 8001B370 24050001 */   li    $a1, 1
/* 01BF74 8001B374 8C640004 */  lw    $a0, 4($v1)
/* 01BF78 8001B378 8C79000C */  lw    $t9, 0xc($v1)
/* 01BF7C 8001B37C 3C068012 */  lui   $a2, %hi(D_8011AE80) # $a2, 0x8012
/* 01BF80 8001B380 24C6AE80 */  addiu $a2, %lo(D_8011AE80) # addiu $a2, $a2, -0x5180
/* 01BF84 8001B384 0C01669A */  jal   load_tt_ghost
/* 01BF88 8001B388 03242823 */   subu  $a1, $t9, $a0
/* 01BF8C 8001B38C 00402825 */  move  $a1, $v0
.L8001B390:
/* 01BF90 8001B390 8FA40024 */  lw    $a0, 0x24($sp)
/* 01BF94 8001B394 0C01C450 */  jal   free_from_memory_pool
/* 01BF98 8001B398 AFA5001C */   sw    $a1, 0x1c($sp)
/* 01BF9C 8001B39C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01BFA0 8001B3A0 8FA2001C */  lw    $v0, 0x1c($sp)
/* 01BFA4 8001B3A4 03E00008 */  jr    $ra
/* 01BFA8 8001B3A8 27BD0028 */   addiu $sp, $sp, 0x28

