glabel func_800235DC
/* 0241DC 800235DC 8C8E0040 */  lw    $t6, 0x40($a0)
/* 0241E0 800235E0 AC850064 */  sw    $a1, 0x64($a0)
/* 0241E4 800235E4 81CF0054 */  lb    $t7, 0x54($t6)
/* 0241E8 800235E8 00001825 */  move  $v1, $zero
/* 0241EC 800235EC 25F8FFFF */  addiu $t8, $t7, -1
/* 0241F0 800235F0 2F010077 */  sltiu $at, $t8, 0x77
/* 0241F4 800235F4 102000AC */  beqz  $at, .L800238A8
/* 0241F8 800235F8 0018C080 */   sll   $t8, $t8, 2
/* 0241FC 800235FC 3C01800E */  lui   $at, 0x800e
/* 024200 80023600 00380821 */  addu  $at, $at, $t8
/* 024204 80023604 8C385688 */  lw    $t8, 0x5688($at)
/* 024208 80023608 00000000 */  nop   
/* 02420C 8002360C 03000008 */  jr    $t8
/* 024210 80023610 00000000 */   nop   
/* 024214 80023614 24030224 */  li    $v1, 548
/* 024218 80023618 2401FFFC */  li    $at, -4
/* 02421C 8002361C 00611024 */  and   $v0, $v1, $at
/* 024220 80023620 03E00008 */  jr    $ra
/* 024224 80023624 24420004 */   addiu $v0, $v0, 4

/* 024228 80023628 24030018 */  li    $v1, 24
/* 02422C 8002362C 2401FFFC */  li    $at, -4
/* 024230 80023630 00611024 */  and   $v0, $v1, $at
/* 024234 80023634 03E00008 */  jr    $ra
/* 024238 80023638 24420004 */   addiu $v0, $v0, 4

/* 02423C 8002363C 24030018 */  li    $v1, 24
/* 024240 80023640 2401FFFC */  li    $at, -4
/* 024244 80023644 00611024 */  and   $v0, $v1, $at
/* 024248 80023648 03E00008 */  jr    $ra
/* 02424C 8002364C 24420004 */   addiu $v0, $v0, 4

/* 024250 80023650 2403000C */  li    $v1, 12
/* 024254 80023654 2401FFFC */  li    $at, -4
/* 024258 80023658 00611024 */  and   $v0, $v1, $at
/* 02425C 8002365C 03E00008 */  jr    $ra
/* 024260 80023660 24420004 */   addiu $v0, $v0, 4

/* 024264 80023664 24030010 */  li    $v1, 16
/* 024268 80023668 2401FFFC */  li    $at, -4
/* 02426C 8002366C 00611024 */  and   $v0, $v1, $at
/* 024270 80023670 03E00008 */  jr    $ra
/* 024274 80023674 24420004 */   addiu $v0, $v0, 4

/* 024278 80023678 24030014 */  li    $v1, 20
/* 02427C 8002367C 2401FFFC */  li    $at, -4
/* 024280 80023680 00611024 */  and   $v0, $v1, $at
/* 024284 80023684 03E00008 */  jr    $ra
/* 024288 80023688 24420004 */   addiu $v0, $v0, 4

/* 02428C 8002368C 2403001C */  li    $v1, 28
/* 024290 80023690 2401FFFC */  li    $at, -4
/* 024294 80023694 00611024 */  and   $v0, $v1, $at
/* 024298 80023698 03E00008 */  jr    $ra
/* 02429C 8002369C 24420004 */   addiu $v0, $v0, 4

/* 0242A0 800236A0 24030018 */  li    $v1, 24
/* 0242A4 800236A4 2401FFFC */  li    $at, -4
/* 0242A8 800236A8 00611024 */  and   $v0, $v1, $at
/* 0242AC 800236AC 03E00008 */  jr    $ra
/* 0242B0 800236B0 24420004 */   addiu $v0, $v0, 4

/* 0242B4 800236B4 24030006 */  li    $v1, 6
/* 0242B8 800236B8 2401FFFC */  li    $at, -4
/* 0242BC 800236BC 00611024 */  and   $v0, $v1, $at
/* 0242C0 800236C0 03E00008 */  jr    $ra
/* 0242C4 800236C4 24420004 */   addiu $v0, $v0, 4

/* 0242C8 800236C8 2403000C */  li    $v1, 12
/* 0242CC 800236CC 2401FFFC */  li    $at, -4
/* 0242D0 800236D0 00611024 */  and   $v0, $v1, $at
/* 0242D4 800236D4 03E00008 */  jr    $ra
/* 0242D8 800236D8 24420004 */   addiu $v0, $v0, 4

