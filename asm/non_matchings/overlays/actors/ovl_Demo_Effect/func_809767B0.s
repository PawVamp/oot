glabel func_809767B0
/* 05860 809767B0 00067080 */  sll     $t6, $a2,  2               
/* 05864 809767B4 00AE7821 */  addu    $t7, $a1, $t6              
/* 05868 809767B8 8DE21D8C */  lw      $v0, 0x1D8C($t7)           ## 00001D8C
/* 0586C 809767BC 8C58000C */  lw      $t8, 0x000C($v0)           ## 0000000C
/* 05870 809767C0 8C590010 */  lw      $t9, 0x0010($v0)           ## 00000010
/* 05874 809767C4 8C480014 */  lw      $t0, 0x0014($v0)           ## 00000014
/* 05878 809767C8 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 0587C 809767CC 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 05880 809767D0 44884000 */  mtc1    $t0, $f8                   ## $f8 = 0.00
/* 05884 809767D4 46802020 */  cvt.s.w $f0, $f4                   
/* 05888 809767D8 468030A0 */  cvt.s.w $f2, $f6                   
/* 0588C 809767DC E4800024 */  swc1    $f0, 0x0024($a0)           ## 00000024
/* 05890 809767E0 46804320 */  cvt.s.w $f12, $f8                  
/* 05894 809767E4 E4820028 */  swc1    $f2, 0x0028($a0)           ## 00000028
/* 05898 809767E8 03E00008 */  jr      $ra                        
/* 0589C 809767EC E48C002C */  swc1    $f12, 0x002C($a0)          ## 0000002C
