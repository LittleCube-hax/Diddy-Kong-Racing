.late_rodata
glabel jpt_800E5C0C
.word L80023FA4, L80023FB8, L80023FCC, L80024108, L80023FE0, L8002401C, L80024570, L80024570, L80024030, L80024044, L80024058, L8002406C, L800240A8, L800240BC, L800240CC, L800240E0, L80024108, L80024570, L80024570, L80024570, L80024008, L800240F4, L80024570, L80023FF4, L8002411C, L80024570, L80024130, L80024144, L80024080, L80024158, L8002416C, L80024570, L80024570, L80024570, L80024180, L800241A8, L800241BC, L800241D0, L800241E4, L80024094, L80024570, L80024570, L80024570, L800241F8, L8002420C, L80024220, L80024570, L80024570, L80024234, L8002425C, L80024270, L80024284, L80024298, L800242AC, L800242C0, L800242D4, L800242E8, L80024570, L800242FC, L8002430C, L80024320, L80024570, L80024334, L80024348, L8002435C, L80024194, L80024370, L80024384, L80024398, L80024570, L80024398, L800243C0, L800243D4, L800243E8, L800243FC, L80024410, L80024424, L80024438, L8002444C, L80024234, L80024460, L80024570, L80024474, L80024234, L80024234, L80024570, L80024488, L80024570, L8002449C, L80024570, L80024570, L800242D4, L800244B0, L80024570, L800243AC, L800243AC, L800244C4, L80024570, L800244EC, L800243AC, L800243AC, L80024398, L80024398, L800244D8, L80024570, L80024570, L80024500, L80024514, L80024488, L80024528, L80024570, L8002453C, L80024570, L80024550, L80024500, L80024564, L80024570, L80024248