/* 0242DC 800236DC 24030020 */  li    $v1, 32
/* 0242E0 800236E0 2401FFFC */  li    $at, -4
/* 0242E4 800236E4 00611024 */  and   $v0, $v1, $at
/* 0242E8 800236E8 03E00008 */  jr    $ra
/* 0242EC 800236EC 24420004 */   addiu $v0, $v0, 4

/* 0242F0 800236F0 24030008 */  li    $v1, 8
/* 0242F4 800236F4 2401FFFC */  li    $at, -4
/* 0242F8 800236F8 00611024 */  and   $v0, $v1, $at
/* 0242FC 800236FC 03E00008 */  jr    $ra
/* 024300 80023700 24420004 */   addiu $v0, $v0, 4

/* 024304 80023704 2403000C */  li    $v1, 12
/* 024308 80023708 2401FFFC */  li    $at, -4
/* 02430C 8002370C 00611024 */  and   $v0, $v1, $at
/* 024310 80023710 03E00008 */  jr    $ra
/* 024314 80023714 24420004 */   addiu $v0, $v0, 4

/* 024318 80023718 24030008 */  li    $v1, 8
/* 02431C 8002371C 2401FFFC */  li    $at, -4
/* 024320 80023720 00611024 */  and   $v0, $v1, $at
/* 024324 80023724 03E00008 */  jr    $ra
/* 024328 80023728 24420004 */   addiu $v0, $v0, 4

/* 02432C 8002372C 24030018 */  li    $v1, 24
/* 024330 80023730 2401FFFC */  li    $at, -4
/* 024334 80023734 00611024 */  and   $v0, $v1, $at
/* 024338 80023738 03E00008 */  jr    $ra
/* 02433C 8002373C 24420004 */   addiu $v0, $v0, 4

/* 024340 80023740 2403000C */  li    $v1, 12
/* 024344 80023744 2401FFFC */  li    $at, -4
/* 024348 80023748 00611024 */  and   $v0, $v1, $at
/* 02434C 8002374C 03E00008 */  jr    $ra
/* 024350 80023750 24420004 */   addiu $v0, $v0, 4

/* 024354 80023754 24030038 */  li    $v1, 56
/* 024358 80023758 2401FFFC */  li    $at, -4
/* 02435C 8002375C 00611024 */  and   $v0, $v1, $at
/* 024360 80023760 03E00008 */  jr    $ra
/* 024364 80023764 24420004 */   addiu $v0, $v0, 4

/* 024368 80023768 24030014 */  li    $v1, 20
/* 02436C 8002376C 2401FFFC */  li    $at, -4
/* 024370 80023770 00611024 */  and   $v0, $v1, $at
/* 024374 80023774 03E00008 */  jr    $ra
/* 024378 80023778 24420004 */   addiu $v0, $v0, 4

/* 02437C 8002377C 24030010 */  li    $v1, 16
/* 024380 80023780 2401FFFC */  li    $at, -4
/* 024384 80023784 00611024 */  and   $v0, $v1, $at
/* 024388 80023788 03E00008 */  jr    $ra
/* 02438C 8002378C 24420004 */   addiu $v0, $v0, 4

/* 024390 80023790 24030048 */  li    $v1, 72
/* 024394 80023794 2401FFFC */  li    $at, -4
/* 024398 80023798 00611024 */  and   $v0, $v1, $at
/* 02439C 8002379C 03E00008 */  jr    $ra
/* 0243A0 800237A0 24420004 */   addiu $v0, $v0, 4

/* 0243A4 800237A4 24030044 */  li    $v1, 68
/* 0243A8 800237A8 2401FFFC */  li    $at, -4
/* 0243AC 800237AC 00611024 */  and   $v0, $v1, $at
/* 0243B0 800237B0 03E00008 */  jr    $ra
/* 0243B4 800237B4 24420004 */   addiu $v0, $v0, 4

/* 0243B8 800237B8 24030020 */  li    $v1, 32
/* 0243BC 800237BC 2401FFFC */  li    $at, -4
/* 0243C0 800237C0 00611024 */  and   $v0, $v1, $at
/* 0243C4 800237C4 03E00008 */  jr    $ra
/* 0243C8 800237C8 24420004 */   addiu $v0, $v0, 4

