glabel func_8089107C
/* 0093C 8089107C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00940 80891080 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00944 80891084 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00948 80891088 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 0094C 8089108C 8486001C */  lh      $a2, 0x001C($a0)           ## 0000001C
/* 00950 80891090 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 00954 80891094 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00958 80891098 00063203 */  sra     $a2, $a2,  8               
/* 0095C 8089109C 30C60007 */  andi    $a2, $a2, 0x0007           ## $a2 = 00000000
/* 00960 808910A0 00063400 */  sll     $a2, $a2, 16               
/* 00964 808910A4 00063403 */  sra     $a2, $a2, 16               
/* 00968 808910A8 54C70007 */  bnel    $a2, $a3, .L808910C8       
/* 0096C 808910AC 92020179 */  lbu     $v0, 0x0179($s0)           ## 00000179
/* 00970 808910B0 8C820118 */  lw      $v0, 0x0118($a0)           ## 00000118
/* 00974 808910B4 240E2710 */  addiu   $t6, $zero, 0x2710         ## $t6 = 00002710
/* 00978 808910B8 50400003 */  beql    $v0, $zero, .L808910C8     
/* 0097C 808910BC 92020179 */  lbu     $v0, 0x0179($s0)           ## 00000179
/* 00980 808910C0 A44E0110 */  sh      $t6, 0x0110($v0)           ## 00000110
/* 00984 808910C4 92020179 */  lbu     $v0, 0x0179($s0)           ## 00000179
.L808910C8:
/* 00988 808910C8 304F0002 */  andi    $t7, $v0, 0x0002           ## $t7 = 00000000
/* 0098C 808910CC 11E00019 */  beq     $t7, $zero, .L80891134     
/* 00990 808910D0 00000000 */  nop
/* 00994 808910D4 8E030170 */  lw      $v1, 0x0170($s0)           ## 00000170
/* 00998 808910D8 3058FFFD */  andi    $t8, $v0, 0xFFFD           ## $t8 = 00000000
/* 0099C 808910DC A2180179 */  sb      $t8, 0x0179($s0)           ## 00000179
/* 009A0 808910E0 10600014 */  beq     $v1, $zero, .L80891134     
/* 009A4 808910E4 00000000 */  nop
/* 009A8 808910E8 84790000 */  lh      $t9, 0x0000($v1)           ## 00000000
/* 009AC 808910EC 240100F0 */  addiu   $at, $zero, 0x00F0         ## $at = 000000F0
/* 009B0 808910F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009B4 808910F4 1721000F */  bne     $t9, $at, .L80891134       
/* 009B8 808910F8 00000000 */  nop
/* 009BC 808910FC 14C70006 */  bne     $a2, $a3, .L80891118       
/* 009C0 80891100 00000000 */  nop
/* 009C4 80891104 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
/* 009C8 80891108 24080032 */  addiu   $t0, $zero, 0x0032         ## $t0 = 00000032
/* 009CC 8089110C 10400002 */  beq     $v0, $zero, .L80891118     
/* 009D0 80891110 00000000 */  nop
/* 009D4 80891114 A4480110 */  sh      $t0, 0x0110($v0)           ## 00000110
.L80891118:
/* 009D8 80891118 0C22446F */  jal     func_808911BC              
/* 009DC 8089111C A7A60032 */  sh      $a2, 0x0032($sp)           
/* 009E0 80891120 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009E4 80891124 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 009E8 80891128 240528A2 */  addiu   $a1, $zero, 0x28A2         ## $a1 = 000028A2
/* 009EC 8089112C 87A60032 */  lh      $a2, 0x0032($sp)           
/* 009F0 80891130 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
.L80891134:
/* 009F4 80891134 10C0000A */  beq     $a2, $zero, .L80891160     
/* 009F8 80891138 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 009FC 8089113C 50C10009 */  beql    $a2, $at, .L80891164       
/* 00A00 80891140 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00A04 80891144 10C70006 */  beq     $a2, $a3, .L80891160       
/* 00A08 80891148 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00A0C 8089114C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00A10 80891150 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00A14 80891154 00A12821 */  addu    $a1, $a1, $at              
/* 00A18 80891158 10000010 */  beq     $zero, $zero, .L8089119C   
/* 00A1C 8089115C 26070168 */  addiu   $a3, $s0, 0x0168           ## $a3 = 00000168
.L80891160:
/* 00A20 80891160 8FA4003C */  lw      $a0, 0x003C($sp)           
.L80891164:
/* 00A24 80891164 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00A28 80891168 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00A2C 8089116C 26070168 */  addiu   $a3, $s0, 0x0168           ## $a3 = 00000168
/* 00A30 80891170 00812821 */  addu    $a1, $a0, $at              
/* 00A34 80891174 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 00A38 80891178 00E03025 */  or      $a2, $a3, $zero            ## $a2 = 00000168
/* 00A3C 8089117C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00A40 80891180 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00A44 80891184 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00A48 80891188 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00A4C 8089118C 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00A50 80891190 260601B4 */  addiu   $a2, $s0, 0x01B4           ## $a2 = 000001B4
/* 00A54 80891194 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00A58 80891198 8FA70024 */  lw      $a3, 0x0024($sp)           
.L8089119C:
/* 00A5C 8089119C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00A60 808911A0 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00A64 808911A4 00E03025 */  or      $a2, $a3, $zero            ## $a2 = 00000000
/* 00A68 808911A8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A6C 808911AC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00A70 808911B0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00A74 808911B4 03E00008 */  jr      $ra                        
/* 00A78 808911B8 00000000 */  nop