.text
glabel func_80023F48
/* 024B48 80023F48 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 024B4C 80023F4C AFBF0014 */  sw    $ra, 0x14($sp)
/* 024B50 80023F50 00803025 */  move  $a2, $a0
/* 024B54 80023F54 00A03825 */  move  $a3, $a1
/* 024B58 80023F58 84C5004A */  lh    $a1, 0x4a($a2)
/* 024B5C 80023F5C AFA7001C */  sw    $a3, 0x1c($sp)
/* 024B60 80023F60 AFA60018 */  sw    $a2, 0x18($sp)
/* 024B64 80023F64 0C02DDAE */  jal   func_800B76B8
/* 024B68 80023F68 24040001 */   li    $a0, 1
/* 024B6C 80023F6C 8FA60018 */  lw    $a2, 0x18($sp)
/* 024B70 80023F70 8FA7001C */  lw    $a3, 0x1c($sp)
/* 024B74 80023F74 84CE0048 */  lh    $t6, 0x48($a2)
/* 024B78 80023F78 00000000 */  nop   
/* 024B7C 80023F7C 25CFFFFE */  addiu $t7, $t6, -2
/* 024B80 80023F80 2DE10076 */  sltiu $at, $t7, 0x76
/* 024B84 80023F84 1020017A */  beqz  $at, .L80024570
/* 024B88 80023F88 000F7880 */   sll   $t7, $t7, 2
/* 024B8C 80023F8C 3C01800E */  lui   $at, %hi(jpt_800E5C0C) # $at, 0x800e
/* 024B90 80023F90 002F0821 */  addu  $at, $at, $t7
/* 024B94 80023F94 8C2F5C0C */  lw    $t7, %lo(jpt_800E5C0C)($at)
/* 024B98 80023F98 00000000 */  nop   
/* 024B9C 80023F9C 01E00008 */  jr    $t7
/* 024BA0 80023FA0 00000000 */   nop   
glabel L80023FA4
/* 024BA4 80023FA4 00C02025 */  move  $a0, $a2
/* 024BA8 80023FA8 0C00CF74 */  jal   func_80033DD0
/* 024BAC 80023FAC 00E02825 */   move  $a1, $a3
/* 024BB0 80023FB0 10000170 */  b     .L80024574
/* 024BB4 80023FB4 24040001 */   li    $a0, 1
glabel L80023FB8
/* 024BB8 80023FB8 00C02025 */  move  $a0, $a2
/* 024BBC 80023FBC 0C00DC35 */  jal   func_800370D4
/* 024BC0 80023FC0 00E02825 */   move  $a1, $a3
/* 024BC4 80023FC4 1000016B */  b     .L80024574
/* 024BC8 80023FC8 24040001 */   li    $a0, 1
glabel L80023FCC
/* 024BCC 80023FCC 00C02025 */  move  $a0, $a2
/* 024BD0 80023FD0 0C00DDF9 */  jal   func_800377E4
/* 024BD4 80023FD4 00E02825 */   move  $a1, $a3
/* 024BD8 80023FD8 10000166 */  b     .L80024574
/* 024BDC 80023FDC 24040001 */   li    $a0, 1
glabel L80023FE0
/* 024BE0 80023FE0 00C02025 */  move  $a0, $a2
/* 024BE4 80023FE4 0C00E26E */  jal   func_800389B8
/* 024BE8 80023FE8 00E02825 */   move  $a1, $a3
/* 024BEC 80023FEC 10000161 */  b     .L80024574
/* 024BF0 80023FF0 24040001 */   li    $a0, 1
glabel L80023FF4
/* 024BF4 80023FF4 00C02025 */  move  $a0, $a2
/* 024BF8 80023FF8 0C00E29E */  jal   func_80038A78
/* 024BFC 80023FFC 00E02825 */   move  $a1, $a3
/* 024C00 80024000 1000015C */  b     .L80024574
/* 024C04 80024004 24040001 */   li    $a0, 1
glabel L80024008
/* 024C08 80024008 00C02025 */  move  $a0, $a2
/* 024C0C 8002400C 0C00E2FD */  jal   func_80038BF4
/* 024C10 80024010 00E02825 */   move  $a1, $a3
/* 024C14 80024014 10000157 */  b     .L80024574
/* 024C18 80024018 24040001 */   li    $a0, 1
glabel L8002401C
/* 024C1C 8002401C 00C02025 */  move  $a0, $a2
/* 024C20 80024020 0C00E3D6 */  jal   func_80038F58
/* 024C24 80024024 00E02825 */   move  $a1, $a3
/* 024C28 80024028 10000152 */  b     .L80024574
/* 024C2C 8002402C 24040001 */   li    $a0, 1
glabel L80024030
/* 024C30 80024030 00C02025 */  move  $a0, $a2
/* 024C34 80024034 0C00E461 */  jal   func_80039184
/* 024C38 80024038 00E02825 */   move  $a1, $a3
/* 024C3C 8002403C 1000014D */  b     .L80024574
/* 024C40 80024040 24040001 */   li    $a0, 1
glabel L80024044
/* 024C44 80024044 00C02025 */  move  $a0, $a2
/* 024C48 80024048 0C00E46F */  jal   func_800391BC
/* 024C4C 8002404C 00E02825 */   move  $a1, $a3
/* 024C50 80024050 10000148 */  b     .L80024574
/* 024C54 80024054 24040001 */   li    $a0, 1
glabel L80024058
/* 024C58 80024058 00C02025 */  move  $a0, $a2
/* 024C5C 8002405C 0C00E47F */  jal   func_800391FC
/* 024C60 80024060 00E02825 */   move  $a1, $a3
/* 024C64 80024064 10000143 */  b     .L80024574
/* 024C68 80024068 24040001 */   li    $a0, 1
glabel L8002406C
/* 024C6C 8002406C 00C02025 */  move  $a0, $a2
/* 024C70 80024070 0C00EB4A */  jal   func_8003AD28
/* 024C74 80024074 00E02825 */   move  $a1, $a3
/* 024C78 80024078 1000013E */  b     .L80024574
/* 024C7C 8002407C 24040001 */   li    $a0, 1
glabel L80024080
/* 024C80 80024080 00C02025 */  move  $a0, $a2
/* 024C84 80024084 0C00EB94 */  jal   func_8003AE50
/* 024C88 80024088 00E02825 */   move  $a1, $a3
/* 024C8C 8002408C 10000139 */  b     .L80024574
/* 024C90 80024090 24040001 */   li    $a0, 1
glabel L80024094
/* 024C94 80024094 00C02025 */  move  $a0, $a2
/* 024C98 80024098 0C00EC5D */  jal   func_8003B174
/* 024C9C 8002409C 00E02825 */   move  $a1, $a3
/* 024CA0 800240A0 10000134 */  b     .L80024574
/* 024CA4 800240A4 24040001 */   li    $a0, 1
glabel L800240A8
/* 024CA8 800240A8 00C02025 */  move  $a0, $a2
/* 024CAC 800240AC 0C00EE62 */  jal   func_8003B988
/* 024CB0 800240B0 00E02825 */   move  $a1, $a3
/* 024CB4 800240B4 1000012F */  b     .L80024574
/* 024CB8 800240B8 24040001 */   li    $a0, 1
glabel L800240BC
/* 024CBC 800240BC 0C00C29D */  jal   func_80030A74
/* 024CC0 800240C0 00C02025 */   move  $a0, $a2
/* 024CC4 800240C4 1000012B */  b     .L80024574
/* 024CC8 800240C8 24040001 */   li    $a0, 1
glabel L800240CC
/* 024CCC 800240CC 00C02025 */  move  $a0, $a2
/* 024CD0 800240D0 0C00F40B */  jal   func_8003D02C
/* 024CD4 800240D4 00E02825 */   move  $a1, $a3
/* 024CD8 800240D8 10000126 */  b     .L80024574
/* 024CDC 800240DC 24040001 */   li    $a0, 1
glabel L800240E0
/* 024CE0 800240E0 00C02025 */  move  $a0, $a2
/* 024CE4 800240E4 0C00F850 */  jal   func_8003E140
/* 024CE8 800240E8 00E02825 */   move  $a1, $a3
/* 024CEC 800240EC 10000121 */  b     .L80024574
/* 024CF0 800240F0 24040001 */   li    $a0, 1
glabel L800240F4
/* 024CF4 800240F4 00C02025 */  move  $a0, $a2
/* 024CF8 800240F8 0C00F96F */  jal   func_8003E5BC
/* 024CFC 800240FC 00E02825 */   move  $a1, $a3
/* 024D00 80024100 1000011C */  b     .L80024574
/* 024D04 80024104 24040001 */   li    $a0, 1
glabel L80024108
/* 024D08 80024108 00C02025 */  move  $a0, $a2
/* 024D0C 8002410C 0C00F98C */  jal   func_8003E630
/* 024D10 80024110 00E02825 */   move  $a1, $a3
/* 024D14 80024114 10000117 */  b     .L80024574
/* 024D18 80024118 24040001 */   li    $a0, 1
glabel L8002411C
/* 024D1C 8002411C 00C02025 */  move  $a0, $a2
/* 024D20 80024120 0C00F3E6 */  jal   func_8003CF98
/* 024D24 80024124 00E02825 */   move  $a1, $a3
/* 024D28 80024128 10000112 */  b     .L80024574
/* 024D2C 8002412C 24040001 */   li    $a0, 1
glabel L80024130
/* 024D30 80024130 00C02025 */  move  $a0, $a2
/* 024D34 80024134 0C00D2D3 */  jal   func_80034B4C
/* 024D38 80024138 00E02825 */   move  $a1, $a3
/* 024D3C 8002413C 1000010D */  b     .L80024574
/* 024D40 80024140 24040001 */   li    $a0, 1
glabel L80024144
/* 024D44 80024144 00C02025 */  move  $a0, $a2
/* 024D48 80024148 0C010052 */  jal   func_80040148
/* 024D4C 8002414C 00E02825 */   move  $a1, $a3
/* 024D50 80024150 10000108 */  b     .L80024574
/* 024D54 80024154 24040001 */   li    $a0, 1
glabel L80024158
/* 024D58 80024158 00C02025 */  move  $a0, $a2
/* 024D5C 8002415C 0C00D878 */  jal   func_800361E0
/* 024D60 80024160 00E02825 */   move  $a1, $a3
/* 024D64 80024164 10000103 */  b     .L80024574
/* 024D68 80024168 24040001 */   li    $a0, 1
glabel L8002416C
/* 024D6C 8002416C 00C02025 */  move  $a0, $a2
/* 024D70 80024170 0C00F568 */  jal   func_8003D5A0
/* 024D74 80024174 00E02825 */   move  $a1, $a3
/* 024D78 80024178 100000FE */  b     .L80024574
/* 024D7C 8002417C 24040001 */   li    $a0, 1
glabel L80024180
/* 024D80 80024180 00C02025 */  move  $a0, $a2
/* 024D84 80024184 0C010112 */  jal   func_80040448
/* 024D88 80024188 00E02825 */   move  $a1, $a3
/* 024D8C 8002418C 100000F9 */  b     .L80024574
/* 024D90 80024190 24040001 */   li    $a0, 1
glabel L80024194
/* 024D94 80024194 00C02025 */  move  $a0, $a2
/* 024D98 80024198 0C01015C */  jal   func_80040570
/* 024D9C 8002419C 00E02825 */   move  $a1, $a3
/* 024DA0 800241A0 100000F4 */  b     .L80024574
/* 024DA4 800241A4 24040001 */   li    $a0, 1
glabel L800241A8
/* 024DA8 800241A8 00C02025 */  move  $a0, $a2
/* 024DAC 800241AC 0C010208 */  jal   func_80040820
/* 024DB0 800241B0 00E02825 */   move  $a1, $a3
/* 024DB4 800241B4 100000EF */  b     .L80024574
/* 024DB8 800241B8 24040001 */   li    $a0, 1
glabel L800241BC
/* 024DBC 800241BC 00C02025 */  move  $a0, $a2
/* 024DC0 800241C0 0C00F29A */  jal   func_8003CA68
/* 024DC4 800241C4 00E02825 */   move  $a1, $a3
/* 024DC8 800241C8 100000EA */  b     .L80024574
/* 024DCC 800241CC 24040001 */   li    $a0, 1
glabel L800241D0
/* 024DD0 800241D0 00C02025 */  move  $a0, $a2
/* 024DD4 800241D4 0C00F3A8 */  jal   func_8003CEA0
/* 024DD8 800241D8 00E02825 */   move  $a1, $a3
/* 024DDC 800241DC 100000E5 */  b     .L80024574
/* 024DE0 800241E0 24040001 */   li    $a0, 1
glabel L800241E4
/* 024DE4 800241E4 00C02025 */  move  $a0, $a2
/* 024DE8 800241E8 0C00F3C3 */  jal   func_8003CF0C
/* 024DEC 800241EC 00E02825 */   move  $a1, $a3
/* 024DF0 800241F0 100000E0 */  b     .L80024574
/* 024DF4 800241F4 24040001 */   li    $a0, 1
glabel L800241F8
/* 024DF8 800241F8 00C02025 */  move  $a0, $a2
/* 024DFC 800241FC 0C00D498 */  jal   func_80035260
/* 024E00 80024200 00E02825 */   move  $a1, $a3
/* 024E04 80024204 100000DB */  b     .L80024574
/* 024E08 80024208 24040001 */   li    $a0, 1
glabel L8002420C
/* 024E0C 8002420C 00C02025 */  move  $a0, $a2
/* 024E10 80024210 0C00D593 */  jal   func_8003564C
/* 024E14 80024214 00E02825 */   move  $a1, $a3
/* 024E18 80024218 100000D6 */  b     .L80024574
/* 024E1C 8002421C 24040001 */   li    $a0, 1
glabel L80024220
/* 024E20 80024220 00C02025 */  move  $a0, $a2
/* 024E24 80024224 0C00D7DB */  jal   func_80035F6C
/* 024E28 80024228 00E02825 */   move  $a1, $a3
/* 024E2C 8002422C 100000D1 */  b     .L80024574
/* 024E30 80024230 24040001 */   li    $a0, 1
glabel L80024234
/* 024E34 80024234 00C02025 */  move  $a0, $a2
/* 024E38 80024238 0C00DF3A */  jal   func_80037CE8
/* 024E3C 8002423C 00E02825 */   move  $a1, $a3
/* 024E40 80024240 100000CC */  b     .L80024574
/* 024E44 80024244 24040001 */   li    $a0, 1
glabel L80024248
/* 024E48 80024248 00C02025 */  move  $a0, $a2
/* 024E4C 8002424C 0C010B34 */  jal   func_80042CD0
/* 024E50 80024250 00E02825 */   move  $a1, $a3
/* 024E54 80024254 100000C7 */  b     .L80024574
/* 024E58 80024258 24040001 */   li    $a0, 1
glabel L8002425C
/* 024E5C 8002425C 00C02025 */  move  $a0, $a2
/* 024E60 80024260 0C00E1C4 */  jal   func_80038710
/* 024E64 80024264 00E02825 */   move  $a1, $a3
/* 024E68 80024268 100000C2 */  b     .L80024574
/* 024E6C 8002426C 24040001 */   li    $a0, 1
glabel L80024270
/* 024E70 80024270 00C02025 */  move  $a0, $a2
/* 024E74 80024274 0C00E235 */  jal   func_800388D4
/* 024E78 80024278 00E02825 */   move  $a1, $a3
/* 024E7C 8002427C 100000BD */  b     .L80024574
/* 024E80 80024280 24040001 */   li    $a0, 1
glabel L80024284
/* 024E84 80024284 00C02025 */  move  $a0, $a2
/* 024E88 80024288 0C00E1F3 */  jal   func_800387CC
/* 024E8C 8002428C 00E02825 */   move  $a1, $a3
/* 024E90 80024290 100000B8 */  b     .L80024574
/* 024E94 80024294 24040001 */   li    $a0, 1
glabel L80024298
/* 024E98 80024298 00C02025 */  move  $a0, $a2
/* 024E9C 8002429C 0C00E0CF */  jal   func_8003833C
/* 024EA0 800242A0 00E02825 */   move  $a1, $a3
/* 024EA4 800242A4 100000B3 */  b     .L80024574
/* 024EA8 800242A8 24040001 */   li    $a0, 1
glabel L800242AC
/* 024EAC 800242AC 00C02025 */  move  $a0, $a2
/* 024EB0 800242B0 0C00F1E9 */  jal   func_8003C7A4
/* 024EB4 800242B4 00E02825 */   move  $a1, $a3
/* 024EB8 800242B8 100000AE */  b     .L80024574
/* 024EBC 800242BC 24040001 */   li    $a0, 1
glabel L800242C0
/* 024EC0 800242C0 00C02025 */  move  $a0, $a2
/* 024EC4 800242C4 0C00E03E */  jal   func_800380F8
/* 024EC8 800242C8 00E02825 */   move  $a1, $a3
/* 024ECC 800242CC 100000A9 */  b     .L80024574
/* 024ED0 800242D0 24040001 */   li    $a0, 1
glabel L800242D4
/* 024ED4 800242D4 00C02025 */  move  $a0, $a2
/* 024ED8 800242D8 0C00D65B */  jal   func_8003596C
/* 024EDC 800242DC 00E02825 */   move  $a1, $a3
/* 024EE0 800242E0 100000A4 */  b     .L80024574
/* 024EE4 800242E4 24040001 */   li    $a0, 1
glabel L800242E8
/* 024EE8 800242E8 00C02025 */  move  $a0, $a2
/* 024EEC 800242EC 0C00D78D */  jal   func_80035E34
/* 024EF0 800242F0 00E02825 */   move  $a1, $a3
/* 024EF4 800242F4 1000009F */  b     .L80024574
/* 024EF8 800242F8 24040001 */   li    $a0, 1
glabel L800242FC
/* 024EFC 800242FC 0C02FFF7 */  jal   func_800BFFDC
/* 024F00 80024300 00C02025 */   move  $a0, $a2
/* 024F04 80024304 1000009B */  b     .L80024574
/* 024F08 80024308 24040001 */   li    $a0, 1
glabel L8002430C
/* 024F0C 8002430C 00C02025 */  move  $a0, $a2
/* 024F10 80024310 0C010315 */  jal   func_80040C54
/* 024F14 80024314 00E02825 */   move  $a1, $a3
/* 024F18 80024318 10000096 */  b     .L80024574
/* 024F1C 8002431C 24040001 */   li    $a0, 1
glabel L80024320
/* 024F20 80024320 00C02025 */  move  $a0, $a2
/* 024F24 80024324 0C00E4CC */  jal   func_80039330
/* 024F28 80024328 00E02825 */   move  $a1, $a3
/* 024F2C 8002432C 10000091 */  b     .L80024574
/* 024F30 80024330 24040001 */   li    $a0, 1
glabel L80024334
/* 024F34 80024334 00C02025 */  move  $a0, $a2
/* 024F38 80024338 0C00F7C2 */  jal   obj_loop_world_key
/* 024F3C 8002433C 00E02825 */   move  $a1, $a3
/* 024F40 80024340 1000008C */  b     .L80024574
/* 024F44 80024344 24040001 */   li    $a0, 1
glabel L80024348
/* 024F48 80024348 00C02025 */  move  $a0, $a2
/* 024F4C 8002434C 0C00F4FF */  jal   func_8003D3FC
/* 024F50 80024350 00E02825 */   move  $a1, $a3
/* 024F54 80024354 10000087 */  b     .L80024574
/* 024F58 80024358 24040001 */   li    $a0, 1
glabel L8002435C
/* 024F5C 8002435C 00C02025 */  move  $a0, $a2
/* 024F60 80024360 0C00F416 */  jal   func_8003D058
/* 024F64 80024364 00E02825 */   move  $a1, $a3
/* 024F68 80024368 10000082 */  b     .L80024574
/* 024F6C 8002436C 24040001 */   li    $a0, 1
glabel L80024370
/* 024F70 80024370 00C02025 */  move  $a0, $a2
/* 024F74 80024374 0C00DD65 */  jal   func_80037594
/* 024F78 80024378 00E02825 */   move  $a1, $a3
/* 024F7C 8002437C 1000007D */  b     .L80024574
/* 024F80 80024380 24040001 */   li    $a0, 1
glabel L80024384
/* 024F84 80024384 00C02025 */  move  $a0, $a2
/* 024F88 80024388 0C00DD8F */  jal   func_8003763C
/* 024F8C 8002438C 00E02825 */   move  $a1, $a3
/* 024F90 80024390 10000078 */  b     .L80024574
/* 024F94 80024394 24040001 */   li    $a0, 1
glabel L80024398
/* 024F98 80024398 00C02025 */  move  $a0, $a2
/* 024F9C 8002439C 0C00E070 */  jal   func_800381C0
/* 024FA0 800243A0 00E02825 */   move  $a1, $a3
/* 024FA4 800243A4 10000073 */  b     .L80024574
/* 024FA8 800243A8 24040001 */   li    $a0, 1
glabel L800243AC
/* 024FAC 800243AC 00C02025 */  move  $a0, $a2
/* 024FB0 800243B0 0C00E09F */  jal   func_8003827C
/* 024FB4 800243B4 00E02825 */   move  $a1, $a3
/* 024FB8 800243B8 1000006E */  b     .L80024574
/* 024FBC 800243BC 24040001 */   li    $a0, 1
glabel L800243C0
/* 024FC0 800243C0 00C02025 */  move  $a0, $a2
/* 024FC4 800243C4 0C00D2DD */  jal   func_80034B74
/* 024FC8 800243C8 00E02825 */   move  $a1, $a3
/* 024FCC 800243CC 10000069 */  b     .L80024574
/* 024FD0 800243D0 24040001 */   li    $a0, 1
glabel L800243D4
/* 024FD4 800243D4 00C02025 */  move  $a0, $a2
/* 024FD8 800243D8 0C00D3A7 */  jal   func_80034E9C
/* 024FDC 800243DC 00E02825 */   move  $a1, $a3
/* 024FE0 800243E0 10000064 */  b     .L80024574
/* 024FE4 800243E4 24040001 */   li    $a0, 1
glabel L800243E8
/* 024FE8 800243E8 00C02025 */  move  $a0, $a2
/* 024FEC 800243EC 0C010824 */  jal   func_80042090
/* 024FF0 800243F0 00E02825 */   move  $a1, $a3
/* 024FF4 800243F4 1000005F */  b     .L80024574
/* 024FF8 800243F8 24040001 */   li    $a0, 1
glabel L800243FC
/* 024FFC 800243FC 00C02025 */  move  $a0, $a2
/* 025000 80024400 0C00F4AE */  jal   func_8003D2B8
/* 025004 80024404 00E02825 */   move  $a1, $a3
/* 025008 80024408 1000005A */  b     .L80024574
/* 02500C 8002440C 24040001 */   li    $a0, 1
glabel L80024410
/* 025010 80024410 00C02025 */  move  $a0, $a2
/* 025014 80024414 0C00ED2F */  jal   func_8003B4BC
/* 025018 80024418 00E02825 */   move  $a1, $a3
/* 02501C 8002441C 10000055 */  b     .L80024574
/* 025020 80024420 24040001 */   li    $a0, 1
glabel L80024424
/* 025024 80024424 00C02025 */  move  $a0, $a2
/* 025028 80024428 0C00D218 */  jal   func_80034860
/* 02502C 8002442C 00E02825 */   move  $a1, $a3
/* 025030 80024430 10000050 */  b     .L80024574
/* 025034 80024434 24040001 */   li    $a0, 1
glabel L80024438
/* 025038 80024438 00C02025 */  move  $a0, $a2
/* 02503C 8002443C 0C00D168 */  jal   func_800345A0
/* 025040 80024440 00E02825 */   move  $a1, $a3
/* 025044 80024444 1000004B */  b     .L80024574
/* 025048 80024448 24040001 */   li    $a0, 1
glabel L8002444C
/* 02504C 8002444C 00C02025 */  move  $a0, $a2
/* 025050 80024450 0C00EB28 */  jal   func_8003ACA0
/* 025054 80024454 00E02825 */   move  $a1, $a3
/* 025058 80024458 10000046 */  b     .L80024574
/* 02505C 8002445C 24040001 */   li    $a0, 1
glabel L80024460
/* 025060 80024460 00C02025 */  move  $a0, $a2
/* 025064 80024464 0C00D714 */  jal   func_80035C50
/* 025068 80024468 00E02825 */   move  $a1, $a3
/* 02506C 8002446C 10000041 */  b     .L80024574
/* 025070 80024470 24040001 */   li    $a0, 1
glabel L80024474
/* 025074 80024474 00C02025 */  move  $a0, $a2
/* 025078 80024478 0C00DF5E */  jal   func_80037D78
/* 02507C 8002447C 00E02825 */   move  $a1, $a3
/* 025080 80024480 1000003C */  b     .L80024574
/* 025084 80024484 24040001 */   li    $a0, 1
glabel L80024488
/* 025088 80024488 00C02025 */  move  $a0, $a2
/* 02508C 8002448C 0C00F745 */  jal   func_8003DD14
/* 025090 80024490 00E02825 */   move  $a1, $a3
/* 025094 80024494 10000037 */  b     .L80024574
/* 025098 80024498 24040001 */   li    $a0, 1
glabel L8002449C
/* 02509C 8002449C 00C02025 */  move  $a0, $a2
/* 0250A0 800244A0 0C00E2B5 */  jal   func_80038AD4
/* 0250A4 800244A4 00E02825 */   move  $a1, $a3
/* 0250A8 800244A8 10000032 */  b     .L80024574
/* 0250AC 800244AC 24040001 */   li    $a0, 1
glabel L800244B0
/* 0250B0 800244B0 00C02025 */  move  $a0, $a2
/* 0250B4 800244B4 0C010858 */  jal   func_80042160
/* 0250B8 800244B8 00E02825 */   move  $a1, $a3
/* 0250BC 800244BC 1000002D */  b     .L80024574
/* 0250C0 800244C0 24040001 */   li    $a0, 1
glabel L800244C4
/* 0250C4 800244C4 00C02025 */  move  $a0, $a2
/* 0250C8 800244C8 0C00E371 */  jal   func_80038DC4
/* 0250CC 800244CC 00E02825 */   move  $a1, $a3
/* 0250D0 800244D0 10000028 */  b     .L80024574
/* 0250D4 800244D4 24040001 */   li    $a0, 1
glabel L800244D8
/* 0250D8 800244D8 00C02025 */  move  $a0, $a2
/* 0250DC 800244DC 0C01085E */  jal   func_80042178
/* 0250E0 800244E0 00E02825 */   move  $a1, $a3
/* 0250E4 800244E4 10000023 */  b     .L80024574
/* 0250E8 800244E8 24040001 */   li    $a0, 1
glabel L800244EC
/* 0250EC 800244EC 00C02025 */  move  $a0, $a2
/* 0250F0 800244F0 0C00D5F5 */  jal   func_800357D4
/* 0250F4 800244F4 00E02825 */   move  $a1, $a3
/* 0250F8 800244F8 1000001E */  b     .L80024574
/* 0250FC 800244FC 24040001 */   li    $a0, 1
glabel L80024500
/* 025100 80024500 00C02025 */  move  $a0, $a2
/* 025104 80024504 0C00CFD8 */  jal   func_80033F60
/* 025108 80024508 00E02825 */   move  $a1, $a3
/* 02510C 8002450C 10000019 */  b     .L80024574
/* 025110 80024510 24040001 */   li    $a0, 1
glabel L80024514
/* 025114 80024514 00C02025 */  move  $a0, $a2
/* 025118 80024518 0C0108BC */  jal   func_800422F0
/* 02511C 8002451C 00E02825 */   move  $a1, $a3
/* 025120 80024520 10000014 */  b     .L80024574
/* 025124 80024524 24040001 */   li    $a0, 1
glabel L80024528
/* 025128 80024528 00C02025 */  move  $a0, $a2
/* 02512C 8002452C 0C00F0B9 */  jal   func_8003C2E4
/* 025130 80024530 00E02825 */   move  $a1, $a3
/* 025134 80024534 1000000F */  b     .L80024574
/* 025138 80024538 24040001 */   li    $a0, 1
glabel L8002453C
/* 02513C 8002453C 00C02025 */  move  $a0, $a2
/* 025140 80024540 0C00DF42 */  jal   func_80037D08
/* 025144 80024544 00E02825 */   move  $a1, $a3
/* 025148 80024548 1000000A */  b     .L80024574
/* 02514C 8002454C 24040001 */   li    $a0, 1
glabel L80024550
/* 025150 80024550 00C02025 */  move  $a0, $a2
/* 025154 80024554 0C010A66 */  jal   func_80042998
/* 025158 80024558 00E02825 */   move  $a1, $a3
/* 02515C 8002455C 10000005 */  b     .L80024574
/* 025160 80024560 24040001 */   li    $a0, 1
glabel L80024564
/* 025164 80024564 00C02025 */  move  $a0, $a2
/* 025168 80024568 0C010AA4 */  jal   func_80042A90
/* 02516C 8002456C 00E02825 */   move  $a1, $a3
.L80024570:
glabel L80024570
/* 025170 80024570 24040001 */  li    $a0, 1
.L80024574:
/* 025174 80024574 0C02DDAE */  jal   func_800B76B8
/* 025178 80024578 2405FFFF */   li    $a1, -1
/* 02517C 8002457C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 025180 80024580 27BD0018 */  addiu $sp, $sp, 0x18
/* 025184 80024584 03E00008 */  jr    $ra
/* 025188 80024588 00000000 */   nop   

/* 02518C 8002458C 03E00008 */  jr    $ra
/* 025190 80024590 AFA40000 */   sw    $a0, ($sp)

