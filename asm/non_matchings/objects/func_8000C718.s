glabel func_8000C718
/* 00D318 8000C718 3C0E8012 */  lui   $t6, %hi(D_8011AE4C) # $t6, 0x8012
/* 00D31C 8000C71C 8DCEAE4C */  lw    $t6, %lo(D_8011AE4C)($t6)
/* 00D320 8000C720 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00D324 8000C724 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00D328 8000C728 AFA40028 */  sw    $a0, 0x28($sp)
/* 00D32C 8000C72C 01C41821 */  addu  $v1, $t6, $a0
/* 00D330 8000C730 90650000 */  lbu   $a1, ($v1)
/* 00D334 8000C734 3C0C8012 */  lui   $t4, %hi(gAssetsObjectHeadersTable) # $t4, 0x8012
/* 00D338 8000C738 10A0000B */  beqz  $a1, .L8000C768
/* 00D33C 8000C73C 3C048012 */   lui   $a0, %hi(gObjectMemoryPool) # $a0, 0x8012
/* 00D340 8000C740 24B80001 */  addiu $t8, $a1, 1
/* 00D344 8000C744 A0780000 */  sb    $t8, ($v1)
/* 00D348 8000C748 8FA80028 */  lw    $t0, 0x28($sp)
/* 00D34C 8000C74C 3C198012 */  lui   $t9, %hi(D_8011AE48) # $t9, 0x8012
/* 00D350 8000C750 8F39AE48 */  lw    $t9, %lo(D_8011AE48)($t9)
/* 00D354 8000C754 00084880 */  sll   $t1, $t0, 2
/* 00D358 8000C758 03295021 */  addu  $t2, $t9, $t1
/* 00D35C 8000C75C 8D420000 */  lw    $v0, ($t2)
/* 00D360 8000C760 10000035 */  b     .L8000C838
/* 00D364 8000C764 8FBF0014 */   lw    $ra, 0x14($sp)
.L8000C768:
/* 00D368 8000C768 8FA30028 */  lw    $v1, 0x28($sp)
/* 00D36C 8000C76C 8D8CAD64 */  lw    $t4, %lo(gAssetsObjectHeadersTable)($t4)
/* 00D370 8000C770 00035880 */  sll   $t3, $v1, 2
/* 00D374 8000C774 018B1021 */  addu  $v0, $t4, $t3
/* 00D378 8000C778 8C460000 */  lw    $a2, ($v0)
/* 00D37C 8000C77C 8C4D0004 */  lw    $t5, 4($v0)
/* 00D380 8000C780 8C84AE68 */  lw    $a0, %lo(gObjectMemoryPool)($a0)
/* 00D384 8000C784 01A62823 */  subu  $a1, $t5, $a2
/* 00D388 8000C788 AFA50020 */  sw    $a1, 0x20($sp)
/* 00D38C 8000C78C AFAB0018 */  sw    $t3, 0x18($sp)
/* 00D390 8000C790 0C01C3A4 */  jal   allocate_from_pool_containing_slots
/* 00D394 8000C794 AFA60024 */   sw    $a2, 0x24($sp)
/* 00D398 8000C798 8FA60024 */  lw    $a2, 0x24($sp)
/* 00D39C 8000C79C 8FA70020 */  lw    $a3, 0x20($sp)
/* 00D3A0 8000C7A0 10400021 */  beqz  $v0, .L8000C828
/* 00D3A4 8000C7A4 00402825 */   move  $a1, $v0
/* 00D3A8 8000C7A8 24040022 */  li    $a0, 34
/* 00D3AC 8000C7AC 0C01DB9A */  jal   load_asset_to_address
/* 00D3B0 8000C7B0 AFA2001C */   sw    $v0, 0x1c($sp)
/* 00D3B4 8000C7B4 8FA5001C */  lw    $a1, 0x1c($sp)
/* 00D3B8 8000C7B8 00000000 */  nop   
/* 00D3BC 8000C7BC 8CAE0024 */  lw    $t6, 0x24($a1)
/* 00D3C0 8000C7C0 8CB8001C */  lw    $t8, 0x1c($a1)
/* 00D3C4 8000C7C4 8CB90014 */  lw    $t9, 0x14($a1)
/* 00D3C8 8000C7C8 8CAA0018 */  lw    $t2, 0x18($a1)
/* 00D3CC 8000C7CC 8CAC0010 */  lw    $t4, 0x10($a1)
/* 00D3D0 8000C7D0 00AE7821 */  addu  $t7, $a1, $t6
/* 00D3D4 8000C7D4 00B84021 */  addu  $t0, $a1, $t8
/* 00D3D8 8000C7D8 00B94821 */  addu  $t1, $a1, $t9
/* 00D3DC 8000C7DC 00AA5821 */  addu  $t3, $a1, $t2
/* 00D3E0 8000C7E0 00AC6821 */  addu  $t5, $a1, $t4
/* 00D3E4 8000C7E4 ACAF0024 */  sw    $t7, 0x24($a1)
/* 00D3E8 8000C7E8 ACA8001C */  sw    $t0, 0x1c($a1)
/* 00D3EC 8000C7EC ACA90014 */  sw    $t1, 0x14($a1)
/* 00D3F0 8000C7F0 ACAB0018 */  sw    $t3, 0x18($a1)
/* 00D3F4 8000C7F4 ACAD0010 */  sw    $t5, 0x10($a1)
/* 00D3F8 8000C7F8 3C0E8012 */  lui   $t6, %hi(D_8011AE48) # $t6, 0x8012
/* 00D3FC 8000C7FC 8DCEAE48 */  lw    $t6, %lo(D_8011AE48)($t6)
/* 00D400 8000C800 8FAF0018 */  lw    $t7, 0x18($sp)
/* 00D404 8000C804 3C198012 */  lui   $t9, %hi(D_8011AE4C) # $t9, 0x8012
/* 00D408 8000C808 01CFC021 */  addu  $t8, $t6, $t7
/* 00D40C 8000C80C AF050000 */  sw    $a1, ($t8)
/* 00D410 8000C810 8FA90028 */  lw    $t1, 0x28($sp)
/* 00D414 8000C814 8F39AE4C */  lw    $t9, %lo(D_8011AE4C)($t9)
/* 00D418 8000C818 24080001 */  li    $t0, 1
/* 00D41C 8000C81C 03295021 */  addu  $t2, $t9, $t1
/* 00D420 8000C820 10000003 */  b     .L8000C830
/* 00D424 8000C824 A1480000 */   sb    $t0, ($t2)
.L8000C828:
/* 00D428 8000C828 10000002 */  b     .L8000C834
/* 00D42C 8000C82C 00001025 */   move  $v0, $zero
.L8000C830:
/* 00D430 8000C830 00A01025 */  move  $v0, $a1
.L8000C834:
/* 00D434 8000C834 8FBF0014 */  lw    $ra, 0x14($sp)
.L8000C838:
/* 00D438 8000C838 27BD0028 */  addiu $sp, $sp, 0x28
/* 00D43C 8000C83C 03E00008 */  jr    $ra
/* 00D440 8000C840 00000000 */   nop   

