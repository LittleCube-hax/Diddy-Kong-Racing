.rdata
glabel D_800E7528
.asciz "RED %d\n"
glabel D_800E7530
.asciz "GREEN %d\n"
.ascii "\0\0" # padding
glabel D_800E753C
.asciz "BLUE %d\n"
.ascii "\0\0\0" # padding
glabel D_800E7548
.asciz "YELLOW %d\n"
.ascii "\0" # padding
glabel D_800E7554
.asciz "MAGENTA %d\n"
glabel D_800E7560
.asciz "CYAN %d\n"
.ascii "\0\0\0" # padding
glabel D_800E756C
.asciz "WHITE %d\n"
.ascii "\0\0" # padding
glabel D_800E7578
.asciz "GREY %d\n"
.ascii "\0\0\0" # padding
glabel D_800E7584
.asciz "ORANGE %d\n\n"

.text
glabel func_80071A24
/* 072624 80071A24 3C028012 */  lui   $v0, %hi(D_80123580+8) # $v0, 0x8012
/* 072628 80071A28 8C423588 */  lw    $v0, %lo(D_80123580+8)($v0)
/* 07262C 80071A2C 00001825 */  move  $v1, $zero
/* 072630 80071A30 00002825 */  move  $a1, $zero
/* 072634 80071A34 24060640 */  li    $a2, 1600
.L80071A38:
/* 072638 80071A38 844E0008 */  lh    $t6, 8($v0)
/* 07263C 80071A3C 24A50004 */  addiu $a1, $a1, 4
/* 072640 80071A40 11C00006 */  beqz  $t6, .L80071A5C
/* 072644 80071A44 00000000 */   nop   
/* 072648 80071A48 8C4F0010 */  lw    $t7, 0x10($v0)
/* 07264C 80071A4C 00000000 */  nop   
/* 072650 80071A50 148F0002 */  bne   $a0, $t7, .L80071A5C
/* 072654 80071A54 00000000 */   nop   
/* 072658 80071A58 24630001 */  addiu $v1, $v1, 1
.L80071A5C:
/* 07265C 80071A5C 8458001C */  lh    $t8, 0x1c($v0)
/* 072660 80071A60 24420014 */  addiu $v0, $v0, 0x14
/* 072664 80071A64 13000006 */  beqz  $t8, .L80071A80
/* 072668 80071A68 00000000 */   nop   
/* 07266C 80071A6C 8C590010 */  lw    $t9, 0x10($v0)
/* 072670 80071A70 00000000 */  nop   
/* 072674 80071A74 14990002 */  bne   $a0, $t9, .L80071A80
/* 072678 80071A78 00000000 */   nop   
/* 07267C 80071A7C 24630001 */  addiu $v1, $v1, 1
.L80071A80:
/* 072680 80071A80 8448001C */  lh    $t0, 0x1c($v0)
/* 072684 80071A84 24420014 */  addiu $v0, $v0, 0x14
/* 072688 80071A88 11000006 */  beqz  $t0, .L80071AA4
/* 07268C 80071A8C 00000000 */   nop   
/* 072690 80071A90 8C490010 */  lw    $t1, 0x10($v0)
/* 072694 80071A94 00000000 */  nop   
/* 072698 80071A98 14890002 */  bne   $a0, $t1, .L80071AA4
/* 07269C 80071A9C 00000000 */   nop   
/* 0726A0 80071AA0 24630001 */  addiu $v1, $v1, 1
.L80071AA4:
/* 0726A4 80071AA4 844A001C */  lh    $t2, 0x1c($v0)
/* 0726A8 80071AA8 24420014 */  addiu $v0, $v0, 0x14
/* 0726AC 80071AAC 11400006 */  beqz  $t2, .L80071AC8
/* 0726B0 80071AB0 00000000 */   nop   
/* 0726B4 80071AB4 8C4B0010 */  lw    $t3, 0x10($v0)
/* 0726B8 80071AB8 00000000 */  nop   
/* 0726BC 80071ABC 148B0002 */  bne   $a0, $t3, .L80071AC8
/* 0726C0 80071AC0 00000000 */   nop   
/* 0726C4 80071AC4 24630001 */  addiu $v1, $v1, 1
.L80071AC8:
/* 0726C8 80071AC8 14A6FFDB */  bne   $a1, $a2, .L80071A38
/* 0726CC 80071ACC 24420014 */   addiu $v0, $v0, 0x14
/* 0726D0 80071AD0 03E00008 */  jr    $ra
/* 0726D4 80071AD4 00601025 */   move  $v0, $v1