/* 0243CC 800237CC 24030004 */  li    $v1, 4
/* 0243D0 800237D0 2401FFFC */  li    $at, -4
/* 0243D4 800237D4 00611024 */  and   $v0, $v1, $at
/* 0243D8 800237D8 03E00008 */  jr    $ra
/* 0243DC 800237DC 24420004 */   addiu $v0, $v0, 4

/* 0243E0 800237E0 30B9000F */  andi  $t9, $a1, 0xf
/* 0243E4 800237E4 24080010 */  li    $t0, 16
/* 0243E8 800237E8 01191023 */  subu  $v0, $t0, $t9
/* 0243EC 800237EC 00A24821 */  addu  $t1, $a1, $v0
/* 0243F0 800237F0 24430110 */  addiu $v1, $v0, 0x110
/* 0243F4 800237F4 2401FFFC */  li    $at, -4
/* 0243F8 800237F8 00611024 */  and   $v0, $v1, $at
/* 0243FC 800237FC AC890064 */  sw    $t1, 0x64($a0)
/* 024400 80023800 03E00008 */  jr    $ra
/* 024404 80023804 24420004 */   addiu $v0, $v0, 4

/* 024408 80023808 30AA000F */  andi  $t2, $a1, 0xf
/* 02440C 8002380C 240B0010 */  li    $t3, 16
/* 024410 80023810 016A1023 */  subu  $v0, $t3, $t2
/* 024414 80023814 00A26021 */  addu  $t4, $a1, $v0
/* 024418 80023818 24430120 */  addiu $v1, $v0, 0x120
/* 02441C 8002381C 2401FFFC */  li    $at, -4
/* 024420 80023820 00611024 */  and   $v0, $v1, $at
/* 024424 80023824 AC8C0064 */  sw    $t4, 0x64($a0)
/* 024428 80023828 03E00008 */  jr    $ra
/* 02442C 8002382C 24420004 */   addiu $v0, $v0, 4

/* 024430 80023830 30AD000F */  andi  $t5, $a1, 0xf
/* 024434 80023834 240E0010 */  li    $t6, 16
/* 024438 80023838 01CD1023 */  subu  $v0, $t6, $t5
/* 02443C 8002383C 00A27821 */  addu  $t7, $a1, $v0
/* 024440 80023840 24430028 */  addiu $v1, $v0, 0x28
/* 024444 80023844 2401FFFC */  li    $at, -4
/* 024448 80023848 00611024 */  and   $v0, $v1, $at
/* 02444C 8002384C AC8F0064 */  sw    $t7, 0x64($a0)
/* 024450 80023850 03E00008 */  jr    $ra
/* 024454 80023854 24420004 */   addiu $v0, $v0, 4

/* 024458 80023858 24030060 */  li    $v1, 96
/* 02445C 8002385C 2401FFFC */  li    $at, -4
/* 024460 80023860 00611024 */  and   $v0, $v1, $at
/* 024464 80023864 03E00008 */  jr    $ra
/* 024468 80023868 24420004 */   addiu $v0, $v0, 4

/* 02446C 8002386C 24030008 */  li    $v1, 8
/* 024470 80023870 2401FFFC */  li    $at, -4
/* 024474 80023874 00611024 */  and   $v0, $v1, $at
/* 024478 80023878 03E00008 */  jr    $ra
/* 02447C 8002387C 24420004 */   addiu $v0, $v0, 4

/* 024480 80023880 24030034 */  li    $v1, 52
/* 024484 80023884 2401FFFC */  li    $at, -4
/* 024488 80023888 00611024 */  and   $v0, $v1, $at
/* 02448C 8002388C 03E00008 */  jr    $ra
/* 024490 80023890 24420004 */   addiu $v0, $v0, 4

/* 024494 80023894 24030020 */  li    $v1, 32
/* 024498 80023898 2401FFFC */  li    $at, -4
/* 02449C 8002389C 00611024 */  and   $v0, $v1, $at
/* 0244A0 800238A0 03E00008 */  jr    $ra
/* 0244A4 800238A4 24420004 */   addiu $v0, $v0, 4

.L800238A8:
/* 0244A8 800238A8 AC800064 */  sw    $zero, 0x64($a0)
/* 0244AC 800238AC 2401FFFC */  li    $at, -4
/* 0244B0 800238B0 00611024 */  and   $v0, $v1, $at
/* 0244B4 800238B4 03E00008 */  jr    $ra
/* 0244B8 800238B8 24420004 */   addiu $v0, $v0, 4

