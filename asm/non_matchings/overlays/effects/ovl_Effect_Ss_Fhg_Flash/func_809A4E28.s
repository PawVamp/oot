glabel func_809A4E28
/* 007C8 809A4E28 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007CC 809A4E2C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007D0 809A4E30 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 007D4 809A4E34 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 007D8 809A4E38 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 007DC 809A4E3C AFA60020 */  sw      $a2, 0x0020($sp)           
/* 007E0 809A4E40 3C01809A */  lui     $at, %hi(D_809A5648)       ## $at = 809A0000
/* 007E4 809A4E44 C4245648 */  lwc1    $f4, %lo(D_809A5648)($at)  
/* 007E8 809A4E48 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 007EC 809A4E4C 46040182 */  mul.s   $f6, $f0, $f4              
/* 007F0 809A4E50 84CE0046 */  lh      $t6, 0x0046($a2)           ## 00000046
/* 007F4 809A4E54 84C20050 */  lh      $v0, 0x0050($a2)           ## 00000050
/* 007F8 809A4E58 244BFFF6 */  addiu   $t3, $v0, 0xFFF6           ## $t3 = FFFFFFF6
/* 007FC 809A4E5C 4600320D */  trunc.w.s $f8, $f6                   
/* 00800 809A4E60 44084000 */  mfc1    $t0, $f8                   
/* 00804 809A4E64 00000000 */  nop
/* 00808 809A4E68 01C84821 */  addu    $t1, $t6, $t0              
/* 0080C 809A4E6C 252A4000 */  addiu   $t2, $t1, 0x4000           ## $t2 = 00004000
/* 00810 809A4E70 18400007 */  blez    $v0, .L809A4E90            
/* 00814 809A4E74 A4CA0046 */  sh      $t2, 0x0046($a2)           ## 00000046
/* 00818 809A4E78 A4CB0050 */  sh      $t3, 0x0050($a2)           ## 00000050
/* 0081C 809A4E7C 84CC0050 */  lh      $t4, 0x0050($a2)           ## 00000050
/* 00820 809A4E80 5D800004 */  bgtzl   $t4, .L809A4E94            
/* 00824 809A4E84 84C20040 */  lh      $v0, 0x0040($a2)           ## 00000040
/* 00828 809A4E88 A4C00050 */  sh      $zero, 0x0050($a2)         ## 00000050
/* 0082C 809A4E8C A4C0005C */  sh      $zero, 0x005C($a2)         ## 0000005C
.L809A4E90:
/* 00830 809A4E90 84C20040 */  lh      $v0, 0x0040($a2)           ## 00000040
.L809A4E94:
/* 00834 809A4E94 18400006 */  blez    $v0, .L809A4EB0            
/* 00838 809A4E98 244DFFF6 */  addiu   $t5, $v0, 0xFFF6           ## $t5 = FFFFFFF6
/* 0083C 809A4E9C A4CD0040 */  sh      $t5, 0x0040($a2)           ## 00000040
/* 00840 809A4EA0 84CF0040 */  lh      $t7, 0x0040($a2)           ## 00000040
/* 00844 809A4EA4 5DE00003 */  bgtzl   $t7, .L809A4EB4            
/* 00848 809A4EA8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0084C 809A4EAC A4C00040 */  sh      $zero, 0x0040($a2)         ## 00000040
.L809A4EB0:
/* 00850 809A4EB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809A4EB4:
/* 00854 809A4EB4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00858 809A4EB8 03E00008 */  jr      $ra                        
/* 0085C 809A4EBC 00000000 */  nop