/* 0726D8 80071AD8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0726DC 80071ADC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0726E0 80071AE0 3C04FF00 */  lui   $a0, (0xFF0000FF >> 16) # lui $a0, 0xff00
/* 0726E4 80071AE4 0C01C689 */  jal   func_80071A24
/* 0726E8 80071AE8 348400FF */   ori   $a0, (0xFF0000FF & 0xFFFF) # ori $a0, $a0, 0xff
/* 0726EC 80071AEC 3C0400FF */  lui   $a0, (0x00FF00FF >> 16) # lui $a0, 0xff
/* 0726F0 80071AF0 0C01C689 */  jal   func_80071A24
/* 0726F4 80071AF4 348400FF */   ori   $a0, (0x00FF00FF & 0xFFFF) # ori $a0, $a0, 0xff
/* 0726F8 80071AF8 0C01C689 */  jal   func_80071A24
/* 0726FC 80071AFC 3404FFFF */   li    $a0, 65535
/* 072700 80071B00 3C04FFFF */  lui   $a0, (0xFFFF00FF >> 16) # lui $a0, 0xffff
/* 072704 80071B04 0C01C689 */  jal   func_80071A24
/* 072708 80071B08 348400FF */   ori   $a0, (0xFFFF00FF & 0xFFFF) # ori $a0, $a0, 0xff
/* 07270C 80071B0C 3C04FF00 */  lui   $a0, (0xFF00FFFF >> 16) # lui $a0, 0xff00
/* 072710 80071B10 0C01C689 */  jal   func_80071A24
/* 072714 80071B14 3484FFFF */   ori   $a0, (0xFF00FFFF & 0xFFFF) # ori $a0, $a0, 0xffff
/* 072718 80071B18 3C0400FF */  lui   $a0, (0x00FFFFFF >> 16) # lui $a0, 0xff
/* 07271C 80071B1C 0C01C689 */  jal   func_80071A24
/* 072720 80071B20 3484FFFF */   ori   $a0, (0x00FFFFFF & 0xFFFF) # ori $a0, $a0, 0xffff
/* 072724 80071B24 0C01C689 */  jal   func_80071A24
/* 072728 80071B28 2404FFFF */   li    $a0, -1
/* 07272C 80071B2C 3C047F7F */  lui   $a0, (0x7F7F7FFF >> 16) # lui $a0, 0x7f7f
/* 072730 80071B30 0C01C689 */  jal   func_80071A24
/* 072734 80071B34 34847FFF */   ori   $a0, (0x7F7F7FFF & 0xFFFF) # ori $a0, $a0, 0x7fff
/* 072738 80071B38 3C04FF7F */  lui   $a0, (0xFF7F7FFF >> 16) # lui $a0, 0xff7f
/* 07273C 80071B3C 0C01C689 */  jal   func_80071A24
/* 072740 80071B40 34847FFF */   ori   $a0, (0xFF7F7FFF & 0xFFFF) # ori $a0, $a0, 0x7fff
/* 072744 80071B44 8FBF0014 */  lw    $ra, 0x14($sp)
/* 072748 80071B48 27BD0018 */  addiu $sp, $sp, 0x18
/* 07274C 80071B4C 03E00008 */  jr    $ra
/* 072750 80071B50 00000000 */   nop   

