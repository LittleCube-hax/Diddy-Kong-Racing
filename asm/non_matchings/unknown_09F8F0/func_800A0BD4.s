glabel func_800A0BD4
/* 0A17D4 800A0BD4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0A17D8 800A0BD8 3C038012 */  lui   $v1, %hi(D_80126D74) # $v1, 0x8012
/* 0A17DC 800A0BDC 24636D74 */  addiu $v1, %lo(D_80126D74) # addiu $v1, $v1, 0x6d74
/* 0A17E0 800A0BE0 8C620000 */  lw    $v0, ($v1)
/* 0A17E4 800A0BE4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0A17E8 800A0BE8 00808825 */  move  $s1, $a0
/* 0A17EC 800A0BEC AFBF002C */  sw    $ra, 0x2c($sp)
/* 0A17F0 800A0BF0 AFB40028 */  sw    $s4, 0x28($sp)
/* 0A17F4 800A0BF4 AFB30024 */  sw    $s3, 0x24($sp)
/* 0A17F8 800A0BF8 AFB20020 */  sw    $s2, 0x20($sp)
/* 0A17FC 800A0BFC 1840000D */  blez  $v0, .L800A0C34
/* 0A1800 800A0C00 AFB00018 */   sw    $s0, 0x18($sp)
/* 0A1804 800A0C04 00447023 */  subu  $t6, $v0, $a0
/* 0A1808 800A0C08 1DC0000A */  bgtz  $t6, .L800A0C34
/* 0A180C 800A0C0C AC6E0000 */   sw    $t6, ($v1)
/* 0A1810 800A0C10 3C058012 */  lui   $a1, %hi(D_80126D40) # $a1, 0x8012
/* 0A1814 800A0C14 24A56D40 */  addiu $a1, %lo(D_80126D40) # addiu $a1, $a1, 0x6d40
/* 0A1818 800A0C18 8CB80000 */  lw    $t8, ($a1)
/* 0A181C 800A0C1C AC600000 */  sw    $zero, ($v1)
/* 0A1820 800A0C20 17000004 */  bnez  $t8, .L800A0C34
/* 0A1824 800A0C24 3C048012 */   lui   $a0, %hi(D_80126D7C) # $a0, 0x8012
/* 0A1828 800A0C28 94846D7C */  lhu   $a0, %lo(D_80126D7C)($a0)
/* 0A182C 800A0C2C 0C000741 */  jal   func_80001D04
/* 0A1830 800A0C30 00000000 */   nop   
.L800A0C34:
/* 0A1834 800A0C34 3C10800E */  lui   $s0, %hi(D_800E2770) # $s0, 0x800e
/* 0A1838 800A0C38 3C13800E */  lui   $s3, %hi(D_800E2790) # $s3, 0x800e
/* 0A183C 800A0C3C 26732790 */  addiu $s3, %lo(D_800E2790) # addiu $s3, $s3, 0x2790
/* 0A1840 800A0C40 26102770 */  addiu $s0, %lo(D_800E2770) # addiu $s0, $s0, 0x2770
/* 0A1844 800A0C44 2414007F */  li    $s4, 127
/* 0A1848 800A0C48 2412007F */  li    $s2, 127
.L800A0C4C:
/* 0A184C 800A0C4C 92060002 */  lbu   $a2, 2($s0)
/* 0A1850 800A0C50 00000000 */  nop   
/* 0A1854 800A0C54 10C0002C */  beqz  $a2, .L800A0D08
/* 0A1858 800A0C58 00000000 */   nop   
/* 0A185C 800A0C5C 8E050004 */  lw    $a1, 4($s0)
/* 0A1860 800A0C60 00000000 */  nop   
/* 0A1864 800A0C64 14A00007 */  bnez  $a1, .L800A0C84
/* 0A1868 800A0C68 00000000 */   nop   
/* 0A186C 800A0C6C 96040000 */  lhu   $a0, ($s0)
/* 0A1870 800A0C70 0C000741 */  jal   func_80001D04
/* 0A1874 800A0C74 26050004 */   addiu $a1, $s0, 4
/* 0A1878 800A0C78 92060002 */  lbu   $a2, 2($s0)
/* 0A187C 800A0C7C 8E050004 */  lw    $a1, 4($s0)
/* 0A1880 800A0C80 00000000 */  nop   
.L800A0C84:
/* 0A1884 800A0C84 96040000 */  lhu   $a0, ($s0)
/* 0A1888 800A0C88 0C0007EE */  jal   func_80001FB8
/* 0A188C 800A0C8C 00000000 */   nop   
/* 0A1890 800A0C90 82040003 */  lb    $a0, 3($s0)
/* 0A1894 800A0C94 00000000 */  nop   
/* 0A1898 800A0C98 1880000D */  blez  $a0, .L800A0CD0
/* 0A189C 800A0C9C 00000000 */   nop   
/* 0A18A0 800A0CA0 00910019 */  multu $a0, $s1
/* 0A18A4 800A0CA4 92030002 */  lbu   $v1, 2($s0)
/* 0A18A8 800A0CA8 00001012 */  mflo  $v0
/* 0A18AC 800A0CAC 0242C823 */  subu  $t9, $s2, $v0
/* 0A18B0 800A0CB0 0323082A */  slt   $at, $t9, $v1
/* 0A18B4 800A0CB4 14200003 */  bnez  $at, .L800A0CC4
/* 0A18B8 800A0CB8 00624021 */   addu  $t0, $v1, $v0
/* 0A18BC 800A0CBC 10000019 */  b     .L800A0D24
/* 0A18C0 800A0CC0 A2080002 */   sb    $t0, 2($s0)
.L800A0CC4:
/* 0A18C4 800A0CC4 A2000003 */  sb    $zero, 3($s0)
/* 0A18C8 800A0CC8 10000016 */  b     .L800A0D24
/* 0A18CC 800A0CCC A2140002 */   sb    $s4, 2($s0)
.L800A0CD0:
/* 0A18D0 800A0CD0 04810014 */  bgez  $a0, .L800A0D24
/* 0A18D4 800A0CD4 00000000 */   nop   
/* 0A18D8 800A0CD8 00910019 */  multu $a0, $s1
/* 0A18DC 800A0CDC 92030002 */  lbu   $v1, 2($s0)
/* 0A18E0 800A0CE0 00001012 */  mflo  $v0
/* 0A18E4 800A0CE4 00024823 */  negu  $t1, $v0
/* 0A18E8 800A0CE8 0123082A */  slt   $at, $t1, $v1
/* 0A18EC 800A0CEC 10200003 */  beqz  $at, .L800A0CFC
/* 0A18F0 800A0CF0 00625021 */   addu  $t2, $v1, $v0
/* 0A18F4 800A0CF4 1000000B */  b     .L800A0D24
/* 0A18F8 800A0CF8 A20A0002 */   sb    $t2, 2($s0)
.L800A0CFC:
/* 0A18FC 800A0CFC A2000003 */  sb    $zero, 3($s0)
/* 0A1900 800A0D00 10000008 */  b     .L800A0D24
/* 0A1904 800A0D04 A2000002 */   sb    $zero, 2($s0)
.L800A0D08:
/* 0A1908 800A0D08 8E050004 */  lw    $a1, 4($s0)
/* 0A190C 800A0D0C 00000000 */  nop   
/* 0A1910 800A0D10 10A00004 */  beqz  $a1, .L800A0D24
/* 0A1914 800A0D14 00000000 */   nop   
/* 0A1918 800A0D18 0C001223 */  jal   func_8000488C
/* 0A191C 800A0D1C 00A02025 */   move  $a0, $a1
/* 0A1920 800A0D20 AE000004 */  sw    $zero, 4($s0)
.L800A0D24:
/* 0A1924 800A0D24 26100010 */  addiu $s0, $s0, 0x10
/* 0A1928 800A0D28 1613FFC8 */  bne   $s0, $s3, .L800A0C4C
/* 0A192C 800A0D2C 00000000 */   nop   
/* 0A1930 800A0D30 3C038012 */  lui   $v1, %hi(D_80126D70) # $v1, 0x8012
/* 0A1934 800A0D34 24636D70 */  addiu $v1, %lo(D_80126D70) # addiu $v1, $v1, 0x6d70
/* 0A1938 800A0D38 906B0000 */  lbu   $t3, ($v1)
/* 0A193C 800A0D3C 3C0C800E */  lui   $t4, %hi(D_800E2770+2) # $t4, 0x800e
/* 0A1940 800A0D40 11600018 */  beqz  $t3, .L800A0DA4
/* 0A1944 800A0D44 8FBF002C */   lw    $ra, 0x2c($sp)
/* 0A1948 800A0D48 918C2772 */  lbu   $t4, %lo(D_800E2770+2)($t4)
/* 0A194C 800A0D4C 3C028012 */  lui   $v0, %hi(D_80126D37) # $v0, 0x8012
/* 0A1950 800A0D50 15800014 */  bnez  $t4, .L800A0DA4
/* 0A1954 800A0D54 8FBF002C */   lw    $ra, 0x2c($sp)
/* 0A1958 800A0D58 A0600000 */  sb    $zero, ($v1)
/* 0A195C 800A0D5C 90426D37 */  lbu   $v0, %lo(D_80126D37)($v0)
/* 0A1960 800A0D60 24010001 */  li    $at, 1
/* 0A1964 800A0D64 14410006 */  bne   $v0, $at, .L800A0D80
/* 0A1968 800A0D68 24010002 */   li    $at, 2
/* 0A196C 800A0D6C 0C000C63 */  jal   set_sound_channel_count
/* 0A1970 800A0D70 24040008 */   li    $a0, 8
/* 0A1974 800A0D74 1000000B */  b     .L800A0DA4
/* 0A1978 800A0D78 8FBF002C */   lw    $ra, 0x2c($sp)
/* 0A197C 800A0D7C 24010002 */  li    $at, 2
.L800A0D80:
/* 0A1980 800A0D80 14410005 */  bne   $v0, $at, .L800A0D98
/* 0A1984 800A0D84 00000000 */   nop   
/* 0A1988 800A0D88 0C000C63 */  jal   set_sound_channel_count
/* 0A198C 800A0D8C 2404000C */   li    $a0, 12
/* 0A1990 800A0D90 10000004 */  b     .L800A0DA4
/* 0A1994 800A0D94 8FBF002C */   lw    $ra, 0x2c($sp)
.L800A0D98:
/* 0A1998 800A0D98 0C000C63 */  jal   set_sound_channel_count
/* 0A199C 800A0D9C 24040010 */   li    $a0, 16
/* 0A19A0 800A0DA0 8FBF002C */  lw    $ra, 0x2c($sp)
.L800A0DA4:
/* 0A19A4 800A0DA4 8FB00018 */  lw    $s0, 0x18($sp)
/* 0A19A8 800A0DA8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0A19AC 800A0DAC 8FB20020 */  lw    $s2, 0x20($sp)
/* 0A19B0 800A0DB0 8FB30024 */  lw    $s3, 0x24($sp)
/* 0A19B4 800A0DB4 8FB40028 */  lw    $s4, 0x28($sp)
/* 0A19B8 800A0DB8 03E00008 */  jr    $ra
/* 0A19BC 800A0DBC 27BD0030 */   addiu $sp, $sp, 0x30

