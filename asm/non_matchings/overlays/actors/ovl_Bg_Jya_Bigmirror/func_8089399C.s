.rdata
glabel D_80893FD4
    .asciz "Error : Mir Ray 発生失敗 (%s %d)\n"
    .balign 4

glabel D_80893FF8
    .asciz "../z_bg_jya_bigmirror.c"
    .balign 4

.text
glabel func_8089399C
/* 002BC 8089399C 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 002C0 808939A0 AFB20038 */  sw      $s2, 0x0038($sp)           
/* 002C4 808939A4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 002C8 808939A8 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 002CC 808939AC AFB40040 */  sw      $s4, 0x0040($sp)           
/* 002D0 808939B0 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 002D4 808939B4 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 002D8 808939B8 AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 002DC 808939BC 00A12021 */  addu    $a0, $a1, $at              
/* 002E0 808939C0 AFBE0050 */  sw      $s8, 0x0050($sp)           
/* 002E4 808939C4 AFB7004C */  sw      $s7, 0x004C($sp)           
/* 002E8 808939C8 AFB60048 */  sw      $s6, 0x0048($sp)           
/* 002EC 808939CC AFB50044 */  sw      $s5, 0x0044($sp)           
/* 002F0 808939D0 AFB3003C */  sw      $s3, 0x003C($sp)           
/* 002F4 808939D4 AFB10034 */  sw      $s1, 0x0034($sp)           
/* 002F8 808939D8 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 002FC 808939DC AFA40064 */  sw      $a0, 0x0064($sp)           
/* 00300 808939E0 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00304 808939E4 240500AB */  addiu   $a1, $zero, 0x00AB         ## $a1 = 000000AB
/* 00308 808939E8 04400006 */  bltz    $v0, .L80893A04            
/* 0030C 808939EC AFA2006C */  sw      $v0, 0x006C($sp)           
/* 00310 808939F0 8E4E016C */  lw      $t6, 0x016C($s2)           ## 0000016C
/* 00314 808939F4 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00318 808939F8 27B30074 */  addiu   $s3, $sp, 0x0074           ## $s3 = FFFFFFEC
/* 0031C 808939FC 104E0005 */  beq     $v0, $t6, .L80893A14       
/* 00320 80893A00 02408025 */  or      $s0, $s2, $zero            ## $s0 = 00000000
.L80893A04:
/* 00324 80893A04 AE400168 */  sw      $zero, 0x0168($s2)         ## 00000168
/* 00328 80893A08 AE400164 */  sw      $zero, 0x0164($s2)         ## 00000164
/* 0032C 80893A0C 10000048 */  beq     $zero, $zero, .L80893B30   
/* 00330 80893A10 AE400160 */  sw      $zero, 0x0160($s2)         ## 00000160
.L80893A14:
/* 00334 80893A14 9243015C */  lbu     $v1, 0x015C($s2)           ## 0000015C
/* 00338 80893A18 3C1E8089 */  lui     $s8, %hi(D_80893FD4)       ## $s8 = 80890000
/* 0033C 80893A1C 27DE3FD4 */  addiu   $s8, $s8, %lo(D_80893FD4)  ## $s8 = 80893FD4
/* 00340 80893A20 30620018 */  andi    $v0, $v1, 0x0018           ## $v0 = 00000000
/* 00344 80893A24 0002102B */  sltu    $v0, $zero, $v0            
/* 00348 80893A28 10400007 */  beq     $v0, $zero, .L80893A48     
/* 0034C 80893A2C 3C178089 */  lui     $s7, %hi(D_80893F20)       ## $s7 = 80890000
/* 00350 80893A30 30620002 */  andi    $v0, $v1, 0x0002           ## $v0 = 00000000
/* 00354 80893A34 0002102B */  sltu    $v0, $zero, $v0            
/* 00358 80893A38 50400004 */  beql    $v0, $zero, .L80893A4C     
/* 0035C 80893A3C AFA20074 */  sw      $v0, 0x0074($sp)           
/* 00360 80893A40 30620001 */  andi    $v0, $v1, 0x0001           ## $v0 = 00000000
/* 00364 80893A44 0002102B */  sltu    $v0, $zero, $v0            
.L80893A48:
/* 00368 80893A48 AFA20074 */  sw      $v0, 0x0074($sp)           
.L80893A4C:
/* 0036C 80893A4C 9242015C */  lbu     $v0, 0x015C($s2)           ## 0000015C
/* 00370 80893A50 3C158089 */  lui     $s5, %hi(D_80893F28)       ## $s5 = 80890000
/* 00374 80893A54 26B53F28 */  addiu   $s5, $s5, %lo(D_80893F28)  ## $s5 = 80893F28
/* 00378 80893A58 30420030 */  andi    $v0, $v0, 0x0030           ## $v0 = 00000000
/* 0037C 80893A5C AFA2007C */  sw      $v0, 0x007C($sp)           
/* 00380 80893A60 AFA20078 */  sw      $v0, 0x0078($sp)           
/* 00384 80893A64 26F73F20 */  addiu   $s7, $s7, %lo(D_80893F20)  ## $s7 = 80893F20
/* 00388 80893A68 2416000C */  addiu   $s6, $zero, 0x000C         ## $s6 = 0000000C
.L80893A6C:
/* 0038C 80893A6C 8E6F0000 */  lw      $t7, 0x0000($s3)           ## FFFFFFEC
/* 00390 80893A70 51E00025 */  beql    $t7, $zero, .L80893B08     
/* 00394 80893A74 8E040160 */  lw      $a0, 0x0160($s0)           ## 00000160
/* 00398 80893A78 8E180160 */  lw      $t8, 0x0160($s0)           ## 00000160
/* 0039C 80893A7C 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 003A0 80893A80 57000027 */  bnel    $t8, $zero, .L80893B20     
/* 003A4 80893A84 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 003A8 80893A88 0C026062 */  jal     Object_IsLoaded
              