/* 072754 80071B54 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 072758 80071B58 AFBF0014 */  sw    $ra, 0x14($sp)
/* 07275C 80071B5C 00002025 */  move  $a0, $zero
/* 072760 80071B60 00002825 */  move  $a1, $zero
/* 072764 80071B64 00003025 */  move  $a2, $zero
/* 072768 80071B68 0C02D8AD */  jal   func_800B62B4
/* 07276C 80071B6C 24070080 */   li    $a3, 128
/* 072770 80071B70 3C04FF00 */  lui   $a0, (0xFF0000FF >> 16) # lui $a0, 0xff00
/* 072774 80071B74 0C01C689 */  jal   func_80071A24
/* 072778 80071B78 348400FF */   ori   $a0, (0xFF0000FF & 0xFFFF) # ori $a0, $a0, 0xff
/* 07277C 80071B7C 3C04800E */  lui   $a0, %hi(D_800E7528) # $a0, 0x800e
/* 072780 80071B80 24847528 */  addiu $a0, %lo(D_800E7528) # addiu $a0, $a0, 0x7528
/* 072784 80071B84 0C02D7B7 */  jal   render_printf
/* 072788 80071B88 00402825 */   move  $a1, $v0
/* 07278C 80071B8C 3C0400FF */  lui   $a0, (0x00FF00FF >> 16) # lui $a0, 0xff
/* 072790 80071B90 0C01C689 */  jal   func_80071A24
/* 072794 80071B94 348400FF */   ori   $a0, (0x00FF00FF & 0xFFFF) # ori $a0, $a0, 0xff
/* 072798 80071B98 3C04800E */  lui   $a0, %hi(D_800E7530) # $a0, 0x800e
/* 07279C 80071B9C 24847530 */  addiu $a0, %lo(D_800E7530) # addiu $a0, $a0, 0x7530
/* 0727A0 80071BA0 0C02D7B7 */  jal   render_printf
/* 0727A4 80071BA4 00402825 */   move  $a1, $v0
/* 0727A8 80071BA8 0C01C689 */  jal   func_80071A24
/* 0727AC 80071BAC 3404FFFF */   li    $a0, 65535
/* 0727B0 80071BB0 3C04800E */  lui   $a0, %hi(D_800E753C) # $a0, 0x800e
/* 0727B4 80071BB4 2484753C */  addiu $a0, %lo(D_800E753C) # addiu $a0, $a0, 0x753c
/* 0727B8 80071BB8 0C02D7B7 */  jal   render_printf
/* 0727BC 80071BBC 00402825 */   move  $a1, $v0
/* 0727C0 80071BC0 3C04FFFF */  lui   $a0, (0xFFFF00FF >> 16) # lui $a0, 0xffff
/* 0727C4 80071BC4 0C01C689 */  jal   func_80071A24
/* 0727C8 80071BC8 348400FF */   ori   $a0, (0xFFFF00FF & 0xFFFF) # ori $a0, $a0, 0xff
/* 0727CC 80071BCC 3C04800E */  lui   $a0, %hi(D_800E7548) # $a0, 0x800e
/* 0727D0 80071BD0 24847548 */  addiu $a0, %lo(D_800E7548) # addiu $a0, $a0, 0x7548
/* 0727D4 80071BD4 0C02D7B7 */  jal   render_printf
/* 0727D8 80071BD8 00402825 */   move  $a1, $v0
/* 0727DC 80071BDC 3C04FF00 */  lui   $a0, (0xFF00FFFF >> 16) # lui $a0, 0xff00
/* 0727E0 80071BE0 0C01C689 */  jal   func_80071A24
/* 0727E4 80071BE4 3484FFFF */   ori   $a0, (0xFF00FFFF & 0xFFFF) # ori $a0, $a0, 0xffff
/* 0727E8 80071BE8 3C04800E */  lui   $a0, %hi(D_800E7554) # $a0, 0x800e
/* 0727EC 80071BEC 24847554 */  addiu $a0, %lo(D_800E7554) # addiu $a0, $a0, 0x7554
/* 0727F0 80071BF0 0C02D7B7 */  jal   render_printf
/* 0727F4 80071BF4 00402825 */   move  $a1, $v0
/* 0727F8 80071BF8 3C0400FF */  lui   $a0, (0x00FFFFFF >> 16) # lui $a0, 0xff
/* 0727FC 80071BFC 0C01C689 */  jal   func_80071A24
/* 072800 80071C00 3484FFFF */   ori   $a0, (0x00FFFFFF & 0xFFFF) # ori $a0, $a0, 0xffff
/* 072804 80071C04 3C04800E */  lui   $a0, %hi(D_800E7560) # $a0, 0x800e
/* 072808 80071C08 24847560 */  addiu $a0, %lo(D_800E7560) # addiu $a0, $a0, 0x7560
/* 07280C 80071C0C 0C02D7B7 */  jal   render_printf
/* 072810 80071C10 00402825 */   move  $a1, $v0
/* 072814 80071C14 0C01C689 */  jal   func_80071A24
/* 072818 80071C18 2404FFFF */   li    $a0, -1
/* 07281C 80071C1C 3C04800E */  lui   $a0, %hi(D_800E756C) # $a0, 0x800e
/* 072820 80071C20 2484756C */  addiu $a0, %lo(D_800E756C) # addiu $a0, $a0, 0x756c
/* 072824 80071C24 0C02D7B7 */  jal   render_printf
/* 072828 80071C28 00402825 */   move  $a1, $v0
/* 07282C 80071C2C 3C047F7F */  lui   $a0, (0x7F7F7FFF >> 16) # lui $a0, 0x7f7f
/* 072830 80071C30 0C01C689 */  jal   func_80071A24
/* 072834 80071C34 34847FFF */   ori   $a0, (0x7F7F7FFF & 0xFFFF) # ori $a0, $a0, 0x7fff
/* 072838 80071C38 3C04800E */  lui   $a0, %hi(D_800E7578) # $a0, 0x800e
/* 07283C 80071C3C 24847578 */  addiu $a0, %lo(D_800E7578) # addiu $a0, $a0, 0x7578
/* 072840 80071C40 0C02D7B7 */  jal   render_printf
/* 072844 80071C44 00402825 */   move  $a1, $v0
/* 072848 80071C48 3C04FF7F */  lui   $a0, (0xFF7F7FFF >> 16) # lui $a0, 0xff7f
/* 07284C 80071C4C 0C01C689 */  jal   func_80071A24
/* 072850 80071C50 34847FFF */   ori   $a0, (0xFF7F7FFF & 0xFFFF) # ori $a0, $a0, 0x7fff
/* 072854 80071C54 3C04800E */  lui   $a0, %hi(D_800E7584) # $a0, 0x800e
/* 072858 80071C58 24847584 */  addiu $a0, %lo(D_800E7584) # addiu $a0, $a0, 0x7584
/* 07285C 80071C5C 0C02D7B7 */  jal   render_printf
/* 072860 80071C60 00402825 */   move  $a1, $v0
/* 072864 80071C64 8FBF0014 */  lw    $ra, 0x14($sp)
/* 072868 80071C68 27BD0018 */  addiu $sp, $sp, 0x18
/* 07286C 80071C6C 03E00008 */  jr    $ra
/* 072870 80071C70 00000000 */   nop   

