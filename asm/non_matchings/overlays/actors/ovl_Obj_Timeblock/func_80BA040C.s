glabel func_80BA040C
/* 0046C 80BA040C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00470 80BA0410 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00474 80BA0414 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00478 80BA0418 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 0047C 80BA041C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00480 80BA0420 0C2E80CB */  jal     func_80BA032C              
/* 00484 80BA0424 AFA3001C */  sw      $v1, 0x001C($sp)           
/* 00488 80BA0428 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 0048C 80BA042C 1040000F */  beq     $v0, $zero, .L80BA046C     
/* 00490 80BA0430 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00494 80BA0434 8C620680 */  lw      $v0, 0x0680($v1)           ## 00000680
/* 00498 80BA0438 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 0049C 80BA043C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 004A0 80BA0440 000271C0 */  sll     $t6, $v0,  7               
/* 004A4 80BA0444 05C10008 */  bgez    $t6, .L80BA0468            
/* 004A8 80BA0448 0041C825 */  or      $t9, $v0, $at              ## $t9 = 00800000
/* 004AC 80BA044C 0C042F56 */  jal     func_8010BD58              
/* 004B0 80BA0450 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 004B4 80BA0454 8FB80020 */  lw      $t8, 0x0020($sp)           
/* 004B8 80BA0458 3C0F80BA */  lui     $t7, %hi(func_80BA0480)    ## $t7 = 80BA0000
/* 004BC 80BA045C 25EF0480 */  addiu   $t7, $t7, %lo(func_80BA0480) ## $t7 = 80BA0480
/* 004C0 80BA0460 10000002 */  beq     $zero, $zero, .L80BA046C   
/* 004C4 80BA0464 AF0F0168 */  sw      $t7, 0x0168($t8)           ## 00000168
.L80BA0468:
/* 004C8 80BA0468 AC790680 */  sw      $t9, 0x0680($v1)           ## 00000680
.L80BA046C:
/* 004CC 80BA046C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004D0 80BA0470 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 004D4 80BA0474 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 004D8 80BA0478 03E00008 */  jr      $ra                        
/* 004DC 80BA047C 00000000 */  nop