/* 003AC 80893A8C 8FA5006C */  lw      $a1, 0x006C($sp)           
/* 003B0 80893A90 10400022 */  beq     $v0, $zero, .L80893B1C     
/* 003B4 80893A94 26841C24 */  addiu   $a0, $s4, 0x1C24           ## $a0 = 00001C24
/* 003B8 80893A98 02360019 */  multu   $s1, $s6                   
/* 003BC 80893A9C 00114040 */  sll     $t0, $s1,  1               
/* 003C0 80893AA0 02E84821 */  addu    $t1, $s7, $t0              
/* 003C4 80893AA4 852A0000 */  lh      $t2, 0x0000($t1)           ## 00000000
/* 003C8 80893AA8 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 003CC 80893AAC 240600B7 */  addiu   $a2, $zero, 0x00B7         ## $a2 = 000000B7
/* 003D0 80893AB0 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 003D4 80893AB4 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 003D8 80893AB8 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 003DC 80893ABC AFAA0024 */  sw      $t2, 0x0024($sp)           
/* 003E0 80893AC0 0000C812 */  mflo    $t9                        
/* 003E4 80893AC4 02B91021 */  addu    $v0, $s5, $t9              
/* 003E8 80893AC8 C4440004 */  lwc1    $f4, 0x0004($v0)           ## 00000004
/* 003EC 80893ACC C4460008 */  lwc1    $f6, 0x0008($v0)           ## 00000008
/* 003F0 80893AD0 8C470000 */  lw      $a3, 0x0000($v0)           ## 00000000
/* 003F4 80893AD4 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 003F8 80893AD8 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 003FC 80893ADC E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00400 80893AE0 1440000E */  bne     $v0, $zero, .L80893B1C     
/* 00404 80893AE4 AE020160 */  sw      $v0, 0x0160($s0)           ## 00000160
/* 00408 80893AE8 3C058089 */  lui     $a1, %hi(D_80893FF8)       ## $a1 = 80890000
/* 0040C 80893AEC 24A53FF8 */  addiu   $a1, $a1, %lo(D_80893FF8)  ## $a1 = 80893FF8
/* 00410 80893AF0 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 80893FD4
/* 00414 80893AF4 0C00084C */  jal     osSyncPrintf
              
/* 00418 80893AF8 24060136 */  addiu   $a2, $zero, 0x0136         ## $a2 = 00000136
/* 0041C 80893AFC 10000008 */  beq     $zero, $zero, .L80893B20   
/* 00420 80893B00 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000002
/* 00424 80893B04 8E040160 */  lw      $a0, 0x0160($s0)           ## 00000160
.L80893B08:
/* 00428 80893B08 50800005 */  beql    $a0, $zero, .L80893B20     
/* 0042C 80893B0C 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000003
/* 00430 80893B10 0C00B55C */  jal     Actor_Kill
              
/* 00434 80893B14 00000000 */  nop
/* 00438 80893B18 AE000160 */  sw      $zero, 0x0160($s0)         ## 00000160
.L80893B1C:
/* 0043C 80893B1C 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000004
.L80893B20:
/* 00440 80893B20 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00444 80893B24 26730004 */  addiu   $s3, $s3, 0x0004           ## $s3 = FFFFFFF0
/* 00448 80893B28 1621FFD0 */  bne     $s1, $at, .L80893A6C       
/* 0044C 80893B2C 26100004 */  addiu   $s0, $s0, 0x0004           ## $s0 = 00000004
.L80893B30:
/* 00450 80893B30 8FAB006C */  lw      $t3, 0x006C($sp)           
/* 00454 80893B34 AE4B016C */  sw      $t3, 0x016C($s2)           ## 0000016C
/* 00458 80893B38 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 0045C 80893B3C 8FBE0050 */  lw      $s8, 0x0050($sp)           
/* 00460 80893B40 8FB7004C */  lw      $s7, 0x004C($sp)           
/* 00464 80893B44 8FB60048 */  lw      $s6, 0x0048($sp)           
/* 00468 80893B48 8FB50044 */  lw      $s5, 0x0044($sp)           
/* 0046C 80893B4C 8FB40040 */  lw      $s4, 0x0040($sp)           
/* 00470 80893B50 8FB3003C */  lw      $s3, 0x003C($sp)           
/* 00474 80893B54 8FB20038 */  lw      $s2, 0x0038($sp)           
/* 00478 80893B58 8FB10034 */  lw      $s1, 0x0034($sp)           
/* 0047C 80893B5C 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00480 80893B60 03E00008 */  jr      $ra                        
/* 00484 80893B64 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