/* 072874 80071C74 3C038012 */  lui   $v1, %hi(D_801235C0) # $v1, 0x8012
/* 072878 80071C78 8C6335C0 */  lw    $v1, %lo(D_801235C0)($v1)
/* 07287C 80071C7C 3C0E8012 */  lui   $t6, %hi(D_80123580) # $t6, 0x8012
/* 072880 80071C80 04600017 */  bltz  $v1, .L80071CE0
/* 072884 80071C84 25C43580 */   addiu $a0, $t6, %lo(D_80123580)
/* 072888 80071C88 00037900 */  sll   $t7, $v1, 4
/* 07288C 80071C8C 01E44021 */  addu  $t0, $t7, $a0
/* 072890 80071C90 240C0014 */  li    $t4, 20
/* 072894 80071C94 240BFFFF */  li    $t3, -1
.L80071C98:
/* 072898 80071C98 8C830008 */  lw    $v1, 8($a0)
/* 07289C 80071C9C 24840010 */  addiu $a0, $a0, 0x10
/* 0728A0 80071CA0 00601025 */  move  $v0, $v1
.L80071CA4:
/* 0728A4 80071CA4 84450008 */  lh    $a1, 8($v0)
/* 0728A8 80071CA8 8447000C */  lh    $a3, 0xc($v0)
/* 0728AC 80071CAC 10A00001 */  beqz  $a1, .L80071CB4
/* 0728B0 80071CB0 00E03025 */   move  $a2, $a3
.L80071CB4:
/* 0728B4 80071CB4 10CB0005 */  beq   $a2, $t3, .L80071CCC
/* 0728B8 80071CB8 00000000 */   nop   
/* 0728BC 80071CBC 00EC0019 */  multu $a3, $t4
/* 0728C0 80071CC0 0000C012 */  mflo  $t8
/* 0728C4 80071CC4 00781021 */  addu  $v0, $v1, $t8
/* 0728C8 80071CC8 00000000 */  nop   
.L80071CCC:
/* 0728CC 80071CCC 14CBFFF5 */  bne   $a2, $t3, .L80071CA4
/* 0728D0 80071CD0 00000000 */   nop   
/* 0728D4 80071CD4 0104082B */  sltu  $at, $t0, $a0
/* 0728D8 80071CD8 1020FFEF */  beqz  $at, .L80071C98
/* 0728DC 80071CDC 00000000 */   nop   
.L80071CE0:
/* 0728E0 80071CE0 03E00008 */  jr    $ra
/* 0728E4 80071CE4 00000000 */   nop   

