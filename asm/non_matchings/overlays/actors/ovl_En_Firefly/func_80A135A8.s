.late_rodata
glabel D_80A15030
    .float 0.85

glabel D_80A15034
    .float 0.15

.text
glabel func_80A135A8
/* 00538 80A135A8 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 0053C 80A135AC AFBF006C */  sw      $ra, 0x006C($sp)           
/* 00540 80A135B0 AFB40068 */  sw      $s4, 0x0068($sp)           
/* 00544 80A135B4 AFB30064 */  sw      $s3, 0x0064($sp)           
/* 00548 80A135B8 AFB20060 */  sw      $s2, 0x0060($sp)           
/* 0054C 80A135BC AFB1005C */  sw      $s1, 0x005C($sp)           
/* 00550 80A135C0 AFB00058 */  sw      $s0, 0x0058($sp)           
/* 00554 80A135C4 F7BA0050 */  sdc1    $f26, 0x0050($sp)          
/* 00558 80A135C8 F7B80048 */  sdc1    $f24, 0x0048($sp)          
/* 0055C 80A135CC F7B60040 */  sdc1    $f22, 0x0040($sp)          
/* 00560 80A135D0 F7B40038 */  sdc1    $f20, 0x0038($sp)          
/* 00564 80A135D4 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 00568 80A135D8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0056C 80A135DC 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 00570 80A135E0 35CF0010 */  ori     $t7, $t6, 0x0010           ## $t7 = 00000010
/* 00574 80A135E4 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 00578 80A135E8 A08001B8 */  sb      $zero, 0x01B8($a0)         ## 000001B8
/* 0057C 80A135EC 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 00580 80A135F0 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00584 80A135F4 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00588 80A135F8 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 0058C 80A135FC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00590 80A13600 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00594 80A13604 0C00D09B */  jal     func_8003426C              
/* 00598 80A13608 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0059C 80A1360C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 005A0 80A13610 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 005A4 80A13614 24053842 */  addiu   $a1, $zero, 0x3842         ## $a1 = 00003842
/* 005A8 80A13618 3C0180A1 */  lui     $at, %hi(D_80A15030)       ## $at = 80A10000
/* 005AC 80A1361C C43A5030 */  lwc1    $f26, %lo(D_80A15030)($at) 
/* 005B0 80A13620 3C0180A1 */  lui     $at, %hi(D_80A15034)       ## $at = 80A10000
/* 005B4 80A13624 C4385034 */  lwc1    $f24, %lo(D_80A15034)($at) 
/* 005B8 80A13628 3C01C0E0 */  lui     $at, 0xC0E0                ## $at = C0E00000
/* 005BC 80A1362C 4481B000 */  mtc1    $at, $f22                  ## $f22 = -7.00
/* 005C0 80A13630 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 005C4 80A13634 4481A000 */  mtc1    $at, $f20                  ## $f20 = 7.00
/* 005C8 80A13638 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 005CC 80A1363C 24130008 */  addiu   $s3, $zero, 0x0008         ## $s3 = 00000008
/* 005D0 80A13640 27B20078 */  addiu   $s2, $sp, 0x0078           ## $s2 = FFFFFFF0
/* 005D4 80A13644 32190001 */  andi    $t9, $s0, 0x0001           ## $t9 = 00000000
.L80A13648:
/* 005D8 80A13648 53200004 */  beql    $t9, $zero, .L80A1365C     
/* 005DC 80A1364C 4600B006 */  mov.s   $f0, $f22                  
/* 005E0 80A13650 10000002 */  beq     $zero, $zero, .L80A1365C   
/* 005E4 80A13654 4600A006 */  mov.s   $f0, $f20                  
/* 005E8 80A13658 4600B006 */  mov.s   $f0, $f22                  
.L80A1365C:
/* 005EC 80A1365C C6260024 */  lwc1    $f6, 0x0024($s1)           ## 00000024
/* 005F0 80A13660 32080002 */  andi    $t0, $s0, 0x0002           ## $t0 = 00000000
/* 005F4 80A13664 46060200 */  add.s   $f8, $f0, $f6              
/* 005F8 80A13668 11000003 */  beq     $t0, $zero, .L80A13678     
/* 005FC 80A1366C E7A80078 */  swc1    $f8, 0x0078($sp)           
/* 00600 80A13670 10000002 */  beq     $zero, $zero, .L80A1367C   
/* 00604 80A13674 4600A006 */  mov.s   $f0, $f20                  
.L80A13678:
/* 00608 80A13678 4600B006 */  mov.s   $f0, $f22                  
.L80A1367C:
/* 0060C 80A1367C C62A0028 */  lwc1    $f10, 0x0028($s1)          ## 00000028
/* 00610 80A13680 32090004 */  andi    $t1, $s0, 0x0004           ## $t1 = 00000000
/* 00614 80A13684 460A0400 */  add.s   $f16, $f0, $f10            
/* 00618 80A13688 11200003 */  beq     $t1, $zero, .L80A13698     
/* 0061C 80A1368C E7B0007C */  swc1    $f16, 0x007C($sp)          
/* 00620 80A13690 10000002 */  beq     $zero, $zero, .L80A1369C   
/* 00624 80A13694 4600A006 */  mov.s   $f0, $f20                  
.L80A13698:
/* 00628 80A13698 4600B006 */  mov.s   $f0, $f22                  
.L80A1369C:
/* 0062C 80A1369C C632002C */  lwc1    $f18, 0x002C($s1)          ## 0000002C
/* 00630 80A136A0 46120100 */  add.s   $f4, $f0, $f18             
/* 00634 80A136A4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00638 80A136A8 E7A40080 */  swc1    $f4, 0x0080($sp)           
/* 0063C 80A136AC 46180182 */  mul.s   $f6, $f0, $f24             
/* 00640 80A136B0 240A0096 */  addiu   $t2, $zero, 0x0096         ## $t2 = 00000096
/* 00644 80A136B4 240B0096 */  addiu   $t3, $zero, 0x0096         ## $t3 = 00000096
/* 00648 80A136B8 240C00FA */  addiu   $t4, $zero, 0x00FA         ## $t4 = 000000FA
/* 0064C 80A136BC 240D00EB */  addiu   $t5, $zero, 0x00EB         ## $t5 = 000000EB
/* 00650 80A136C0 240E00F5 */  addiu   $t6, $zero, 0x00F5         ## $t6 = 000000F5
/* 00654 80A136C4 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 00658 80A136C8 461A3200 */  add.s   $f8, $f6, $f26             
/* 0065C 80A136CC AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 00660 80A136D0 AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 00664 80A136D4 AFAD001C */  sw      $t5, 0x001C($sp)           
/* 00668 80A136D8 E7A80028 */  swc1    $f8, 0x0028($sp)           
/* 0066C 80A136DC AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 00670 80A136E0 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00674 80A136E4 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00678 80A136E8 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 0067C 80A136EC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00680 80A136F0 02403025 */  or      $a2, $s2, $zero            ## $a2 = FFFFFFF0
/* 00684 80A136F4 0C00A850 */  jal     func_8002A140              
/* 00688 80A136F8 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 0068C 80A136FC 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 00690 80A13700 5613FFD1 */  bnel    $s0, $s3, .L80A13648       
/* 00694 80A13704 32190001 */  andi    $t9, $s0, 0x0001           ## $t9 = 00000001
/* 00698 80A13708 3C1880A1 */  lui     $t8, %hi(func_80A14294)    ## $t8 = 80A10000
/* 0069C 80A1370C 27184294 */  addiu   $t8, $t8, %lo(func_80A14294) ## $t8 = 80A14294
/* 006A0 80A13710 AE3801B4 */  sw      $t8, 0x01B4($s1)           ## 000001B4
/* 006A4 80A13714 8FBF006C */  lw      $ra, 0x006C($sp)           
/* 006A8 80A13718 8FB40068 */  lw      $s4, 0x0068($sp)           
/* 006AC 80A1371C 8FB30064 */  lw      $s3, 0x0064($sp)           
/* 006B0 80A13720 8FB20060 */  lw      $s2, 0x0060($sp)           
/* 006B4 80A13724 8FB1005C */  lw      $s1, 0x005C($sp)           
/* 006B8 80A13728 8FB00058 */  lw      $s0, 0x0058($sp)           
/* 006BC 80A1372C D7BA0050 */  ldc1    $f26, 0x0050($sp)          
/* 006C0 80A13730 D7B80048 */  ldc1    $f24, 0x0048($sp)          
/* 006C4 80A13734 D7B60040 */  ldc1    $f22, 0x0040($sp)          
/* 006C8 80A13738 D7B40038 */  ldc1    $f20, 0x0038($sp)          
/* 006CC 80A1373C 03E00008 */  jr      $ra                        
/* 006D0 80A13740 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
