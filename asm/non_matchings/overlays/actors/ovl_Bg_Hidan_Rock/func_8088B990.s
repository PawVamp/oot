.late_rodata
glabel D_8088C048
 .word 0x44E38000
glabel D_8088C04C
    .float 0.1

glabel D_8088C050
    .float 0.1

.text
glabel func_8088B990
/* 00910 8088B990 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00914 8088B994 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00918 8088B998 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0091C 8088B99C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00920 8088B9A0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00924 8088B9A4 C4840150 */  lwc1    $f4, 0x0150($a0)           ## 00000150
/* 00928 8088B9A8 848F016A */  lh      $t7, 0x016A($a0)           ## 0000016A
/* 0092C 8088B9AC 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00930 8088B9B0 46040032 */  c.eq.s  $f0, $f4                   
/* 00934 8088B9B4 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00938 8088B9B8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0093C 8088B9BC A498016A */  sh      $t8, 0x016A($a0)           ## 0000016A
/* 00940 8088B9C0 45030007 */  bc1tl   .L8088B9E0                 
/* 00944 8088B9C4 92020168 */  lbu     $v0, 0x0168($s0)           ## 00000168
/* 00948 8088B9C8 E4800068 */  swc1    $f0, 0x0068($a0)           ## 00000068
/* 0094C 8088B9CC 8C590680 */  lw      $t9, 0x0680($v0)           ## 00000680
/* 00950 8088B9D0 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 00954 8088B9D4 03214024 */  and     $t0, $t9, $at              
/* 00958 8088B9D8 AC480680 */  sw      $t0, 0x0680($v0)           ## 00000680
/* 0095C 8088B9DC 92020168 */  lbu     $v0, 0x0168($s0)           ## 00000168
.L8088B9E0:
/* 00960 8088B9E0 3C018089 */  lui     $at, %hi(D_8088C048)       ## $at = 80890000
/* 00964 8088B9E4 14400013 */  bne     $v0, $zero, .L8088BA34     
/* 00968 8088B9E8 00000000 */  nop
/* 0096C 8088B9EC C606000C */  lwc1    $f6, 0x000C($s0)           ## 0000000C
/* 00970 8088B9F0 C428C048 */  lwc1    $f8, %lo(D_8088C048)($at)  
/* 00974 8088B9F4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00978 8088B9F8 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 0097C 8088B9FC 46083280 */  add.s   $f10, $f6, $f8             
/* 00980 8088BA00 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 00984 8088BA04 3C063E80 */  lui     $a2, 0x3E80                ## $a2 = 3E800000
/* 00988 8088BA08 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 0098C 8088BA0C 44055000 */  mfc1    $a1, $f10                  
/* 00990 8088BA10 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00994 8088BA14 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 00998 8088BA18 3C018089 */  lui     $at, %hi(D_8088C04C)       ## $at = 80890000
/* 0099C 8088BA1C C432C04C */  lwc1    $f18, %lo(D_8088C04C)($at) 
/* 009A0 8088BA20 4612003C */  c.lt.s  $f0, $f18                  
/* 009A4 8088BA24 00000000 */  nop
/* 009A8 8088BA28 4503001A */  bc1tl   .L8088BA94                 
/* 009AC 8088BA2C 92090168 */  lbu     $t1, 0x0168($s0)           ## 00000168
/* 009B0 8088BA30 92020168 */  lbu     $v0, 0x0168($s0)           ## 00000168
.L8088BA34:
/* 009B4 8088BA34 10400021 */  beq     $v0, $zero, .L8088BABC     
/* 009B8 8088BA38 3C01407E */  lui     $at, 0x407E                ## $at = 407E0000
/* 009BC 8088BA3C C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 009C0 8088BA40 44814800 */  mtc1    $at, $f9                   ## $f9 = 3.97
/* 009C4 8088BA44 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 009C8 8088BA48 460021A1 */  cvt.d.s $f6, $f4                   
/* 009CC 8088BA4C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 009D0 8088BA50 46283280 */  add.d   $f10, $f6, $f8             
/* 009D4 8088BA54 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.50
/* 009D8 8088BA58 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 009DC 8088BA5C 3C063E80 */  lui     $a2, 0x3E80                ## $a2 = 3E800000
/* 009E0 8088BA60 46205420 */  cvt.s.d $f16, $f10                 
/* 009E4 8088BA64 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 009E8 8088BA68 E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 009EC 8088BA6C 44058000 */  mfc1    $a1, $f16                  
/* 009F0 8088BA70 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 009F4 8088BA74 00000000 */  nop
/* 009F8 8088BA78 3C018089 */  lui     $at, %hi(D_8088C050)       ## $at = 80890000
/* 009FC 8088BA7C C424C050 */  lwc1    $f4, %lo(D_8088C050)($at)  
/* 00A00 8088BA80 4604003C */  c.lt.s  $f0, $f4                   
/* 00A04 8088BA84 00000000 */  nop
/* 00A08 8088BA88 4502000D */  bc1fl   .L8088BAC0                 
/* 00A0C 8088BA8C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00A10 8088BA90 92090168 */  lbu     $t1, 0x0168($s0)           ## 00000168
.L8088BA94:
/* 00A14 8088BA94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A18 8088BA98 15200003 */  bne     $t1, $zero, .L8088BAA8     
/* 00A1C 8088BA9C 00000000 */  nop
/* 00A20 8088BAA0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00A24 8088BAA4 24052835 */  addiu   $a1, $zero, 0x2835         ## $a1 = 00002835
.L8088BAA8:
/* 00A28 8088BAA8 3C0B8089 */  lui     $t3, %hi(func_8088B954)    ## $t3 = 80890000
/* 00A2C 8088BAAC 240A0014 */  addiu   $t2, $zero, 0x0014         ## $t2 = 00000014
/* 00A30 8088BAB0 256BB954 */  addiu   $t3, $t3, %lo(func_8088B954) ## $t3 = 8088B954
/* 00A34 8088BAB4 A60A016A */  sh      $t2, 0x016A($s0)           ## 0000016A
/* 00A38 8088BAB8 AE0B0164 */  sw      $t3, 0x0164($s0)           ## 00000164
.L8088BABC:
/* 00A3C 8088BABC 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
.L8088BAC0:
/* 00A40 8088BAC0 44814000 */  mtc1    $at, $f8                   ## $f8 = 50.00
/* 00A44 8088BAC4 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 00A48 8088BAC8 C610000C */  lwc1    $f16, 0x000C($s0)          ## 0000000C
/* 00A4C 8088BACC 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00A50 8088BAD0 46083280 */  add.s   $f10, $f6, $f8             
/* 00A54 8088BAD4 44812000 */  mtc1    $at, $f4                   ## $f4 = 40.00
/* 00A58 8088BAD8 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00A5C 8088BADC 44814000 */  mtc1    $at, $f8                   ## $f8 = 80.00
/* 00A60 8088BAE0 46105481 */  sub.s   $f18, $f10, $f16           
/* 00A64 8088BAE4 920C0168 */  lbu     $t4, 0x0168($s0)           ## 00000168
/* 00A68 8088BAE8 46049180 */  add.s   $f6, $f18, $f4             
/* 00A6C 8088BAEC 46083283 */  div.s   $f10, $f6, $f8             
/* 00A70 8088BAF0 1580001C */  bne     $t4, $zero, .L8088BB64     
/* 00A74 8088BAF4 E60A016C */  swc1    $f10, 0x016C($s0)          ## 0000016C
/* 00A78 8088BAF8 0C010D5B */  jal     func_8004356C              
/* 00A7C 8088BAFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A80 8088BB00 1040000C */  beq     $v0, $zero, .L8088BB34     
/* 00A84 8088BB04 00000000 */  nop
/* 00A88 8088BB08 920D0169 */  lbu     $t5, 0x0169($s0)           ## 00000169
/* 00A8C 8088BB0C 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 00A90 8088BB10 55A00003 */  bnel    $t5, $zero, .L8088BB20     
/* 00A94 8088BB14 8FAF002C */  lw      $t7, 0x002C($sp)           
/* 00A98 8088BB18 A20E0169 */  sb      $t6, 0x0169($s0)           ## 00000169
/* 00A9C 8088BB1C 8FAF002C */  lw      $t7, 0x002C($sp)           
.L8088BB20:
/* 00AA0 8088BB20 24050030 */  addiu   $a1, $zero, 0x0030         ## $a1 = 00000030
/* 00AA4 8088BB24 0C0169DF */  jal     func_8005A77C              
/* 00AA8 8088BB28 8DE40790 */  lw      $a0, 0x0790($t7)           ## 00000790
/* 00AAC 8088BB2C 1000000E */  beq     $zero, $zero, .L8088BB68   
/* 00AB0 8088BB30 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L8088BB34:
/* 00AB4 8088BB34 0C010D5B */  jal     func_8004356C              
/* 00AB8 8088BB38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00ABC 8088BB3C 5440000A */  bnel    $v0, $zero, .L8088BB68     
/* 00AC0 8088BB40 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00AC4 8088BB44 92180169 */  lbu     $t8, 0x0169($s0)           ## 00000169
/* 00AC8 8088BB48 8FB9002C */  lw      $t9, 0x002C($sp)           
/* 00ACC 8088BB4C 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00AD0 8088BB50 53000004 */  beql    $t8, $zero, .L8088BB64     
/* 00AD4 8088BB54 A2000169 */  sb      $zero, 0x0169($s0)         ## 00000169
/* 00AD8 8088BB58 0C0169DF */  jal     func_8005A77C              
/* 00ADC 8088BB5C 8F240790 */  lw      $a0, 0x0790($t9)           ## 00000790
/* 00AE0 8088BB60 A2000169 */  sb      $zero, 0x0169($s0)         ## 00000169
.L8088BB64:
/* 00AE4 8088BB64 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L8088BB68:
/* 00AE8 8088BB68 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00AEC 8088BB6C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00AF0 8088BB70 03E00008 */  jr      $ra                        
/* 00AF4 8088BB74 00000000 */  nop