/* 0728E8 80071CE8 3C028012 */  lui   $v0, %hi(D_801235C0) # $v0, 0x8012
/* 0728EC 80071CEC 8C4235C0 */  lw    $v0, %lo(D_801235C0)($v0)
/* 0728F0 80071CF0 2405FFFF */  li    $a1, -1
/* 0728F4 80071CF4 1045000C */  beq   $v0, $a1, .L80071D28
/* 0728F8 80071CF8 24440001 */   addiu $a0, $v0, 1
/* 0728FC 80071CFC 308E0003 */  andi  $t6, $a0, 3
/* 072900 80071D00 000E2023 */  negu  $a0, $t6
/* 072904 80071D04 10800005 */  beqz  $a0, .L80071D1C
/* 072908 80071D08 00821821 */   addu  $v1, $a0, $v0
.L80071D0C:
/* 07290C 80071D0C 2442FFFF */  addiu $v0, $v0, -1
/* 072910 80071D10 1462FFFE */  bne   $v1, $v0, .L80071D0C
/* 072914 80071D14 00000000 */   nop   
/* 072918 80071D18 10450003 */  beq   $v0, $a1, .L80071D28
.L80071D1C:
/* 07291C 80071D1C 2442FFFC */   addiu $v0, $v0, -4
.L80071D20:
/* 072920 80071D20 1445FFFF */  bne   $v0, $a1, .L80071D20
/* 072924 80071D24 2442FFFC */   addiu $v0, $v0, -4
.L80071D28:
/* 072928 80071D28 03E00008 */  jr    $ra
/* 07292C 80071D2C 00000000 */   nop   

