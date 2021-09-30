glabel __osSpRawStartDma
/* 0D7040 800D6440 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0D7044 800D6444 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D7048 800D6448 AFA40018 */  sw    $a0, 0x18($sp)
/* 0D704C 800D644C AFA5001C */  sw    $a1, 0x1c($sp)
/* 0D7050 800D6450 AFA60020 */  sw    $a2, 0x20($sp)
/* 0D7054 800D6454 0C035934 */  jal   __osSpDeviceBusy
/* 0D7058 800D6458 AFA70024 */   sw    $a3, 0x24($sp)
/* 0D705C 800D645C 10400003 */  beqz  $v0, .L800D646C
/* 0D7060 800D6460 00000000 */   nop   
/* 0D7064 800D6464 10000015 */  b     .L800D64BC
/* 0D7068 800D6468 2402FFFF */   li    $v0, -1
.L800D646C:
/* 0D706C 800D646C 8FAE001C */  lw    $t6, 0x1c($sp)
/* 0D7070 800D6470 3C0FA404 */  lui   $t7, 0xa404
/* 0D7074 800D6474 ADEE0000 */  sw    $t6, ($t7)
/* 0D7078 800D6478 0C03233C */  jal   osVirtualToPhysical
/* 0D707C 800D647C 8FA40020 */   lw    $a0, 0x20($sp)
/* 0D7080 800D6480 3C18A404 */  lui   $t8, %hi(SP_DRAM_ADDR_REG) # $t8, 0xa404
/* 0D7084 800D6484 AF020004 */  sw    $v0, %lo(SP_DRAM_ADDR_REG)($t8)
/* 0D7088 800D6488 8FB90018 */  lw    $t9, 0x18($sp)
/* 0D708C 800D648C 17200006 */  bnez  $t9, .L800D64A8
/* 0D7090 800D6490 00000000 */   nop   
/* 0D7094 800D6494 8FA80024 */  lw    $t0, 0x24($sp)
/* 0D7098 800D6498 3C0AA404 */  lui   $t2, %hi(SP_WR_LEN_REG) # $t2, 0xa404
/* 0D709C 800D649C 2509FFFF */  addiu $t1, $t0, -1
/* 0D70A0 800D64A0 10000005 */  b     .L800D64B8
/* 0D70A4 800D64A4 AD49000C */   sw    $t1, %lo(SP_WR_LEN_REG)($t2)
.L800D64A8:
/* 0D70A8 800D64A8 8FAB0024 */  lw    $t3, 0x24($sp)
/* 0D70AC 800D64AC 3C0DA404 */  lui   $t5, %hi(SP_RD_LEN_REG) # $t5, 0xa404
/* 0D70B0 800D64B0 256CFFFF */  addiu $t4, $t3, -1
/* 0D70B4 800D64B4 ADAC0008 */  sw    $t4, %lo(SP_RD_LEN_REG)($t5)
.L800D64B8:
/* 0D70B8 800D64B8 00001025 */  move  $v0, $zero
.L800D64BC:
/* 0D70BC 800D64BC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0D70C0 800D64C0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0D70C4 800D64C4 03E00008 */  jr    $ra
/* 0D70C8 800D64C8 00000000 */   nop   

/* 0D70CC 800D64CC 00000000 */  nop   
