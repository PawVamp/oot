glabel func_809E1D38
/* 00488 809E1D38 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0048C 809E1D3C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00490 809E1D40 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00494 809E1D44 8C8201E0 */  lw      $v0, 0x01E0($a0)           ## 000001E0
/* 00498 809E1D48 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0049C 809E1D4C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 004A0 809E1D50 14410007 */  bne     $v0, $at, .L809E1D70       
/* 004A4 809E1D54 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 004A8 809E1D58 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 004AC 809E1D5C 0C042DC8 */  jal     func_8010B720              
/* 004B0 809E1D60 9605010E */  lhu     $a1, 0x010E($s0)           ## 0000010E
/* 004B4 809E1D64 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 004B8 809E1D68 10000040 */  beq     $zero, $zero, .L809E1E6C   
/* 004BC 809E1D6C AE0E01E0 */  sw      $t6, 0x01E0($s0)           ## 000001E0
.L809E1D70:
/* 004C0 809E1D70 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 004C4 809E1D74 14410006 */  bne     $v0, $at, .L809E1D90       
/* 004C8 809E1D78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004CC 809E1D7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004D0 809E1D80 0C2786E3 */  jal     func_809E1B8C              
/* 004D4 809E1D84 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 004D8 809E1D88 10000038 */  beq     $zero, $zero, .L809E1E6C   
/* 004DC 809E1D8C AE0201E0 */  sw      $v0, 0x01E0($s0)           ## 000001E0
.L809E1D90:
/* 004E0 809E1D90 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 004E4 809E1D94 0C00BC65 */  jal     func_8002F194              
/* 004E8 809E1D98 AFA60034 */  sw      $a2, 0x0034($sp)           
/* 004EC 809E1D9C 1040001E */  beq     $v0, $zero, .L809E1E18     
/* 004F0 809E1DA0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 004F4 809E1DA4 9602010E */  lhu     $v0, 0x010E($s0)           ## 0000010E
/* 004F8 809E1DA8 24032022 */  addiu   $v1, $zero, 0x2022         ## $v1 = 00002022
/* 004FC 809E1DAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00500 809E1DB0 10620005 */  beq     $v1, $v0, .L809E1DC8       
/* 00504 809E1DB4 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00508 809E1DB8 10620006 */  beq     $v1, $v0, .L809E1DD4       
/* 0050C 809E1DBC 24012028 */  addiu   $at, $zero, 0x2028         ## $at = 00002028
/* 00510 809E1DC0 50410005 */  beql    $v0, $at, .L809E1DD8       
/* 00514 809E1DC4 24012023 */  addiu   $at, $zero, 0x2023         ## $at = 00002023
.L809E1DC8:
/* 00518 809E1DC8 0C27862C */  jal     func_809E18B0              
/* 0051C 809E1DCC 26060210 */  addiu   $a2, $s0, 0x0210           ## $a2 = 00000210
/* 00520 809E1DD0 9602010E */  lhu     $v0, 0x010E($s0)           ## 0000010E
.L809E1DD4:
/* 00524 809E1DD4 24012023 */  addiu   $at, $zero, 0x2023         ## $at = 00002023
.L809E1DD8:
/* 00528 809E1DD8 10410003 */  beq     $v0, $at, .L809E1DE8       
/* 0052C 809E1DDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00530 809E1DE0 24012028 */  addiu   $at, $zero, 0x2028         ## $at = 00002028
/* 00534 809E1DE4 14410004 */  bne     $v0, $at, .L809E1DF8       
.L809E1DE8:
/* 00538 809E1DE8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0053C 809E1DEC 0C27862C */  jal     func_809E18B0              
/* 00540 809E1DF0 26060210 */  addiu   $a2, $s0, 0x0210           ## $a2 = 00000210
/* 00544 809E1DF4 9602010E */  lhu     $v0, 0x010E($s0)           ## 0000010E
.L809E1DF8:
/* 00548 809E1DF8 24012023 */  addiu   $at, $zero, 0x2023         ## $at = 00002023
/* 0054C 809E1DFC 54410004 */  bnel    $v0, $at, .L809E1E10       
/* 00550 809E1E00 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00554 809E1E04 0C01E221 */  jal     func_80078884              
/* 00558 809E1E08 24044807 */  addiu   $a0, $zero, 0x4807         ## $a0 = 00004807
/* 0055C 809E1E0C 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
.L809E1E10:
/* 00560 809E1E10 10000016 */  beq     $zero, $zero, .L809E1E6C   
/* 00564 809E1E14 AE0F01E0 */  sw      $t7, 0x01E0($s0)           ## 000001E0
.L809E1E18:
/* 00568 809E1E18 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0056C 809E1E1C 27A6002A */  addiu   $a2, $sp, 0x002A           ## $a2 = FFFFFFFA
/* 00570 809E1E20 0C00BCDD */  jal     func_8002F374              
/* 00574 809E1E24 27A70028 */  addiu   $a3, $sp, 0x0028           ## $a3 = FFFFFFF8
/* 00578 809E1E28 87A2002A */  lh      $v0, 0x002A($sp)           
/* 0057C 809E1E2C 0440000F */  bltz    $v0, .L809E1E6C            
/* 00580 809E1E30 28410141 */  slti    $at, $v0, 0x0141           
/* 00584 809E1E34 1020000D */  beq     $at, $zero, .L809E1E6C     
/* 00588 809E1E38 87A20028 */  lh      $v0, 0x0028($sp)           
/* 0058C 809E1E3C 0440000B */  bltz    $v0, .L809E1E6C            
/* 00590 809E1E40 284100F1 */  slti    $at, $v0, 0x00F1           
/* 00594 809E1E44 10200009 */  beq     $at, $zero, .L809E1E6C     
/* 00598 809E1E48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0059C 809E1E4C 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 005A0 809E1E50 0C00BCB3 */  jal     func_8002F2CC              
/* 005A4 809E1E54 3C0642C8 */  lui     $a2, 0x42C8                ## $a2 = 42C80000
/* 005A8 809E1E58 10400004 */  beq     $v0, $zero, .L809E1E6C     
/* 005AC 809E1E5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005B0 809E1E60 0C27872E */  jal     func_809E1CB8              
/* 005B4 809E1E64 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 005B8 809E1E68 A602010E */  sh      $v0, 0x010E($s0)           ## 0000010E
.L809E1E6C:
/* 005BC 809E1E6C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 005C0 809E1E70 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 005C4 809E1E74 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 005C8 809E1E78 03E00008 */  jr      $ra                        
/* 005CC 809E1E7C 00000000 */  nop

