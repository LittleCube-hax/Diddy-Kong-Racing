glabel func_800875E4
/* 0881E4 800875E4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0881E8 800875E8 308E4000 */  andi  $t6, $a0, 0x4000
/* 0881EC 800875EC 11C00008 */  beqz  $t6, .L80087610
/* 0881F0 800875F0 AFBF0014 */   sw    $ra, 0x14($sp)
/* 0881F4 800875F4 24040241 */  li    $a0, 577
/* 0881F8 800875F8 0C000741 */  jal   func_80001D04
/* 0881FC 800875FC 00002825 */   move  $a1, $zero
/* 088200 80087600 240F0003 */  li    $t7, 3
/* 088204 80087604 3C018012 */  lui   $at, %hi(D_801263E0) # $at, 0x8012
/* 088208 80087608 1000002C */  b     .L800876BC
/* 08820C 8008760C AC2F63E0 */   sw    $t7, %lo(D_801263E0)($at)
.L80087610:
/* 088210 80087610 30989000 */  andi  $t8, $a0, 0x9000
/* 088214 80087614 13000007 */  beqz  $t8, .L80087634
/* 088218 80087618 240400EF */   li    $a0, 239
/* 08821C 8008761C 0C000741 */  jal   func_80001D04
/* 088220 80087620 00002825 */   move  $a1, $zero
/* 088224 80087624 24190006 */  li    $t9, 6
/* 088228 80087628 3C018012 */  lui   $at, %hi(D_801263E0) # $at, 0x8012
/* 08822C 8008762C 10000023 */  b     .L800876BC
/* 088230 80087630 AC3963E0 */   sw    $t9, %lo(D_801263E0)($at)
.L80087634:
/* 088234 80087634 04A1000F */  bgez  $a1, .L80087674
/* 088238 80087638 3C028012 */   lui   $v0, %hi(D_80126BE4) # $v0, 0x8012
/* 08823C 8008763C 24426BE4 */  addiu $v0, %lo(D_80126BE4) # addiu $v0, $v0, 0x6be4
/* 088240 80087640 8C480000 */  lw    $t0, ($v0)
/* 088244 80087644 240400EB */  li    $a0, 235
/* 088248 80087648 1900000A */  blez  $t0, .L80087674
/* 08824C 8008764C 00000000 */   nop   
/* 088250 80087650 0C000741 */  jal   func_80001D04
/* 088254 80087654 00002825 */   move  $a1, $zero
/* 088258 80087658 3C028012 */  lui   $v0, %hi(D_80126BE4) # $v0, 0x8012
/* 08825C 8008765C 24426BE4 */  addiu $v0, %lo(D_80126BE4) # addiu $v0, $v0, 0x6be4
/* 088260 80087660 8C490000 */  lw    $t1, ($v0)
/* 088264 80087664 00000000 */  nop   
/* 088268 80087668 252AFFFF */  addiu $t2, $t1, -1
/* 08826C 8008766C 10000013 */  b     .L800876BC
/* 088270 80087670 AC4A0000 */   sw    $t2, ($v0)
.L80087674:
/* 088274 80087674 3C028012 */  lui   $v0, %hi(D_80126BE4) # $v0, 0x8012
/* 088278 80087678 18A00010 */  blez  $a1, .L800876BC
/* 08827C 8008767C 24426BE4 */   addiu $v0, %lo(D_80126BE4) # addiu $v0, $v0, 0x6be4
/* 088280 80087680 3C0C8012 */  lui   $t4, %hi(D_80126A00) # $t4, 0x8012
/* 088284 80087684 8D8C6A00 */  lw    $t4, %lo(D_80126A00)($t4)
/* 088288 80087688 8C4B0000 */  lw    $t3, ($v0)
/* 08828C 8008768C 258DFFFF */  addiu $t5, $t4, -1
/* 088290 80087690 016D082A */  slt   $at, $t3, $t5
/* 088294 80087694 10200009 */  beqz  $at, .L800876BC
/* 088298 80087698 240400EB */   li    $a0, 235
/* 08829C 8008769C 0C000741 */  jal   func_80001D04
/* 0882A0 800876A0 00002825 */   move  $a1, $zero
/* 0882A4 800876A4 3C028012 */  lui   $v0, %hi(D_80126BE4) # $v0, 0x8012
/* 0882A8 800876A8 24426BE4 */  addiu $v0, %lo(D_80126BE4) # addiu $v0, $v0, 0x6be4
/* 0882AC 800876AC 8C4E0000 */  lw    $t6, ($v0)
/* 0882B0 800876B0 00000000 */  nop   
/* 0882B4 800876B4 25CF0001 */  addiu $t7, $t6, 1
/* 0882B8 800876B8 AC4F0000 */  sw    $t7, ($v0)
.L800876BC:
/* 0882BC 800876BC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0882C0 800876C0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0882C4 800876C4 03E00008 */  jr    $ra
/* 0882C8 800876C8 00001025 */   move  $v0, $zero
