.section	".rodata"
.align	8
l.7003:	! 128.000000
l.6954:	! 0.900000
l.6843:	! 150.000000
l.6840:	! -150.000000
l.6821:	! 0.100000
l.6817:	! -2.000000
l.6814:	! 0.003906
l.6782:	! 20.000000
l.6780:	! 0.050000
l.6772:	! 0.250000
l.6763:	! 10.000000
l.6758:	! 0.300000
l.6756:	! 255.000000
l.6751:	! 0.150000
l.6744:	! 3.141593
l.6742:	! 30.000000
l.6740:	! 15.000000
l.6738:	! 0.000100
l.6689:	! 100000000.000000
l.6683:	! 1000000000.000000
l.6660:	! -0.100000
l.6646:	! 0.010000
l.6644:	! -0.200000
l.6425:	! 2.000000
l.6388:	! -200.000000
l.6385:	! 200.000000
l.6380:	! 0.017453
l.6292:	! -1.000000
l.6283:	! 0.090909
l.6281:	! 0.111111
l.6279:	! 0.142857
l.6277:	! 0.200000
l.6275:	! 0.333333
l.6268:	! 0.001389
l.6266:	! 0.041667
l.6263:	! 1.000000
l.6259:	! 3.141593
l.6256:	! 6.283185
l.6254:	! 0.000198
l.6252:	! 0.008333
l.6250:	! 0.166667
l.6248:	! 0.500000
l.6244:	! 0.000000
.section	".text"
	nop
	j min_caml_start
fiszero.2509:  #pc 8
	fmv	%f1, l.6244  #0 pc 8
	feq	%x31, %f0, %f1  #1 pc 12
	blt	%x0, %x31, 12  #1 pc 16
	j	fbe_else.9115 #pc 20
	nop #pc 24
	addi	%x6, %x0, 1  #0 pc 28
	ret #pc 32
	nop #pc 36
fbe_else.9115: #pc 40
	addi	%x6, %x0, 0  #0 pc 40
	ret #pc 44
	nop #pc 48
fispos.2511:  #pc 52
	fmv	%f1, l.6244  #0 pc 52
	fle	%x31, %f0, %f1  #3 pc 56
	blt	%x0, %x31, 12  #3 pc 60
	j	fble_else.9116 #pc 64
	nop #pc 68
	addi	%x6, %x0, 0  #0 pc 72
	ret #pc 76
	nop #pc 80
fble_else.9116: #pc 84
	addi	%x6, %x0, 1  #0 pc 84
	ret #pc 88
	nop #pc 92
fisneg.2513:  #pc 96
	fmv	%f1, l.6244  #0 pc 96
	fle	%x31, %f1, %f0  #5 pc 100
	blt	%x0, %x31, 12  #5 pc 104
	j	fble_else.9117 #pc 108
	nop #pc 112
	addi	%x6, %x0, 0  #0 pc 116
	ret #pc 120
	nop #pc 124
fble_else.9117: #pc 128
	addi	%x6, %x0, 1  #0 pc 128
	ret #pc 132
	nop #pc 136
fneg.2515:  #pc 140
	fsub	%f0, %f30, %f0  #7 pc 140
	ret #pc 144
	nop #pc 148
fsqr.2517:  #pc 152
	fmul	%f0, %f0, %f0  #9 pc 152
	ret #pc 156
	nop #pc 160
fhalf.2519:  #pc 164
	fmv	%f1, l.6248  #0 pc 164
	fmul	%f0, %f1, %f0  #11 pc 168
	ret #pc 172
	nop #pc 176
fless.2521:  #pc 180
	fle	%x31, %f1, %f0  #13 pc 180
	blt	%x0, %x31, 12  #13 pc 184
	j	fble_else.9118 #pc 188
	nop #pc 192
	addi	%x6, %x0, 0  #0 pc 196
	ret #pc 200
	nop #pc 204
fble_else.9118: #pc 208
	addi	%x6, %x0, 1  #0 pc 208
	ret #pc 212
	nop #pc 216
sin_sub.2524:  #pc 220
	fmul	%f1, %f0, %f0  #16 pc 220
	fmul	%f2, %f0, %f1  #17 pc 224
	fmul	%f3, %f2, %f1  #18 pc 228
	fmul	%f1, %f3, %f1  #19 pc 232
	fmv	%f4, l.6250  #0 pc 236
	fmul	%f2, %f4, %f2  #20 pc 240
	fsub	%f0, %f0, %f2  #20 pc 244
	fmv	%f2, l.6252  #0 pc 248
	fmul	%f2, %f2, %f3  #20 pc 252
	fadd	%f0, %f0, %f2  #20 pc 256
	fmv	%f2, l.6254  #0 pc 260
	fmul	%f1, %f2, %f1  #20 pc 264
	fsub	%f0, %f0, %f1  #20 pc 268
	ret #pc 272
	nop #pc 276
sin.2526:  #pc 280
	fmv	%f1, l.6256  #0 pc 280
	fle	%x31, %f0, %f1  #24 pc 284
	blt	%x0, %x31, 12  #24 pc 288
	j	fble_else.9119 #pc 292
	nop #pc 296
	fmv	%f1, l.6259  #0 pc 300
	fle	%x31, %f0, %f1  #27 pc 304
	blt	%x0, %x31, 12  #27 pc 308
	j	fble_else.9120 #pc 312
	nop #pc 316
	fmv	%f1, l.6244  #0 pc 320
	fle	%x31, %f1, %f0  #30 pc 324
	blt	%x0, %x31, 12  #30 pc 328
	j	fble_else.9121 #pc 332
	nop #pc 336
	j	sin_sub.2524  #33 pc 340
	nop #pc 344
fble_else.9121: #pc 348
	fsub	%f0, %f30, %f0  #31 pc 348
	sw	%x1, 0(%x2)  #31 pc 352
	addi	%x2, %x2, 4  #31 pc 356
	jal	%x1, sin.2526  #31 pc 360
	addi	%x2, %x2, -4  #31 pc 364
	lw	%x1, 0(%x2) #31 pc 368
	fsub	%f0, %f30, %f0  #31 pc 372
	ret #pc 376
	nop #pc 380
fble_else.9120: #pc 384
	fmv	%f1, l.6259  #0 pc 384
	fsub	%f0, %f0, %f1  #28 pc 388
	sw	%x1, 0(%x2)  #28 pc 392
	addi	%x2, %x2, 4  #28 pc 396
	jal	%x1, sin_sub.2524  #28 pc 400
	addi	%x2, %x2, -4  #28 pc 404
	lw	%x1, 0(%x2) #28 pc 408
	fsub	%f0, %f30, %f0  #28 pc 412
	ret #pc 416
	nop #pc 420
fble_else.9119: #pc 424
	fmv	%f1, l.6256  #0 pc 424
	fsub	%f0, %f0, %f1  #25 pc 428
	j	sin.2526  #25 pc 432
	nop #pc 436
cos_sub.2528:  #pc 440
	fmul	%f0, %f0, %f0  #37 pc 440
	fmul	%f1, %f0, %f0  #38 pc 444
	fmul	%f2, %f1, %f0  #39 pc 448
	fmv	%f3, l.6263  #0 pc 452
	fmv	%f4, l.6248  #0 pc 456
	fmul	%f0, %f4, %f0  #40 pc 460
	fsub	%f0, %f3, %f0  #40 pc 464
	fmv	%f3, l.6266  #0 pc 468
	fmul	%f1, %f3, %f1  #40 pc 472
	fadd	%f0, %f0, %f1  #40 pc 476
	fmv	%f1, l.6268  #0 pc 480
	fmul	%f1, %f1, %f2  #40 pc 484
	fsub	%f0, %f0, %f1  #40 pc 488
	ret #pc 492
	nop #pc 496
cos.2530:  #pc 500
	fmv	%f1, l.6256  #0 pc 500
	fle	%x31, %f0, %f1  #44 pc 504
	blt	%x0, %x31, 12  #44 pc 508
	j	fble_else.9122 #pc 512
	nop #pc 516
	fmv	%f1, l.6259  #0 pc 520
	fle	%x31, %f0, %f1  #47 pc 524
	blt	%x0, %x31, 12  #47 pc 528
	j	fble_else.9123 #pc 532
	nop #pc 536
	fmv	%f1, l.6244  #0 pc 540
	fle	%x31, %f1, %f0  #50 pc 544
	blt	%x0, %x31, 12  #50 pc 548
	j	fble_else.9124 #pc 552
	nop #pc 556
	j	cos_sub.2528  #53 pc 560
	nop #pc 564
fble_else.9124: #pc 568
	fsub	%f0, %f30, %f0  #51 pc 568
	j	cos.2530  #51 pc 572
	nop #pc 576
fble_else.9123: #pc 580
	fmv	%f1, l.6259  #0 pc 580
	fsub	%f0, %f0, %f1  #48 pc 584
	sw	%x1, 0(%x2)  #48 pc 588
	addi	%x2, %x2, 4  #48 pc 592
	jal	%x1, cos_sub.2528  #48 pc 596
	addi	%x2, %x2, -4  #48 pc 600
	lw	%x1, 0(%x2) #48 pc 604
	fsub	%f0, %f30, %f0  #48 pc 608
	ret #pc 612
	nop #pc 616
fble_else.9122: #pc 620
	fmv	%f1, l.6256  #0 pc 620
	fsub	%f0, %f0, %f1  #45 pc 624
	j	cos.2530  #45 pc 628
	nop #pc 632
atan.2532:  #pc 636
	fmul	%f1, %f0, %f0  #57 pc 636
	fmul	%f2, %f0, %f1  #58 pc 640
	fmul	%f3, %f2, %f1  #59 pc 644
	fmul	%f4, %f3, %f1  #60 pc 648
	fmul	%f5, %f4, %f1  #61 pc 652
	fmul	%f1, %f5, %f1  #62 pc 656
	fmv	%f6, l.6275  #0 pc 660
	fmul	%f2, %f6, %f2  #63 pc 664
	fsub	%f0, %f0, %f2  #63 pc 668
	fmv	%f2, l.6277  #0 pc 672
	fmul	%f2, %f2, %f3  #63 pc 676
	fadd	%f0, %f0, %f2  #63 pc 680
	fmv	%f2, l.6279  #0 pc 684
	fmul	%f2, %f2, %f4  #63 pc 688
	fsub	%f0, %f0, %f2  #63 pc 692
	fmv	%f2, l.6281  #0 pc 696
	fmul	%f2, %f2, %f5  #63 pc 700
	fadd	%f0, %f0, %f2  #63 pc 704
	fmv	%f2, l.6283  #0 pc 708
	fmul	%f1, %f2, %f1  #63 pc 712
	fsub	%f0, %f0, %f1  #63 pc 716
	ret #pc 720
	nop #pc 724
floor.2534:  #pc 728
	ftoi	%x6, %f0  #67 pc 728
	itof	%f1, %x6  #67 pc 732
	fle	%x31, %f1, %f0  #68 pc 736
	blt	%x0, %x31, 12  #68 pc 740
	j	fble_else.9125 #pc 744
	nop #pc 748
	fadd	%f0, %f1, %f30  #71 pc 752
	ret #pc 756
	nop #pc 760
fble_else.9125: #pc 764
	fmv	%f0, l.6263  #0 pc 764
	fsub	%f0, %f1, %f0  #69 pc 768
	ret #pc 772
	nop #pc 776
float_of_int.2538:  #pc 780
	itof	%f0, %x6  #77 pc 780
	ret #pc 784
	nop #pc 788
int_of_float.2540:  #pc 792
	ftoi	%x6, %f0  #80 pc 792
	ret #pc 796
	nop #pc 800
mul_abs.2542:  #pc 804
	addi	%x31, %x0, -1  #pc 804
	beq	%x8, %x31, 12  #84 pc 808
	j	be_else.9126 #pc 812
	nop #pc 816
	addi	%x6, %x9, 0  #85 pc 820
	ret #pc 824
	nop #pc 828
be_else.9126: #pc 832
	addi	%x10, %x0, 1  #0 pc 832
	sll	%x10, %x10, %x8  #87 pc 836
	and	%x10, %x7, %x10  #87 pc 840
	beq	%x10, %x0, 12  #87 pc 844
	j	be_else.9127 #pc 848
	nop #pc 852
	addi	%x8, %x8, -1  #88 pc 856
	j	mul_abs.2542  #88 pc 860
	nop #pc 864
be_else.9127: #pc 868
	addi	%x10, %x8, -1  #90 pc 868
	sll	%x8, %x6, %x8  #90 pc 872
	add	%x9, %x9, %x8  #90 pc 876
	addi	%x8, %x10, 0  #0 pc 880
	j	mul_abs.2542  #90 pc 884
	nop #pc 888
mul.2547:  #pc 892
	bge	%x6, %x0, 12  #94 pc 892
	j	bge_else.9128 #pc 896
	nop #pc 900
	addi	%x8, %x6, 0  #94 pc 904
	j	bge_cont.9129 #pc 908
	nop #pc 912
bge_else.9128: #pc 916
	sub	%x8, %x0, %x6  #94 pc 916
bge_cont.9129: #pc 920
	bge	%x7, %x0, 12  #95 pc 920
	j	bge_else.9130 #pc 924
	nop #pc 928
	addi	%x9, %x7, 0  #95 pc 932
	j	bge_cont.9131 #pc 936
	nop #pc 940
bge_else.9130: #pc 944
	sub	%x9, %x0, %x7  #95 pc 944
bge_cont.9131: #pc 948
	addi	%x10, %x0, 30  #0 pc 948
	addi	%x11, %x0, 0  #0 pc 952
	sw	%x7, 0(%x2)  #96 pc 956
	sw	%x6, 4(%x2)  #96 pc 960
	addi	%x7, %x9, 0  #0 pc 964
	addi	%x6, %x8, 0  #0 pc 968
	addi	%x9, %x11, 0  #0 pc 972
	addi	%x8, %x10, 0  #0 pc 976
	sw	%x1, 8(%x2)  #96 pc 980
	addi	%x2, %x2, 12  #96 pc 984
	jal	%x1, mul_abs.2542  #96 pc 988
	addi	%x2, %x2, -12  #96 pc 992
	lw	%x1, 8(%x2) #96 pc 996
	lw	%x7, 4(%x2)  #97 pc 1000
	srli	%x7, %x7, 31  #97 pc 1004
	lw	%x8, 0(%x2)  #97 pc 1008
	srli	%x8, %x8, 31  #97 pc 1012
	beq	%x7, %x8, 12  #97 pc 1016
	j	be_else.9132 #pc 1020
	nop #pc 1024
	ret #pc 1028
	nop #pc 1032
be_else.9132: #pc 1036
	sub	%x6, %x0, %x6  #100 pc 1036
	ret #pc 1040
	nop #pc 1044
div_abs.2550:  #pc 1048
	addi	%x31, %x0, -1  #pc 1048
	beq	%x8, %x31, 12  #104 pc 1052
	j	be_else.9133 #pc 1056
	nop #pc 1060
	addi	%x6, %x9, 0  #105 pc 1064
	ret #pc 1068
	nop #pc 1072
be_else.9133: #pc 1076
	srl	%x10, %x6, %x8  #107 pc 1076
	bge	%x10, %x7, 12  #107 pc 1080
	j	ble_else.9134 #pc 1084
	nop #pc 1088
	sll	%x10, %x7, %x8  #108 pc 1092
	sub	%x6, %x6, %x10  #108 pc 1096
	addi	%x10, %x8, -1  #108 pc 1100
	addi	%x11, %x0, 1  #0 pc 1104
	sll	%x8, %x11, %x8  #108 pc 1108
	add	%x9, %x9, %x8  #108 pc 1112
	addi	%x8, %x10, 0  #0 pc 1116
	j	div_abs.2550  #108 pc 1120
	nop #pc 1124
ble_else.9134: #pc 1128
	addi	%x8, %x8, -1  #110 pc 1128
	j	div_abs.2550  #110 pc 1132
	nop #pc 1136
div.2555:  #pc 1140
	bge	%x6, %x0, 12  #114 pc 1140
	j	bge_else.9135 #pc 1144
	nop #pc 1148
	addi	%x8, %x6, 0  #114 pc 1152
	j	bge_cont.9136 #pc 1156
	nop #pc 1160
bge_else.9135: #pc 1164
	sub	%x8, %x0, %x6  #114 pc 1164
bge_cont.9136: #pc 1168
	bge	%x7, %x0, 12  #115 pc 1168
	j	bge_else.9137 #pc 1172
	nop #pc 1176
	addi	%x9, %x7, 0  #115 pc 1180
	j	bge_cont.9138 #pc 1184
	nop #pc 1188
bge_else.9137: #pc 1192
	sub	%x9, %x0, %x7  #115 pc 1192
bge_cont.9138: #pc 1196
	addi	%x10, %x0, 30  #0 pc 1196
	addi	%x11, %x0, 0  #0 pc 1200
	sw	%x7, 0(%x2)  #116 pc 1204
	sw	%x6, 4(%x2)  #116 pc 1208
	addi	%x7, %x9, 0  #0 pc 1212
	addi	%x6, %x8, 0  #0 pc 1216
	addi	%x9, %x11, 0  #0 pc 1220
	addi	%x8, %x10, 0  #0 pc 1224
	sw	%x1, 8(%x2)  #116 pc 1228
	addi	%x2, %x2, 12  #116 pc 1232
	jal	%x1, div_abs.2550  #116 pc 1236
	addi	%x2, %x2, -12  #116 pc 1240
	lw	%x1, 8(%x2) #116 pc 1244
	lw	%x7, 4(%x2)  #117 pc 1248
	srli	%x7, %x7, 31  #117 pc 1252
	lw	%x8, 0(%x2)  #117 pc 1256
	srli	%x8, %x8, 31  #117 pc 1260
	beq	%x7, %x8, 12  #117 pc 1264
	j	be_else.9139 #pc 1268
	nop #pc 1272
	ret #pc 1276
	nop #pc 1280
be_else.9139: #pc 1284
	sub	%x6, %x0, %x6  #120 pc 1284
	ret #pc 1288
	nop #pc 1292
print_char.2558:  #pc 1296
	sw	%x6, 0(%x5)  #123 pc 1296
	addi	%x5, %x5, 4  #123 pc 1300
	ret #pc 1304
	nop #pc 1308
print_int.2560:  #pc 1312
	bge	%x6, %x0, 12  #127 pc 1312
	j	bge_else.9141 #pc 1316
	nop #pc 1320
	addi	%x31, %x0, 10  #pc 1324
	bge	%x6, %x31, 12  #131 pc 1328
	j	bge_else.9142 #pc 1332
	nop #pc 1336
	addi	%x7, %x0, 10  #0 pc 1340
	sw	%x6, 0(%x2)  #134 pc 1344
	sw	%x1, 4(%x2)  #134 pc 1348
	addi	%x2, %x2, 8  #134 pc 1352
	jal	%x1, div.2555  #134 pc 1356
	addi	%x2, %x2, -8  #134 pc 1360
	lw	%x1, 4(%x2) #134 pc 1364
	sw	%x6, 4(%x2)  #135 pc 1368
	sw	%x1, 8(%x2)  #135 pc 1372
	addi	%x2, %x2, 12  #135 pc 1376
	jal	%x1, print_int.2560  #135 pc 1380
	addi	%x2, %x2, -12  #135 pc 1384
	lw	%x1, 8(%x2) #135 pc 1388
	addi	%x7, %x0, 10  #0 pc 1392
	lw	%x6, 4(%x2)  #136 pc 1396
	sw	%x1, 8(%x2)  #136 pc 1400
	addi	%x2, %x2, 12  #136 pc 1404
	jal	%x1, mul.2547  #136 pc 1408
	addi	%x2, %x2, -12  #136 pc 1412
	lw	%x1, 8(%x2) #136 pc 1416
	lw	%x7, 0(%x2)  #136 pc 1420
	sub	%x6, %x7, %x6  #136 pc 1424
	addi	%x6, %x6, 48  #136 pc 1428
	sw	%x6, 0(%x5)  #136 pc 1432
	addi	%x5, %x5, 4  #136 pc 1436
	ret #pc 1440
	nop #pc 1444
bge_else.9142: #pc 1448
	addi	%x6, %x6, 48  #132 pc 1448
	sw	%x6, 0(%x5)  #132 pc 1452
	addi	%x5, %x5, 4  #132 pc 1456
	ret #pc 1460
	nop #pc 1464
bge_else.9141: #pc 1468
	addi	%x7, %x0, 45  #0 pc 1468
	sw	%x7, 0(%x5)  #128 pc 1472
	addi	%x5, %x5, 4  #128 pc 1476
	sub	%x6, %x0, %x6  #129 pc 1480
	j	print_int.2560  #129 pc 1484
	nop #pc 1488
read_int.2562:  #pc 1492
	lw	%x6, 0(%x4)  #142 pc 1492
	addi	%x4, %x4, 4  #142 pc 1496
	ret #pc 1500
	nop #pc 1504
read_float.2564:  #pc 1508
	flw	%f0, 0(%x4)  #145 pc 1508
	addi	%x4, %x4, 4  #145 pc 1512
	ret #pc 1516
	nop #pc 1520
assign_array.2566:  #pc 1524
	bge	%x8, %x0, 12  #196 pc 1524
	j	bge_else.9145 #pc 1528
	nop #pc 1532
	beq	%x8, %x0, 12  #199 pc 1536
	j	be_else.9146 #pc 1540
	nop #pc 1544
	slli	%x8, %x8, 2  #200 pc 1548
	add	%x31, %x8, %x6  #200 pc 1552
	sw	%x7, 0(%x31)  #200 pc 1556
	ret #pc 1560
	nop #pc 1564
be_else.9146: #pc 1568
	slli	%x9, %x8, 2  #202 pc 1568
	add	%x31, %x9, %x6  #202 pc 1572
	sw	%x7, 0(%x31)  #202 pc 1576
	addi	%x8, %x8, -1  #203 pc 1580
	j	assign_array.2566  #203 pc 1584
	nop #pc 1588
bge_else.9145: #pc 1592
	ret #pc 1592
	nop #pc 1596
create_array.2570:  #pc 1600
	addi	%x8, %x3, 0  #207 pc 1600
	addi	%x9, %x8, 0  #208 pc 1604
	slli	%x10, %x6, 2  #209 pc 1608
	add	%x8, %x8, %x10  #209 pc 1612
	addi	%x3, %x8, 0  #209 pc 1616
	addi	%x8, %x6, -1  #210 pc 1620
	sw	%x9, 0(%x2)  #210 pc 1624
	addi	%x6, %x9, 0  #0 pc 1628
	sw	%x1, 4(%x2)  #210 pc 1632
	addi	%x2, %x2, 8  #210 pc 1636
	jal	%x1, assign_array.2566  #210 pc 1640
	addi	%x2, %x2, -8  #210 pc 1644
	lw	%x1, 4(%x2) #210 pc 1648
	lw	%x6, 0(%x2)  #211 pc 1652
	ret #pc 1656
	nop #pc 1660
assign_farray.2573:  #pc 1664
	bge	%x7, %x0, 12  #215 pc 1664
	j	bge_else.9149 #pc 1668
	nop #pc 1672
	beq	%x7, %x0, 12  #218 pc 1676
	j	be_else.9150 #pc 1680
	nop #pc 1684
	slli	%x7, %x7, 2  #219 pc 1688
	add	%x31, %x7, %x6  #219 pc 1692
	fsw	%f0, 0(%x31) #219 pc 1696
	ret #pc 1700
	nop #pc 1704
be_else.9150: #pc 1708
	slli	%x8, %x7, 2  #221 pc 1708
	add	%x31, %x8, %x6  #221 pc 1712
	fsw	%f0, 0(%x31) #221 pc 1716
	addi	%x7, %x7, -1  #222 pc 1720
	j	assign_farray.2573  #222 pc 1724
	nop #pc 1728
bge_else.9149: #pc 1732
	ret #pc 1732
	nop #pc 1736
create_float_array.2577:  #pc 1740
	addi	%x7, %x3, 0  #226 pc 1740
	addi	%x8, %x7, 0  #227 pc 1744
	slli	%x9, %x6, 2  #228 pc 1748
	add	%x7, %x7, %x9  #228 pc 1752
	addi	%x3, %x7, 0  #228 pc 1756
	addi	%x7, %x6, -1  #229 pc 1760
	sw	%x8, 0(%x2)  #229 pc 1764
	addi	%x6, %x8, 0  #0 pc 1768
	sw	%x1, 4(%x2)  #229 pc 1772
	addi	%x2, %x2, 8  #229 pc 1776
	jal	%x1, assign_farray.2573  #229 pc 1780
	addi	%x2, %x2, -8  #229 pc 1784
	lw	%x1, 4(%x2) #229 pc 1788
	lw	%x6, 0(%x2)  #230 pc 1792
	ret #pc 1796
	nop #pc 1800
xor.2610:  #pc 1804
	beq	%x6, %x0, 12  #368 pc 1804
	j	be_else.9153 #pc 1808
	nop #pc 1812
	addi	%x6, %x7, 0  #368 pc 1816
	ret #pc 1820
	nop #pc 1824
be_else.9153: #pc 1828
	beq	%x7, %x0, 12  #368 pc 1828
	j	be_else.9154 #pc 1832
	nop #pc 1836
	addi	%x6, %x0, 1  #0 pc 1840
	ret #pc 1844
	nop #pc 1848
be_else.9154: #pc 1852
	addi	%x6, %x0, 0  #0 pc 1852
	ret #pc 1856
	nop #pc 1860
sgn.2613:  #pc 1864
	fsw	%f0, 0(%x2)  #376 pc 1864
	sw	%x1, 8(%x2)  #376 pc 1868
	addi	%x2, %x2, 12  #376 pc 1872
	jal	%x1, fiszero.2509  #376 pc 1876
	addi	%x2, %x2, -12  #376 pc 1880
	lw	%x1, 8(%x2) #376 pc 1884
	beq	%x6, %x0, 12  #376 pc 1888
	j	be_else.9155 #pc 1892
	nop #pc 1896
	flw	%f0, 0(%x2)  #377 pc 1900
	sw	%x1, 8(%x2)  #377 pc 1904
	addi	%x2, %x2, 12  #377 pc 1908
	jal	%x1, fispos.2511  #377 pc 1912
	addi	%x2, %x2, -12  #377 pc 1916
	lw	%x1, 8(%x2) #377 pc 1920
	beq	%x6, %x0, 12  #377 pc 1924
	j	be_else.9156 #pc 1928
	nop #pc 1932
	fmv	%f0, l.6292  #0 pc 1936
	ret #pc 1940
	nop #pc 1944
be_else.9156: #pc 1948
	fmv	%f0, l.6263  #0 pc 1948
	ret #pc 1952
	nop #pc 1956
be_else.9155: #pc 1960
	fmv	%f0, l.6244  #0 pc 1960
	ret #pc 1964
	nop #pc 1968
fneg_cond.2615:  #pc 1972
	beq	%x6, %x0, 12  #383 pc 1972
	j	be_else.9157 #pc 1976
	nop #pc 1980
	j	fneg.2515  #383 pc 1984
	nop #pc 1988
be_else.9157: #pc 1992
	ret #pc 1992
	nop #pc 1996
add_mod5.2618:  #pc 2000
	add	%x6, %x6, %x7  #388 pc 2000
	addi	%x31, %x0, 5  #pc 2004
	bge	%x6, %x31, 12  #389 pc 2008
	j	bge_else.9158 #pc 2012
	nop #pc 2016
	addi	%x6, %x6, -5  #389 pc 2020
	ret #pc 2024
	nop #pc 2028
bge_else.9158: #pc 2032
	ret #pc 2032
	nop #pc 2036
vecset.2621:  #pc 2040
	fsw	%f0, 0(%x6)  #404 pc 2040
	fsw	%f1, 4(%x6)  #405 pc 2044
	fsw	%f2, 8(%x6)  #406 pc 2048
	ret #pc 2052
	nop #pc 2056
vecfill.2626:  #pc 2060
	fsw	%f0, 0(%x6)  #411 pc 2060
	fsw	%f0, 4(%x6)  #412 pc 2064
	fsw	%f0, 8(%x6)  #413 pc 2068
	ret #pc 2072
	nop #pc 2076
vecbzero.2629:  #pc 2080
	fmv	%f0, l.6244  #0 pc 2080
	j	vecfill.2626  #418 pc 2084
	nop #pc 2088
veccpy.2631:  #pc 2092
	flw	%f0, 0(%x7)  #423 pc 2092
	fsw	%f0, 0(%x6)  #423 pc 2096
	flw	%f0, 4(%x7)  #424 pc 2100
	fsw	%f0, 4(%x6)  #424 pc 2104
	flw	%f0, 8(%x7)  #425 pc 2108
	fsw	%f0, 8(%x6)  #425 pc 2112
	ret #pc 2116
	nop #pc 2120
vecunit_sgn.2634:  #pc 2124
	flw	%f0, 0(%x6)  #447 pc 2124
	sw	%x7, 0(%x2)  #447 pc 2128
	sw	%x6, 4(%x2)  #447 pc 2132
	sw	%x1, 8(%x2)  #447 pc 2136
	addi	%x2, %x2, 12  #447 pc 2140
	jal	%x1, fsqr.2517  #447 pc 2144
	addi	%x2, %x2, -12  #447 pc 2148
	lw	%x1, 8(%x2) #447 pc 2152
	lw	%x6, 4(%x2)  #447 pc 2156
	flw	%f1, 4(%x6)  #447 pc 2160
	fsw	%f0, 8(%x2)  #447 pc 2164
	fadd	%f0, %f1, %f30  #0 pc 2168
	sw	%x1, 16(%x2)  #447 pc 2172
	addi	%x2, %x2, 20  #447 pc 2176
	jal	%x1, fsqr.2517  #447 pc 2180
	addi	%x2, %x2, -20  #447 pc 2184
	lw	%x1, 16(%x2) #447 pc 2188
	flw	%f1, 8(%x2)  #447 pc 2192
	fadd	%f0, %f1, %f0  #447 pc 2196
	lw	%x6, 4(%x2)  #447 pc 2200
	flw	%f1, 8(%x6)  #447 pc 2204
	fsw	%f0, 16(%x2)  #447 pc 2208
	fadd	%f0, %f1, %f30  #0 pc 2212
	sw	%x1, 24(%x2)  #447 pc 2216
	addi	%x2, %x2, 28  #447 pc 2220
	jal	%x1, fsqr.2517  #447 pc 2224
	addi	%x2, %x2, -28  #447 pc 2228
	lw	%x1, 24(%x2) #447 pc 2232
	flw	%f1, 16(%x2)  #447 pc 2236
	fadd	%f0, %f1, %f0  #447 pc 2240
	fsqrt	%f0, %f0  #447 pc 2244
	fsw	%f0, 24(%x2)  #448 pc 2248
	sw	%x1, 32(%x2)  #448 pc 2252
	addi	%x2, %x2, 36  #448 pc 2256
	jal	%x1, fiszero.2509  #448 pc 2260
	addi	%x2, %x2, -36  #448 pc 2264
	lw	%x1, 32(%x2) #448 pc 2268
	beq	%x6, %x0, 12  #448 pc 2272
	j	be_else.9162 #pc 2276
	nop #pc 2280
	lw	%x6, 0(%x2)  #448 pc 2284
	beq	%x6, %x0, 12  #448 pc 2288
	j	be_else.9164 #pc 2292
	nop #pc 2296
	fmv	%f0, l.6263  #0 pc 2300
	flw	%f1, 24(%x2)  #448 pc 2304
	fdiv	%f0, %f0, %f1  #448 pc 2308
	j	be_cont.9165 #pc 2312
	nop #pc 2316
be_else.9164: #pc 2320
	fmv	%f0, l.6292  #0 pc 2320
	flw	%f1, 24(%x2)  #448 pc 2324
	fdiv	%f0, %f0, %f1  #448 pc 2328
be_cont.9165: #pc 2332
	j	be_cont.9163 #pc 2332
	nop #pc 2336
be_else.9162: #pc 2340
	fmv	%f0, l.6263  #0 pc 2340
be_cont.9163: #pc 2344
	lw	%x6, 4(%x2)  #449 pc 2344
	flw	%f1, 0(%x6)  #449 pc 2348
	fmul	%f1, %f1, %f0  #449 pc 2352
	fsw	%f1, 0(%x6)  #449 pc 2356
	flw	%f1, 4(%x6)  #450 pc 2360
	fmul	%f1, %f1, %f0  #450 pc 2364
	fsw	%f1, 4(%x6)  #450 pc 2368
	flw	%f1, 8(%x6)  #451 pc 2372
	fmul	%f0, %f1, %f0  #451 pc 2376
	fsw	%f0, 8(%x6)  #451 pc 2380
	ret #pc 2384
	nop #pc 2388
veciprod.2637:  #pc 2392
	flw	%f0, 0(%x6)  #456 pc 2392
	flw	%f1, 0(%x7)  #456 pc 2396
	fmul	%f0, %f0, %f1  #456 pc 2400
	flw	%f1, 4(%x6)  #456 pc 2404
	flw	%f2, 4(%x7)  #456 pc 2408
	fmul	%f1, %f1, %f2  #456 pc 2412
	fadd	%f0, %f0, %f1  #456 pc 2416
	flw	%f1, 8(%x6)  #456 pc 2420
	flw	%f2, 8(%x7)  #456 pc 2424
	fmul	%f1, %f1, %f2  #456 pc 2428
	fadd	%f0, %f0, %f1  #456 pc 2432
	ret #pc 2436
	nop #pc 2440
veciprod2.2640:  #pc 2444
	flw	%f3, 0(%x6)  #461 pc 2444
	fmul	%f0, %f3, %f0  #461 pc 2448
	flw	%f3, 4(%x6)  #461 pc 2452
	fmul	%f1, %f3, %f1  #461 pc 2456
	fadd	%f0, %f0, %f1  #461 pc 2460
	flw	%f1, 8(%x6)  #461 pc 2464
	fmul	%f1, %f1, %f2  #461 pc 2468
	fadd	%f0, %f0, %f1  #461 pc 2472
	ret #pc 2476
	nop #pc 2480
vecaccum.2645:  #pc 2484
	flw	%f1, 0(%x6)  #466 pc 2484
	flw	%f2, 0(%x7)  #466 pc 2488
	fmul	%f2, %f0, %f2  #466 pc 2492
	fadd	%f1, %f1, %f2  #466 pc 2496
	fsw	%f1, 0(%x6)  #466 pc 2500
	flw	%f1, 4(%x6)  #467 pc 2504
	flw	%f2, 4(%x7)  #467 pc 2508
	fmul	%f2, %f0, %f2  #467 pc 2512
	fadd	%f1, %f1, %f2  #467 pc 2516
	fsw	%f1, 4(%x6)  #467 pc 2520
	flw	%f1, 8(%x6)  #468 pc 2524
	flw	%f2, 8(%x7)  #468 pc 2528
	fmul	%f0, %f0, %f2  #468 pc 2532
	fadd	%f0, %f1, %f0  #468 pc 2536
	fsw	%f0, 8(%x6)  #468 pc 2540
	ret #pc 2544
	nop #pc 2548
vecadd.2649:  #pc 2552
	flw	%f0, 0(%x6)  #473 pc 2552
	flw	%f1, 0(%x7)  #473 pc 2556
	fadd	%f0, %f0, %f1  #473 pc 2560
	fsw	%f0, 0(%x6)  #473 pc 2564
	flw	%f0, 4(%x6)  #474 pc 2568
	flw	%f1, 4(%x7)  #474 pc 2572
	fadd	%f0, %f0, %f1  #474 pc 2576
	fsw	%f0, 4(%x6)  #474 pc 2580
	flw	%f0, 8(%x6)  #475 pc 2584
	flw	%f1, 8(%x7)  #475 pc 2588
	fadd	%f0, %f0, %f1  #475 pc 2592
	fsw	%f0, 8(%x6)  #475 pc 2596
	ret #pc 2600
	nop #pc 2604
vecscale.2652:  #pc 2608
	flw	%f1, 0(%x6)  #489 pc 2608
	fmul	%f1, %f1, %f0  #489 pc 2612
	fsw	%f1, 0(%x6)  #489 pc 2616
	flw	%f1, 4(%x6)  #490 pc 2620
	fmul	%f1, %f1, %f0  #490 pc 2624
	fsw	%f1, 4(%x6)  #490 pc 2628
	flw	%f1, 8(%x6)  #491 pc 2632
	fmul	%f0, %f1, %f0  #491 pc 2636
	fsw	%f0, 8(%x6)  #491 pc 2640
	ret #pc 2644
	nop #pc 2648
vecaccumv.2655:  #pc 2652
	flw	%f0, 0(%x6)  #496 pc 2652
	flw	%f1, 0(%x7)  #496 pc 2656
	flw	%f2, 0(%x8)  #496 pc 2660
	fmul	%f1, %f1, %f2  #496 pc 2664
	fadd	%f0, %f0, %f1  #496 pc 2668
	fsw	%f0, 0(%x6)  #496 pc 2672
	flw	%f0, 4(%x6)  #497 pc 2676
	flw	%f1, 4(%x7)  #497 pc 2680
	flw	%f2, 4(%x8)  #497 pc 2684
	fmul	%f1, %f1, %f2  #497 pc 2688
	fadd	%f0, %f0, %f1  #497 pc 2692
	fsw	%f0, 4(%x6)  #497 pc 2696
	flw	%f0, 8(%x6)  #498 pc 2700
	flw	%f1, 8(%x7)  #498 pc 2704
	flw	%f2, 8(%x8)  #498 pc 2708
	fmul	%f1, %f1, %f2  #498 pc 2712
	fadd	%f0, %f0, %f1  #498 pc 2716
	fsw	%f0, 8(%x6)  #498 pc 2720
	ret #pc 2724
	nop #pc 2728
o_texturetype.2659:  #pc 2732
	lw	%x6, 0(%x6)  #507 pc 2732
	ret #pc 2736
	nop #pc 2740
o_form.2661:  #pc 2744
	lw	%x6, 4(%x6)  #517 pc 2744
	ret #pc 2748
	nop #pc 2752
o_reflectiontype.2663:  #pc 2756
	lw	%x6, 8(%x6)  #527 pc 2756
	ret #pc 2760
	nop #pc 2764
o_isinvert.2665:  #pc 2768
	lw	%x6, 24(%x6)  #537 pc 2768
	ret #pc 2772
	nop #pc 2776
o_isrot.2667:  #pc 2780
	lw	%x6, 12(%x6)  #546 pc 2780
	ret #pc 2784
	nop #pc 2788
o_param_a.2669:  #pc 2792
	lw	%x6, 16(%x6)  #555 pc 2792
	flw	%f0, 0(%x6)  #560 pc 2796
	ret #pc 2800
	nop #pc 2804
o_param_b.2671:  #pc 2808
	lw	%x6, 16(%x6)  #565 pc 2808
	flw	%f0, 4(%x6)  #570 pc 2812
	ret #pc 2816
	nop #pc 2820
o_param_c.2673:  #pc 2824
	lw	%x6, 16(%x6)  #575 pc 2824
	flw	%f0, 8(%x6)  #580 pc 2828
	ret #pc 2832
	nop #pc 2836
o_param_abc.2675:  #pc 2840
	lw	%x6, 16(%x6)  #585 pc 2840
	ret #pc 2844
	nop #pc 2848
o_param_x.2677:  #pc 2852
	lw	%x6, 20(%x6)  #595 pc 2852
	flw	%f0, 0(%x6)  #600 pc 2856
	ret #pc 2860
	nop #pc 2864
o_param_y.2679:  #pc 2868
	lw	%x6, 20(%x6)  #605 pc 2868
	flw	%f0, 4(%x6)  #610 pc 2872
	ret #pc 2876
	nop #pc 2880
o_param_z.2681:  #pc 2884
	lw	%x6, 20(%x6)  #615 pc 2884
	flw	%f0, 8(%x6)  #620 pc 2888
	ret #pc 2892
	nop #pc 2896
o_diffuse.2683:  #pc 2900
	lw	%x6, 28(%x6)  #625 pc 2900
	flw	%f0, 0(%x6)  #630 pc 2904
	ret #pc 2908
	nop #pc 2912
o_hilight.2685:  #pc 2916
	lw	%x6, 28(%x6)  #635 pc 2916
	flw	%f0, 4(%x6)  #640 pc 2920
	ret #pc 2924
	nop #pc 2928
o_color_red.2687:  #pc 2932
	lw	%x6, 32(%x6)  #645 pc 2932
	flw	%f0, 0(%x6)  #650 pc 2936
	ret #pc 2940
	nop #pc 2944
o_color_green.2689:  #pc 2948
	lw	%x6, 32(%x6)  #655 pc 2948
	flw	%f0, 4(%x6)  #660 pc 2952
	ret #pc 2956
	nop #pc 2960
o_color_blue.2691:  #pc 2964
	lw	%x6, 32(%x6)  #665 pc 2964
	flw	%f0, 8(%x6)  #670 pc 2968
	ret #pc 2972
	nop #pc 2976
o_param_r1.2693:  #pc 2980
	lw	%x6, 36(%x6)  #675 pc 2980
	flw	%f0, 0(%x6)  #680 pc 2984
	ret #pc 2988
	nop #pc 2992
o_param_r2.2695:  #pc 2996
	lw	%x6, 36(%x6)  #685 pc 2996
	flw	%f0, 4(%x6)  #690 pc 3000
	ret #pc 3004
	nop #pc 3008
o_param_r3.2697:  #pc 3012
	lw	%x6, 36(%x6)  #695 pc 3012
	flw	%f0, 8(%x6)  #700 pc 3016
	ret #pc 3020
	nop #pc 3024
o_param_ctbl.2699:  #pc 3028
	lw	%x6, 40(%x6)  #712 pc 3028
	ret #pc 3032
	nop #pc 3036
p_rgb.2701:  #pc 3040
	lw	%x6, 0(%x6)  #726 pc 3040
	ret #pc 3044
	nop #pc 3048
p_intersection_points.2703:  #pc 3052
	lw	%x6, 4(%x6)  #733 pc 3052
	ret #pc 3056
	nop #pc 3060
p_surface_ids.2705:  #pc 3064
	lw	%x6, 8(%x6)  #741 pc 3064
	ret #pc 3068
	nop #pc 3072
p_calc_diffuse.2707:  #pc 3076
	lw	%x6, 12(%x6)  #748 pc 3076
	ret #pc 3080
	nop #pc 3084
p_energy.2709:  #pc 3088
	lw	%x6, 16(%x6)  #755 pc 3088
	ret #pc 3092
	nop #pc 3096
p_received_ray_20percent.2711:  #pc 3100
	lw	%x6, 20(%x6)  #762 pc 3100
	ret #pc 3104
	nop #pc 3108
p_group_id.2713:  #pc 3112
	lw	%x6, 24(%x6)  #778 pc 3112
	lw	%x6, 0(%x6)  #780 pc 3116
	ret #pc 3120
	nop #pc 3124
p_set_group_id.2715:  #pc 3128
	lw	%x6, 24(%x6)  #785 pc 3128
	sw	%x7, 0(%x6)  #787 pc 3132
	ret #pc 3136
	nop #pc 3140
p_nvectors.2718:  #pc 3144
	lw	%x6, 28(%x6)  #792 pc 3144
	ret #pc 3148
	nop #pc 3152
d_vec.2720:  #pc 3156
	lw	%x6, 0(%x6)  #803 pc 3156
	ret #pc 3160
	nop #pc 3164
d_const.2722:  #pc 3168
	lw	%x6, 4(%x6)  #809 pc 3168
	ret #pc 3172
	nop #pc 3176
r_surface_id.2724:  #pc 3180
	lw	%x6, 0(%x6)  #819 pc 3180
	ret #pc 3184
	nop #pc 3188
r_dvec.2726:  #pc 3192
	lw	%x6, 4(%x6)  #825 pc 3192
	ret #pc 3196
	nop #pc 3200
r_bright.2728:  #pc 3204
	flw	%f0, 8(%x6)  #831 pc 3204
	ret #pc 3208
	nop #pc 3212
rad.2730:  #pc 3216
	fmv	%f1, l.6380  #0 pc 3216
	fmul	%f0, %f0, %f1  #841 pc 3220
	ret #pc 3224
	nop #pc 3228
read_screen_settings.2732:  #pc 3232
	lw	%x6, 20(%x29)  #0 pc 3232
	lw	%x7, 16(%x29)  #0 pc 3236
	lw	%x8, 12(%x29)  #0 pc 3240
	lw	%x9, 8(%x29)  #0 pc 3244
	lw	%x10, 4(%x29)  #0 pc 3248
	sw	%x6, 0(%x2)  #848 pc 3252
	sw	%x8, 4(%x2)  #848 pc 3256
	sw	%x9, 8(%x2)  #848 pc 3260
	sw	%x7, 12(%x2)  #848 pc 3264
	sw	%x10, 16(%x2)  #848 pc 3268
	sw	%x1, 20(%x2)  #848 pc 3272
	addi	%x2, %x2, 24  #848 pc 3276
	jal	%x1, read_float.2564  #848 pc 3280
	addi	%x2, %x2, -24  #848 pc 3284
	lw	%x1, 20(%x2) #848 pc 3288
	lw	%x6, 16(%x2)  #848 pc 3292
	fsw	%f0, 0(%x6)  #848 pc 3296
	sw	%x1, 20(%x2)  #849 pc 3300
	addi	%x2, %x2, 24  #849 pc 3304
	jal	%x1, read_float.2564  #849 pc 3308
	addi	%x2, %x2, -24  #849 pc 3312
	lw	%x1, 20(%x2) #849 pc 3316
	lw	%x6, 16(%x2)  #849 pc 3320
	fsw	%f0, 4(%x6)  #849 pc 3324
	sw	%x1, 20(%x2)  #850 pc 3328
	addi	%x2, %x2, 24  #850 pc 3332
	jal	%x1, read_float.2564  #850 pc 3336
	addi	%x2, %x2, -24  #850 pc 3340
	lw	%x1, 20(%x2) #850 pc 3344
	lw	%x6, 16(%x2)  #850 pc 3348
	fsw	%f0, 8(%x6)  #850 pc 3352
	sw	%x1, 20(%x2)  #852 pc 3356
	addi	%x2, %x2, 24  #852 pc 3360
	jal	%x1, read_float.2564  #852 pc 3364
	addi	%x2, %x2, -24  #852 pc 3368
	lw	%x1, 20(%x2) #852 pc 3372
	sw	%x1, 20(%x2)  #852 pc 3376
	addi	%x2, %x2, 24  #852 pc 3380
	jal	%x1, rad.2730  #852 pc 3384
	addi	%x2, %x2, -24  #852 pc 3388
	lw	%x1, 20(%x2) #852 pc 3392
	fsw	%f0, 24(%x2)  #853 pc 3396
	sw	%x1, 32(%x2)  #853 pc 3400
	addi	%x2, %x2, 36  #853 pc 3404
	jal	%x1, cos.2530  #853 pc 3408
	addi	%x2, %x2, -36  #853 pc 3412
	lw	%x1, 32(%x2) #853 pc 3416
	flw	%f1, 24(%x2)  #854 pc 3420
	fsw	%f0, 32(%x2)  #854 pc 3424
	fadd	%f0, %f1, %f30  #0 pc 3428
	sw	%x1, 40(%x2)  #854 pc 3432
	addi	%x2, %x2, 44  #854 pc 3436
	jal	%x1, sin.2526  #854 pc 3440
	addi	%x2, %x2, -44  #854 pc 3444
	lw	%x1, 40(%x2) #854 pc 3448
	fsw	%f0, 40(%x2)  #855 pc 3452
	sw	%x1, 48(%x2)  #855 pc 3456
	addi	%x2, %x2, 52  #855 pc 3460
	jal	%x1, read_float.2564  #855 pc 3464
	addi	%x2, %x2, -52  #855 pc 3468
	lw	%x1, 48(%x2) #855 pc 3472
	sw	%x1, 48(%x2)  #855 pc 3476
	addi	%x2, %x2, 52  #855 pc 3480
	jal	%x1, rad.2730  #855 pc 3484
	addi	%x2, %x2, -52  #855 pc 3488
	lw	%x1, 48(%x2) #855 pc 3492
	fsw	%f0, 48(%x2)  #856 pc 3496
	sw	%x1, 56(%x2)  #856 pc 3500
	addi	%x2, %x2, 60  #856 pc 3504
	jal	%x1, cos.2530  #856 pc 3508
	addi	%x2, %x2, -60  #856 pc 3512
	lw	%x1, 56(%x2) #856 pc 3516
	flw	%f1, 48(%x2)  #857 pc 3520
	fsw	%f0, 56(%x2)  #857 pc 3524
	fadd	%f0, %f1, %f30  #0 pc 3528
	sw	%x1, 64(%x2)  #857 pc 3532
	addi	%x2, %x2, 68  #857 pc 3536
	jal	%x1, sin.2526  #857 pc 3540
	addi	%x2, %x2, -68  #857 pc 3544
	lw	%x1, 64(%x2) #857 pc 3548
	flw	%f1, 32(%x2)  #859 pc 3552
	fmul	%f2, %f1, %f0  #859 pc 3556
	fmv	%f3, l.6385  #0 pc 3560
	fmul	%f2, %f2, %f3  #859 pc 3564
	lw	%x6, 12(%x2)  #859 pc 3568
	fsw	%f2, 0(%x6)  #859 pc 3572
	fmv	%f2, l.6388  #0 pc 3576
	flw	%f3, 40(%x2)  #860 pc 3580
	fmul	%f2, %f3, %f2  #860 pc 3584
	fsw	%f2, 4(%x6)  #860 pc 3588
	flw	%f2, 56(%x2)  #861 pc 3592
	fmul	%f4, %f1, %f2  #861 pc 3596
	fmv	%f5, l.6385  #0 pc 3600
	fmul	%f4, %f4, %f5  #861 pc 3604
	fsw	%f4, 8(%x6)  #861 pc 3608
	lw	%x7, 8(%x2)  #863 pc 3612
	fsw	%f2, 0(%x7)  #863 pc 3616
	fmv	%f4, l.6244  #0 pc 3620
	fsw	%f4, 4(%x7)  #864 pc 3624
	fsw	%f0, 64(%x2)  #865 pc 3628
	sw	%x1, 72(%x2)  #865 pc 3632
	addi	%x2, %x2, 76  #865 pc 3636
	jal	%x1, fneg.2515  #865 pc 3640
	addi	%x2, %x2, -76  #865 pc 3644
	lw	%x1, 72(%x2) #865 pc 3648
	lw	%x6, 8(%x2)  #865 pc 3652
	fsw	%f0, 8(%x6)  #865 pc 3656
	flw	%f0, 40(%x2)  #867 pc 3660
	sw	%x1, 72(%x2)  #867 pc 3664
	addi	%x2, %x2, 76  #867 pc 3668
	jal	%x1, fneg.2515  #867 pc 3672
	addi	%x2, %x2, -76  #867 pc 3676
	lw	%x1, 72(%x2) #867 pc 3680
	flw	%f1, 64(%x2)  #867 pc 3684
	fmul	%f0, %f0, %f1  #867 pc 3688
	lw	%x6, 4(%x2)  #867 pc 3692
	fsw	%f0, 0(%x6)  #867 pc 3696
	flw	%f0, 32(%x2)  #868 pc 3700
	sw	%x1, 72(%x2)  #868 pc 3704
	addi	%x2, %x2, 76  #868 pc 3708
	jal	%x1, fneg.2515  #868 pc 3712
	addi	%x2, %x2, -76  #868 pc 3716
	lw	%x1, 72(%x2) #868 pc 3720
	lw	%x6, 4(%x2)  #868 pc 3724
	fsw	%f0, 4(%x6)  #868 pc 3728
	flw	%f0, 40(%x2)  #869 pc 3732
	sw	%x1, 72(%x2)  #869 pc 3736
	addi	%x2, %x2, 76  #869 pc 3740
	jal	%x1, fneg.2515  #869 pc 3744
	addi	%x2, %x2, -76  #869 pc 3748
	lw	%x1, 72(%x2) #869 pc 3752
	flw	%f1, 56(%x2)  #869 pc 3756
	fmul	%f0, %f0, %f1  #869 pc 3760
	lw	%x6, 4(%x2)  #869 pc 3764
	fsw	%f0, 8(%x6)  #869 pc 3768
	lw	%x6, 16(%x2)  #871 pc 3772
	flw	%f0, 0(%x6)  #871 pc 3776
	lw	%x7, 12(%x2)  #871 pc 3780
	flw	%f1, 0(%x7)  #871 pc 3784
	fsub	%f0, %f0, %f1  #871 pc 3788
	lw	%x8, 0(%x2)  #871 pc 3792
	fsw	%f0, 0(%x8)  #871 pc 3796
	flw	%f0, 4(%x6)  #872 pc 3800
	flw	%f1, 4(%x7)  #872 pc 3804
	fsub	%f0, %f0, %f1  #872 pc 3808
	fsw	%f0, 4(%x8)  #872 pc 3812
	flw	%f0, 8(%x6)  #873 pc 3816
	flw	%f1, 8(%x7)  #873 pc 3820
	fsub	%f0, %f0, %f1  #873 pc 3824
	fsw	%f0, 8(%x8)  #873 pc 3828
	ret #pc 3832
	nop #pc 3836
read_light.2734:  #pc 3840
	lw	%x6, 8(%x29)  #0 pc 3840
	lw	%x7, 4(%x29)  #0 pc 3844
	sw	%x7, 0(%x2)  #880 pc 3848
	sw	%x6, 4(%x2)  #880 pc 3852
	sw	%x1, 8(%x2)  #880 pc 3856
	addi	%x2, %x2, 12  #880 pc 3860
	jal	%x1, read_int.2562  #880 pc 3864
	addi	%x2, %x2, -12  #880 pc 3868
	lw	%x1, 8(%x2) #880 pc 3872
	sw	%x1, 8(%x2)  #883 pc 3876
	addi	%x2, %x2, 12  #883 pc 3880
	jal	%x1, read_float.2564  #883 pc 3884
	addi	%x2, %x2, -12  #883 pc 3888
	lw	%x1, 8(%x2) #883 pc 3892
	sw	%x1, 8(%x2)  #883 pc 3896
	addi	%x2, %x2, 12  #883 pc 3900
	jal	%x1, rad.2730  #883 pc 3904
	addi	%x2, %x2, -12  #883 pc 3908
	lw	%x1, 8(%x2) #883 pc 3912
	fsw	%f0, 8(%x2)  #884 pc 3916
	sw	%x1, 16(%x2)  #884 pc 3920
	addi	%x2, %x2, 20  #884 pc 3924
	jal	%x1, sin.2526  #884 pc 3928
	addi	%x2, %x2, -20  #884 pc 3932
	lw	%x1, 16(%x2) #884 pc 3936
	sw	%x1, 16(%x2)  #885 pc 3940
	addi	%x2, %x2, 20  #885 pc 3944
	jal	%x1, fneg.2515  #885 pc 3948
	addi	%x2, %x2, -20  #885 pc 3952
	lw	%x1, 16(%x2) #885 pc 3956
	lw	%x6, 4(%x2)  #885 pc 3960
	fsw	%f0, 4(%x6)  #885 pc 3964
	sw	%x1, 16(%x2)  #886 pc 3968
	addi	%x2, %x2, 20  #886 pc 3972
	jal	%x1, read_float.2564  #886 pc 3976
	addi	%x2, %x2, -20  #886 pc 3980
	lw	%x1, 16(%x2) #886 pc 3984
	sw	%x1, 16(%x2)  #886 pc 3988
	addi	%x2, %x2, 20  #886 pc 3992
	jal	%x1, rad.2730  #886 pc 3996
	addi	%x2, %x2, -20  #886 pc 4000
	lw	%x1, 16(%x2) #886 pc 4004
	flw	%f1, 8(%x2)  #887 pc 4008
	fsw	%f0, 16(%x2)  #887 pc 4012
	fadd	%f0, %f1, %f30  #0 pc 4016
	sw	%x1, 24(%x2)  #887 pc 4020
	addi	%x2, %x2, 28  #887 pc 4024
	jal	%x1, cos.2530  #887 pc 4028
	addi	%x2, %x2, -28  #887 pc 4032
	lw	%x1, 24(%x2) #887 pc 4036
	flw	%f1, 16(%x2)  #888 pc 4040
	fsw	%f0, 24(%x2)  #888 pc 4044
	fadd	%f0, %f1, %f30  #0 pc 4048
	sw	%x1, 32(%x2)  #888 pc 4052
	addi	%x2, %x2, 36  #888 pc 4056
	jal	%x1, sin.2526  #888 pc 4060
	addi	%x2, %x2, -36  #888 pc 4064
	lw	%x1, 32(%x2) #888 pc 4068
	flw	%f1, 24(%x2)  #889 pc 4072
	fmul	%f0, %f1, %f0  #889 pc 4076
	lw	%x6, 4(%x2)  #889 pc 4080
	fsw	%f0, 0(%x6)  #889 pc 4084
	flw	%f0, 16(%x2)  #890 pc 4088
	sw	%x1, 32(%x2)  #890 pc 4092
	addi	%x2, %x2, 36  #890 pc 4096
	jal	%x1, cos.2530  #890 pc 4100
	addi	%x2, %x2, -36  #890 pc 4104
	lw	%x1, 32(%x2) #890 pc 4108
	flw	%f1, 24(%x2)  #891 pc 4112
	fmul	%f0, %f1, %f0  #891 pc 4116
	lw	%x6, 4(%x2)  #891 pc 4120
	fsw	%f0, 8(%x6)  #891 pc 4124
	sw	%x1, 32(%x2)  #892 pc 4128
	addi	%x2, %x2, 36  #892 pc 4132
	jal	%x1, read_float.2564  #892 pc 4136
	addi	%x2, %x2, -36  #892 pc 4140
	lw	%x1, 32(%x2) #892 pc 4144
	lw	%x6, 0(%x2)  #892 pc 4148
	fsw	%f0, 0(%x6)  #892 pc 4152
	ret #pc 4156
	nop #pc 4160
rotate_quadratic_matrix.2736:  #pc 4164
	flw	%f0, 0(%x7)  #902 pc 4164
	sw	%x6, 0(%x2)  #902 pc 4168
	sw	%x7, 4(%x2)  #902 pc 4172
	sw	%x1, 8(%x2)  #902 pc 4176
	addi	%x2, %x2, 12  #902 pc 4180
	jal	%x1, cos.2530  #902 pc 4184
	addi	%x2, %x2, -12  #902 pc 4188
	lw	%x1, 8(%x2) #902 pc 4192
	lw	%x6, 4(%x2)  #903 pc 4196
	flw	%f1, 0(%x6)  #903 pc 4200
	fsw	%f0, 8(%x2)  #903 pc 4204
	fadd	%f0, %f1, %f30  #0 pc 4208
	sw	%x1, 16(%x2)  #903 pc 4212
	addi	%x2, %x2, 20  #903 pc 4216
	jal	%x1, sin.2526  #903 pc 4220
	addi	%x2, %x2, -20  #903 pc 4224
	lw	%x1, 16(%x2) #903 pc 4228
	lw	%x6, 4(%x2)  #904 pc 4232
	flw	%f1, 4(%x6)  #904 pc 4236
	fsw	%f0, 16(%x2)  #904 pc 4240
	fadd	%f0, %f1, %f30  #0 pc 4244
	sw	%x1, 24(%x2)  #904 pc 4248
	addi	%x2, %x2, 28  #904 pc 4252
	jal	%x1, cos.2530  #904 pc 4256
	addi	%x2, %x2, -28  #904 pc 4260
	lw	%x1, 24(%x2) #904 pc 4264
	lw	%x6, 4(%x2)  #905 pc 4268
	flw	%f1, 4(%x6)  #905 pc 4272
	fsw	%f0, 24(%x2)  #905 pc 4276
	fadd	%f0, %f1, %f30  #0 pc 4280
	sw	%x1, 32(%x2)  #905 pc 4284
	addi	%x2, %x2, 36  #905 pc 4288
	jal	%x1, sin.2526  #905 pc 4292
	addi	%x2, %x2, -36  #905 pc 4296
	lw	%x1, 32(%x2) #905 pc 4300
	lw	%x6, 4(%x2)  #906 pc 4304
	flw	%f1, 8(%x6)  #906 pc 4308
	fsw	%f0, 32(%x2)  #906 pc 4312
	fadd	%f0, %f1, %f30  #0 pc 4316
	sw	%x1, 40(%x2)  #906 pc 4320
	addi	%x2, %x2, 44  #906 pc 4324
	jal	%x1, cos.2530  #906 pc 4328
	addi	%x2, %x2, -44  #906 pc 4332
	lw	%x1, 40(%x2) #906 pc 4336
	lw	%x6, 4(%x2)  #907 pc 4340
	flw	%f1, 8(%x6)  #907 pc 4344
	fsw	%f0, 40(%x2)  #907 pc 4348
	fadd	%f0, %f1, %f30  #0 pc 4352
	sw	%x1, 48(%x2)  #907 pc 4356
	addi	%x2, %x2, 52  #907 pc 4360
	jal	%x1, sin.2526  #907 pc 4364
	addi	%x2, %x2, -52  #907 pc 4368
	lw	%x1, 48(%x2) #907 pc 4372
	flw	%f1, 40(%x2)  #909 pc 4376
	flw	%f2, 24(%x2)  #909 pc 4380
	fmul	%f3, %f2, %f1  #909 pc 4384
	flw	%f4, 32(%x2)  #910 pc 4388
	flw	%f5, 16(%x2)  #910 pc 4392
	fmul	%f6, %f5, %f4  #910 pc 4396
	fmul	%f6, %f6, %f1  #910 pc 4400
	flw	%f7, 8(%x2)  #910 pc 4404
	fmul	%f8, %f7, %f0  #910 pc 4408
	fsub	%f6, %f6, %f8  #910 pc 4412
	fmul	%f8, %f7, %f4  #911 pc 4416
	fmul	%f8, %f8, %f1  #911 pc 4420
	fmul	%f9, %f5, %f0  #911 pc 4424
	fadd	%f8, %f8, %f9  #911 pc 4428
	fmul	%f9, %f2, %f0  #913 pc 4432
	fmul	%f10, %f5, %f4  #914 pc 4436
	fmul	%f10, %f10, %f0  #914 pc 4440
	fmul	%f11, %f7, %f1  #914 pc 4444
	fadd	%f10, %f10, %f11  #914 pc 4448
	fmul	%f11, %f7, %f4  #915 pc 4452
	fmul	%f0, %f11, %f0  #915 pc 4456
	fmul	%f1, %f5, %f1  #915 pc 4460
	fsub	%f0, %f0, %f1  #915 pc 4464
	fsw	%f0, 48(%x2)  #917 pc 4468
	fsw	%f8, 56(%x2)  #917 pc 4472
	fsw	%f10, 64(%x2)  #917 pc 4476
	fsw	%f6, 72(%x2)  #917 pc 4480
	fsw	%f9, 80(%x2)  #917 pc 4484
	fsw	%f3, 88(%x2)  #917 pc 4488
	fadd	%f0, %f4, %f30  #0 pc 4492
	sw	%x1, 96(%x2)  #917 pc 4496
	addi	%x2, %x2, 100  #917 pc 4500
	jal	%x1, fneg.2515  #917 pc 4504
	addi	%x2, %x2, -100  #917 pc 4508
	lw	%x1, 96(%x2) #917 pc 4512
	flw	%f1, 24(%x2)  #918 pc 4516
	flw	%f2, 16(%x2)  #918 pc 4520
	fmul	%f2, %f2, %f1  #918 pc 4524
	flw	%f3, 8(%x2)  #919 pc 4528
	fmul	%f1, %f3, %f1  #919 pc 4532
	lw	%x6, 0(%x2)  #922 pc 4536
	flw	%f3, 0(%x6)  #922 pc 4540
	flw	%f4, 4(%x6)  #923 pc 4544
	flw	%f5, 8(%x6)  #924 pc 4548
	flw	%f6, 88(%x2)  #929 pc 4552
	fsw	%f1, 96(%x2)  #929 pc 4556
	fsw	%f2, 104(%x2)  #929 pc 4560
	fsw	%f5, 112(%x2)  #929 pc 4564
	fsw	%f0, 120(%x2)  #929 pc 4568
	fsw	%f4, 128(%x2)  #929 pc 4572
	fsw	%f3, 136(%x2)  #929 pc 4576
	fadd	%f0, %f6, %f30  #0 pc 4580
	sw	%x1, 144(%x2)  #929 pc 4584
	addi	%x2, %x2, 148  #929 pc 4588
	jal	%x1, fsqr.2517  #929 pc 4592
	addi	%x2, %x2, -148  #929 pc 4596
	lw	%x1, 144(%x2) #929 pc 4600
	flw	%f1, 136(%x2)  #929 pc 4604
	fmul	%f0, %f1, %f0  #929 pc 4608
	flw	%f2, 80(%x2)  #929 pc 4612
	fsw	%f0, 144(%x2)  #929 pc 4616
	fadd	%f0, %f2, %f30  #0 pc 4620
	sw	%x1, 152(%x2)  #929 pc 4624
	addi	%x2, %x2, 156  #929 pc 4628
	jal	%x1, fsqr.2517  #929 pc 4632
	addi	%x2, %x2, -156  #929 pc 4636
	lw	%x1, 152(%x2) #929 pc 4640
	flw	%f1, 128(%x2)  #929 pc 4644
	fmul	%f0, %f1, %f0  #929 pc 4648
	flw	%f2, 144(%x2)  #929 pc 4652
	fadd	%f0, %f2, %f0  #929 pc 4656
	flw	%f2, 120(%x2)  #929 pc 4660
	fsw	%f0, 152(%x2)  #929 pc 4664
	fadd	%f0, %f2, %f30  #0 pc 4668
	sw	%x1, 160(%x2)  #929 pc 4672
	addi	%x2, %x2, 164  #929 pc 4676
	jal	%x1, fsqr.2517  #929 pc 4680
	addi	%x2, %x2, -164  #929 pc 4684
	lw	%x1, 160(%x2) #929 pc 4688
	flw	%f1, 112(%x2)  #929 pc 4692
	fmul	%f0, %f1, %f0  #929 pc 4696
	flw	%f2, 152(%x2)  #929 pc 4700
	fadd	%f0, %f2, %f0  #929 pc 4704
	lw	%x6, 0(%x2)  #929 pc 4708
	fsw	%f0, 0(%x6)  #929 pc 4712
	flw	%f0, 72(%x2)  #930 pc 4716
	sw	%x1, 160(%x2)  #930 pc 4720
	addi	%x2, %x2, 164  #930 pc 4724
	jal	%x1, fsqr.2517  #930 pc 4728
	addi	%x2, %x2, -164  #930 pc 4732
	lw	%x1, 160(%x2) #930 pc 4736
	flw	%f1, 136(%x2)  #930 pc 4740
	fmul	%f0, %f1, %f0  #930 pc 4744
	flw	%f2, 64(%x2)  #930 pc 4748
	fsw	%f0, 160(%x2)  #930 pc 4752
	fadd	%f0, %f2, %f30  #0 pc 4756
	sw	%x1, 168(%x2)  #930 pc 4760
	addi	%x2, %x2, 172  #930 pc 4764
	jal	%x1, fsqr.2517  #930 pc 4768
	addi	%x2, %x2, -172  #930 pc 4772
	lw	%x1, 168(%x2) #930 pc 4776
	flw	%f1, 128(%x2)  #930 pc 4780
	fmul	%f0, %f1, %f0  #930 pc 4784
	flw	%f2, 160(%x2)  #930 pc 4788
	fadd	%f0, %f2, %f0  #930 pc 4792
	flw	%f2, 104(%x2)  #930 pc 4796
	fsw	%f0, 168(%x2)  #930 pc 4800
	fadd	%f0, %f2, %f30  #0 pc 4804
	sw	%x1, 176(%x2)  #930 pc 4808
	addi	%x2, %x2, 180  #930 pc 4812
	jal	%x1, fsqr.2517  #930 pc 4816
	addi	%x2, %x2, -180  #930 pc 4820
	lw	%x1, 176(%x2) #930 pc 4824
	flw	%f1, 112(%x2)  #930 pc 4828
	fmul	%f0, %f1, %f0  #930 pc 4832
	flw	%f2, 168(%x2)  #930 pc 4836
	fadd	%f0, %f2, %f0  #930 pc 4840
	lw	%x6, 0(%x2)  #930 pc 4844
	fsw	%f0, 4(%x6)  #930 pc 4848
	flw	%f0, 56(%x2)  #931 pc 4852
	sw	%x1, 176(%x2)  #931 pc 4856
	addi	%x2, %x2, 180  #931 pc 4860
	jal	%x1, fsqr.2517  #931 pc 4864
	addi	%x2, %x2, -180  #931 pc 4868
	lw	%x1, 176(%x2) #931 pc 4872
	flw	%f1, 136(%x2)  #931 pc 4876
	fmul	%f0, %f1, %f0  #931 pc 4880
	flw	%f2, 48(%x2)  #931 pc 4884
	fsw	%f0, 176(%x2)  #931 pc 4888
	fadd	%f0, %f2, %f30  #0 pc 4892
	sw	%x1, 184(%x2)  #931 pc 4896
	addi	%x2, %x2, 188  #931 pc 4900
	jal	%x1, fsqr.2517  #931 pc 4904
	addi	%x2, %x2, -188  #931 pc 4908
	lw	%x1, 184(%x2) #931 pc 4912
	flw	%f1, 128(%x2)  #931 pc 4916
	fmul	%f0, %f1, %f0  #931 pc 4920
	flw	%f2, 176(%x2)  #931 pc 4924
	fadd	%f0, %f2, %f0  #931 pc 4928
	flw	%f2, 96(%x2)  #931 pc 4932
	fsw	%f0, 184(%x2)  #931 pc 4936
	fadd	%f0, %f2, %f30  #0 pc 4940
	sw	%x1, 192(%x2)  #931 pc 4944
	addi	%x2, %x2, 196  #931 pc 4948
	jal	%x1, fsqr.2517  #931 pc 4952
	addi	%x2, %x2, -196  #931 pc 4956
	lw	%x1, 192(%x2) #931 pc 4960
	flw	%f1, 112(%x2)  #931 pc 4964
	fmul	%f0, %f1, %f0  #931 pc 4968
	flw	%f2, 184(%x2)  #931 pc 4972
	fadd	%f0, %f2, %f0  #931 pc 4976
	lw	%x6, 0(%x2)  #931 pc 4980
	fsw	%f0, 8(%x6)  #931 pc 4984
	fmv	%f0, l.6425  #0 pc 4988
	flw	%f2, 72(%x2)  #934 pc 4992
	flw	%f3, 136(%x2)  #934 pc 4996
	fmul	%f4, %f3, %f2  #934 pc 5000
	flw	%f5, 56(%x2)  #934 pc 5004
	fmul	%f4, %f4, %f5  #934 pc 5008
	flw	%f6, 64(%x2)  #934 pc 5012
	flw	%f7, 128(%x2)  #934 pc 5016
	fmul	%f8, %f7, %f6  #934 pc 5020
	flw	%f9, 48(%x2)  #934 pc 5024
	fmul	%f8, %f8, %f9  #934 pc 5028
	fadd	%f4, %f4, %f8  #934 pc 5032
	flw	%f8, 104(%x2)  #934 pc 5036
	fmul	%f10, %f1, %f8  #934 pc 5040
	flw	%f11, 96(%x2)  #934 pc 5044
	fmul	%f10, %f10, %f11  #934 pc 5048
	fadd	%f4, %f4, %f10  #934 pc 5052
	fmul	%f0, %f0, %f4  #934 pc 5056
	lw	%x6, 4(%x2)  #934 pc 5060
	fsw	%f0, 0(%x6)  #934 pc 5064
	fmv	%f0, l.6425  #0 pc 5068
	flw	%f4, 88(%x2)  #935 pc 5072
	fmul	%f10, %f3, %f4  #935 pc 5076
	fmul	%f5, %f10, %f5  #935 pc 5080
	flw	%f10, 80(%x2)  #935 pc 5084
	fmul	%f12, %f7, %f10  #935 pc 5088
	fmul	%f9, %f12, %f9  #935 pc 5092
	fadd	%f5, %f5, %f9  #935 pc 5096
	flw	%f9, 120(%x2)  #935 pc 5100
	fmul	%f12, %f1, %f9  #935 pc 5104
	fmul	%f11, %f12, %f11  #935 pc 5108
	fadd	%f5, %f5, %f11  #935 pc 5112
	fmul	%f0, %f0, %f5  #935 pc 5116
	fsw	%f0, 4(%x6)  #935 pc 5120
	fmv	%f0, l.6425  #0 pc 5124
	fmul	%f3, %f3, %f4  #936 pc 5128
	fmul	%f2, %f3, %f2  #936 pc 5132
	fmul	%f3, %f7, %f10  #936 pc 5136
	fmul	%f3, %f3, %f6  #936 pc 5140
	fadd	%f2, %f2, %f3  #936 pc 5144
	fmul	%f1, %f1, %f9  #936 pc 5148
	fmul	%f1, %f1, %f8  #936 pc 5152
	fadd	%f1, %f2, %f1  #936 pc 5156
	fmul	%f0, %f0, %f1  #936 pc 5160
	fsw	%f0, 8(%x6)  #936 pc 5164
	ret #pc 5168
	nop #pc 5172
read_nth_object.2739:  #pc 5176
	lw	%x7, 4(%x29)  #0 pc 5176
	sw	%x7, 0(%x2)  #943 pc 5180
	sw	%x6, 4(%x2)  #943 pc 5184
	sw	%x1, 8(%x2)  #943 pc 5188
	addi	%x2, %x2, 12  #943 pc 5192
	jal	%x1, read_int.2562  #943 pc 5196
	addi	%x2, %x2, -12  #943 pc 5200
	lw	%x1, 8(%x2) #943 pc 5204
	addi	%x31, %x0, -1  #pc 5208
	beq	%x6, %x31, 12  #944 pc 5212
	j	be_else.9176 #pc 5216
	nop #pc 5220
	addi	%x6, %x0, 0  #0 pc 5224
	ret #pc 5228
	nop #pc 5232
be_else.9176: #pc 5236
	sw	%x6, 8(%x2)  #946 pc 5236
	sw	%x1, 12(%x2)  #946 pc 5240
	addi	%x2, %x2, 16  #946 pc 5244
	jal	%x1, read_int.2562  #946 pc 5248
	addi	%x2, %x2, -16  #946 pc 5252
	lw	%x1, 12(%x2) #946 pc 5256
	sw	%x6, 12(%x2)  #947 pc 5260
	sw	%x1, 16(%x2)  #947 pc 5264
	addi	%x2, %x2, 20  #947 pc 5268
	jal	%x1, read_int.2562  #947 pc 5272
	addi	%x2, %x2, -20  #947 pc 5276
	lw	%x1, 16(%x2) #947 pc 5280
	sw	%x6, 16(%x2)  #948 pc 5284
	sw	%x1, 20(%x2)  #948 pc 5288
	addi	%x2, %x2, 24  #948 pc 5292
	jal	%x1, read_int.2562  #948 pc 5296
	addi	%x2, %x2, -24  #948 pc 5300
	lw	%x1, 20(%x2) #948 pc 5304
	addi	%x7, %x0, 3  #0 pc 5308
	fmv	%f0, l.6244  #0 pc 5312
	sw	%x6, 20(%x2)  #950 pc 5316
	addi	%x6, %x7, 0  #0 pc 5320
	sw	%x1, 24(%x2)  #950 pc 5324
	addi	%x2, %x2, 28  #950 pc 5328
	jal	%x1, create_float_array.2577  #950 pc 5332
	addi	%x2, %x2, -28  #950 pc 5336
	lw	%x1, 24(%x2) #950 pc 5340
	sw	%x6, 24(%x2)  #951 pc 5344
	sw	%x1, 28(%x2)  #951 pc 5348
	addi	%x2, %x2, 32  #951 pc 5352
	jal	%x1, read_float.2564  #951 pc 5356
	addi	%x2, %x2, -32  #951 pc 5360
	lw	%x1, 28(%x2) #951 pc 5364
	lw	%x6, 24(%x2)  #951 pc 5368
	fsw	%f0, 0(%x6)  #951 pc 5372
	sw	%x1, 28(%x2)  #952 pc 5376
	addi	%x2, %x2, 32  #952 pc 5380
	jal	%x1, read_float.2564  #952 pc 5384
	addi	%x2, %x2, -32  #952 pc 5388
	lw	%x1, 28(%x2) #952 pc 5392
	lw	%x6, 24(%x2)  #952 pc 5396
	fsw	%f0, 4(%x6)  #952 pc 5400
	sw	%x1, 28(%x2)  #953 pc 5404
	addi	%x2, %x2, 32  #953 pc 5408
	jal	%x1, read_float.2564  #953 pc 5412
	addi	%x2, %x2, -32  #953 pc 5416
	lw	%x1, 28(%x2) #953 pc 5420
	lw	%x6, 24(%x2)  #953 pc 5424
	fsw	%f0, 8(%x6)  #953 pc 5428
	addi	%x7, %x0, 3  #0 pc 5432
	fmv	%f0, l.6244  #0 pc 5436
	addi	%x6, %x7, 0  #0 pc 5440
	sw	%x1, 28(%x2)  #955 pc 5444
	addi	%x2, %x2, 32  #955 pc 5448
	jal	%x1, create_float_array.2577  #955 pc 5452
	addi	%x2, %x2, -32  #955 pc 5456
	lw	%x1, 28(%x2) #955 pc 5460
	sw	%x6, 28(%x2)  #956 pc 5464
	sw	%x1, 32(%x2)  #956 pc 5468
	addi	%x2, %x2, 36  #956 pc 5472
	jal	%x1, read_float.2564  #956 pc 5476
	addi	%x2, %x2, -36  #956 pc 5480
	lw	%x1, 32(%x2) #956 pc 5484
	lw	%x6, 28(%x2)  #956 pc 5488
	fsw	%f0, 0(%x6)  #956 pc 5492
	sw	%x1, 32(%x2)  #957 pc 5496
	addi	%x2, %x2, 36  #957 pc 5500
	jal	%x1, read_float.2564  #957 pc 5504
	addi	%x2, %x2, -36  #957 pc 5508
	lw	%x1, 32(%x2) #957 pc 5512
	lw	%x6, 28(%x2)  #957 pc 5516
	fsw	%f0, 4(%x6)  #957 pc 5520
	sw	%x1, 32(%x2)  #958 pc 5524
	addi	%x2, %x2, 36  #958 pc 5528
	jal	%x1, read_float.2564  #958 pc 5532
	addi	%x2, %x2, -36  #958 pc 5536
	lw	%x1, 32(%x2) #958 pc 5540
	lw	%x6, 28(%x2)  #958 pc 5544
	fsw	%f0, 8(%x6)  #958 pc 5548
	sw	%x1, 32(%x2)  #960 pc 5552
	addi	%x2, %x2, 36  #960 pc 5556
	jal	%x1, read_float.2564  #960 pc 5560
	addi	%x2, %x2, -36  #960 pc 5564
	lw	%x1, 32(%x2) #960 pc 5568
	sw	%x1, 32(%x2)  #960 pc 5572
	addi	%x2, %x2, 36  #960 pc 5576
	jal	%x1, fisneg.2513  #960 pc 5580
	addi	%x2, %x2, -36  #960 pc 5584
	lw	%x1, 32(%x2) #960 pc 5588
	addi	%x7, %x0, 2  #0 pc 5592
	fmv	%f0, l.6244  #0 pc 5596
	sw	%x6, 32(%x2)  #962 pc 5600
	addi	%x6, %x7, 0  #0 pc 5604
	sw	%x1, 36(%x2)  #962 pc 5608
	addi	%x2, %x2, 40  #962 pc 5612
	jal	%x1, create_float_array.2577  #962 pc 5616
	addi	%x2, %x2, -40  #962 pc 5620
	lw	%x1, 36(%x2) #962 pc 5624
	sw	%x6, 36(%x2)  #963 pc 5628
	sw	%x1, 40(%x2)  #963 pc 5632
	addi	%x2, %x2, 44  #963 pc 5636
	jal	%x1, read_float.2564  #963 pc 5640
	addi	%x2, %x2, -44  #963 pc 5644
	lw	%x1, 40(%x2) #963 pc 5648
	lw	%x6, 36(%x2)  #963 pc 5652
	fsw	%f0, 0(%x6)  #963 pc 5656
	sw	%x1, 40(%x2)  #964 pc 5660
	addi	%x2, %x2, 44  #964 pc 5664
	jal	%x1, read_float.2564  #964 pc 5668
	addi	%x2, %x2, -44  #964 pc 5672
	lw	%x1, 40(%x2) #964 pc 5676
	lw	%x6, 36(%x2)  #964 pc 5680
	fsw	%f0, 4(%x6)  #964 pc 5684
	addi	%x7, %x0, 3  #0 pc 5688
	fmv	%f0, l.6244  #0 pc 5692
	addi	%x6, %x7, 0  #0 pc 5696
	sw	%x1, 40(%x2)  #966 pc 5700
	addi	%x2, %x2, 44  #966 pc 5704
	jal	%x1, create_float_array.2577  #966 pc 5708
	addi	%x2, %x2, -44  #966 pc 5712
	lw	%x1, 40(%x2) #966 pc 5716
	sw	%x6, 40(%x2)  #967 pc 5720
	sw	%x1, 44(%x2)  #967 pc 5724
	addi	%x2, %x2, 48  #967 pc 5728
	jal	%x1, read_float.2564  #967 pc 5732
	addi	%x2, %x2, -48  #967 pc 5736
	lw	%x1, 44(%x2) #967 pc 5740
	lw	%x6, 40(%x2)  #967 pc 5744
	fsw	%f0, 0(%x6)  #967 pc 5748
	sw	%x1, 44(%x2)  #968 pc 5752
	addi	%x2, %x2, 48  #968 pc 5756
	jal	%x1, read_float.2564  #968 pc 5760
	addi	%x2, %x2, -48  #968 pc 5764
	lw	%x1, 44(%x2) #968 pc 5768
	lw	%x6, 40(%x2)  #968 pc 5772
	fsw	%f0, 4(%x6)  #968 pc 5776
	sw	%x1, 44(%x2)  #969 pc 5780
	addi	%x2, %x2, 48  #969 pc 5784
	jal	%x1, read_float.2564  #969 pc 5788
	addi	%x2, %x2, -48  #969 pc 5792
	lw	%x1, 44(%x2) #969 pc 5796
	lw	%x6, 40(%x2)  #969 pc 5800
	fsw	%f0, 8(%x6)  #969 pc 5804
	addi	%x7, %x0, 3  #0 pc 5808
	fmv	%f0, l.6244  #0 pc 5812
	addi	%x6, %x7, 0  #0 pc 5816
	sw	%x1, 44(%x2)  #971 pc 5820
	addi	%x2, %x2, 48  #971 pc 5824
	jal	%x1, create_float_array.2577  #971 pc 5828
	addi	%x2, %x2, -48  #971 pc 5832
	lw	%x1, 44(%x2) #971 pc 5836
	lw	%x7, 20(%x2)  #972 pc 5840
	beq	%x7, %x0, 12  #972 pc 5844
	j	be_else.9177 #pc 5848
	nop #pc 5852
	j	be_cont.9178 #pc 5856
	nop #pc 5860
be_else.9177: #pc 5864
	sw	%x6, 44(%x2)  #974 pc 5864
	sw	%x1, 48(%x2)  #974 pc 5868
	addi	%x2, %x2, 52  #974 pc 5872
	jal	%x1, read_float.2564  #974 pc 5876
	addi	%x2, %x2, -52  #974 pc 5880
	lw	%x1, 48(%x2) #974 pc 5884
	sw	%x1, 48(%x2)  #974 pc 5888
	addi	%x2, %x2, 52  #974 pc 5892
	jal	%x1, rad.2730  #974 pc 5896
	addi	%x2, %x2, -52  #974 pc 5900
	lw	%x1, 48(%x2) #974 pc 5904
	lw	%x6, 44(%x2)  #974 pc 5908
	fsw	%f0, 0(%x6)  #974 pc 5912
	sw	%x1, 48(%x2)  #975 pc 5916
	addi	%x2, %x2, 52  #975 pc 5920
	jal	%x1, read_float.2564  #975 pc 5924
	addi	%x2, %x2, -52  #975 pc 5928
	lw	%x1, 48(%x2) #975 pc 5932
	sw	%x1, 48(%x2)  #975 pc 5936
	addi	%x2, %x2, 52  #975 pc 5940
	jal	%x1, rad.2730  #975 pc 5944
	addi	%x2, %x2, -52  #975 pc 5948
	lw	%x1, 48(%x2) #975 pc 5952
	lw	%x6, 44(%x2)  #975 pc 5956
	fsw	%f0, 4(%x6)  #975 pc 5960
	sw	%x1, 48(%x2)  #976 pc 5964
	addi	%x2, %x2, 52  #976 pc 5968
	jal	%x1, read_float.2564  #976 pc 5972
	addi	%x2, %x2, -52  #976 pc 5976
	lw	%x1, 48(%x2) #976 pc 5980
	sw	%x1, 48(%x2)  #976 pc 5984
	addi	%x2, %x2, 52  #976 pc 5988
	jal	%x1, rad.2730  #976 pc 5992
	addi	%x2, %x2, -52  #976 pc 5996
	lw	%x1, 48(%x2) #976 pc 6000
	lw	%x6, 44(%x2)  #976 pc 6004
	fsw	%f0, 8(%x6)  #976 pc 6008
be_cont.9178: #pc 6012
	lw	%x7, 12(%x2)  #983 pc 6012
	addi	%x31, %x0, 2  #pc 6016
	beq	%x7, %x31, 12  #983 pc 6020
	j	be_else.9179 #pc 6024
	nop #pc 6028
	addi	%x8, %x0, 1  #0 pc 6032
	j	be_cont.9180 #pc 6036
	nop #pc 6040
be_else.9179: #pc 6044
	lw	%x8, 32(%x2)  #983 pc 6044
be_cont.9180: #pc 6048
	addi	%x9, %x0, 4  #0 pc 6048
	fmv	%f0, l.6244  #0 pc 6052
	sw	%x8, 48(%x2)  #984 pc 6056
	sw	%x6, 44(%x2)  #984 pc 6060
	addi	%x6, %x9, 0  #0 pc 6064
	sw	%x1, 52(%x2)  #984 pc 6068
	addi	%x2, %x2, 56  #984 pc 6072
	jal	%x1, create_float_array.2577  #984 pc 6076
	addi	%x2, %x2, -56  #984 pc 6080
	lw	%x1, 52(%x2) #984 pc 6084
	addi	%x7, %x3, 0  #987 pc 6088
	addi	%x3, %x3, 44  #987 pc 6092
	sw	%x6, 40(%x7)  #987 pc 6096
	lw	%x6, 44(%x2)  #987 pc 6100
	sw	%x6, 36(%x7)  #987 pc 6104
	lw	%x8, 40(%x2)  #987 pc 6108
	sw	%x8, 32(%x7)  #987 pc 6112
	lw	%x8, 36(%x2)  #987 pc 6116
	sw	%x8, 28(%x7)  #987 pc 6120
	lw	%x8, 48(%x2)  #987 pc 6124
	sw	%x8, 24(%x7)  #987 pc 6128
	lw	%x8, 28(%x2)  #987 pc 6132
	sw	%x8, 20(%x7)  #987 pc 6136
	lw	%x8, 24(%x2)  #987 pc 6140
	sw	%x8, 16(%x7)  #987 pc 6144
	lw	%x9, 20(%x2)  #987 pc 6148
	sw	%x9, 12(%x7)  #987 pc 6152
	lw	%x10, 16(%x2)  #987 pc 6156
	sw	%x10, 8(%x7)  #987 pc 6160
	lw	%x10, 12(%x2)  #987 pc 6164
	sw	%x10, 4(%x7)  #987 pc 6168
	lw	%x11, 8(%x2)  #987 pc 6172
	sw	%x11, 0(%x7)  #987 pc 6176
	lw	%x11, 4(%x2)  #995 pc 6180
	slli	%x11, %x11, 2  #995 pc 6184
	lw	%x12, 0(%x2)  #995 pc 6188
	add	%x31, %x11, %x12  #995 pc 6192
	sw	%x7, 0(%x31)  #995 pc 6196
	addi	%x31, %x0, 3  #pc 6200
	beq	%x10, %x31, 12  #997 pc 6204
	j	be_else.9181 #pc 6208
	nop #pc 6212
	flw	%f0, 0(%x8)  #1000 pc 6216
	fsw	%f0, 56(%x2)  #1001 pc 6220
	sw	%x1, 64(%x2)  #1001 pc 6224
	addi	%x2, %x2, 68  #1001 pc 6228
	jal	%x1, fiszero.2509  #1001 pc 6232
	addi	%x2, %x2, -68  #1001 pc 6236
	lw	%x1, 64(%x2) #1001 pc 6240
	beq	%x6, %x0, 12  #1001 pc 6244
	j	be_else.9184 #pc 6248
	nop #pc 6252
	flw	%f0, 56(%x2)  #1001 pc 6256
	sw	%x1, 64(%x2)  #1001 pc 6260
	addi	%x2, %x2, 68  #1001 pc 6264
	jal	%x1, sgn.2613  #1001 pc 6268
	addi	%x2, %x2, -68  #1001 pc 6272
	lw	%x1, 64(%x2) #1001 pc 6276
	flw	%f1, 56(%x2)  #1001 pc 6280
	fsw	%f0, 64(%x2)  #1001 pc 6284
	fadd	%f0, %f1, %f30  #0 pc 6288
	sw	%x1, 72(%x2)  #1001 pc 6292
	addi	%x2, %x2, 76  #1001 pc 6296
	jal	%x1, fsqr.2517  #1001 pc 6300
	addi	%x2, %x2, -76  #1001 pc 6304
	lw	%x1, 72(%x2) #1001 pc 6308
	flw	%f1, 64(%x2)  #1001 pc 6312
	fdiv	%f0, %f1, %f0  #1001 pc 6316
	j	be_cont.9185 #pc 6320
	nop #pc 6324
be_else.9184: #pc 6328
	fmv	%f0, l.6244  #0 pc 6328
be_cont.9185: #pc 6332
	lw	%x6, 24(%x2)  #1001 pc 6332
	fsw	%f0, 0(%x6)  #1001 pc 6336
	flw	%f0, 4(%x6)  #1002 pc 6340
	fsw	%f0, 72(%x2)  #1003 pc 6344
	sw	%x1, 80(%x2)  #1003 pc 6348
	addi	%x2, %x2, 84  #1003 pc 6352
	jal	%x1, fiszero.2509  #1003 pc 6356
	addi	%x2, %x2, -84  #1003 pc 6360
	lw	%x1, 80(%x2) #1003 pc 6364
	beq	%x6, %x0, 12  #1003 pc 6368
	j	be_else.9186 #pc 6372
	nop #pc 6376
	flw	%f0, 72(%x2)  #1003 pc 6380
	sw	%x1, 80(%x2)  #1003 pc 6384
	addi	%x2, %x2, 84  #1003 pc 6388
	jal	%x1, sgn.2613  #1003 pc 6392
	addi	%x2, %x2, -84  #1003 pc 6396
	lw	%x1, 80(%x2) #1003 pc 6400
	flw	%f1, 72(%x2)  #1003 pc 6404
	fsw	%f0, 80(%x2)  #1003 pc 6408
	fadd	%f0, %f1, %f30  #0 pc 6412
	sw	%x1, 88(%x2)  #1003 pc 6416
	addi	%x2, %x2, 92  #1003 pc 6420
	jal	%x1, fsqr.2517  #1003 pc 6424
	addi	%x2, %x2, -92  #1003 pc 6428
	lw	%x1, 88(%x2) #1003 pc 6432
	flw	%f1, 80(%x2)  #1003 pc 6436
	fdiv	%f0, %f1, %f0  #1003 pc 6440
	j	be_cont.9187 #pc 6444
	nop #pc 6448
be_else.9186: #pc 6452
	fmv	%f0, l.6244  #0 pc 6452
be_cont.9187: #pc 6456
	lw	%x6, 24(%x2)  #1003 pc 6456
	fsw	%f0, 4(%x6)  #1003 pc 6460
	flw	%f0, 8(%x6)  #1004 pc 6464
	fsw	%f0, 88(%x2)  #1005 pc 6468
	sw	%x1, 96(%x2)  #1005 pc 6472
	addi	%x2, %x2, 100  #1005 pc 6476
	jal	%x1, fiszero.2509  #1005 pc 6480
	addi	%x2, %x2, -100  #1005 pc 6484
	lw	%x1, 96(%x2) #1005 pc 6488
	beq	%x6, %x0, 12  #1005 pc 6492
	j	be_else.9188 #pc 6496
	nop #pc 6500
	flw	%f0, 88(%x2)  #1005 pc 6504
	sw	%x1, 96(%x2)  #1005 pc 6508
	addi	%x2, %x2, 100  #1005 pc 6512
	jal	%x1, sgn.2613  #1005 pc 6516
	addi	%x2, %x2, -100  #1005 pc 6520
	lw	%x1, 96(%x2) #1005 pc 6524
	flw	%f1, 88(%x2)  #1005 pc 6528
	fsw	%f0, 96(%x2)  #1005 pc 6532
	fadd	%f0, %f1, %f30  #0 pc 6536
	sw	%x1, 104(%x2)  #1005 pc 6540
	addi	%x2, %x2, 108  #1005 pc 6544
	jal	%x1, fsqr.2517  #1005 pc 6548
	addi	%x2, %x2, -108  #1005 pc 6552
	lw	%x1, 104(%x2) #1005 pc 6556
	flw	%f1, 96(%x2)  #1005 pc 6560
	fdiv	%f0, %f1, %f0  #1005 pc 6564
	j	be_cont.9189 #pc 6568
	nop #pc 6572
be_else.9188: #pc 6576
	fmv	%f0, l.6244  #0 pc 6576
be_cont.9189: #pc 6580
	lw	%x6, 24(%x2)  #1005 pc 6580
	fsw	%f0, 8(%x6)  #1005 pc 6584
	j	be_cont.9182 #pc 6588
	nop #pc 6592
be_else.9181: #pc 6596
	addi	%x31, %x0, 2  #pc 6596
	beq	%x10, %x31, 12  #1007 pc 6600
	j	be_else.9190 #pc 6604
	nop #pc 6608
	lw	%x7, 32(%x2)  #1009 pc 6612
	beq	%x7, %x0, 12  #1009 pc 6616
	j	be_else.9192 #pc 6620
	nop #pc 6624
	addi	%x7, %x0, 1  #0 pc 6628
	j	be_cont.9193 #pc 6632
	nop #pc 6636
be_else.9192: #pc 6640
	addi	%x7, %x0, 0  #0 pc 6640
be_cont.9193: #pc 6644
	addi	%x6, %x8, 0  #0 pc 6644
	sw	%x1, 104(%x2)  #1009 pc 6648
	addi	%x2, %x2, 108  #1009 pc 6652
	jal	%x1, vecunit_sgn.2634  #1009 pc 6656
	addi	%x2, %x2, -108  #1009 pc 6660
	lw	%x1, 104(%x2) #1009 pc 6664
	j	be_cont.9191 #pc 6668
	nop #pc 6672
be_else.9190: #pc 6676
be_cont.9191: #pc 6676
be_cont.9182: #pc 6676
	lw	%x6, 20(%x2)  #1013 pc 6676
	beq	%x6, %x0, 12  #1013 pc 6680
	j	be_else.9194 #pc 6684
	nop #pc 6688
	j	be_cont.9195 #pc 6692
	nop #pc 6696
be_else.9194: #pc 6700
	lw	%x6, 24(%x2)  #1014 pc 6700
	lw	%x7, 44(%x2)  #1014 pc 6704
	sw	%x1, 104(%x2)  #1014 pc 6708
	addi	%x2, %x2, 108  #1014 pc 6712
	jal	%x1, rotate_quadratic_matrix.2736  #1014 pc 6716
	addi	%x2, %x2, -108  #1014 pc 6720
	lw	%x1, 104(%x2) #1014 pc 6724
be_cont.9195: #pc 6728
	addi	%x6, %x0, 1  #0 pc 6728
	ret #pc 6732
	nop #pc 6736
read_object.2741:  #pc 6740
	lw	%x7, 8(%x29)  #0 pc 6740
	lw	%x8, 4(%x29)  #0 pc 6744
	addi	%x31, %x0, 60  #pc 6748
	bge	%x6, %x31, 12  #1025 pc 6752
	j	bge_else.9196 #pc 6756
	nop #pc 6760
	ret #pc 6764
	nop #pc 6768
bge_else.9196: #pc 6772
	sw	%x29, 0(%x2)  #1026 pc 6772
	sw	%x8, 4(%x2)  #1026 pc 6776
	sw	%x6, 8(%x2)  #1026 pc 6780
	addi	%x29, %x7, 0  #0 pc 6784
	sw	%x1, 12(%x2)  #1026 pc 6788
	lw	%x30, 0(%x29)  #1026 pc 6792
	addi	%x2, %x2, 16  #1026 pc 6796
	jalr	%x1, %x30, 0  #1026 pc 6800
	addi	%x2, %x2, -16  #1026 pc 6804
	lw	%x1, 12(%x2)  #1026 pc 6808
	beq	%x6, %x0, 12  #1026 pc 6812
	j	be_else.9198 #pc 6816
	nop #pc 6820
	lw	%x6, 4(%x2)  #1029 pc 6824
	lw	%x7, 8(%x2)  #1029 pc 6828
	sw	%x7, 0(%x6)  #1029 pc 6832
	ret #pc 6836
	nop #pc 6840
be_else.9198: #pc 6844
	lw	%x6, 8(%x2)  #1027 pc 6844
	addi	%x6, %x6, 1  #1027 pc 6848
	lw	%x29, 0(%x2)  #1027 pc 6852
	lw	%x30, 0(%x29)  #1027 pc 6856
	jalr	%x0, %x30, 0  #1027 pc 6860
	nop #pc 6864
read_all_object.2743:  #pc 6868
	lw	%x29, 4(%x29)  #0 pc 6868
	addi	%x6, %x0, 0  #0 pc 6872
	lw	%x30, 0(%x29)  #1034 pc 6876
	jalr	%x0, %x30, 0  #1034 pc 6880
	nop #pc 6884
read_net_item.2745:  #pc 6888
	sw	%x6, 0(%x2)  #1041 pc 6888
	sw	%x1, 4(%x2)  #1041 pc 6892
	addi	%x2, %x2, 8  #1041 pc 6896
	jal	%x1, read_int.2562  #1041 pc 6900
	addi	%x2, %x2, -8  #1041 pc 6904
	lw	%x1, 4(%x2) #1041 pc 6908
	addi	%x31, %x0, -1  #pc 6912
	beq	%x6, %x31, 12  #1042 pc 6916
	j	be_else.9200 #pc 6920
	nop #pc 6924
	lw	%x6, 0(%x2)  #1042 pc 6928
	addi	%x6, %x6, 1  #1042 pc 6932
	addi	%x7, %x0, -1  #0 pc 6936
	j	create_array.2570  #1042 pc 6940
	nop #pc 6944
be_else.9200: #pc 6948
	lw	%x7, 0(%x2)  #1044 pc 6948
	addi	%x8, %x7, 1  #1044 pc 6952
	sw	%x6, 4(%x2)  #1044 pc 6956
	addi	%x6, %x8, 0  #0 pc 6960
	sw	%x1, 8(%x2)  #1044 pc 6964
	addi	%x2, %x2, 12  #1044 pc 6968
	jal	%x1, read_net_item.2745  #1044 pc 6972
	addi	%x2, %x2, -12  #1044 pc 6976
	lw	%x1, 8(%x2) #1044 pc 6980
	lw	%x7, 0(%x2)  #1045 pc 6984
	slli	%x7, %x7, 2  #1045 pc 6988
	lw	%x8, 4(%x2)  #1045 pc 6992
	add	%x31, %x7, %x6  #1045 pc 6996
	sw	%x8, 0(%x31)  #1045 pc 7000
	ret #pc 7004
	nop #pc 7008
read_or_network.2747:  #pc 7012
	addi	%x7, %x0, 0  #0 pc 7012
	sw	%x6, 0(%x2)  #1049 pc 7016
	addi	%x6, %x7, 0  #0 pc 7020
	sw	%x1, 4(%x2)  #1049 pc 7024
	addi	%x2, %x2, 8  #1049 pc 7028
	jal	%x1, read_net_item.2745  #1049 pc 7032
	addi	%x2, %x2, -8  #1049 pc 7036
	lw	%x1, 4(%x2) #1049 pc 7040
	addi	%x7, %x6, 0  #1049 pc 7044
	lw	%x6, 0(%x7)  #1050 pc 7048
	addi	%x31, %x0, -1  #pc 7052
	beq	%x6, %x31, 12  #1050 pc 7056
	j	be_else.9201 #pc 7060
	nop #pc 7064
	lw	%x6, 0(%x2)  #1051 pc 7068
	addi	%x6, %x6, 1  #1051 pc 7072
	j	create_array.2570  #1051 pc 7076
	nop #pc 7080
be_else.9201: #pc 7084
	lw	%x6, 0(%x2)  #1053 pc 7084
	addi	%x8, %x6, 1  #1053 pc 7088
	sw	%x7, 4(%x2)  #1053 pc 7092
	addi	%x6, %x8, 0  #0 pc 7096
	sw	%x1, 8(%x2)  #1053 pc 7100
	addi	%x2, %x2, 12  #1053 pc 7104
	jal	%x1, read_or_network.2747  #1053 pc 7108
	addi	%x2, %x2, -12  #1053 pc 7112
	lw	%x1, 8(%x2) #1053 pc 7116
	lw	%x7, 0(%x2)  #1054 pc 7120
	slli	%x7, %x7, 2  #1054 pc 7124
	lw	%x8, 4(%x2)  #1054 pc 7128
	add	%x31, %x7, %x6  #1054 pc 7132
	sw	%x8, 0(%x31)  #1054 pc 7136
	ret #pc 7140
	nop #pc 7144
read_and_network.2749:  #pc 7148
	lw	%x7, 4(%x29)  #0 pc 7148
	addi	%x8, %x0, 0  #0 pc 7152
	sw	%x29, 0(%x2)  #1058 pc 7156
	sw	%x7, 4(%x2)  #1058 pc 7160
	sw	%x6, 8(%x2)  #1058 pc 7164
	addi	%x6, %x8, 0  #0 pc 7168
	sw	%x1, 12(%x2)  #1058 pc 7172
	addi	%x2, %x2, 16  #1058 pc 7176
	jal	%x1, read_net_item.2745  #1058 pc 7180
	addi	%x2, %x2, -16  #1058 pc 7184
	lw	%x1, 12(%x2) #1058 pc 7188
	lw	%x7, 0(%x6)  #1059 pc 7192
	addi	%x31, %x0, -1  #pc 7196
	beq	%x7, %x31, 12  #1059 pc 7200
	j	be_else.9202 #pc 7204
	nop #pc 7208
	ret #pc 7212
	nop #pc 7216
be_else.9202: #pc 7220
	lw	%x7, 8(%x2)  #1061 pc 7220
	slli	%x8, %x7, 2  #1061 pc 7224
	lw	%x9, 4(%x2)  #1061 pc 7228
	add	%x31, %x8, %x9  #1061 pc 7232
	sw	%x6, 0(%x31)  #1061 pc 7236
	addi	%x6, %x7, 1  #1062 pc 7240
	lw	%x29, 0(%x2)  #1062 pc 7244
	lw	%x30, 0(%x29)  #1062 pc 7248
	jalr	%x0, %x30, 0  #1062 pc 7252
	nop #pc 7256
read_parameter.2751:  #pc 7260
	lw	%x6, 20(%x29)  #0 pc 7260
	lw	%x7, 16(%x29)  #0 pc 7264
	lw	%x8, 12(%x29)  #0 pc 7268
	lw	%x9, 8(%x29)  #0 pc 7272
	lw	%x10, 4(%x29)  #0 pc 7276
	sw	%x10, 0(%x2)  #1068 pc 7280
	sw	%x8, 4(%x2)  #1068 pc 7284
	sw	%x9, 8(%x2)  #1068 pc 7288
	sw	%x7, 12(%x2)  #1068 pc 7292
	addi	%x29, %x6, 0  #0 pc 7296
	sw	%x1, 16(%x2)  #1068 pc 7300
	lw	%x30, 0(%x29)  #1068 pc 7304
	addi	%x2, %x2, 20  #1068 pc 7308
	jalr	%x1, %x30, 0  #1068 pc 7312
	addi	%x2, %x2, -20  #1068 pc 7316
	lw	%x1, 16(%x2)  #1068 pc 7320
	lw	%x29, 12(%x2)  #1069 pc 7324
	sw	%x1, 16(%x2)  #1069 pc 7328
	lw	%x30, 0(%x29)  #1069 pc 7332
	addi	%x2, %x2, 20  #1069 pc 7336
	jalr	%x1, %x30, 0  #1069 pc 7340
	addi	%x2, %x2, -20  #1069 pc 7344
	lw	%x1, 16(%x2)  #1069 pc 7348
	lw	%x29, 8(%x2)  #1070 pc 7352
	sw	%x1, 16(%x2)  #1070 pc 7356
	lw	%x30, 0(%x29)  #1070 pc 7360
	addi	%x2, %x2, 20  #1070 pc 7364
	jalr	%x1, %x30, 0  #1070 pc 7368
	addi	%x2, %x2, -20  #1070 pc 7372
	lw	%x1, 16(%x2)  #1070 pc 7376
	addi	%x6, %x0, 0  #0 pc 7380
	lw	%x29, 4(%x2)  #1071 pc 7384
	sw	%x1, 16(%x2)  #1071 pc 7388
	lw	%x30, 0(%x29)  #1071 pc 7392
	addi	%x2, %x2, 20  #1071 pc 7396
	jalr	%x1, %x30, 0  #1071 pc 7400
	addi	%x2, %x2, -20  #1071 pc 7404
	lw	%x1, 16(%x2)  #1071 pc 7408
	addi	%x6, %x0, 0  #0 pc 7412
	sw	%x1, 16(%x2)  #1072 pc 7416
	addi	%x2, %x2, 20  #1072 pc 7420
	jal	%x1, read_or_network.2747  #1072 pc 7424
	addi	%x2, %x2, -20  #1072 pc 7428
	lw	%x1, 16(%x2) #1072 pc 7432
	lw	%x7, 0(%x2)  #1072 pc 7436
	sw	%x6, 0(%x7)  #1072 pc 7440
	ret #pc 7444
	nop #pc 7448
solver_rect_surface.2753:  #pc 7452
	lw	%x11, 4(%x29)  #0 pc 7452
	slli	%x12, %x8, 2  #1092 pc 7456
	add	%x31, %x12, %x7  #1092 pc 7460
	flw	%f3, 0(%x31)  #1092 pc 7464
	sw	%x11, 0(%x2)  #1092 pc 7468
	fsw	%f2, 8(%x2)  #1092 pc 7472
	sw	%x10, 16(%x2)  #1092 pc 7476
	fsw	%f1, 24(%x2)  #1092 pc 7480
	sw	%x9, 32(%x2)  #1092 pc 7484
	fsw	%f0, 40(%x2)  #1092 pc 7488
	sw	%x7, 48(%x2)  #1092 pc 7492
	sw	%x8, 52(%x2)  #1092 pc 7496
	sw	%x6, 56(%x2)  #1092 pc 7500
	fadd	%f0, %f3, %f30  #0 pc 7504
	sw	%x1, 60(%x2)  #1092 pc 7508
	addi	%x2, %x2, 64  #1092 pc 7512
	jal	%x1, fiszero.2509  #1092 pc 7516
	addi	%x2, %x2, -64  #1092 pc 7520
	lw	%x1, 60(%x2) #1092 pc 7524
	beq	%x6, %x0, 12  #1092 pc 7528
	j	be_else.9208 #pc 7532
	nop #pc 7536
	lw	%x6, 56(%x2)  #1093 pc 7540
	sw	%x1, 60(%x2)  #1093 pc 7544
	addi	%x2, %x2, 64  #1093 pc 7548
	jal	%x1, o_param_abc.2675  #1093 pc 7552
	addi	%x2, %x2, -64  #1093 pc 7556
	lw	%x1, 60(%x2) #1093 pc 7560
	lw	%x7, 56(%x2)  #1094 pc 7564
	sw	%x6, 60(%x2)  #1094 pc 7568
	addi	%x6, %x7, 0  #0 pc 7572
	sw	%x1, 64(%x2)  #1094 pc 7576
	addi	%x2, %x2, 68  #1094 pc 7580
	jal	%x1, o_isinvert.2665  #1094 pc 7584
	addi	%x2, %x2, -68  #1094 pc 7588
	lw	%x1, 64(%x2) #1094 pc 7592
	lw	%x7, 52(%x2)  #1094 pc 7596
	slli	%x8, %x7, 2  #1094 pc 7600
	lw	%x9, 48(%x2)  #1094 pc 7604
	add	%x31, %x8, %x9  #1094 pc 7608
	flw	%f0, 0(%x31)  #1094 pc 7612
	sw	%x6, 64(%x2)  #1094 pc 7616
	sw	%x1, 68(%x2)  #1094 pc 7620
	addi	%x2, %x2, 72  #1094 pc 7624
	jal	%x1, fisneg.2513  #1094 pc 7628
	addi	%x2, %x2, -72  #1094 pc 7632
	lw	%x1, 68(%x2) #1094 pc 7636
	addi	%x7, %x6, 0  #1094 pc 7640
	lw	%x6, 64(%x2)  #1094 pc 7644
	sw	%x1, 68(%x2)  #1094 pc 7648
	addi	%x2, %x2, 72  #1094 pc 7652
	jal	%x1, xor.2610  #1094 pc 7656
	addi	%x2, %x2, -72  #1094 pc 7660
	lw	%x1, 68(%x2) #1094 pc 7664
	lw	%x7, 52(%x2)  #1094 pc 7668
	slli	%x8, %x7, 2  #1094 pc 7672
	lw	%x9, 60(%x2)  #1094 pc 7676
	add	%x31, %x8, %x9  #1094 pc 7680
	flw	%f0, 0(%x31)  #1094 pc 7684
	sw	%x1, 68(%x2)  #1094 pc 7688
	addi	%x2, %x2, 72  #1094 pc 7692
	jal	%x1, fneg_cond.2615  #1094 pc 7696
	addi	%x2, %x2, -72  #1094 pc 7700
	lw	%x1, 68(%x2) #1094 pc 7704
	flw	%f1, 40(%x2)  #1096 pc 7708
	fsub	%f0, %f0, %f1  #1096 pc 7712
	lw	%x6, 52(%x2)  #1096 pc 7716
	slli	%x6, %x6, 2  #1096 pc 7720
	lw	%x7, 48(%x2)  #1096 pc 7724
	add	%x31, %x6, %x7  #1096 pc 7728
	flw	%f1, 0(%x31)  #1096 pc 7732
	fdiv	%f0, %f0, %f1  #1096 pc 7736
	lw	%x6, 32(%x2)  #1097 pc 7740
	slli	%x8, %x6, 2  #1097 pc 7744
	add	%x31, %x8, %x7  #1097 pc 7748
	flw	%f1, 0(%x31)  #1097 pc 7752
	fmul	%f1, %f0, %f1  #1097 pc 7756
	flw	%f2, 24(%x2)  #1097 pc 7760
	fadd	%f1, %f1, %f2  #1097 pc 7764
	fabs	%f1, %f1  #1097 pc 7768
	slli	%x6, %x6, 2  #1097 pc 7772
	lw	%x8, 60(%x2)  #1097 pc 7776
	add	%x31, %x6, %x8  #1097 pc 7780
	flw	%f2, 0(%x31)  #1097 pc 7784
	fsw	%f0, 72(%x2)  #1097 pc 7788
	fadd	%f0, %f1, %f30  #0 pc 7792
	fadd	%f1, %f2, %f30  #0 pc 7796
	sw	%x1, 80(%x2)  #1097 pc 7800
	addi	%x2, %x2, 84  #1097 pc 7804
	jal	%x1, fless.2521  #1097 pc 7808
	addi	%x2, %x2, -84  #1097 pc 7812
	lw	%x1, 80(%x2) #1097 pc 7816
	beq	%x6, %x0, 12  #1097 pc 7820
	j	be_else.9210 #pc 7824
	nop #pc 7828
	addi	%x6, %x0, 0  #0 pc 7832
	ret #pc 7836
	nop #pc 7840
be_else.9210: #pc 7844
	lw	%x6, 16(%x2)  #1098 pc 7844
	slli	%x7, %x6, 2  #1098 pc 7848
	lw	%x8, 48(%x2)  #1098 pc 7852
	add	%x31, %x7, %x8  #1098 pc 7856
	flw	%f0, 0(%x31)  #1098 pc 7860
	flw	%f1, 72(%x2)  #1098 pc 7864
	fmul	%f0, %f1, %f0  #1098 pc 7868
	flw	%f2, 8(%x2)  #1098 pc 7872
	fadd	%f0, %f0, %f2  #1098 pc 7876
	fabs	%f0, %f0  #1098 pc 7880
	slli	%x6, %x6, 2  #1098 pc 7884
	lw	%x7, 60(%x2)  #1098 pc 7888
	add	%x31, %x6, %x7  #1098 pc 7892
	flw	%f2, 0(%x31)  #1098 pc 7896
	fadd	%f1, %f2, %f30  #0 pc 7900
	sw	%x1, 80(%x2)  #1098 pc 7904
	addi	%x2, %x2, 84  #1098 pc 7908
	jal	%x1, fless.2521  #1098 pc 7912
	addi	%x2, %x2, -84  #1098 pc 7916
	lw	%x1, 80(%x2) #1098 pc 7920
	beq	%x6, %x0, 12  #1098 pc 7924
	j	be_else.9211 #pc 7928
	nop #pc 7932
	addi	%x6, %x0, 0  #0 pc 7936
	ret #pc 7940
	nop #pc 7944
be_else.9211: #pc 7948
	lw	%x6, 0(%x2)  #1099 pc 7948
	flw	%f0, 72(%x2)  #1099 pc 7952
	fsw	%f0, 0(%x6)  #1099 pc 7956
	addi	%x6, %x0, 1  #0 pc 7960
	ret #pc 7964
	nop #pc 7968
be_else.9208: #pc 7972
	addi	%x6, %x0, 0  #0 pc 7972
	ret #pc 7976
	nop #pc 7980
solver_rect.2762:  #pc 7984
	lw	%x29, 4(%x29)  #0 pc 7984
	addi	%x8, %x0, 0  #0 pc 7988
	addi	%x9, %x0, 1  #0 pc 7992
	addi	%x10, %x0, 2  #0 pc 7996
	fsw	%f0, 0(%x2)  #1107 pc 8000
	fsw	%f2, 8(%x2)  #1107 pc 8004
	fsw	%f1, 16(%x2)  #1107 pc 8008
	sw	%x7, 24(%x2)  #1107 pc 8012
	sw	%x6, 28(%x2)  #1107 pc 8016
	sw	%x29, 32(%x2)  #1107 pc 8020
	sw	%x1, 36(%x2)  #1107 pc 8024
	lw	%x30, 0(%x29)  #1107 pc 8028
	addi	%x2, %x2, 40  #1107 pc 8032
	jalr	%x1, %x30, 0  #1107 pc 8036
	addi	%x2, %x2, -40  #1107 pc 8040
	lw	%x1, 36(%x2)  #1107 pc 8044
	beq	%x6, %x0, 12  #1107 pc 8048
	j	be_else.9212 #pc 8052
	nop #pc 8056
	addi	%x8, %x0, 1  #0 pc 8060
	addi	%x9, %x0, 2  #0 pc 8064
	addi	%x10, %x0, 0  #0 pc 8068
	flw	%f0, 16(%x2)  #1108 pc 8072
	flw	%f1, 8(%x2)  #1108 pc 8076
	flw	%f2, 0(%x2)  #1108 pc 8080
	lw	%x6, 28(%x2)  #1108 pc 8084
	lw	%x7, 24(%x2)  #1108 pc 8088
	lw	%x29, 32(%x2)  #1108 pc 8092
	sw	%x1, 36(%x2)  #1108 pc 8096
	lw	%x30, 0(%x29)  #1108 pc 8100
	addi	%x2, %x2, 40  #1108 pc 8104
	jalr	%x1, %x30, 0  #1108 pc 8108
	addi	%x2, %x2, -40  #1108 pc 8112
	lw	%x1, 36(%x2)  #1108 pc 8116
	beq	%x6, %x0, 12  #1108 pc 8120
	j	be_else.9213 #pc 8124
	nop #pc 8128
	addi	%x8, %x0, 2  #0 pc 8132
	addi	%x9, %x0, 0  #0 pc 8136
	addi	%x10, %x0, 1  #0 pc 8140
	flw	%f0, 8(%x2)  #1109 pc 8144
	flw	%f1, 0(%x2)  #1109 pc 8148
	flw	%f2, 16(%x2)  #1109 pc 8152
	lw	%x6, 28(%x2)  #1109 pc 8156
	lw	%x7, 24(%x2)  #1109 pc 8160
	lw	%x29, 32(%x2)  #1109 pc 8164
	sw	%x1, 36(%x2)  #1109 pc 8168
	lw	%x30, 0(%x29)  #1109 pc 8172
	addi	%x2, %x2, 40  #1109 pc 8176
	jalr	%x1, %x30, 0  #1109 pc 8180
	addi	%x2, %x2, -40  #1109 pc 8184
	lw	%x1, 36(%x2)  #1109 pc 8188
	beq	%x6, %x0, 12  #1109 pc 8192
	j	be_else.9214 #pc 8196
	nop #pc 8200
	addi	%x6, %x0, 0  #0 pc 8204
	ret #pc 8208
	nop #pc 8212
be_else.9214: #pc 8216
	addi	%x6, %x0, 3  #0 pc 8216
	ret #pc 8220
	nop #pc 8224
be_else.9213: #pc 8228
	addi	%x6, %x0, 2  #0 pc 8228
	ret #pc 8232
	nop #pc 8236
be_else.9212: #pc 8240
	addi	%x6, %x0, 1  #0 pc 8240
	ret #pc 8244
	nop #pc 8248
solver_surface.2768:  #pc 8252
	lw	%x8, 4(%x29)  #1118 pc 8252
	sw	%x8, 0(%x2)  #1118 pc 8256
	fsw	%f2, 8(%x2)  #1118 pc 8260
	fsw	%f1, 16(%x2)  #1118 pc 8264
	fsw	%f0, 24(%x2)  #1118 pc 8268
	sw	%x7, 32(%x2)  #1118 pc 8272
	sw	%x1, 36(%x2)  #1118 pc 8276
	addi	%x2, %x2, 40  #1118 pc 8280
	jal	%x1, o_param_abc.2675  #1118 pc 8284
	addi	%x2, %x2, -40  #1118 pc 8288
	lw	%x1, 36(%x2) #1118 pc 8292
	addi	%x7, %x6, 0  #1118 pc 8296
	lw	%x6, 32(%x2)  #1119 pc 8300
	sw	%x7, 36(%x2)  #1119 pc 8304
	sw	%x1, 40(%x2)  #1119 pc 8308
	addi	%x2, %x2, 44  #1119 pc 8312
	jal	%x1, veciprod.2637  #1119 pc 8316
	addi	%x2, %x2, -44  #1119 pc 8320
	lw	%x1, 40(%x2) #1119 pc 8324
	fsw	%f0, 40(%x2)  #1120 pc 8328
	sw	%x1, 48(%x2)  #1120 pc 8332
	addi	%x2, %x2, 52  #1120 pc 8336
	jal	%x1, fispos.2511  #1120 pc 8340
	addi	%x2, %x2, -52  #1120 pc 8344
	lw	%x1, 48(%x2) #1120 pc 8348
	beq	%x6, %x0, 12  #1120 pc 8352
	j	be_else.9216 #pc 8356
	nop #pc 8360
	addi	%x6, %x0, 0  #0 pc 8364
	ret #pc 8368
	nop #pc 8372
be_else.9216: #pc 8376
	flw	%f0, 24(%x2)  #1121 pc 8376
	flw	%f1, 16(%x2)  #1121 pc 8380
	flw	%f2, 8(%x2)  #1121 pc 8384
	lw	%x6, 36(%x2)  #1121 pc 8388
	sw	%x1, 48(%x2)  #1121 pc 8392
	addi	%x2, %x2, 52  #1121 pc 8396
	jal	%x1, veciprod2.2640  #1121 pc 8400
	addi	%x2, %x2, -52  #1121 pc 8404
	lw	%x1, 48(%x2) #1121 pc 8408
	sw	%x1, 48(%x2)  #1121 pc 8412
	addi	%x2, %x2, 52  #1121 pc 8416
	jal	%x1, fneg.2515  #1121 pc 8420
	addi	%x2, %x2, -52  #1121 pc 8424
	lw	%x1, 48(%x2) #1121 pc 8428
	flw	%f1, 40(%x2)  #1121 pc 8432
	fdiv	%f0, %f0, %f1  #1121 pc 8436
	lw	%x6, 0(%x2)  #1121 pc 8440
	fsw	%f0, 0(%x6)  #1121 pc 8444
	addi	%x6, %x0, 1  #0 pc 8448
	ret #pc 8452
	nop #pc 8456
quadratic.2774:  #pc 8460
	fsw	%f0, 0(%x2)  #1131 pc 8460
	fsw	%f2, 8(%x2)  #1131 pc 8464
	fsw	%f1, 16(%x2)  #1131 pc 8468
	sw	%x6, 24(%x2)  #1131 pc 8472
	sw	%x1, 28(%x2)  #1131 pc 8476
	addi	%x2, %x2, 32  #1131 pc 8480
	jal	%x1, fsqr.2517  #1131 pc 8484
	addi	%x2, %x2, -32  #1131 pc 8488
	lw	%x1, 28(%x2) #1131 pc 8492
	lw	%x6, 24(%x2)  #1131 pc 8496
	fsw	%f0, 32(%x2)  #1131 pc 8500
	sw	%x1, 40(%x2)  #1131 pc 8504
	addi	%x2, %x2, 44  #1131 pc 8508
	jal	%x1, o_param_a.2669  #1131 pc 8512
	addi	%x2, %x2, -44  #1131 pc 8516
	lw	%x1, 40(%x2) #1131 pc 8520
	flw	%f1, 32(%x2)  #1131 pc 8524
	fmul	%f0, %f1, %f0  #1131 pc 8528
	flw	%f1, 16(%x2)  #1131 pc 8532
	fsw	%f0, 40(%x2)  #1131 pc 8536
	fadd	%f0, %f1, %f30  #0 pc 8540
	sw	%x1, 48(%x2)  #1131 pc 8544
	addi	%x2, %x2, 52  #1131 pc 8548
	jal	%x1, fsqr.2517  #1131 pc 8552
	addi	%x2, %x2, -52  #1131 pc 8556
	lw	%x1, 48(%x2) #1131 pc 8560
	lw	%x6, 24(%x2)  #1131 pc 8564
	fsw	%f0, 48(%x2)  #1131 pc 8568
	sw	%x1, 56(%x2)  #1131 pc 8572
	addi	%x2, %x2, 60  #1131 pc 8576
	jal	%x1, o_param_b.2671  #1131 pc 8580
	addi	%x2, %x2, -60  #1131 pc 8584
	lw	%x1, 56(%x2) #1131 pc 8588
	flw	%f1, 48(%x2)  #1131 pc 8592
	fmul	%f0, %f1, %f0  #1131 pc 8596
	flw	%f1, 40(%x2)  #1131 pc 8600
	fadd	%f0, %f1, %f0  #1131 pc 8604
	flw	%f1, 8(%x2)  #1131 pc 8608
	fsw	%f0, 56(%x2)  #1131 pc 8612
	fadd	%f0, %f1, %f30  #0 pc 8616
	sw	%x1, 64(%x2)  #1131 pc 8620
	addi	%x2, %x2, 68  #1131 pc 8624
	jal	%x1, fsqr.2517  #1131 pc 8628
	addi	%x2, %x2, -68  #1131 pc 8632
	lw	%x1, 64(%x2) #1131 pc 8636
	lw	%x6, 24(%x2)  #1131 pc 8640
	fsw	%f0, 64(%x2)  #1131 pc 8644
	sw	%x1, 72(%x2)  #1131 pc 8648
	addi	%x2, %x2, 76  #1131 pc 8652
	jal	%x1, o_param_c.2673  #1131 pc 8656
	addi	%x2, %x2, -76  #1131 pc 8660
	lw	%x1, 72(%x2) #1131 pc 8664
	flw	%f1, 64(%x2)  #1131 pc 8668
	fmul	%f0, %f1, %f0  #1131 pc 8672
	flw	%f1, 56(%x2)  #1131 pc 8676
	fadd	%f0, %f1, %f0  #1131 pc 8680
	lw	%x6, 24(%x2)  #1133 pc 8684
	fsw	%f0, 72(%x2)  #1133 pc 8688
	sw	%x1, 80(%x2)  #1133 pc 8692
	addi	%x2, %x2, 84  #1133 pc 8696
	jal	%x1, o_isrot.2667  #1133 pc 8700
	addi	%x2, %x2, -84  #1133 pc 8704
	lw	%x1, 80(%x2) #1133 pc 8708
	beq	%x6, %x0, 12  #1133 pc 8712
	j	be_else.9218 #pc 8716
	nop #pc 8720
	flw	%f0, 72(%x2)  #1134 pc 8724
	ret #pc 8728
	nop #pc 8732
be_else.9218: #pc 8736
	flw	%f0, 8(%x2)  #1137 pc 8736
	flw	%f1, 16(%x2)  #1137 pc 8740
	fmul	%f2, %f1, %f0  #1137 pc 8744
	lw	%x6, 24(%x2)  #1137 pc 8748
	fsw	%f2, 80(%x2)  #1137 pc 8752
	sw	%x1, 88(%x2)  #1137 pc 8756
	addi	%x2, %x2, 92  #1137 pc 8760
	jal	%x1, o_param_r1.2693  #1137 pc 8764
	addi	%x2, %x2, -92  #1137 pc 8768
	lw	%x1, 88(%x2) #1137 pc 8772
	flw	%f1, 80(%x2)  #1137 pc 8776
	fmul	%f0, %f1, %f0  #1137 pc 8780
	flw	%f1, 72(%x2)  #1136 pc 8784
	fadd	%f0, %f1, %f0  #1136 pc 8788
	flw	%f1, 0(%x2)  #1138 pc 8792
	flw	%f2, 8(%x2)  #1138 pc 8796
	fmul	%f2, %f2, %f1  #1138 pc 8800
	lw	%x6, 24(%x2)  #1138 pc 8804
	fsw	%f0, 88(%x2)  #1138 pc 8808
	fsw	%f2, 96(%x2)  #1138 pc 8812
	sw	%x1, 104(%x2)  #1138 pc 8816
	addi	%x2, %x2, 108  #1138 pc 8820
	jal	%x1, o_param_r2.2695  #1138 pc 8824
	addi	%x2, %x2, -108  #1138 pc 8828
	lw	%x1, 104(%x2) #1138 pc 8832
	flw	%f1, 96(%x2)  #1138 pc 8836
	fmul	%f0, %f1, %f0  #1138 pc 8840
	flw	%f1, 88(%x2)  #1136 pc 8844
	fadd	%f0, %f1, %f0  #1136 pc 8848
	flw	%f1, 16(%x2)  #1139 pc 8852
	flw	%f2, 0(%x2)  #1139 pc 8856
	fmul	%f1, %f2, %f1  #1139 pc 8860
	lw	%x6, 24(%x2)  #1139 pc 8864
	fsw	%f0, 104(%x2)  #1139 pc 8868
	fsw	%f1, 112(%x2)  #1139 pc 8872
	sw	%x1, 120(%x2)  #1139 pc 8876
	addi	%x2, %x2, 124  #1139 pc 8880
	jal	%x1, o_param_r3.2697  #1139 pc 8884
	addi	%x2, %x2, -124  #1139 pc 8888
	lw	%x1, 120(%x2) #1139 pc 8892
	flw	%f1, 112(%x2)  #1139 pc 8896
	fmul	%f0, %f1, %f0  #1139 pc 8900
	flw	%f1, 104(%x2)  #1136 pc 8904
	fadd	%f0, %f1, %f0  #1136 pc 8908
	ret #pc 8912
	nop #pc 8916
bilinear.2779:  #pc 8920
	fmul	%f6, %f0, %f3  #1145 pc 8920
	fsw	%f3, 0(%x2)  #1145 pc 8924
	fsw	%f0, 8(%x2)  #1145 pc 8928
	fsw	%f5, 16(%x2)  #1145 pc 8932
	fsw	%f2, 24(%x2)  #1145 pc 8936
	sw	%x6, 32(%x2)  #1145 pc 8940
	fsw	%f4, 40(%x2)  #1145 pc 8944
	fsw	%f1, 48(%x2)  #1145 pc 8948
	fsw	%f6, 56(%x2)  #1145 pc 8952
	sw	%x1, 64(%x2)  #1145 pc 8956
	addi	%x2, %x2, 68  #1145 pc 8960
	jal	%x1, o_param_a.2669  #1145 pc 8964
	addi	%x2, %x2, -68  #1145 pc 8968
	lw	%x1, 64(%x2) #1145 pc 8972
	flw	%f1, 56(%x2)  #1145 pc 8976
	fmul	%f0, %f1, %f0  #1145 pc 8980
	flw	%f1, 40(%x2)  #1146 pc 8984
	flw	%f2, 48(%x2)  #1146 pc 8988
	fmul	%f3, %f2, %f1  #1146 pc 8992
	lw	%x6, 32(%x2)  #1146 pc 8996
	fsw	%f0, 64(%x2)  #1146 pc 9000
	fsw	%f3, 72(%x2)  #1146 pc 9004
	sw	%x1, 80(%x2)  #1146 pc 9008
	addi	%x2, %x2, 84  #1146 pc 9012
	jal	%x1, o_param_b.2671  #1146 pc 9016
	addi	%x2, %x2, -84  #1146 pc 9020
	lw	%x1, 80(%x2) #1146 pc 9024
	flw	%f1, 72(%x2)  #1146 pc 9028
	fmul	%f0, %f1, %f0  #1146 pc 9032
	flw	%f1, 64(%x2)  #1145 pc 9036
	fadd	%f0, %f1, %f0  #1145 pc 9040
	flw	%f1, 16(%x2)  #1147 pc 9044
	flw	%f2, 24(%x2)  #1147 pc 9048
	fmul	%f3, %f2, %f1  #1147 pc 9052
	lw	%x6, 32(%x2)  #1147 pc 9056
	fsw	%f0, 80(%x2)  #1147 pc 9060
	fsw	%f3, 88(%x2)  #1147 pc 9064
	sw	%x1, 96(%x2)  #1147 pc 9068
	addi	%x2, %x2, 100  #1147 pc 9072
	jal	%x1, o_param_c.2673  #1147 pc 9076
	addi	%x2, %x2, -100  #1147 pc 9080
	lw	%x1, 96(%x2) #1147 pc 9084
	flw	%f1, 88(%x2)  #1147 pc 9088
	fmul	%f0, %f1, %f0  #1147 pc 9092
	flw	%f1, 80(%x2)  #1145 pc 9096
	fadd	%f0, %f1, %f0  #1145 pc 9100
	lw	%x6, 32(%x2)  #1149 pc 9104
	fsw	%f0, 96(%x2)  #1149 pc 9108
	sw	%x1, 104(%x2)  #1149 pc 9112
	addi	%x2, %x2, 108  #1149 pc 9116
	jal	%x1, o_isrot.2667  #1149 pc 9120
	addi	%x2, %x2, -108  #1149 pc 9124
	lw	%x1, 104(%x2) #1149 pc 9128
	beq	%x6, %x0, 12  #1149 pc 9132
	j	be_else.9220 #pc 9136
	nop #pc 9140
	flw	%f0, 96(%x2)  #1150 pc 9144
	ret #pc 9148
	nop #pc 9152
be_else.9220: #pc 9156
	flw	%f0, 40(%x2)  #1153 pc 9156
	flw	%f1, 24(%x2)  #1153 pc 9160
	fmul	%f2, %f1, %f0  #1153 pc 9164
	flw	%f3, 16(%x2)  #1153 pc 9168
	flw	%f4, 48(%x2)  #1153 pc 9172
	fmul	%f5, %f4, %f3  #1153 pc 9176
	fadd	%f2, %f2, %f5  #1153 pc 9180
	lw	%x6, 32(%x2)  #1153 pc 9184
	fsw	%f2, 104(%x2)  #1153 pc 9188
	sw	%x1, 112(%x2)  #1153 pc 9192
	addi	%x2, %x2, 116  #1153 pc 9196
	jal	%x1, o_param_r1.2693  #1153 pc 9200
	addi	%x2, %x2, -116  #1153 pc 9204
	lw	%x1, 112(%x2) #1153 pc 9208
	flw	%f1, 104(%x2)  #1153 pc 9212
	fmul	%f0, %f1, %f0  #1153 pc 9216
	flw	%f1, 16(%x2)  #1154 pc 9220
	flw	%f2, 8(%x2)  #1154 pc 9224
	fmul	%f1, %f2, %f1  #1154 pc 9228
	flw	%f3, 0(%x2)  #1154 pc 9232
	flw	%f4, 24(%x2)  #1154 pc 9236
	fmul	%f4, %f4, %f3  #1154 pc 9240
	fadd	%f1, %f1, %f4  #1154 pc 9244
	lw	%x6, 32(%x2)  #1154 pc 9248
	fsw	%f0, 112(%x2)  #1154 pc 9252
	fsw	%f1, 120(%x2)  #1154 pc 9256
	sw	%x1, 128(%x2)  #1154 pc 9260
	addi	%x2, %x2, 132  #1154 pc 9264
	jal	%x1, o_param_r2.2695  #1154 pc 9268
	addi	%x2, %x2, -132  #1154 pc 9272
	lw	%x1, 128(%x2) #1154 pc 9276
	flw	%f1, 120(%x2)  #1154 pc 9280
	fmul	%f0, %f1, %f0  #1154 pc 9284
	flw	%f1, 112(%x2)  #1153 pc 9288
	fadd	%f0, %f1, %f0  #1153 pc 9292
	flw	%f1, 40(%x2)  #1155 pc 9296
	flw	%f2, 8(%x2)  #1155 pc 9300
	fmul	%f1, %f2, %f1  #1155 pc 9304
	flw	%f2, 0(%x2)  #1155 pc 9308
	flw	%f3, 48(%x2)  #1155 pc 9312
	fmul	%f2, %f3, %f2  #1155 pc 9316
	fadd	%f1, %f1, %f2  #1155 pc 9320
	lw	%x6, 32(%x2)  #1155 pc 9324
	fsw	%f0, 128(%x2)  #1155 pc 9328
	fsw	%f1, 136(%x2)  #1155 pc 9332
	sw	%x1, 144(%x2)  #1155 pc 9336
	addi	%x2, %x2, 148  #1155 pc 9340
	jal	%x1, o_param_r3.2697  #1155 pc 9344
	addi	%x2, %x2, -148  #1155 pc 9348
	lw	%x1, 144(%x2) #1155 pc 9352
	flw	%f1, 136(%x2)  #1155 pc 9356
	fmul	%f0, %f1, %f0  #1155 pc 9360
	flw	%f1, 128(%x2)  #1153 pc 9364
	fadd	%f0, %f1, %f0  #1153 pc 9368
	sw	%x1, 144(%x2)  #1152 pc 9372
	addi	%x2, %x2, 148  #1152 pc 9376
	jal	%x1, fhalf.2519  #1152 pc 9380
	addi	%x2, %x2, -148  #1152 pc 9384
	lw	%x1, 144(%x2) #1152 pc 9388
	flw	%f1, 96(%x2)  #1152 pc 9392
	fadd	%f0, %f1, %f0  #1152 pc 9396
	ret #pc 9400
	nop #pc 9404
solver_second.2787:  #pc 9408
	lw	%x8, 4(%x29)  #0 pc 9408
	flw	%f3, 0(%x7)  #1170 pc 9412
	flw	%f4, 4(%x7)  #1170 pc 9416
	flw	%f5, 8(%x7)  #1170 pc 9420
	sw	%x8, 0(%x2)  #1170 pc 9424
	fsw	%f2, 8(%x2)  #1170 pc 9428
	fsw	%f1, 16(%x2)  #1170 pc 9432
	fsw	%f0, 24(%x2)  #1170 pc 9436
	sw	%x6, 32(%x2)  #1170 pc 9440
	sw	%x7, 36(%x2)  #1170 pc 9444
	fadd	%f2, %f5, %f30  #0 pc 9448
	fadd	%f1, %f4, %f30  #0 pc 9452
	fadd	%f0, %f3, %f30  #0 pc 9456
	sw	%x1, 40(%x2)  #1170 pc 9460
	addi	%x2, %x2, 44  #1170 pc 9464
	jal	%x1, quadratic.2774  #1170 pc 9468
	addi	%x2, %x2, -44  #1170 pc 9472
	lw	%x1, 40(%x2) #1170 pc 9476
	fsw	%f0, 40(%x2)  #1172 pc 9480
	sw	%x1, 48(%x2)  #1172 pc 9484
	addi	%x2, %x2, 52  #1172 pc 9488
	jal	%x1, fiszero.2509  #1172 pc 9492
	addi	%x2, %x2, -52  #1172 pc 9496
	lw	%x1, 48(%x2) #1172 pc 9500
	beq	%x6, %x0, 12  #1172 pc 9504
	j	be_else.9222 #pc 9508
	nop #pc 9512
	lw	%x6, 36(%x2)  #1177 pc 9516
	flw	%f0, 0(%x6)  #1177 pc 9520
	flw	%f1, 4(%x6)  #1177 pc 9524
	flw	%f2, 8(%x6)  #1177 pc 9528
	flw	%f3, 24(%x2)  #1177 pc 9532
	flw	%f4, 16(%x2)  #1177 pc 9536
	flw	%f5, 8(%x2)  #1177 pc 9540
	lw	%x6, 32(%x2)  #1177 pc 9544
	sw	%x1, 48(%x2)  #1177 pc 9548
	addi	%x2, %x2, 52  #1177 pc 9552
	jal	%x1, bilinear.2779  #1177 pc 9556
	addi	%x2, %x2, -52  #1177 pc 9560
	lw	%x1, 48(%x2) #1177 pc 9564
	flw	%f1, 24(%x2)  #1179 pc 9568
	flw	%f2, 16(%x2)  #1179 pc 9572
	flw	%f3, 8(%x2)  #1179 pc 9576
	lw	%x6, 32(%x2)  #1179 pc 9580
	fsw	%f0, 48(%x2)  #1179 pc 9584
	fadd	%f0, %f1, %f30  #0 pc 9588
	fadd	%f1, %f2, %f30  #0 pc 9592
	fadd	%f2, %f3, %f30  #0 pc 9596
	sw	%x1, 56(%x2)  #1179 pc 9600
	addi	%x2, %x2, 60  #1179 pc 9604
	jal	%x1, quadratic.2774  #1179 pc 9608
	addi	%x2, %x2, -60  #1179 pc 9612
	lw	%x1, 56(%x2) #1179 pc 9616
	lw	%x6, 32(%x2)  #1180 pc 9620
	fsw	%f0, 56(%x2)  #1180 pc 9624
	sw	%x1, 64(%x2)  #1180 pc 9628
	addi	%x2, %x2, 68  #1180 pc 9632
	jal	%x1, o_form.2661  #1180 pc 9636
	addi	%x2, %x2, -68  #1180 pc 9640
	lw	%x1, 64(%x2) #1180 pc 9644
	addi	%x31, %x0, 3  #pc 9648
	beq	%x6, %x31, 12  #1180 pc 9652
	j	be_else.9223 #pc 9656
	nop #pc 9660
	fmv	%f0, l.6263  #0 pc 9664
	flw	%f1, 56(%x2)  #1180 pc 9668
	fsub	%f0, %f1, %f0  #1180 pc 9672
	j	be_cont.9224 #pc 9676
	nop #pc 9680
be_else.9223: #pc 9684
	flw	%f0, 56(%x2)  #1180 pc 9684
be_cont.9224: #pc 9688
	flw	%f1, 48(%x2)  #1182 pc 9688
	fsw	%f0, 64(%x2)  #1182 pc 9692
	fadd	%f0, %f1, %f30  #0 pc 9696
	sw	%x1, 72(%x2)  #1182 pc 9700
	addi	%x2, %x2, 76  #1182 pc 9704
	jal	%x1, fsqr.2517  #1182 pc 9708
	addi	%x2, %x2, -76  #1182 pc 9712
	lw	%x1, 72(%x2) #1182 pc 9716
	flw	%f1, 64(%x2)  #1182 pc 9720
	flw	%f2, 40(%x2)  #1182 pc 9724
	fmul	%f1, %f2, %f1  #1182 pc 9728
	fsub	%f0, %f0, %f1  #1182 pc 9732
	fsw	%f0, 72(%x2)  #1184 pc 9736
	sw	%x1, 80(%x2)  #1184 pc 9740
	addi	%x2, %x2, 84  #1184 pc 9744
	jal	%x1, fispos.2511  #1184 pc 9748
	addi	%x2, %x2, -84  #1184 pc 9752
	lw	%x1, 80(%x2) #1184 pc 9756
	beq	%x6, %x0, 12  #1184 pc 9760
	j	be_else.9225 #pc 9764
	nop #pc 9768
	addi	%x6, %x0, 0  #0 pc 9772
	ret #pc 9776
	nop #pc 9780
be_else.9225: #pc 9784
	flw	%f0, 72(%x2)  #1185 pc 9784
	fsqrt	%f0, %f0  #1185 pc 9788
	lw	%x6, 32(%x2)  #1186 pc 9792
	fsw	%f0, 80(%x2)  #1186 pc 9796
	sw	%x1, 88(%x2)  #1186 pc 9800
	addi	%x2, %x2, 92  #1186 pc 9804
	jal	%x1, o_isinvert.2665  #1186 pc 9808
	addi	%x2, %x2, -92  #1186 pc 9812
	lw	%x1, 88(%x2) #1186 pc 9816
	beq	%x6, %x0, 12  #1186 pc 9820
	j	be_else.9226 #pc 9824
	nop #pc 9828
	flw	%f0, 80(%x2)  #1186 pc 9832
	sw	%x1, 88(%x2)  #1186 pc 9836
	addi	%x2, %x2, 92  #1186 pc 9840
	jal	%x1, fneg.2515  #1186 pc 9844
	addi	%x2, %x2, -92  #1186 pc 9848
	lw	%x1, 88(%x2) #1186 pc 9852
	j	be_cont.9227 #pc 9856
	nop #pc 9860
be_else.9226: #pc 9864
	flw	%f0, 80(%x2)  #1186 pc 9864
be_cont.9227: #pc 9868
	flw	%f1, 48(%x2)  #1187 pc 9868
	fsub	%f0, %f0, %f1  #1187 pc 9872
	flw	%f1, 40(%x2)  #1187 pc 9876
	fdiv	%f0, %f0, %f1  #1187 pc 9880
	lw	%x6, 0(%x2)  #1187 pc 9884
	fsw	%f0, 0(%x6)  #1187 pc 9888
	addi	%x6, %x0, 1  #0 pc 9892
	ret #pc 9896
	nop #pc 9900
be_else.9222: #pc 9904
	addi	%x6, %x0, 0  #0 pc 9904
	ret #pc 9908
	nop #pc 9912
solver.2793:  #pc 9916
	lw	%x9, 16(%x29)  #1196 pc 9916
	lw	%x10, 12(%x29)  #1196 pc 9920
	lw	%x11, 8(%x29)  #1196 pc 9924
	lw	%x12, 4(%x29)  #1196 pc 9928
	slli	%x6, %x6, 2  #1196 pc 9932
	add	%x31, %x6, %x12  #1196 pc 9936
	lw	%x6, 0(%x31)  #1196 pc 9940
	flw	%f0, 0(%x8)  #1198 pc 9944
	sw	%x10, 0(%x2)  #1198 pc 9948
	sw	%x9, 4(%x2)  #1198 pc 9952
	sw	%x7, 8(%x2)  #1198 pc 9956
	sw	%x11, 12(%x2)  #1198 pc 9960
	sw	%x6, 16(%x2)  #1198 pc 9964
	sw	%x8, 20(%x2)  #1198 pc 9968
	fsw	%f0, 24(%x2)  #1198 pc 9972
	sw	%x1, 32(%x2)  #1198 pc 9976
	addi	%x2, %x2, 36  #1198 pc 9980
	jal	%x1, o_param_x.2677  #1198 pc 9984
	addi	%x2, %x2, -36  #1198 pc 9988
	lw	%x1, 32(%x2) #1198 pc 9992
	flw	%f1, 24(%x2)  #1198 pc 9996
	fsub	%f0, %f1, %f0  #1198 pc 10000
	lw	%x6, 20(%x2)  #1199 pc 10004
	flw	%f1, 4(%x6)  #1199 pc 10008
	lw	%x7, 16(%x2)  #1199 pc 10012
	fsw	%f0, 32(%x2)  #1199 pc 10016
	fsw	%f1, 40(%x2)  #1199 pc 10020
	addi	%x6, %x7, 0  #0 pc 10024
	sw	%x1, 48(%x2)  #1199 pc 10028
	addi	%x2, %x2, 52  #1199 pc 10032
	jal	%x1, o_param_y.2679  #1199 pc 10036
	addi	%x2, %x2, -52  #1199 pc 10040
	lw	%x1, 48(%x2) #1199 pc 10044
	flw	%f1, 40(%x2)  #1199 pc 10048
	fsub	%f0, %f1, %f0  #1199 pc 10052
	lw	%x6, 20(%x2)  #1200 pc 10056
	flw	%f1, 8(%x6)  #1200 pc 10060
	lw	%x6, 16(%x2)  #1200 pc 10064
	fsw	%f0, 48(%x2)  #1200 pc 10068
	fsw	%f1, 56(%x2)  #1200 pc 10072
	sw	%x1, 64(%x2)  #1200 pc 10076
	addi	%x2, %x2, 68  #1200 pc 10080
	jal	%x1, o_param_z.2681  #1200 pc 10084
	addi	%x2, %x2, -68  #1200 pc 10088
	lw	%x1, 64(%x2) #1200 pc 10092
	flw	%f1, 56(%x2)  #1200 pc 10096
	fsub	%f0, %f1, %f0  #1200 pc 10100
	lw	%x6, 16(%x2)  #1201 pc 10104
	fsw	%f0, 64(%x2)  #1201 pc 10108
	sw	%x1, 72(%x2)  #1201 pc 10112
	addi	%x2, %x2, 76  #1201 pc 10116
	jal	%x1, o_form.2661  #1201 pc 10120
	addi	%x2, %x2, -76  #1201 pc 10124
	lw	%x1, 72(%x2) #1201 pc 10128
	addi	%x31, %x0, 1  #pc 10132
	beq	%x6, %x31, 12  #1203 pc 10136
	j	be_else.9228 #pc 10140
	nop #pc 10144
	flw	%f0, 32(%x2)  #1203 pc 10148
	flw	%f1, 48(%x2)  #1203 pc 10152
	flw	%f2, 64(%x2)  #1203 pc 10156
	lw	%x6, 16(%x2)  #1203 pc 10160
	lw	%x7, 8(%x2)  #1203 pc 10164
	lw	%x29, 12(%x2)  #1203 pc 10168
	lw	%x30, 0(%x29)  #1203 pc 10172
	jalr	%x0, %x30, 0  #1203 pc 10176
	nop #pc 10180
be_else.9228: #pc 10184
	addi	%x31, %x0, 2  #pc 10184
	beq	%x6, %x31, 12  #1204 pc 10188
	j	be_else.9229 #pc 10192
	nop #pc 10196
	flw	%f0, 32(%x2)  #1204 pc 10200
	flw	%f1, 48(%x2)  #1204 pc 10204
	flw	%f2, 64(%x2)  #1204 pc 10208
	lw	%x6, 16(%x2)  #1204 pc 10212
	lw	%x7, 8(%x2)  #1204 pc 10216
	lw	%x29, 4(%x2)  #1204 pc 10220
	lw	%x30, 0(%x29)  #1204 pc 10224
	jalr	%x0, %x30, 0  #1204 pc 10228
	nop #pc 10232
be_else.9229: #pc 10236
	flw	%f0, 32(%x2)  #1205 pc 10236
	flw	%f1, 48(%x2)  #1205 pc 10240
	flw	%f2, 64(%x2)  #1205 pc 10244
	lw	%x6, 16(%x2)  #1205 pc 10248
	lw	%x7, 8(%x2)  #1205 pc 10252
	lw	%x29, 0(%x2)  #1205 pc 10256
	lw	%x30, 0(%x29)  #1205 pc 10260
	jalr	%x0, %x30, 0  #1205 pc 10264
	nop #pc 10268
solver_rect_fast.2797:  #pc 10272
	lw	%x9, 4(%x29)  #0 pc 10272
	flw	%f3, 0(%x8)  #1228 pc 10276
	fsub	%f3, %f3, %f0  #1228 pc 10280
	flw	%f4, 4(%x8)  #1228 pc 10284
	fmul	%f3, %f3, %f4  #1228 pc 10288
	flw	%f4, 4(%x7)  #1230 pc 10292
	fmul	%f4, %f3, %f4  #1230 pc 10296
	fadd	%f4, %f4, %f1  #1230 pc 10300
	fabs	%f4, %f4  #1230 pc 10304
	sw	%x9, 0(%x2)  #1230 pc 10308
	fsw	%f0, 8(%x2)  #1230 pc 10312
	fsw	%f1, 16(%x2)  #1230 pc 10316
	sw	%x8, 24(%x2)  #1230 pc 10320
	sw	%x6, 28(%x2)  #1230 pc 10324
	fsw	%f2, 32(%x2)  #1230 pc 10328
	fsw	%f3, 40(%x2)  #1230 pc 10332
	sw	%x7, 48(%x2)  #1230 pc 10336
	fsw	%f4, 56(%x2)  #1230 pc 10340
	sw	%x1, 64(%x2)  #1230 pc 10344
	addi	%x2, %x2, 68  #1230 pc 10348
	jal	%x1, o_param_b.2671  #1230 pc 10352
	addi	%x2, %x2, -68  #1230 pc 10356
	lw	%x1, 64(%x2) #1230 pc 10360
	fadd	%f1, %f0, %f30  #1230 pc 10364
	flw	%f0, 56(%x2)  #1230 pc 10368
	sw	%x1, 64(%x2)  #1230 pc 10372
	addi	%x2, %x2, 68  #1230 pc 10376
	jal	%x1, fless.2521  #1230 pc 10380
	addi	%x2, %x2, -68  #1230 pc 10384
	lw	%x1, 64(%x2) #1230 pc 10388
	beq	%x6, %x0, 12  #1230 pc 10392
	j	be_else.9232 #pc 10396
	nop #pc 10400
	addi	%x6, %x0, 0  #0 pc 10404
	j	be_cont.9233 #pc 10408
	nop #pc 10412
be_else.9232: #pc 10416
	lw	%x6, 48(%x2)  #1231 pc 10416
	flw	%f0, 8(%x6)  #1231 pc 10420
	flw	%f1, 40(%x2)  #1231 pc 10424
	fmul	%f0, %f1, %f0  #1231 pc 10428
	flw	%f2, 32(%x2)  #1231 pc 10432
	fadd	%f0, %f0, %f2  #1231 pc 10436
	fabs	%f0, %f0  #1231 pc 10440
	lw	%x7, 28(%x2)  #1231 pc 10444
	fsw	%f0, 64(%x2)  #1231 pc 10448
	addi	%x6, %x7, 0  #0 pc 10452
	sw	%x1, 72(%x2)  #1231 pc 10456
	addi	%x2, %x2, 76  #1231 pc 10460
	jal	%x1, o_param_c.2673  #1231 pc 10464
	addi	%x2, %x2, -76  #1231 pc 10468
	lw	%x1, 72(%x2) #1231 pc 10472
	fadd	%f1, %f0, %f30  #1231 pc 10476
	flw	%f0, 64(%x2)  #1231 pc 10480
	sw	%x1, 72(%x2)  #1231 pc 10484
	addi	%x2, %x2, 76  #1231 pc 10488
	jal	%x1, fless.2521  #1231 pc 10492
	addi	%x2, %x2, -76  #1231 pc 10496
	lw	%x1, 72(%x2) #1231 pc 10500
	beq	%x6, %x0, 12  #1231 pc 10504
	j	be_else.9234 #pc 10508
	nop #pc 10512
	addi	%x6, %x0, 0  #0 pc 10516
	j	be_cont.9235 #pc 10520
	nop #pc 10524
be_else.9234: #pc 10528
	lw	%x6, 24(%x2)  #1232 pc 10528
	flw	%f0, 4(%x6)  #1232 pc 10532
	sw	%x1, 72(%x2)  #1232 pc 10536
	addi	%x2, %x2, 76  #1232 pc 10540
	jal	%x1, fiszero.2509  #1232 pc 10544
	addi	%x2, %x2, -76  #1232 pc 10548
	lw	%x1, 72(%x2) #1232 pc 10552
	beq	%x6, %x0, 12  #1232 pc 10556
	j	be_else.9236 #pc 10560
	nop #pc 10564
	addi	%x6, %x0, 1  #0 pc 10568
	j	be_cont.9237 #pc 10572
	nop #pc 10576
be_else.9236: #pc 10580
	addi	%x6, %x0, 0  #0 pc 10580
be_cont.9237: #pc 10584
be_cont.9235: #pc 10584
be_cont.9233: #pc 10584
	beq	%x6, %x0, 12  #1229 pc 10584
	j	be_else.9238 #pc 10588
	nop #pc 10592
	lw	%x6, 24(%x2)  #1237 pc 10596
	flw	%f0, 8(%x6)  #1237 pc 10600
	flw	%f1, 16(%x2)  #1237 pc 10604
	fsub	%f0, %f0, %f1  #1237 pc 10608
	flw	%f2, 12(%x6)  #1237 pc 10612
	fmul	%f0, %f0, %f2  #1237 pc 10616
	lw	%x7, 48(%x2)  #1239 pc 10620
	flw	%f2, 0(%x7)  #1239 pc 10624
	fmul	%f2, %f0, %f2  #1239 pc 10628
	flw	%f3, 8(%x2)  #1239 pc 10632
	fadd	%f2, %f2, %f3  #1239 pc 10636
	fabs	%f2, %f2  #1239 pc 10640
	lw	%x8, 28(%x2)  #1239 pc 10644
	fsw	%f0, 72(%x2)  #1239 pc 10648
	fsw	%f2, 80(%x2)  #1239 pc 10652
	addi	%x6, %x8, 0  #0 pc 10656
	sw	%x1, 88(%x2)  #1239 pc 10660
	addi	%x2, %x2, 92  #1239 pc 10664
	jal	%x1, o_param_a.2669  #1239 pc 10668
	addi	%x2, %x2, -92  #1239 pc 10672
	lw	%x1, 88(%x2) #1239 pc 10676
	fadd	%f1, %f0, %f30  #1239 pc 10680
	flw	%f0, 80(%x2)  #1239 pc 10684
	sw	%x1, 88(%x2)  #1239 pc 10688
	addi	%x2, %x2, 92  #1239 pc 10692
	jal	%x1, fless.2521  #1239 pc 10696
	addi	%x2, %x2, -92  #1239 pc 10700
	lw	%x1, 88(%x2) #1239 pc 10704
	beq	%x6, %x0, 12  #1239 pc 10708
	j	be_else.9239 #pc 10712
	nop #pc 10716
	addi	%x6, %x0, 0  #0 pc 10720
	j	be_cont.9240 #pc 10724
	nop #pc 10728
be_else.9239: #pc 10732
	lw	%x6, 48(%x2)  #1240 pc 10732
	flw	%f0, 8(%x6)  #1240 pc 10736
	flw	%f1, 72(%x2)  #1240 pc 10740
	fmul	%f0, %f1, %f0  #1240 pc 10744
	flw	%f2, 32(%x2)  #1240 pc 10748
	fadd	%f0, %f0, %f2  #1240 pc 10752
	fabs	%f0, %f0  #1240 pc 10756
	lw	%x7, 28(%x2)  #1240 pc 10760
	fsw	%f0, 88(%x2)  #1240 pc 10764
	addi	%x6, %x7, 0  #0 pc 10768
	sw	%x1, 96(%x2)  #1240 pc 10772
	addi	%x2, %x2, 100  #1240 pc 10776
	jal	%x1, o_param_c.2673  #1240 pc 10780
	addi	%x2, %x2, -100  #1240 pc 10784
	lw	%x1, 96(%x2) #1240 pc 10788
	fadd	%f1, %f0, %f30  #1240 pc 10792
	flw	%f0, 88(%x2)  #1240 pc 10796
	sw	%x1, 96(%x2)  #1240 pc 10800
	addi	%x2, %x2, 100  #1240 pc 10804
	jal	%x1, fless.2521  #1240 pc 10808
	addi	%x2, %x2, -100  #1240 pc 10812
	lw	%x1, 96(%x2) #1240 pc 10816
	beq	%x6, %x0, 12  #1240 pc 10820
	j	be_else.9241 #pc 10824
	nop #pc 10828
	addi	%x6, %x0, 0  #0 pc 10832
	j	be_cont.9242 #pc 10836
	nop #pc 10840
be_else.9241: #pc 10844
	lw	%x6, 24(%x2)  #1241 pc 10844
	flw	%f0, 12(%x6)  #1241 pc 10848
	sw	%x1, 96(%x2)  #1241 pc 10852
	addi	%x2, %x2, 100  #1241 pc 10856
	jal	%x1, fiszero.2509  #1241 pc 10860
	addi	%x2, %x2, -100  #1241 pc 10864
	lw	%x1, 96(%x2) #1241 pc 10868
	beq	%x6, %x0, 12  #1241 pc 10872
	j	be_else.9243 #pc 10876
	nop #pc 10880
	addi	%x6, %x0, 1  #0 pc 10884
	j	be_cont.9244 #pc 10888
	nop #pc 10892
be_else.9243: #pc 10896
	addi	%x6, %x0, 0  #0 pc 10896
be_cont.9244: #pc 10900
be_cont.9242: #pc 10900
be_cont.9240: #pc 10900
	beq	%x6, %x0, 12  #1238 pc 10900
	j	be_else.9245 #pc 10904
	nop #pc 10908
	lw	%x6, 24(%x2)  #1246 pc 10912
	flw	%f0, 16(%x6)  #1246 pc 10916
	flw	%f1, 32(%x2)  #1246 pc 10920
	fsub	%f0, %f0, %f1  #1246 pc 10924
	flw	%f1, 20(%x6)  #1246 pc 10928
	fmul	%f0, %f0, %f1  #1246 pc 10932
	lw	%x7, 48(%x2)  #1248 pc 10936
	flw	%f1, 0(%x7)  #1248 pc 10940
	fmul	%f1, %f0, %f1  #1248 pc 10944
	flw	%f2, 8(%x2)  #1248 pc 10948
	fadd	%f1, %f1, %f2  #1248 pc 10952
	fabs	%f1, %f1  #1248 pc 10956
	lw	%x8, 28(%x2)  #1248 pc 10960
	fsw	%f0, 96(%x2)  #1248 pc 10964
	fsw	%f1, 104(%x2)  #1248 pc 10968
	addi	%x6, %x8, 0  #0 pc 10972
	sw	%x1, 112(%x2)  #1248 pc 10976
	addi	%x2, %x2, 116  #1248 pc 10980
	jal	%x1, o_param_a.2669  #1248 pc 10984
	addi	%x2, %x2, -116  #1248 pc 10988
	lw	%x1, 112(%x2) #1248 pc 10992
	fadd	%f1, %f0, %f30  #1248 pc 10996
	flw	%f0, 104(%x2)  #1248 pc 11000
	sw	%x1, 112(%x2)  #1248 pc 11004
	addi	%x2, %x2, 116  #1248 pc 11008
	jal	%x1, fless.2521  #1248 pc 11012
	addi	%x2, %x2, -116  #1248 pc 11016
	lw	%x1, 112(%x2) #1248 pc 11020
	beq	%x6, %x0, 12  #1248 pc 11024
	j	be_else.9246 #pc 11028
	nop #pc 11032
	addi	%x6, %x0, 0  #0 pc 11036
	j	be_cont.9247 #pc 11040
	nop #pc 11044
be_else.9246: #pc 11048
	lw	%x6, 48(%x2)  #1249 pc 11048
	flw	%f0, 4(%x6)  #1249 pc 11052
	flw	%f1, 96(%x2)  #1249 pc 11056
	fmul	%f0, %f1, %f0  #1249 pc 11060
	flw	%f2, 16(%x2)  #1249 pc 11064
	fadd	%f0, %f0, %f2  #1249 pc 11068
	fabs	%f0, %f0  #1249 pc 11072
	lw	%x6, 28(%x2)  #1249 pc 11076
	fsw	%f0, 112(%x2)  #1249 pc 11080
	sw	%x1, 120(%x2)  #1249 pc 11084
	addi	%x2, %x2, 124  #1249 pc 11088
	jal	%x1, o_param_b.2671  #1249 pc 11092
	addi	%x2, %x2, -124  #1249 pc 11096
	lw	%x1, 120(%x2) #1249 pc 11100
	fadd	%f1, %f0, %f30  #1249 pc 11104
	flw	%f0, 112(%x2)  #1249 pc 11108
	sw	%x1, 120(%x2)  #1249 pc 11112
	addi	%x2, %x2, 124  #1249 pc 11116
	jal	%x1, fless.2521  #1249 pc 11120
	addi	%x2, %x2, -124  #1249 pc 11124
	lw	%x1, 120(%x2) #1249 pc 11128
	beq	%x6, %x0, 12  #1249 pc 11132
	j	be_else.9248 #pc 11136
	nop #pc 11140
	addi	%x6, %x0, 0  #0 pc 11144
	j	be_cont.9249 #pc 11148
	nop #pc 11152
be_else.9248: #pc 11156
	lw	%x6, 24(%x2)  #1250 pc 11156
	flw	%f0, 20(%x6)  #1250 pc 11160
	sw	%x1, 120(%x2)  #1250 pc 11164
	addi	%x2, %x2, 124  #1250 pc 11168
	jal	%x1, fiszero.2509  #1250 pc 11172
	addi	%x2, %x2, -124  #1250 pc 11176
	lw	%x1, 120(%x2) #1250 pc 11180
	beq	%x6, %x0, 12  #1250 pc 11184
	j	be_else.9250 #pc 11188
	nop #pc 11192
	addi	%x6, %x0, 1  #0 pc 11196
	j	be_cont.9251 #pc 11200
	nop #pc 11204
be_else.9250: #pc 11208
	addi	%x6, %x0, 0  #0 pc 11208
be_cont.9251: #pc 11212
be_cont.9249: #pc 11212
be_cont.9247: #pc 11212
	beq	%x6, %x0, 12  #1247 pc 11212
	j	be_else.9252 #pc 11216
	nop #pc 11220
	addi	%x6, %x0, 0  #0 pc 11224
	ret #pc 11228
	nop #pc 11232
be_else.9252: #pc 11236
	lw	%x6, 0(%x2)  #1254 pc 11236
	flw	%f0, 96(%x2)  #1254 pc 11240
	fsw	%f0, 0(%x6)  #1254 pc 11244
	addi	%x6, %x0, 3  #0 pc 11248
	ret #pc 11252
	nop #pc 11256
be_else.9245: #pc 11260
	lw	%x6, 0(%x2)  #1245 pc 11260
	flw	%f0, 72(%x2)  #1245 pc 11264
	fsw	%f0, 0(%x6)  #1245 pc 11268
	addi	%x6, %x0, 2  #0 pc 11272
	ret #pc 11276
	nop #pc 11280
be_else.9238: #pc 11284
	lw	%x6, 0(%x2)  #1236 pc 11284
	flw	%f0, 40(%x2)  #1236 pc 11288
	fsw	%f0, 0(%x6)  #1236 pc 11292
	addi	%x6, %x0, 1  #0 pc 11296
	ret #pc 11300
	nop #pc 11304
solver_surface_fast.2804:  #pc 11308
	lw	%x6, 4(%x29)  #0 pc 11308
	flw	%f3, 0(%x7)  #1261 pc 11312
	sw	%x6, 0(%x2)  #1261 pc 11316
	fsw	%f2, 8(%x2)  #1261 pc 11320
	fsw	%f1, 16(%x2)  #1261 pc 11324
	fsw	%f0, 24(%x2)  #1261 pc 11328
	sw	%x7, 32(%x2)  #1261 pc 11332
	fadd	%f0, %f3, %f30  #0 pc 11336
	sw	%x1, 36(%x2)  #1261 pc 11340
	addi	%x2, %x2, 40  #1261 pc 11344
	jal	%x1, fisneg.2513  #1261 pc 11348
	addi	%x2, %x2, -40  #1261 pc 11352
	lw	%x1, 36(%x2) #1261 pc 11356
	beq	%x6, %x0, 12  #1261 pc 11360
	j	be_else.9254 #pc 11364
	nop #pc 11368
	addi	%x6, %x0, 0  #0 pc 11372
	ret #pc 11376
	nop #pc 11380
be_else.9254: #pc 11384
	lw	%x6, 32(%x2)  #1263 pc 11384
	flw	%f0, 4(%x6)  #1263 pc 11388
	flw	%f1, 24(%x2)  #1263 pc 11392
	fmul	%f0, %f0, %f1  #1263 pc 11396
	flw	%f1, 8(%x6)  #1263 pc 11400
	flw	%f2, 16(%x2)  #1263 pc 11404
	fmul	%f1, %f1, %f2  #1263 pc 11408
	fadd	%f0, %f0, %f1  #1263 pc 11412
	flw	%f1, 12(%x6)  #1263 pc 11416
	flw	%f2, 8(%x2)  #1263 pc 11420
	fmul	%f1, %f1, %f2  #1263 pc 11424
	fadd	%f0, %f0, %f1  #1263 pc 11428
	lw	%x6, 0(%x2)  #1262 pc 11432
	fsw	%f0, 0(%x6)  #1262 pc 11436
	addi	%x6, %x0, 1  #0 pc 11440
	ret #pc 11444
	nop #pc 11448
solver_second_fast.2810:  #pc 11452
	lw	%x8, 4(%x29)  #0 pc 11452
	flw	%f3, 0(%x7)  #1271 pc 11456
	sw	%x8, 0(%x2)  #1272 pc 11460
	fsw	%f3, 8(%x2)  #1272 pc 11464
	sw	%x6, 16(%x2)  #1272 pc 11468
	fsw	%f2, 24(%x2)  #1272 pc 11472
	fsw	%f1, 32(%x2)  #1272 pc 11476
	fsw	%f0, 40(%x2)  #1272 pc 11480
	sw	%x7, 48(%x2)  #1272 pc 11484
	fadd	%f0, %f3, %f30  #0 pc 11488
	sw	%x1, 52(%x2)  #1272 pc 11492
	addi	%x2, %x2, 56  #1272 pc 11496
	jal	%x1, fiszero.2509  #1272 pc 11500
	addi	%x2, %x2, -56  #1272 pc 11504
	lw	%x1, 52(%x2) #1272 pc 11508
	beq	%x6, %x0, 12  #1272 pc 11512
	j	be_else.9257 #pc 11516
	nop #pc 11520
	lw	%x6, 48(%x2)  #1275 pc 11524
	flw	%f0, 4(%x6)  #1275 pc 11528
	flw	%f1, 40(%x2)  #1275 pc 11532
	fmul	%f0, %f0, %f1  #1275 pc 11536
	flw	%f2, 8(%x6)  #1275 pc 11540
	flw	%f3, 32(%x2)  #1275 pc 11544
	fmul	%f2, %f2, %f3  #1275 pc 11548
	fadd	%f0, %f0, %f2  #1275 pc 11552
	flw	%f2, 12(%x6)  #1275 pc 11556
	flw	%f4, 24(%x2)  #1275 pc 11560
	fmul	%f2, %f2, %f4  #1275 pc 11564
	fadd	%f0, %f0, %f2  #1275 pc 11568
	lw	%x7, 16(%x2)  #1276 pc 11572
	fsw	%f0, 56(%x2)  #1276 pc 11576
	addi	%x6, %x7, 0  #0 pc 11580
	fadd	%f2, %f4, %f30  #0 pc 11584
	fadd	%f0, %f1, %f30  #0 pc 11588
	fadd	%f1, %f3, %f30  #0 pc 11592
	sw	%x1, 64(%x2)  #1276 pc 11596
	addi	%x2, %x2, 68  #1276 pc 11600
	jal	%x1, quadratic.2774  #1276 pc 11604
	addi	%x2, %x2, -68  #1276 pc 11608
	lw	%x1, 64(%x2) #1276 pc 11612
	lw	%x6, 16(%x2)  #1277 pc 11616
	fsw	%f0, 64(%x2)  #1277 pc 11620
	sw	%x1, 72(%x2)  #1277 pc 11624
	addi	%x2, %x2, 76  #1277 pc 11628
	jal	%x1, o_form.2661  #1277 pc 11632
	addi	%x2, %x2, -76  #1277 pc 11636
	lw	%x1, 72(%x2) #1277 pc 11640
	addi	%x31, %x0, 3  #pc 11644
	beq	%x6, %x31, 12  #1277 pc 11648
	j	be_else.9259 #pc 11652
	nop #pc 11656
	fmv	%f0, l.6263  #0 pc 11660
	flw	%f1, 64(%x2)  #1277 pc 11664
	fsub	%f0, %f1, %f0  #1277 pc 11668
	j	be_cont.9260 #pc 11672
	nop #pc 11676
be_else.9259: #pc 11680
	flw	%f0, 64(%x2)  #1277 pc 11680
be_cont.9260: #pc 11684
	flw	%f1, 56(%x2)  #1278 pc 11684
	fsw	%f0, 72(%x2)  #1278 pc 11688
	fadd	%f0, %f1, %f30  #0 pc 11692
	sw	%x1, 80(%x2)  #1278 pc 11696
	addi	%x2, %x2, 84  #1278 pc 11700
	jal	%x1, fsqr.2517  #1278 pc 11704
	addi	%x2, %x2, -84  #1278 pc 11708
	lw	%x1, 80(%x2) #1278 pc 11712
	flw	%f1, 72(%x2)  #1278 pc 11716
	flw	%f2, 8(%x2)  #1278 pc 11720
	fmul	%f1, %f2, %f1  #1278 pc 11724
	fsub	%f0, %f0, %f1  #1278 pc 11728
	fsw	%f0, 80(%x2)  #1279 pc 11732
	sw	%x1, 88(%x2)  #1279 pc 11736
	addi	%x2, %x2, 92  #1279 pc 11740
	jal	%x1, fispos.2511  #1279 pc 11744
	addi	%x2, %x2, -92  #1279 pc 11748
	lw	%x1, 88(%x2) #1279 pc 11752
	beq	%x6, %x0, 12  #1279 pc 11756
	j	be_else.9261 #pc 11760
	nop #pc 11764
	addi	%x6, %x0, 0  #0 pc 11768
	ret #pc 11772
	nop #pc 11776
be_else.9261: #pc 11780
	lw	%x6, 16(%x2)  #1280 pc 11780
	sw	%x1, 88(%x2)  #1280 pc 11784
	addi	%x2, %x2, 92  #1280 pc 11788
	jal	%x1, o_isinvert.2665  #1280 pc 11792
	addi	%x2, %x2, -92  #1280 pc 11796
	lw	%x1, 88(%x2) #1280 pc 11800
	beq	%x6, %x0, 12  #1280 pc 11804
	j	be_else.9262 #pc 11808
	nop #pc 11812
	flw	%f0, 80(%x2)  #1283 pc 11816
	fsqrt	%f0, %f0  #1283 pc 11820
	flw	%f1, 56(%x2)  #1283 pc 11824
	fsub	%f0, %f1, %f0  #1283 pc 11828
	lw	%x6, 48(%x2)  #1283 pc 11832
	flw	%f1, 16(%x6)  #1283 pc 11836
	fmul	%f0, %f0, %f1  #1283 pc 11840
	lw	%x6, 0(%x2)  #1283 pc 11844
	fsw	%f0, 0(%x6)  #1283 pc 11848
	j	be_cont.9263 #pc 11852
	nop #pc 11856
be_else.9262: #pc 11860
	flw	%f0, 80(%x2)  #1281 pc 11860
	fsqrt	%f0, %f0  #1281 pc 11864
	flw	%f1, 56(%x2)  #1281 pc 11868
	fadd	%f0, %f1, %f0  #1281 pc 11872
	lw	%x6, 48(%x2)  #1281 pc 11876
	flw	%f1, 16(%x6)  #1281 pc 11880
	fmul	%f0, %f0, %f1  #1281 pc 11884
	lw	%x6, 0(%x2)  #1281 pc 11888
	fsw	%f0, 0(%x6)  #1281 pc 11892
be_cont.9263: #pc 11896
	addi	%x6, %x0, 1  #0 pc 11896
	ret #pc 11900
	nop #pc 11904
be_else.9257: #pc 11908
	addi	%x6, %x0, 0  #0 pc 11908
	ret #pc 11912
	nop #pc 11916
solver_fast.2816:  #pc 11920
	lw	%x9, 16(%x29)  #1290 pc 11920
	lw	%x10, 12(%x29)  #1290 pc 11924
	lw	%x11, 8(%x29)  #1290 pc 11928
	lw	%x12, 4(%x29)  #1290 pc 11932
	slli	%x13, %x6, 2  #1290 pc 11936
	add	%x31, %x13, %x12  #1290 pc 11940
	lw	%x12, 0(%x31)  #1290 pc 11944
	flw	%f0, 0(%x8)  #1291 pc 11948
	sw	%x10, 0(%x2)  #1291 pc 11952
	sw	%x9, 4(%x2)  #1291 pc 11956
	sw	%x11, 8(%x2)  #1291 pc 11960
	sw	%x6, 12(%x2)  #1291 pc 11964
	sw	%x7, 16(%x2)  #1291 pc 11968
	sw	%x12, 20(%x2)  #1291 pc 11972
	sw	%x8, 24(%x2)  #1291 pc 11976
	fsw	%f0, 32(%x2)  #1291 pc 11980
	addi	%x6, %x12, 0  #0 pc 11984
	sw	%x1, 40(%x2)  #1291 pc 11988
	addi	%x2, %x2, 44  #1291 pc 11992
	jal	%x1, o_param_x.2677  #1291 pc 11996
	addi	%x2, %x2, -44  #1291 pc 12000
	lw	%x1, 40(%x2) #1291 pc 12004
	flw	%f1, 32(%x2)  #1291 pc 12008
	fsub	%f0, %f1, %f0  #1291 pc 12012
	lw	%x6, 24(%x2)  #1292 pc 12016
	flw	%f1, 4(%x6)  #1292 pc 12020
	lw	%x7, 20(%x2)  #1292 pc 12024
	fsw	%f0, 40(%x2)  #1292 pc 12028
	fsw	%f1, 48(%x2)  #1292 pc 12032
	addi	%x6, %x7, 0  #0 pc 12036
	sw	%x1, 56(%x2)  #1292 pc 12040
	addi	%x2, %x2, 60  #1292 pc 12044
	jal	%x1, o_param_y.2679  #1292 pc 12048
	addi	%x2, %x2, -60  #1292 pc 12052
	lw	%x1, 56(%x2) #1292 pc 12056
	flw	%f1, 48(%x2)  #1292 pc 12060
	fsub	%f0, %f1, %f0  #1292 pc 12064
	lw	%x6, 24(%x2)  #1293 pc 12068
	flw	%f1, 8(%x6)  #1293 pc 12072
	lw	%x6, 20(%x2)  #1293 pc 12076
	fsw	%f0, 56(%x2)  #1293 pc 12080
	fsw	%f1, 64(%x2)  #1293 pc 12084
	sw	%x1, 72(%x2)  #1293 pc 12088
	addi	%x2, %x2, 76  #1293 pc 12092
	jal	%x1, o_param_z.2681  #1293 pc 12096
	addi	%x2, %x2, -76  #1293 pc 12100
	lw	%x1, 72(%x2) #1293 pc 12104
	flw	%f1, 64(%x2)  #1293 pc 12108
	fsub	%f0, %f1, %f0  #1293 pc 12112
	lw	%x6, 16(%x2)  #1294 pc 12116
	fsw	%f0, 72(%x2)  #1294 pc 12120
	sw	%x1, 80(%x2)  #1294 pc 12124
	addi	%x2, %x2, 84  #1294 pc 12128
	jal	%x1, d_const.2722  #1294 pc 12132
	addi	%x2, %x2, -84  #1294 pc 12136
	lw	%x1, 80(%x2) #1294 pc 12140
	lw	%x7, 12(%x2)  #1295 pc 12144
	slli	%x7, %x7, 2  #1295 pc 12148
	add	%x31, %x7, %x6  #1295 pc 12152
	lw	%x6, 0(%x31)  #1295 pc 12156
	lw	%x7, 20(%x2)  #1296 pc 12160
	sw	%x6, 80(%x2)  #1296 pc 12164
	addi	%x6, %x7, 0  #0 pc 12168
	sw	%x1, 84(%x2)  #1296 pc 12172
	addi	%x2, %x2, 88  #1296 pc 12176
	jal	%x1, o_form.2661  #1296 pc 12180
	addi	%x2, %x2, -88  #1296 pc 12184
	lw	%x1, 84(%x2) #1296 pc 12188
	addi	%x31, %x0, 1  #pc 12192
	beq	%x6, %x31, 12  #1297 pc 12196
	j	be_else.9265 #pc 12200
	nop #pc 12204
	lw	%x6, 16(%x2)  #1298 pc 12208
	sw	%x1, 84(%x2)  #1298 pc 12212
	addi	%x2, %x2, 88  #1298 pc 12216
	jal	%x1, d_vec.2720  #1298 pc 12220
	addi	%x2, %x2, -88  #1298 pc 12224
	lw	%x1, 84(%x2) #1298 pc 12228
	addi	%x7, %x6, 0  #1298 pc 12232
	flw	%f0, 40(%x2)  #1298 pc 12236
	flw	%f1, 56(%x2)  #1298 pc 12240
	flw	%f2, 72(%x2)  #1298 pc 12244
	lw	%x6, 20(%x2)  #1298 pc 12248
	lw	%x8, 80(%x2)  #1298 pc 12252
	lw	%x29, 8(%x2)  #1298 pc 12256
	lw	%x30, 0(%x29)  #1298 pc 12260
	jalr	%x0, %x30, 0  #1298 pc 12264
	nop #pc 12268
be_else.9265: #pc 12272
	addi	%x31, %x0, 2  #pc 12272
	beq	%x6, %x31, 12  #1299 pc 12276
	j	be_else.9266 #pc 12280
	nop #pc 12284
	flw	%f0, 40(%x2)  #1300 pc 12288
	flw	%f1, 56(%x2)  #1300 pc 12292
	flw	%f2, 72(%x2)  #1300 pc 12296
	lw	%x6, 20(%x2)  #1300 pc 12300
	lw	%x7, 80(%x2)  #1300 pc 12304
	lw	%x29, 4(%x2)  #1300 pc 12308
	lw	%x30, 0(%x29)  #1300 pc 12312
	jalr	%x0, %x30, 0  #1300 pc 12316
	nop #pc 12320
be_else.9266: #pc 12324
	flw	%f0, 40(%x2)  #1302 pc 12324
	flw	%f1, 56(%x2)  #1302 pc 12328
	flw	%f2, 72(%x2)  #1302 pc 12332
	lw	%x6, 20(%x2)  #1302 pc 12336
	lw	%x7, 80(%x2)  #1302 pc 12340
	lw	%x29, 0(%x2)  #1302 pc 12344
	lw	%x30, 0(%x29)  #1302 pc 12348
	jalr	%x0, %x30, 0  #1302 pc 12352
	nop #pc 12356
solver_surface_fast2.2820:  #pc 12360
	lw	%x6, 4(%x29)  #0 pc 12360
	flw	%f0, 0(%x7)  #1310 pc 12364
	sw	%x6, 0(%x2)  #1310 pc 12368
	sw	%x8, 4(%x2)  #1310 pc 12372
	sw	%x7, 8(%x2)  #1310 pc 12376
	sw	%x1, 12(%x2)  #1310 pc 12380
	addi	%x2, %x2, 16  #1310 pc 12384
	jal	%x1, fisneg.2513  #1310 pc 12388
	addi	%x2, %x2, -16  #1310 pc 12392
	lw	%x1, 12(%x2) #1310 pc 12396
	beq	%x6, %x0, 12  #1310 pc 12400
	j	be_else.9267 #pc 12404
	nop #pc 12408
	addi	%x6, %x0, 0  #0 pc 12412
	ret #pc 12416
	nop #pc 12420
be_else.9267: #pc 12424
	lw	%x6, 8(%x2)  #1311 pc 12424
	flw	%f0, 0(%x6)  #1311 pc 12428
	lw	%x6, 4(%x2)  #1311 pc 12432
	flw	%f1, 12(%x6)  #1311 pc 12436
	fmul	%f0, %f0, %f1  #1311 pc 12440
	lw	%x6, 0(%x2)  #1311 pc 12444
	fsw	%f0, 0(%x6)  #1311 pc 12448
	addi	%x6, %x0, 1  #0 pc 12452
	ret #pc 12456
	nop #pc 12460
solver_second_fast2.2827:  #pc 12464
	lw	%x9, 4(%x29)  #0 pc 12464
	flw	%f3, 0(%x7)  #1319 pc 12468
	sw	%x9, 0(%x2)  #1320 pc 12472
	sw	%x6, 4(%x2)  #1320 pc 12476
	fsw	%f3, 8(%x2)  #1320 pc 12480
	sw	%x8, 16(%x2)  #1320 pc 12484
	fsw	%f2, 24(%x2)  #1320 pc 12488
	fsw	%f1, 32(%x2)  #1320 pc 12492
	fsw	%f0, 40(%x2)  #1320 pc 12496
	sw	%x7, 48(%x2)  #1320 pc 12500
	fadd	%f0, %f3, %f30  #0 pc 12504
	sw	%x1, 52(%x2)  #1320 pc 12508
	addi	%x2, %x2, 56  #1320 pc 12512
	jal	%x1, fiszero.2509  #1320 pc 12516
	addi	%x2, %x2, -56  #1320 pc 12520
	lw	%x1, 52(%x2) #1320 pc 12524
	beq	%x6, %x0, 12  #1320 pc 12528
	j	be_else.9269 #pc 12532
	nop #pc 12536
	lw	%x6, 48(%x2)  #1323 pc 12540
	flw	%f0, 4(%x6)  #1323 pc 12544
	flw	%f1, 40(%x2)  #1323 pc 12548
	fmul	%f0, %f0, %f1  #1323 pc 12552
	flw	%f1, 8(%x6)  #1323 pc 12556
	flw	%f2, 32(%x2)  #1323 pc 12560
	fmul	%f1, %f1, %f2  #1323 pc 12564
	fadd	%f0, %f0, %f1  #1323 pc 12568
	flw	%f1, 12(%x6)  #1323 pc 12572
	flw	%f2, 24(%x2)  #1323 pc 12576
	fmul	%f1, %f1, %f2  #1323 pc 12580
	fadd	%f0, %f0, %f1  #1323 pc 12584
	lw	%x7, 16(%x2)  #1324 pc 12588
	flw	%f1, 12(%x7)  #1324 pc 12592
	fsw	%f0, 56(%x2)  #1325 pc 12596
	fsw	%f1, 64(%x2)  #1325 pc 12600
	sw	%x1, 72(%x2)  #1325 pc 12604
	addi	%x2, %x2, 76  #1325 pc 12608
	jal	%x1, fsqr.2517  #1325 pc 12612
	addi	%x2, %x2, -76  #1325 pc 12616
	lw	%x1, 72(%x2) #1325 pc 12620
	flw	%f1, 64(%x2)  #1325 pc 12624
	flw	%f2, 8(%x2)  #1325 pc 12628
	fmul	%f1, %f2, %f1  #1325 pc 12632
	fsub	%f0, %f0, %f1  #1325 pc 12636
	fsw	%f0, 72(%x2)  #1326 pc 12640
	sw	%x1, 80(%x2)  #1326 pc 12644
	addi	%x2, %x2, 84  #1326 pc 12648
	jal	%x1, fispos.2511  #1326 pc 12652
	addi	%x2, %x2, -84  #1326 pc 12656
	lw	%x1, 80(%x2) #1326 pc 12660
	beq	%x6, %x0, 12  #1326 pc 12664
	j	be_else.9271 #pc 12668
	nop #pc 12672
	addi	%x6, %x0, 0  #0 pc 12676
	ret #pc 12680
	nop #pc 12684
be_else.9271: #pc 12688
	lw	%x6, 4(%x2)  #1327 pc 12688
	sw	%x1, 80(%x2)  #1327 pc 12692
	addi	%x2, %x2, 84  #1327 pc 12696
	jal	%x1, o_isinvert.2665  #1327 pc 12700
	addi	%x2, %x2, -84  #1327 pc 12704
	lw	%x1, 80(%x2) #1327 pc 12708
	beq	%x6, %x0, 12  #1327 pc 12712
	j	be_else.9272 #pc 12716
	nop #pc 12720
	flw	%f0, 72(%x2)  #1330 pc 12724
	fsqrt	%f0, %f0  #1330 pc 12728
	flw	%f1, 56(%x2)  #1330 pc 12732
	fsub	%f0, %f1, %f0  #1330 pc 12736
	lw	%x6, 48(%x2)  #1330 pc 12740
	flw	%f1, 16(%x6)  #1330 pc 12744
	fmul	%f0, %f0, %f1  #1330 pc 12748
	lw	%x6, 0(%x2)  #1330 pc 12752
	fsw	%f0, 0(%x6)  #1330 pc 12756
	j	be_cont.9273 #pc 12760
	nop #pc 12764
be_else.9272: #pc 12768
	flw	%f0, 72(%x2)  #1328 pc 12768
	fsqrt	%f0, %f0  #1328 pc 12772
	flw	%f1, 56(%x2)  #1328 pc 12776
	fadd	%f0, %f1, %f0  #1328 pc 12780
	lw	%x6, 48(%x2)  #1328 pc 12784
	flw	%f1, 16(%x6)  #1328 pc 12788
	fmul	%f0, %f0, %f1  #1328 pc 12792
	lw	%x6, 0(%x2)  #1328 pc 12796
	fsw	%f0, 0(%x6)  #1328 pc 12800
be_cont.9273: #pc 12804
	addi	%x6, %x0, 1  #0 pc 12804
	ret #pc 12808
	nop #pc 12812
be_else.9269: #pc 12816
	addi	%x6, %x0, 0  #0 pc 12816
	ret #pc 12820
	nop #pc 12824
solver_fast2.2834:  #pc 12828
	lw	%x8, 16(%x29)  #1337 pc 12828
	lw	%x9, 12(%x29)  #1337 pc 12832
	lw	%x10, 8(%x29)  #1337 pc 12836
	lw	%x11, 4(%x29)  #1337 pc 12840
	slli	%x12, %x6, 2  #1337 pc 12844
	add	%x31, %x12, %x11  #1337 pc 12848
	lw	%x11, 0(%x31)  #1337 pc 12852
	sw	%x9, 0(%x2)  #1338 pc 12856
	sw	%x8, 4(%x2)  #1338 pc 12860
	sw	%x10, 8(%x2)  #1338 pc 12864
	sw	%x11, 12(%x2)  #1338 pc 12868
	sw	%x6, 16(%x2)  #1338 pc 12872
	sw	%x7, 20(%x2)  #1338 pc 12876
	addi	%x6, %x11, 0  #0 pc 12880
	sw	%x1, 24(%x2)  #1338 pc 12884
	addi	%x2, %x2, 28  #1338 pc 12888
	jal	%x1, o_param_ctbl.2699  #1338 pc 12892
	addi	%x2, %x2, -28  #1338 pc 12896
	lw	%x1, 24(%x2) #1338 pc 12900
	flw	%f0, 0(%x6)  #1339 pc 12904
	flw	%f1, 4(%x6)  #1340 pc 12908
	flw	%f2, 8(%x6)  #1341 pc 12912
	lw	%x7, 20(%x2)  #1342 pc 12916
	sw	%x6, 24(%x2)  #1342 pc 12920
	fsw	%f2, 32(%x2)  #1342 pc 12924
	fsw	%f1, 40(%x2)  #1342 pc 12928
	fsw	%f0, 48(%x2)  #1342 pc 12932
	addi	%x6, %x7, 0  #0 pc 12936
	sw	%x1, 56(%x2)  #1342 pc 12940
	addi	%x2, %x2, 60  #1342 pc 12944
	jal	%x1, d_const.2722  #1342 pc 12948
	addi	%x2, %x2, -60  #1342 pc 12952
	lw	%x1, 56(%x2) #1342 pc 12956
	lw	%x7, 16(%x2)  #1343 pc 12960
	slli	%x7, %x7, 2  #1343 pc 12964
	add	%x31, %x7, %x6  #1343 pc 12968
	lw	%x6, 0(%x31)  #1343 pc 12972
	lw	%x7, 12(%x2)  #1344 pc 12976
	sw	%x6, 56(%x2)  #1344 pc 12980
	addi	%x6, %x7, 0  #0 pc 12984
	sw	%x1, 60(%x2)  #1344 pc 12988
	addi	%x2, %x2, 64  #1344 pc 12992
	jal	%x1, o_form.2661  #1344 pc 12996
	addi	%x2, %x2, -64  #1344 pc 13000
	lw	%x1, 60(%x2) #1344 pc 13004
	addi	%x31, %x0, 1  #pc 13008
	beq	%x6, %x31, 12  #1345 pc 13012
	j	be_else.9275 #pc 13016
	nop #pc 13020
	lw	%x6, 20(%x2)  #1346 pc 13024
	sw	%x1, 60(%x2)  #1346 pc 13028
	addi	%x2, %x2, 64  #1346 pc 13032
	jal	%x1, d_vec.2720  #1346 pc 13036
	addi	%x2, %x2, -64  #1346 pc 13040
	lw	%x1, 60(%x2) #1346 pc 13044
	addi	%x7, %x6, 0  #1346 pc 13048
	flw	%f0, 48(%x2)  #1346 pc 13052
	flw	%f1, 40(%x2)  #1346 pc 13056
	flw	%f2, 32(%x2)  #1346 pc 13060
	lw	%x6, 12(%x2)  #1346 pc 13064
	lw	%x8, 56(%x2)  #1346 pc 13068
	lw	%x29, 8(%x2)  #1346 pc 13072
	lw	%x30, 0(%x29)  #1346 pc 13076
	jalr	%x0, %x30, 0  #1346 pc 13080
	nop #pc 13084
be_else.9275: #pc 13088
	addi	%x31, %x0, 2  #pc 13088
	beq	%x6, %x31, 12  #1347 pc 13092
	j	be_else.9276 #pc 13096
	nop #pc 13100
	flw	%f0, 48(%x2)  #1348 pc 13104
	flw	%f1, 40(%x2)  #1348 pc 13108
	flw	%f2, 32(%x2)  #1348 pc 13112
	lw	%x6, 12(%x2)  #1348 pc 13116
	lw	%x7, 56(%x2)  #1348 pc 13120
	lw	%x8, 24(%x2)  #1348 pc 13124
	lw	%x29, 4(%x2)  #1348 pc 13128
	lw	%x30, 0(%x29)  #1348 pc 13132
	jalr	%x0, %x30, 0  #1348 pc 13136
	nop #pc 13140
be_else.9276: #pc 13144
	flw	%f0, 48(%x2)  #1350 pc 13144
	flw	%f1, 40(%x2)  #1350 pc 13148
	flw	%f2, 32(%x2)  #1350 pc 13152
	lw	%x6, 12(%x2)  #1350 pc 13156
	lw	%x7, 56(%x2)  #1350 pc 13160
	lw	%x8, 24(%x2)  #1350 pc 13164
	lw	%x29, 0(%x2)  #1350 pc 13168
	lw	%x30, 0(%x29)  #1350 pc 13172
	jalr	%x0, %x30, 0  #1350 pc 13176
	nop #pc 13180
setup_rect_table.2837:  #pc 13184
	addi	%x8, %x0, 6  #0 pc 13184
	fmv	%f0, l.6244  #0 pc 13188
	sw	%x7, 0(%x2)  #1359 pc 13192
	sw	%x6, 4(%x2)  #1359 pc 13196
	addi	%x6, %x8, 0  #0 pc 13200
	sw	%x1, 8(%x2)  #1359 pc 13204
	addi	%x2, %x2, 12  #1359 pc 13208
	jal	%x1, create_float_array.2577  #1359 pc 13212
	addi	%x2, %x2, -12  #1359 pc 13216
	lw	%x1, 8(%x2) #1359 pc 13220
	lw	%x7, 4(%x2)  #1361 pc 13224
	flw	%f0, 0(%x7)  #1361 pc 13228
	sw	%x6, 8(%x2)  #1361 pc 13232
	sw	%x1, 12(%x2)  #1361 pc 13236
	addi	%x2, %x2, 16  #1361 pc 13240
	jal	%x1, fiszero.2509  #1361 pc 13244
	addi	%x2, %x2, -16  #1361 pc 13248
	lw	%x1, 12(%x2) #1361 pc 13252
	beq	%x6, %x0, 12  #1361 pc 13256
	j	be_else.9277 #pc 13260
	nop #pc 13264
	lw	%x6, 0(%x2)  #1365 pc 13268
	sw	%x1, 12(%x2)  #1365 pc 13272
	addi	%x2, %x2, 16  #1365 pc 13276
	jal	%x1, o_isinvert.2665  #1365 pc 13280
	addi	%x2, %x2, -16  #1365 pc 13284
	lw	%x1, 12(%x2) #1365 pc 13288
	lw	%x7, 4(%x2)  #1365 pc 13292
	flw	%f0, 0(%x7)  #1365 pc 13296
	sw	%x6, 12(%x2)  #1365 pc 13300
	sw	%x1, 16(%x2)  #1365 pc 13304
	addi	%x2, %x2, 20  #1365 pc 13308
	jal	%x1, fisneg.2513  #1365 pc 13312
	addi	%x2, %x2, -20  #1365 pc 13316
	lw	%x1, 16(%x2) #1365 pc 13320
	addi	%x7, %x6, 0  #1365 pc 13324
	lw	%x6, 12(%x2)  #1365 pc 13328
	sw	%x1, 16(%x2)  #1365 pc 13332
	addi	%x2, %x2, 20  #1365 pc 13336
	jal	%x1, xor.2610  #1365 pc 13340
	addi	%x2, %x2, -20  #1365 pc 13344
	lw	%x1, 16(%x2) #1365 pc 13348
	lw	%x7, 0(%x2)  #1365 pc 13352
	sw	%x6, 16(%x2)  #1365 pc 13356
	addi	%x6, %x7, 0  #0 pc 13360
	sw	%x1, 20(%x2)  #1365 pc 13364
	addi	%x2, %x2, 24  #1365 pc 13368
	jal	%x1, o_param_a.2669  #1365 pc 13372
	addi	%x2, %x2, -24  #1365 pc 13376
	lw	%x1, 20(%x2) #1365 pc 13380
	lw	%x6, 16(%x2)  #1365 pc 13384
	sw	%x1, 20(%x2)  #1365 pc 13388
	addi	%x2, %x2, 24  #1365 pc 13392
	jal	%x1, fneg_cond.2615  #1365 pc 13396
	addi	%x2, %x2, -24  #1365 pc 13400
	lw	%x1, 20(%x2) #1365 pc 13404
	lw	%x6, 8(%x2)  #1365 pc 13408
	fsw	%f0, 0(%x6)  #1365 pc 13412
	fmv	%f0, l.6263  #0 pc 13416
	lw	%x7, 4(%x2)  #1367 pc 13420
	flw	%f1, 0(%x7)  #1367 pc 13424
	fdiv	%f0, %f0, %f1  #1367 pc 13428
	fsw	%f0, 4(%x6)  #1367 pc 13432
	j	be_cont.9278 #pc 13436
	nop #pc 13440
be_else.9277: #pc 13444
	fmv	%f0, l.6244  #0 pc 13444
	lw	%x6, 8(%x2)  #1362 pc 13448
	fsw	%f0, 4(%x6)  #1362 pc 13452
be_cont.9278: #pc 13456
	lw	%x7, 4(%x2)  #1369 pc 13456
	flw	%f0, 4(%x7)  #1369 pc 13460
	sw	%x1, 20(%x2)  #1369 pc 13464
	addi	%x2, %x2, 24  #1369 pc 13468
	jal	%x1, fiszero.2509  #1369 pc 13472
	addi	%x2, %x2, -24  #1369 pc 13476
	lw	%x1, 20(%x2) #1369 pc 13480
	beq	%x6, %x0, 12  #1369 pc 13484
	j	be_else.9279 #pc 13488
	nop #pc 13492
	lw	%x6, 0(%x2)  #1372 pc 13496
	sw	%x1, 20(%x2)  #1372 pc 13500
	addi	%x2, %x2, 24  #1372 pc 13504
	jal	%x1, o_isinvert.2665  #1372 pc 13508
	addi	%x2, %x2, -24  #1372 pc 13512
	lw	%x1, 20(%x2) #1372 pc 13516
	lw	%x7, 4(%x2)  #1372 pc 13520
	flw	%f0, 4(%x7)  #1372 pc 13524
	sw	%x6, 20(%x2)  #1372 pc 13528
	sw	%x1, 24(%x2)  #1372 pc 13532
	addi	%x2, %x2, 28  #1372 pc 13536
	jal	%x1, fisneg.2513  #1372 pc 13540
	addi	%x2, %x2, -28  #1372 pc 13544
	lw	%x1, 24(%x2) #1372 pc 13548
	addi	%x7, %x6, 0  #1372 pc 13552
	lw	%x6, 20(%x2)  #1372 pc 13556
	sw	%x1, 24(%x2)  #1372 pc 13560
	addi	%x2, %x2, 28  #1372 pc 13564
	jal	%x1, xor.2610  #1372 pc 13568
	addi	%x2, %x2, -28  #1372 pc 13572
	lw	%x1, 24(%x2) #1372 pc 13576
	lw	%x7, 0(%x2)  #1372 pc 13580
	sw	%x6, 24(%x2)  #1372 pc 13584
	addi	%x6, %x7, 0  #0 pc 13588
	sw	%x1, 28(%x2)  #1372 pc 13592
	addi	%x2, %x2, 32  #1372 pc 13596
	jal	%x1, o_param_b.2671  #1372 pc 13600
	addi	%x2, %x2, -32  #1372 pc 13604
	lw	%x1, 28(%x2) #1372 pc 13608
	lw	%x6, 24(%x2)  #1372 pc 13612
	sw	%x1, 28(%x2)  #1372 pc 13616
	addi	%x2, %x2, 32  #1372 pc 13620
	jal	%x1, fneg_cond.2615  #1372 pc 13624
	addi	%x2, %x2, -32  #1372 pc 13628
	lw	%x1, 28(%x2) #1372 pc 13632
	lw	%x6, 8(%x2)  #1372 pc 13636
	fsw	%f0, 8(%x6)  #1372 pc 13640
	fmv	%f0, l.6263  #0 pc 13644
	lw	%x7, 4(%x2)  #1373 pc 13648
	flw	%f1, 4(%x7)  #1373 pc 13652
	fdiv	%f0, %f0, %f1  #1373 pc 13656
	fsw	%f0, 12(%x6)  #1373 pc 13660
	j	be_cont.9280 #pc 13664
	nop #pc 13668
be_else.9279: #pc 13672
	fmv	%f0, l.6244  #0 pc 13672
	lw	%x6, 8(%x2)  #1370 pc 13676
	fsw	%f0, 12(%x6)  #1370 pc 13680
be_cont.9280: #pc 13684
	lw	%x7, 4(%x2)  #1375 pc 13684
	flw	%f0, 8(%x7)  #1375 pc 13688
	sw	%x1, 28(%x2)  #1375 pc 13692
	addi	%x2, %x2, 32  #1375 pc 13696
	jal	%x1, fiszero.2509  #1375 pc 13700
	addi	%x2, %x2, -32  #1375 pc 13704
	lw	%x1, 28(%x2) #1375 pc 13708
	beq	%x6, %x0, 12  #1375 pc 13712
	j	be_else.9281 #pc 13716
	nop #pc 13720
	lw	%x6, 0(%x2)  #1378 pc 13724
	sw	%x1, 28(%x2)  #1378 pc 13728
	addi	%x2, %x2, 32  #1378 pc 13732
	jal	%x1, o_isinvert.2665  #1378 pc 13736
	addi	%x2, %x2, -32  #1378 pc 13740
	lw	%x1, 28(%x2) #1378 pc 13744
	lw	%x7, 4(%x2)  #1378 pc 13748
	flw	%f0, 8(%x7)  #1378 pc 13752
	sw	%x6, 28(%x2)  #1378 pc 13756
	sw	%x1, 32(%x2)  #1378 pc 13760
	addi	%x2, %x2, 36  #1378 pc 13764
	jal	%x1, fisneg.2513  #1378 pc 13768
	addi	%x2, %x2, -36  #1378 pc 13772
	lw	%x1, 32(%x2) #1378 pc 13776
	addi	%x7, %x6, 0  #1378 pc 13780
	lw	%x6, 28(%x2)  #1378 pc 13784
	sw	%x1, 32(%x2)  #1378 pc 13788
	addi	%x2, %x2, 36  #1378 pc 13792
	jal	%x1, xor.2610  #1378 pc 13796
	addi	%x2, %x2, -36  #1378 pc 13800
	lw	%x1, 32(%x2) #1378 pc 13804
	lw	%x7, 0(%x2)  #1378 pc 13808
	sw	%x6, 32(%x2)  #1378 pc 13812
	addi	%x6, %x7, 0  #0 pc 13816
	sw	%x1, 36(%x2)  #1378 pc 13820
	addi	%x2, %x2, 40  #1378 pc 13824
	jal	%x1, o_param_c.2673  #1378 pc 13828
	addi	%x2, %x2, -40  #1378 pc 13832
	lw	%x1, 36(%x2) #1378 pc 13836
	lw	%x6, 32(%x2)  #1378 pc 13840
	sw	%x1, 36(%x2)  #1378 pc 13844
	addi	%x2, %x2, 40  #1378 pc 13848
	jal	%x1, fneg_cond.2615  #1378 pc 13852
	addi	%x2, %x2, -40  #1378 pc 13856
	lw	%x1, 36(%x2) #1378 pc 13860
	lw	%x6, 8(%x2)  #1378 pc 13864
	fsw	%f0, 16(%x6)  #1378 pc 13868
	fmv	%f0, l.6263  #0 pc 13872
	lw	%x7, 4(%x2)  #1379 pc 13876
	flw	%f1, 8(%x7)  #1379 pc 13880
	fdiv	%f0, %f0, %f1  #1379 pc 13884
	fsw	%f0, 20(%x6)  #1379 pc 13888
	j	be_cont.9282 #pc 13892
	nop #pc 13896
be_else.9281: #pc 13900
	fmv	%f0, l.6244  #0 pc 13900
	lw	%x6, 8(%x2)  #1376 pc 13904
	fsw	%f0, 20(%x6)  #1376 pc 13908
be_cont.9282: #pc 13912
	ret #pc 13912
	nop #pc 13916
setup_surface_table.2840:  #pc 13920
	addi	%x8, %x0, 4  #0 pc 13920
	fmv	%f0, l.6244  #0 pc 13924
	sw	%x7, 0(%x2)  #1386 pc 13928
	sw	%x6, 4(%x2)  #1386 pc 13932
	addi	%x6, %x8, 0  #0 pc 13936
	sw	%x1, 8(%x2)  #1386 pc 13940
	addi	%x2, %x2, 12  #1386 pc 13944
	jal	%x1, create_float_array.2577  #1386 pc 13948
	addi	%x2, %x2, -12  #1386 pc 13952
	lw	%x1, 8(%x2) #1386 pc 13956
	lw	%x7, 4(%x2)  #1388 pc 13960
	flw	%f0, 0(%x7)  #1388 pc 13964
	lw	%x8, 0(%x2)  #1388 pc 13968
	sw	%x6, 8(%x2)  #1388 pc 13972
	fsw	%f0, 16(%x2)  #1388 pc 13976
	addi	%x6, %x8, 0  #0 pc 13980
	sw	%x1, 24(%x2)  #1388 pc 13984
	addi	%x2, %x2, 28  #1388 pc 13988
	jal	%x1, o_param_a.2669  #1388 pc 13992
	addi	%x2, %x2, -28  #1388 pc 13996
	lw	%x1, 24(%x2) #1388 pc 14000
	flw	%f1, 16(%x2)  #1388 pc 14004
	fmul	%f0, %f1, %f0  #1388 pc 14008
	lw	%x6, 4(%x2)  #1388 pc 14012
	flw	%f1, 4(%x6)  #1388 pc 14016
	lw	%x7, 0(%x2)  #1388 pc 14020
	fsw	%f0, 24(%x2)  #1388 pc 14024
	fsw	%f1, 32(%x2)  #1388 pc 14028
	addi	%x6, %x7, 0  #0 pc 14032
	sw	%x1, 40(%x2)  #1388 pc 14036
	addi	%x2, %x2, 44  #1388 pc 14040
	jal	%x1, o_param_b.2671  #1388 pc 14044
	addi	%x2, %x2, -44  #1388 pc 14048
	lw	%x1, 40(%x2) #1388 pc 14052
	flw	%f1, 32(%x2)  #1388 pc 14056
	fmul	%f0, %f1, %f0  #1388 pc 14060
	flw	%f1, 24(%x2)  #1388 pc 14064
	fadd	%f0, %f1, %f0  #1388 pc 14068
	lw	%x6, 4(%x2)  #1388 pc 14072
	flw	%f1, 8(%x6)  #1388 pc 14076
	lw	%x6, 0(%x2)  #1388 pc 14080
	fsw	%f0, 40(%x2)  #1388 pc 14084
	fsw	%f1, 48(%x2)  #1388 pc 14088
	sw	%x1, 56(%x2)  #1388 pc 14092
	addi	%x2, %x2, 60  #1388 pc 14096
	jal	%x1, o_param_c.2673  #1388 pc 14100
	addi	%x2, %x2, -60  #1388 pc 14104
	lw	%x1, 56(%x2) #1388 pc 14108
	flw	%f1, 48(%x2)  #1388 pc 14112
	fmul	%f0, %f1, %f0  #1388 pc 14116
	flw	%f1, 40(%x2)  #1388 pc 14120
	fadd	%f0, %f1, %f0  #1388 pc 14124
	fsw	%f0, 56(%x2)  #1390 pc 14128
	sw	%x1, 64(%x2)  #1390 pc 14132
	addi	%x2, %x2, 68  #1390 pc 14136
	jal	%x1, fispos.2511  #1390 pc 14140
	addi	%x2, %x2, -68  #1390 pc 14144
	lw	%x1, 64(%x2) #1390 pc 14148
	beq	%x6, %x0, 12  #1390 pc 14152
	j	be_else.9284 #pc 14156
	nop #pc 14160
	fmv	%f0, l.6244  #0 pc 14164
	lw	%x6, 8(%x2)  #1398 pc 14168
	fsw	%f0, 0(%x6)  #1398 pc 14172
	j	be_cont.9285 #pc 14176
	nop #pc 14180
be_else.9284: #pc 14184
	fmv	%f0, l.6292  #0 pc 14184
	flw	%f1, 56(%x2)  #1392 pc 14188
	fdiv	%f0, %f0, %f1  #1392 pc 14192
	lw	%x6, 8(%x2)  #1392 pc 14196
	fsw	%f0, 0(%x6)  #1392 pc 14200
	lw	%x7, 0(%x2)  #1394 pc 14204
	addi	%x6, %x7, 0  #0 pc 14208
	sw	%x1, 64(%x2)  #1394 pc 14212
	addi	%x2, %x2, 68  #1394 pc 14216
	jal	%x1, o_param_a.2669  #1394 pc 14220
	addi	%x2, %x2, -68  #1394 pc 14224
	lw	%x1, 64(%x2) #1394 pc 14228
	flw	%f1, 56(%x2)  #1394 pc 14232
	fdiv	%f0, %f0, %f1  #1394 pc 14236
	sw	%x1, 64(%x2)  #1394 pc 14240
	addi	%x2, %x2, 68  #1394 pc 14244
	jal	%x1, fneg.2515  #1394 pc 14248
	addi	%x2, %x2, -68  #1394 pc 14252
	lw	%x1, 64(%x2) #1394 pc 14256
	lw	%x6, 8(%x2)  #1394 pc 14260
	fsw	%f0, 4(%x6)  #1394 pc 14264
	lw	%x7, 0(%x2)  #1395 pc 14268
	addi	%x6, %x7, 0  #0 pc 14272
	sw	%x1, 64(%x2)  #1395 pc 14276
	addi	%x2, %x2, 68  #1395 pc 14280
	jal	%x1, o_param_b.2671  #1395 pc 14284
	addi	%x2, %x2, -68  #1395 pc 14288
	lw	%x1, 64(%x2) #1395 pc 14292
	flw	%f1, 56(%x2)  #1395 pc 14296
	fdiv	%f0, %f0, %f1  #1395 pc 14300
	sw	%x1, 64(%x2)  #1395 pc 14304
	addi	%x2, %x2, 68  #1395 pc 14308
	jal	%x1, fneg.2515  #1395 pc 14312
	addi	%x2, %x2, -68  #1395 pc 14316
	lw	%x1, 64(%x2) #1395 pc 14320
	lw	%x6, 8(%x2)  #1395 pc 14324
	fsw	%f0, 8(%x6)  #1395 pc 14328
	lw	%x7, 0(%x2)  #1396 pc 14332
	addi	%x6, %x7, 0  #0 pc 14336
	sw	%x1, 64(%x2)  #1396 pc 14340
	addi	%x2, %x2, 68  #1396 pc 14344
	jal	%x1, o_param_c.2673  #1396 pc 14348
	addi	%x2, %x2, -68  #1396 pc 14352
	lw	%x1, 64(%x2) #1396 pc 14356
	flw	%f1, 56(%x2)  #1396 pc 14360
	fdiv	%f0, %f0, %f1  #1396 pc 14364
	sw	%x1, 64(%x2)  #1396 pc 14368
	addi	%x2, %x2, 68  #1396 pc 14372
	jal	%x1, fneg.2515  #1396 pc 14376
	addi	%x2, %x2, -68  #1396 pc 14380
	lw	%x1, 64(%x2) #1396 pc 14384
	lw	%x6, 8(%x2)  #1396 pc 14388
	fsw	%f0, 12(%x6)  #1396 pc 14392
be_cont.9285: #pc 14396
	ret #pc 14396
	nop #pc 14400
setup_second_table.2843:  #pc 14404
	addi	%x8, %x0, 5  #0 pc 14404
	fmv	%f0, l.6244  #0 pc 14408
	sw	%x7, 0(%x2)  #1405 pc 14412
	sw	%x6, 4(%x2)  #1405 pc 14416
	addi	%x6, %x8, 0  #0 pc 14420
	sw	%x1, 8(%x2)  #1405 pc 14424
	addi	%x2, %x2, 12  #1405 pc 14428
	jal	%x1, create_float_array.2577  #1405 pc 14432
	addi	%x2, %x2, -12  #1405 pc 14436
	lw	%x1, 8(%x2) #1405 pc 14440
	lw	%x7, 4(%x2)  #1407 pc 14444
	flw	%f0, 0(%x7)  #1407 pc 14448
	flw	%f1, 4(%x7)  #1407 pc 14452
	flw	%f2, 8(%x7)  #1407 pc 14456
	lw	%x8, 0(%x2)  #1407 pc 14460
	sw	%x6, 8(%x2)  #1407 pc 14464
	addi	%x6, %x8, 0  #0 pc 14468
	sw	%x1, 12(%x2)  #1407 pc 14472
	addi	%x2, %x2, 16  #1407 pc 14476
	jal	%x1, quadratic.2774  #1407 pc 14480
	addi	%x2, %x2, -16  #1407 pc 14484
	lw	%x1, 12(%x2) #1407 pc 14488
	lw	%x6, 4(%x2)  #1408 pc 14492
	flw	%f1, 0(%x6)  #1408 pc 14496
	lw	%x7, 0(%x2)  #1408 pc 14500
	fsw	%f0, 16(%x2)  #1408 pc 14504
	fsw	%f1, 24(%x2)  #1408 pc 14508
	addi	%x6, %x7, 0  #0 pc 14512
	sw	%x1, 32(%x2)  #1408 pc 14516
	addi	%x2, %x2, 36  #1408 pc 14520
	jal	%x1, o_param_a.2669  #1408 pc 14524
	addi	%x2, %x2, -36  #1408 pc 14528
	lw	%x1, 32(%x2) #1408 pc 14532
	flw	%f1, 24(%x2)  #1408 pc 14536
	fmul	%f0, %f1, %f0  #1408 pc 14540
	sw	%x1, 32(%x2)  #1408 pc 14544
	addi	%x2, %x2, 36  #1408 pc 14548
	jal	%x1, fneg.2515  #1408 pc 14552
	addi	%x2, %x2, -36  #1408 pc 14556
	lw	%x1, 32(%x2) #1408 pc 14560
	lw	%x6, 4(%x2)  #1409 pc 14564
	flw	%f1, 4(%x6)  #1409 pc 14568
	lw	%x7, 0(%x2)  #1409 pc 14572
	fsw	%f0, 32(%x2)  #1409 pc 14576
	fsw	%f1, 40(%x2)  #1409 pc 14580
	addi	%x6, %x7, 0  #0 pc 14584
	sw	%x1, 48(%x2)  #1409 pc 14588
	addi	%x2, %x2, 52  #1409 pc 14592
	jal	%x1, o_param_b.2671  #1409 pc 14596
	addi	%x2, %x2, -52  #1409 pc 14600
	lw	%x1, 48(%x2) #1409 pc 14604
	flw	%f1, 40(%x2)  #1409 pc 14608
	fmul	%f0, %f1, %f0  #1409 pc 14612
	sw	%x1, 48(%x2)  #1409 pc 14616
	addi	%x2, %x2, 52  #1409 pc 14620
	jal	%x1, fneg.2515  #1409 pc 14624
	addi	%x2, %x2, -52  #1409 pc 14628
	lw	%x1, 48(%x2) #1409 pc 14632
	lw	%x6, 4(%x2)  #1410 pc 14636
	flw	%f1, 8(%x6)  #1410 pc 14640
	lw	%x7, 0(%x2)  #1410 pc 14644
	fsw	%f0, 48(%x2)  #1410 pc 14648
	fsw	%f1, 56(%x2)  #1410 pc 14652
	addi	%x6, %x7, 0  #0 pc 14656
	sw	%x1, 64(%x2)  #1410 pc 14660
	addi	%x2, %x2, 68  #1410 pc 14664
	jal	%x1, o_param_c.2673  #1410 pc 14668
	addi	%x2, %x2, -68  #1410 pc 14672
	lw	%x1, 64(%x2) #1410 pc 14676
	flw	%f1, 56(%x2)  #1410 pc 14680
	fmul	%f0, %f1, %f0  #1410 pc 14684
	sw	%x1, 64(%x2)  #1410 pc 14688
	addi	%x2, %x2, 68  #1410 pc 14692
	jal	%x1, fneg.2515  #1410 pc 14696
	addi	%x2, %x2, -68  #1410 pc 14700
	lw	%x1, 64(%x2) #1410 pc 14704
	lw	%x6, 8(%x2)  #1412 pc 14708
	flw	%f1, 16(%x2)  #1412 pc 14712
	fsw	%f1, 0(%x6)  #1412 pc 14716
	lw	%x7, 0(%x2)  #1416 pc 14720
	fsw	%f0, 64(%x2)  #1416 pc 14724
	addi	%x6, %x7, 0  #0 pc 14728
	sw	%x1, 72(%x2)  #1416 pc 14732
	addi	%x2, %x2, 76  #1416 pc 14736
	jal	%x1, o_isrot.2667  #1416 pc 14740
	addi	%x2, %x2, -76  #1416 pc 14744
	lw	%x1, 72(%x2) #1416 pc 14748
	beq	%x6, %x0, 12  #1416 pc 14752
	j	be_else.9287 #pc 14756
	nop #pc 14760
	lw	%x6, 8(%x2)  #1421 pc 14764
	flw	%f0, 32(%x2)  #1421 pc 14768
	fsw	%f0, 4(%x6)  #1421 pc 14772
	flw	%f0, 48(%x2)  #1422 pc 14776
	fsw	%f0, 8(%x6)  #1422 pc 14780
	flw	%f0, 64(%x2)  #1423 pc 14784
	fsw	%f0, 12(%x6)  #1423 pc 14788
	j	be_cont.9288 #pc 14792
	nop #pc 14796
be_else.9287: #pc 14800
	lw	%x6, 4(%x2)  #1417 pc 14800
	flw	%f0, 8(%x6)  #1417 pc 14804
	lw	%x7, 0(%x2)  #1417 pc 14808
	fsw	%f0, 72(%x2)  #1417 pc 14812
	addi	%x6, %x7, 0  #0 pc 14816
	sw	%x1, 80(%x2)  #1417 pc 14820
	addi	%x2, %x2, 84  #1417 pc 14824
	jal	%x1, o_param_r2.2695  #1417 pc 14828
	addi	%x2, %x2, -84  #1417 pc 14832
	lw	%x1, 80(%x2) #1417 pc 14836
	flw	%f1, 72(%x2)  #1417 pc 14840
	fmul	%f0, %f1, %f0  #1417 pc 14844
	lw	%x6, 4(%x2)  #1417 pc 14848
	flw	%f1, 4(%x6)  #1417 pc 14852
	lw	%x7, 0(%x2)  #1417 pc 14856
	fsw	%f0, 80(%x2)  #1417 pc 14860
	fsw	%f1, 88(%x2)  #1417 pc 14864
	addi	%x6, %x7, 0  #0 pc 14868
	sw	%x1, 96(%x2)  #1417 pc 14872
	addi	%x2, %x2, 100  #1417 pc 14876
	jal	%x1, o_param_r3.2697  #1417 pc 14880
	addi	%x2, %x2, -100  #1417 pc 14884
	lw	%x1, 96(%x2) #1417 pc 14888
	flw	%f1, 88(%x2)  #1417 pc 14892
	fmul	%f0, %f1, %f0  #1417 pc 14896
	flw	%f1, 80(%x2)  #1417 pc 14900
	fadd	%f0, %f1, %f0  #1417 pc 14904
	sw	%x1, 96(%x2)  #1417 pc 14908
	addi	%x2, %x2, 100  #1417 pc 14912
	jal	%x1, fhalf.2519  #1417 pc 14916
	addi	%x2, %x2, -100  #1417 pc 14920
	lw	%x1, 96(%x2) #1417 pc 14924
	flw	%f1, 32(%x2)  #1417 pc 14928
	fsub	%f0, %f1, %f0  #1417 pc 14932
	lw	%x6, 8(%x2)  #1417 pc 14936
	fsw	%f0, 4(%x6)  #1417 pc 14940
	lw	%x7, 4(%x2)  #1418 pc 14944
	flw	%f0, 8(%x7)  #1418 pc 14948
	lw	%x8, 0(%x2)  #1418 pc 14952
	fsw	%f0, 96(%x2)  #1418 pc 14956
	addi	%x6, %x8, 0  #0 pc 14960
	sw	%x1, 104(%x2)  #1418 pc 14964
	addi	%x2, %x2, 108  #1418 pc 14968
	jal	%x1, o_param_r1.2693  #1418 pc 14972
	addi	%x2, %x2, -108  #1418 pc 14976
	lw	%x1, 104(%x2) #1418 pc 14980
	flw	%f1, 96(%x2)  #1418 pc 14984
	fmul	%f0, %f1, %f0  #1418 pc 14988
	lw	%x6, 4(%x2)  #1418 pc 14992
	flw	%f1, 0(%x6)  #1418 pc 14996
	lw	%x7, 0(%x2)  #1418 pc 15000
	fsw	%f0, 104(%x2)  #1418 pc 15004
	fsw	%f1, 112(%x2)  #1418 pc 15008
	addi	%x6, %x7, 0  #0 pc 15012
	sw	%x1, 120(%x2)  #1418 pc 15016
	addi	%x2, %x2, 124  #1418 pc 15020
	jal	%x1, o_param_r3.2697  #1418 pc 15024
	addi	%x2, %x2, -124  #1418 pc 15028
	lw	%x1, 120(%x2) #1418 pc 15032
	flw	%f1, 112(%x2)  #1418 pc 15036
	fmul	%f0, %f1, %f0  #1418 pc 15040
	flw	%f1, 104(%x2)  #1418 pc 15044
	fadd	%f0, %f1, %f0  #1418 pc 15048
	sw	%x1, 120(%x2)  #1418 pc 15052
	addi	%x2, %x2, 124  #1418 pc 15056
	jal	%x1, fhalf.2519  #1418 pc 15060
	addi	%x2, %x2, -124  #1418 pc 15064
	lw	%x1, 120(%x2) #1418 pc 15068
	flw	%f1, 48(%x2)  #1418 pc 15072
	fsub	%f0, %f1, %f0  #1418 pc 15076
	lw	%x6, 8(%x2)  #1418 pc 15080
	fsw	%f0, 8(%x6)  #1418 pc 15084
	lw	%x7, 4(%x2)  #1419 pc 15088
	flw	%f0, 4(%x7)  #1419 pc 15092
	lw	%x8, 0(%x2)  #1419 pc 15096
	fsw	%f0, 120(%x2)  #1419 pc 15100
	addi	%x6, %x8, 0  #0 pc 15104
	sw	%x1, 128(%x2)  #1419 pc 15108
	addi	%x2, %x2, 132  #1419 pc 15112
	jal	%x1, o_param_r1.2693  #1419 pc 15116
	addi	%x2, %x2, -132  #1419 pc 15120
	lw	%x1, 128(%x2) #1419 pc 15124
	flw	%f1, 120(%x2)  #1419 pc 15128
	fmul	%f0, %f1, %f0  #1419 pc 15132
	lw	%x6, 4(%x2)  #1419 pc 15136
	flw	%f1, 0(%x6)  #1419 pc 15140
	lw	%x6, 0(%x2)  #1419 pc 15144
	fsw	%f0, 128(%x2)  #1419 pc 15148
	fsw	%f1, 136(%x2)  #1419 pc 15152
	sw	%x1, 144(%x2)  #1419 pc 15156
	addi	%x2, %x2, 148  #1419 pc 15160
	jal	%x1, o_param_r2.2695  #1419 pc 15164
	addi	%x2, %x2, -148  #1419 pc 15168
	lw	%x1, 144(%x2) #1419 pc 15172
	flw	%f1, 136(%x2)  #1419 pc 15176
	fmul	%f0, %f1, %f0  #1419 pc 15180
	flw	%f1, 128(%x2)  #1419 pc 15184
	fadd	%f0, %f1, %f0  #1419 pc 15188
	sw	%x1, 144(%x2)  #1419 pc 15192
	addi	%x2, %x2, 148  #1419 pc 15196
	jal	%x1, fhalf.2519  #1419 pc 15200
	addi	%x2, %x2, -148  #1419 pc 15204
	lw	%x1, 144(%x2) #1419 pc 15208
	flw	%f1, 64(%x2)  #1419 pc 15212
	fsub	%f0, %f1, %f0  #1419 pc 15216
	lw	%x6, 8(%x2)  #1419 pc 15220
	fsw	%f0, 12(%x6)  #1419 pc 15224
be_cont.9288: #pc 15228
	flw	%f0, 16(%x2)  #1425 pc 15228
	sw	%x1, 144(%x2)  #1425 pc 15232
	addi	%x2, %x2, 148  #1425 pc 15236
	jal	%x1, fiszero.2509  #1425 pc 15240
	addi	%x2, %x2, -148  #1425 pc 15244
	lw	%x1, 144(%x2) #1425 pc 15248
	beq	%x6, %x0, 12  #1425 pc 15252
	j	be_else.9289 #pc 15256
	nop #pc 15260
	fmv	%f0, l.6263  #0 pc 15264
	flw	%f1, 16(%x2)  #1426 pc 15268
	fdiv	%f0, %f0, %f1  #1426 pc 15272
	lw	%x6, 8(%x2)  #1426 pc 15276
	fsw	%f0, 16(%x6)  #1426 pc 15280
	j	be_cont.9290 #pc 15284
	nop #pc 15288
be_else.9289: #pc 15292
be_cont.9290: #pc 15292
	lw	%x6, 8(%x2)  #1428 pc 15292
	ret #pc 15296
	nop #pc 15300
iter_setup_dirvec_constants.2846:  #pc 15304
	lw	%x8, 4(%x29)  #0 pc 15304
	bge	%x7, %x0, 12  #1434 pc 15308
	j	bge_else.9291 #pc 15312
	nop #pc 15316
	slli	%x9, %x7, 2  #1435 pc 15320
	add	%x31, %x9, %x8  #1435 pc 15324
	lw	%x8, 0(%x31)  #1435 pc 15328
	sw	%x29, 0(%x2)  #1436 pc 15332
	sw	%x7, 4(%x2)  #1436 pc 15336
	sw	%x8, 8(%x2)  #1436 pc 15340
	sw	%x6, 12(%x2)  #1436 pc 15344
	sw	%x1, 16(%x2)  #1436 pc 15348
	addi	%x2, %x2, 20  #1436 pc 15352
	jal	%x1, d_const.2722  #1436 pc 15356
	addi	%x2, %x2, -20  #1436 pc 15360
	lw	%x1, 16(%x2) #1436 pc 15364
	lw	%x7, 12(%x2)  #1437 pc 15368
	sw	%x6, 16(%x2)  #1437 pc 15372
	addi	%x6, %x7, 0  #0 pc 15376
	sw	%x1, 20(%x2)  #1437 pc 15380
	addi	%x2, %x2, 24  #1437 pc 15384
	jal	%x1, d_vec.2720  #1437 pc 15388
	addi	%x2, %x2, -24  #1437 pc 15392
	lw	%x1, 20(%x2) #1437 pc 15396
	lw	%x7, 8(%x2)  #1438 pc 15400
	sw	%x6, 20(%x2)  #1438 pc 15404
	addi	%x6, %x7, 0  #0 pc 15408
	sw	%x1, 24(%x2)  #1438 pc 15412
	addi	%x2, %x2, 28  #1438 pc 15416
	jal	%x1, o_form.2661  #1438 pc 15420
	addi	%x2, %x2, -28  #1438 pc 15424
	lw	%x1, 24(%x2) #1438 pc 15428
	addi	%x31, %x0, 1  #pc 15432
	beq	%x6, %x31, 12  #1439 pc 15436
	j	be_else.9292 #pc 15440
	nop #pc 15444
	lw	%x6, 20(%x2)  #1440 pc 15448
	lw	%x7, 8(%x2)  #1440 pc 15452
	sw	%x1, 24(%x2)  #1440 pc 15456
	addi	%x2, %x2, 28  #1440 pc 15460
	jal	%x1, setup_rect_table.2837  #1440 pc 15464
	addi	%x2, %x2, -28  #1440 pc 15468
	lw	%x1, 24(%x2) #1440 pc 15472
	lw	%x7, 4(%x2)  #1440 pc 15476
	slli	%x8, %x7, 2  #1440 pc 15480
	lw	%x9, 16(%x2)  #1440 pc 15484
	add	%x31, %x8, %x9  #1440 pc 15488
	sw	%x6, 0(%x31)  #1440 pc 15492
	j	be_cont.9293 #pc 15496
	nop #pc 15500
be_else.9292: #pc 15504
	addi	%x31, %x0, 2  #pc 15504
	beq	%x6, %x31, 12  #1441 pc 15508
	j	be_else.9294 #pc 15512
	nop #pc 15516
	lw	%x6, 20(%x2)  #1442 pc 15520
	lw	%x7, 8(%x2)  #1442 pc 15524
	sw	%x1, 24(%x2)  #1442 pc 15528
	addi	%x2, %x2, 28  #1442 pc 15532
	jal	%x1, setup_surface_table.2840  #1442 pc 15536
	addi	%x2, %x2, -28  #1442 pc 15540
	lw	%x1, 24(%x2) #1442 pc 15544
	lw	%x7, 4(%x2)  #1442 pc 15548
	slli	%x8, %x7, 2  #1442 pc 15552
	lw	%x9, 16(%x2)  #1442 pc 15556
	add	%x31, %x8, %x9  #1442 pc 15560
	sw	%x6, 0(%x31)  #1442 pc 15564
	j	be_cont.9295 #pc 15568
	nop #pc 15572
be_else.9294: #pc 15576
	lw	%x6, 20(%x2)  #1444 pc 15576
	lw	%x7, 8(%x2)  #1444 pc 15580
	sw	%x1, 24(%x2)  #1444 pc 15584
	addi	%x2, %x2, 28  #1444 pc 15588
	jal	%x1, setup_second_table.2843  #1444 pc 15592
	addi	%x2, %x2, -28  #1444 pc 15596
	lw	%x1, 24(%x2) #1444 pc 15600
	lw	%x7, 4(%x2)  #1444 pc 15604
	slli	%x8, %x7, 2  #1444 pc 15608
	lw	%x9, 16(%x2)  #1444 pc 15612
	add	%x31, %x8, %x9  #1444 pc 15616
	sw	%x6, 0(%x31)  #1444 pc 15620
be_cont.9295: #pc 15624
be_cont.9293: #pc 15624
	addi	%x7, %x7, -1  #1446 pc 15624
	lw	%x6, 12(%x2)  #1446 pc 15628
	lw	%x29, 0(%x2)  #1446 pc 15632
	lw	%x30, 0(%x29)  #1446 pc 15636
	jalr	%x0, %x30, 0  #1446 pc 15640
	nop #pc 15644
bge_else.9291: #pc 15648
	ret #pc 15648
	nop #pc 15652
setup_dirvec_constants.2849:  #pc 15656
	lw	%x7, 8(%x29)  #0 pc 15656
	lw	%x29, 4(%x29)  #0 pc 15660
	lw	%x7, 0(%x7)  #1451 pc 15664
	addi	%x7, %x7, -1  #1451 pc 15668
	lw	%x30, 0(%x29)  #1451 pc 15672
	jalr	%x0, %x30, 0  #1451 pc 15676
	nop #pc 15680
setup_startp_constants.2851:  #pc 15684
	lw	%x8, 4(%x29)  #0 pc 15684
	bge	%x7, %x0, 12  #1459 pc 15688
	j	bge_else.9297 #pc 15692
	nop #pc 15696
	slli	%x9, %x7, 2  #1460 pc 15700
	add	%x31, %x9, %x8  #1460 pc 15704
	lw	%x8, 0(%x31)  #1460 pc 15708
	sw	%x29, 0(%x2)  #1461 pc 15712
	sw	%x7, 4(%x2)  #1461 pc 15716
	sw	%x6, 8(%x2)  #1461 pc 15720
	sw	%x8, 12(%x2)  #1461 pc 15724
	addi	%x6, %x8, 0  #0 pc 15728
	sw	%x1, 16(%x2)  #1461 pc 15732
	addi	%x2, %x2, 20  #1461 pc 15736
	jal	%x1, o_param_ctbl.2699  #1461 pc 15740
	addi	%x2, %x2, -20  #1461 pc 15744
	lw	%x1, 16(%x2) #1461 pc 15748
	lw	%x7, 12(%x2)  #1462 pc 15752
	sw	%x6, 16(%x2)  #1462 pc 15756
	addi	%x6, %x7, 0  #0 pc 15760
	sw	%x1, 20(%x2)  #1462 pc 15764
	addi	%x2, %x2, 24  #1462 pc 15768
	jal	%x1, o_form.2661  #1462 pc 15772
	addi	%x2, %x2, -24  #1462 pc 15776
	lw	%x1, 20(%x2) #1462 pc 15780
	lw	%x7, 8(%x2)  #1463 pc 15784
	flw	%f0, 0(%x7)  #1463 pc 15788
	lw	%x8, 12(%x2)  #1463 pc 15792
	sw	%x6, 20(%x2)  #1463 pc 15796
	fsw	%f0, 24(%x2)  #1463 pc 15800
	addi	%x6, %x8, 0  #0 pc 15804
	sw	%x1, 32(%x2)  #1463 pc 15808
	addi	%x2, %x2, 36  #1463 pc 15812
	jal	%x1, o_param_x.2677  #1463 pc 15816
	addi	%x2, %x2, -36  #1463 pc 15820
	lw	%x1, 32(%x2) #1463 pc 15824
	flw	%f1, 24(%x2)  #1463 pc 15828
	fsub	%f0, %f1, %f0  #1463 pc 15832
	lw	%x6, 16(%x2)  #1463 pc 15836
	fsw	%f0, 0(%x6)  #1463 pc 15840
	lw	%x7, 8(%x2)  #1464 pc 15844
	flw	%f0, 4(%x7)  #1464 pc 15848
	lw	%x8, 12(%x2)  #1464 pc 15852
	fsw	%f0, 32(%x2)  #1464 pc 15856
	addi	%x6, %x8, 0  #0 pc 15860
	sw	%x1, 40(%x2)  #1464 pc 15864
	addi	%x2, %x2, 44  #1464 pc 15868
	jal	%x1, o_param_y.2679  #1464 pc 15872
	addi	%x2, %x2, -44  #1464 pc 15876
	lw	%x1, 40(%x2) #1464 pc 15880
	flw	%f1, 32(%x2)  #1464 pc 15884
	fsub	%f0, %f1, %f0  #1464 pc 15888
	lw	%x6, 16(%x2)  #1464 pc 15892
	fsw	%f0, 4(%x6)  #1464 pc 15896
	lw	%x7, 8(%x2)  #1465 pc 15900
	flw	%f0, 8(%x7)  #1465 pc 15904
	lw	%x8, 12(%x2)  #1465 pc 15908
	fsw	%f0, 40(%x2)  #1465 pc 15912
	addi	%x6, %x8, 0  #0 pc 15916
	sw	%x1, 48(%x2)  #1465 pc 15920
	addi	%x2, %x2, 52  #1465 pc 15924
	jal	%x1, o_param_z.2681  #1465 pc 15928
	addi	%x2, %x2, -52  #1465 pc 15932
	lw	%x1, 48(%x2) #1465 pc 15936
	flw	%f1, 40(%x2)  #1465 pc 15940
	fsub	%f0, %f1, %f0  #1465 pc 15944
	lw	%x6, 16(%x2)  #1465 pc 15948
	fsw	%f0, 8(%x6)  #1465 pc 15952
	lw	%x7, 20(%x2)  #1466 pc 15956
	addi	%x31, %x0, 2  #pc 15960
	beq	%x7, %x31, 12  #1466 pc 15964
	j	be_else.9298 #pc 15968
	nop #pc 15972
	lw	%x7, 12(%x2)  #1468 pc 15976
	addi	%x6, %x7, 0  #0 pc 15980
	sw	%x1, 48(%x2)  #1468 pc 15984
	addi	%x2, %x2, 52  #1468 pc 15988
	jal	%x1, o_param_abc.2675  #1468 pc 15992
	addi	%x2, %x2, -52  #1468 pc 15996
	lw	%x1, 48(%x2) #1468 pc 16000
	lw	%x7, 16(%x2)  #1468 pc 16004
	flw	%f0, 0(%x7)  #1468 pc 16008
	flw	%f1, 4(%x7)  #1468 pc 16012
	flw	%f2, 8(%x7)  #1468 pc 16016
	sw	%x1, 48(%x2)  #1468 pc 16020
	addi	%x2, %x2, 52  #1468 pc 16024
	jal	%x1, veciprod2.2640  #1468 pc 16028
	addi	%x2, %x2, -52  #1468 pc 16032
	lw	%x1, 48(%x2) #1468 pc 16036
	lw	%x6, 16(%x2)  #1467 pc 16040
	fsw	%f0, 12(%x6)  #1467 pc 16044
	j	be_cont.9299 #pc 16048
	nop #pc 16052
be_else.9298: #pc 16056
	addi	%x31, %x0, 2  #pc 16056
	bge	%x31, %x7, 12  #1469 pc 16060
	j	ble_else.9300 #pc 16064
	nop #pc 16068
	j	ble_cont.9301 #pc 16072
	nop #pc 16076
ble_else.9300: #pc 16080
	flw	%f0, 0(%x6)  #1470 pc 16080
	flw	%f1, 4(%x6)  #1470 pc 16084
	flw	%f2, 8(%x6)  #1470 pc 16088
	lw	%x8, 12(%x2)  #1470 pc 16092
	addi	%x6, %x8, 0  #0 pc 16096
	sw	%x1, 48(%x2)  #1470 pc 16100
	addi	%x2, %x2, 52  #1470 pc 16104
	jal	%x1, quadratic.2774  #1470 pc 16108
	addi	%x2, %x2, -52  #1470 pc 16112
	lw	%x1, 48(%x2) #1470 pc 16116
	lw	%x6, 20(%x2)  #1471 pc 16120
	addi	%x31, %x0, 3  #pc 16124
	beq	%x6, %x31, 12  #1471 pc 16128
	j	be_else.9302 #pc 16132
	nop #pc 16136
	fmv	%f1, l.6263  #0 pc 16140
	fsub	%f0, %f0, %f1  #1471 pc 16144
	j	be_cont.9303 #pc 16148
	nop #pc 16152
be_else.9302: #pc 16156
be_cont.9303: #pc 16156
	lw	%x6, 16(%x2)  #1471 pc 16156
	fsw	%f0, 12(%x6)  #1471 pc 16160
ble_cont.9301: #pc 16164
be_cont.9299: #pc 16164
	lw	%x6, 4(%x2)  #1473 pc 16164
	addi	%x7, %x6, -1  #1473 pc 16168
	lw	%x6, 8(%x2)  #1473 pc 16172
	lw	%x29, 0(%x2)  #1473 pc 16176
	lw	%x30, 0(%x29)  #1473 pc 16180
	jalr	%x0, %x30, 0  #1473 pc 16184
	nop #pc 16188
bge_else.9297: #pc 16192
	ret #pc 16192
	nop #pc 16196
setup_startp.2854:  #pc 16200
	lw	%x7, 12(%x29)  #1478 pc 16200
	lw	%x8, 8(%x29)  #1478 pc 16204
	lw	%x9, 4(%x29)  #1478 pc 16208
	sw	%x6, 0(%x2)  #1478 pc 16212
	sw	%x8, 4(%x2)  #1478 pc 16216
	sw	%x9, 8(%x2)  #1478 pc 16220
	addi	%x30, %x7, 0  #0 pc 16224
	addi	%x7, %x6, 0  #0 pc 16228
	addi	%x6, %x30, 0  #0 pc 16232
	sw	%x1, 12(%x2)  #1478 pc 16236
	addi	%x2, %x2, 16  #1478 pc 16240
	jal	%x1, veccpy.2631  #1478 pc 16244
	addi	%x2, %x2, -16  #1478 pc 16248
	lw	%x1, 12(%x2) #1478 pc 16252
	lw	%x6, 8(%x2)  #1479 pc 16256
	lw	%x6, 0(%x6)  #1479 pc 16260
	addi	%x7, %x6, -1  #1479 pc 16264
	lw	%x6, 0(%x2)  #1479 pc 16268
	lw	%x29, 4(%x2)  #1479 pc 16272
	lw	%x30, 0(%x29)  #1479 pc 16276
	jalr	%x0, %x30, 0  #1479 pc 16280
	nop #pc 16284
is_rect_outside.2856:  #pc 16288
	fabs	%f0, %f0  #1491 pc 16288
	fsw	%f2, 0(%x2)  #1491 pc 16292
	sw	%x6, 8(%x2)  #1491 pc 16296
	fsw	%f1, 16(%x2)  #1491 pc 16300
	fsw	%f0, 24(%x2)  #1491 pc 16304
	sw	%x1, 32(%x2)  #1491 pc 16308
	addi	%x2, %x2, 36  #1491 pc 16312
	jal	%x1, o_param_a.2669  #1491 pc 16316
	addi	%x2, %x2, -36  #1491 pc 16320
	lw	%x1, 32(%x2) #1491 pc 16324
	fadd	%f1, %f0, %f30  #1491 pc 16328
	flw	%f0, 24(%x2)  #1491 pc 16332
	sw	%x1, 32(%x2)  #1491 pc 16336
	addi	%x2, %x2, 36  #1491 pc 16340
	jal	%x1, fless.2521  #1491 pc 16344
	addi	%x2, %x2, -36  #1491 pc 16348
	lw	%x1, 32(%x2) #1491 pc 16352
	beq	%x6, %x0, 12  #1491 pc 16356
	j	be_else.9306 #pc 16360
	nop #pc 16364
	addi	%x6, %x0, 0  #0 pc 16368
	j	be_cont.9307 #pc 16372
	nop #pc 16376
be_else.9306: #pc 16380
	flw	%f0, 16(%x2)  #1492 pc 16380
	fabs	%f0, %f0  #1492 pc 16384
	lw	%x6, 8(%x2)  #1492 pc 16388
	fsw	%f0, 32(%x2)  #1492 pc 16392
	sw	%x1, 40(%x2)  #1492 pc 16396
	addi	%x2, %x2, 44  #1492 pc 16400
	jal	%x1, o_param_b.2671  #1492 pc 16404
	addi	%x2, %x2, -44  #1492 pc 16408
	lw	%x1, 40(%x2) #1492 pc 16412
	fadd	%f1, %f0, %f30  #1492 pc 16416
	flw	%f0, 32(%x2)  #1492 pc 16420
	sw	%x1, 40(%x2)  #1492 pc 16424
	addi	%x2, %x2, 44  #1492 pc 16428
	jal	%x1, fless.2521  #1492 pc 16432
	addi	%x2, %x2, -44  #1492 pc 16436
	lw	%x1, 40(%x2) #1492 pc 16440
	beq	%x6, %x0, 12  #1492 pc 16444
	j	be_else.9308 #pc 16448
	nop #pc 16452
	addi	%x6, %x0, 0  #0 pc 16456
	j	be_cont.9309 #pc 16460
	nop #pc 16464
be_else.9308: #pc 16468
	flw	%f0, 0(%x2)  #1493 pc 16468
	fabs	%f0, %f0  #1493 pc 16472
	lw	%x6, 8(%x2)  #1493 pc 16476
	fsw	%f0, 40(%x2)  #1493 pc 16480
	sw	%x1, 48(%x2)  #1493 pc 16484
	addi	%x2, %x2, 52  #1493 pc 16488
	jal	%x1, o_param_c.2673  #1493 pc 16492
	addi	%x2, %x2, -52  #1493 pc 16496
	lw	%x1, 48(%x2) #1493 pc 16500
	fadd	%f1, %f0, %f30  #1493 pc 16504
	flw	%f0, 40(%x2)  #1493 pc 16508
	sw	%x1, 48(%x2)  #1493 pc 16512
	addi	%x2, %x2, 52  #1493 pc 16516
	jal	%x1, fless.2521  #1493 pc 16520
	addi	%x2, %x2, -52  #1493 pc 16524
	lw	%x1, 48(%x2) #1493 pc 16528
be_cont.9309: #pc 16532
be_cont.9307: #pc 16532
	beq	%x6, %x0, 12  #1490 pc 16532
	j	be_else.9310 #pc 16536
	nop #pc 16540
	lw	%x6, 8(%x2)  #1496 pc 16544
	sw	%x1, 48(%x2)  #1496 pc 16548
	addi	%x2, %x2, 52  #1496 pc 16552
	jal	%x1, o_isinvert.2665  #1496 pc 16556
	addi	%x2, %x2, -52  #1496 pc 16560
	lw	%x1, 48(%x2) #1496 pc 16564
	beq	%x6, %x0, 12  #1496 pc 16568
	j	be_else.9311 #pc 16572
	nop #pc 16576
	addi	%x6, %x0, 1  #0 pc 16580
	ret #pc 16584
	nop #pc 16588
be_else.9311: #pc 16592
	addi	%x6, %x0, 0  #0 pc 16592
	ret #pc 16596
	nop #pc 16600
be_else.9310: #pc 16604
	lw	%x6, 8(%x2)  #1496 pc 16604
	j	o_isinvert.2665  #1496 pc 16608
	nop #pc 16612
is_plane_outside.2861:  #pc 16616
	sw	%x6, 0(%x2)  #1501 pc 16616
	fsw	%f2, 8(%x2)  #1501 pc 16620
	fsw	%f1, 16(%x2)  #1501 pc 16624
	fsw	%f0, 24(%x2)  #1501 pc 16628
	sw	%x1, 32(%x2)  #1501 pc 16632
	addi	%x2, %x2, 36  #1501 pc 16636
	jal	%x1, o_param_abc.2675  #1501 pc 16640
	addi	%x2, %x2, -36  #1501 pc 16644
	lw	%x1, 32(%x2) #1501 pc 16648
	flw	%f0, 24(%x2)  #1501 pc 16652
	flw	%f1, 16(%x2)  #1501 pc 16656
	flw	%f2, 8(%x2)  #1501 pc 16660
	sw	%x1, 32(%x2)  #1501 pc 16664
	addi	%x2, %x2, 36  #1501 pc 16668
	jal	%x1, veciprod2.2640  #1501 pc 16672
	addi	%x2, %x2, -36  #1501 pc 16676
	lw	%x1, 32(%x2) #1501 pc 16680
	lw	%x6, 0(%x2)  #1502 pc 16684
	fsw	%f0, 32(%x2)  #1502 pc 16688
	sw	%x1, 40(%x2)  #1502 pc 16692
	addi	%x2, %x2, 44  #1502 pc 16696
	jal	%x1, o_isinvert.2665  #1502 pc 16700
	addi	%x2, %x2, -44  #1502 pc 16704
	lw	%x1, 40(%x2) #1502 pc 16708
	flw	%f0, 32(%x2)  #1502 pc 16712
	sw	%x6, 40(%x2)  #1502 pc 16716
	sw	%x1, 44(%x2)  #1502 pc 16720
	addi	%x2, %x2, 48  #1502 pc 16724
	jal	%x1, fisneg.2513  #1502 pc 16728
	addi	%x2, %x2, -48  #1502 pc 16732
	lw	%x1, 44(%x2) #1502 pc 16736
	addi	%x7, %x6, 0  #1502 pc 16740
	lw	%x6, 40(%x2)  #1502 pc 16744
	sw	%x1, 44(%x2)  #1502 pc 16748
	addi	%x2, %x2, 48  #1502 pc 16752
	jal	%x1, xor.2610  #1502 pc 16756
	addi	%x2, %x2, -48  #1502 pc 16760
	lw	%x1, 44(%x2) #1502 pc 16764
	beq	%x6, %x0, 12  #1502 pc 16768
	j	be_else.9313 #pc 16772
	nop #pc 16776
	addi	%x6, %x0, 1  #0 pc 16780
	ret #pc 16784
	nop #pc 16788
be_else.9313: #pc 16792
	addi	%x6, %x0, 0  #0 pc 16792
	ret #pc 16796
	nop #pc 16800
is_second_outside.2866:  #pc 16804
	sw	%x6, 0(%x2)  #1507 pc 16804
	sw	%x1, 4(%x2)  #1507 pc 16808
	addi	%x2, %x2, 8  #1507 pc 16812
	jal	%x1, quadratic.2774  #1507 pc 16816
	addi	%x2, %x2, -8  #1507 pc 16820
	lw	%x1, 4(%x2) #1507 pc 16824
	lw	%x6, 0(%x2)  #1508 pc 16828
	fsw	%f0, 8(%x2)  #1508 pc 16832
	sw	%x1, 16(%x2)  #1508 pc 16836
	addi	%x2, %x2, 20  #1508 pc 16840
	jal	%x1, o_form.2661  #1508 pc 16844
	addi	%x2, %x2, -20  #1508 pc 16848
	lw	%x1, 16(%x2) #1508 pc 16852
	addi	%x31, %x0, 3  #pc 16856
	beq	%x6, %x31, 12  #1508 pc 16860
	j	be_else.9315 #pc 16864
	nop #pc 16868
	fmv	%f0, l.6263  #0 pc 16872
	flw	%f1, 8(%x2)  #1508 pc 16876
	fsub	%f0, %f1, %f0  #1508 pc 16880
	j	be_cont.9316 #pc 16884
	nop #pc 16888
be_else.9315: #pc 16892
	flw	%f0, 8(%x2)  #1508 pc 16892
be_cont.9316: #pc 16896
	lw	%x6, 0(%x2)  #1509 pc 16896
	fsw	%f0, 16(%x2)  #1509 pc 16900
	sw	%x1, 24(%x2)  #1509 pc 16904
	addi	%x2, %x2, 28  #1509 pc 16908
	jal	%x1, o_isinvert.2665  #1509 pc 16912
	addi	%x2, %x2, -28  #1509 pc 16916
	lw	%x1, 24(%x2) #1509 pc 16920
	flw	%f0, 16(%x2)  #1509 pc 16924
	sw	%x6, 24(%x2)  #1509 pc 16928
	sw	%x1, 28(%x2)  #1509 pc 16932
	addi	%x2, %x2, 32  #1509 pc 16936
	jal	%x1, fisneg.2513  #1509 pc 16940
	addi	%x2, %x2, -32  #1509 pc 16944
	lw	%x1, 28(%x2) #1509 pc 16948
	addi	%x7, %x6, 0  #1509 pc 16952
	lw	%x6, 24(%x2)  #1509 pc 16956
	sw	%x1, 28(%x2)  #1509 pc 16960
	addi	%x2, %x2, 32  #1509 pc 16964
	jal	%x1, xor.2610  #1509 pc 16968
	addi	%x2, %x2, -32  #1509 pc 16972
	lw	%x1, 28(%x2) #1509 pc 16976
	beq	%x6, %x0, 12  #1509 pc 16980
	j	be_else.9317 #pc 16984
	nop #pc 16988
	addi	%x6, %x0, 1  #0 pc 16992
	ret #pc 16996
	nop #pc 17000
be_else.9317: #pc 17004
	addi	%x6, %x0, 0  #0 pc 17004
	ret #pc 17008
	nop #pc 17012
is_outside.2871:  #pc 17016
	fsw	%f2, 0(%x2)  #1514 pc 17016
	fsw	%f1, 8(%x2)  #1514 pc 17020
	sw	%x6, 16(%x2)  #1514 pc 17024
	fsw	%f0, 24(%x2)  #1514 pc 17028
	sw	%x1, 32(%x2)  #1514 pc 17032
	addi	%x2, %x2, 36  #1514 pc 17036
	jal	%x1, o_param_x.2677  #1514 pc 17040
	addi	%x2, %x2, -36  #1514 pc 17044
	lw	%x1, 32(%x2) #1514 pc 17048
	flw	%f1, 24(%x2)  #1514 pc 17052
	fsub	%f0, %f1, %f0  #1514 pc 17056
	lw	%x6, 16(%x2)  #1515 pc 17060
	fsw	%f0, 32(%x2)  #1515 pc 17064
	sw	%x1, 40(%x2)  #1515 pc 17068
	addi	%x2, %x2, 44  #1515 pc 17072
	jal	%x1, o_param_y.2679  #1515 pc 17076
	addi	%x2, %x2, -44  #1515 pc 17080
	lw	%x1, 40(%x2) #1515 pc 17084
	flw	%f1, 8(%x2)  #1515 pc 17088
	fsub	%f0, %f1, %f0  #1515 pc 17092
	lw	%x6, 16(%x2)  #1516 pc 17096
	fsw	%f0, 40(%x2)  #1516 pc 17100
	sw	%x1, 48(%x2)  #1516 pc 17104
	addi	%x2, %x2, 52  #1516 pc 17108
	jal	%x1, o_param_z.2681  #1516 pc 17112
	addi	%x2, %x2, -52  #1516 pc 17116
	lw	%x1, 48(%x2) #1516 pc 17120
	flw	%f1, 0(%x2)  #1516 pc 17124
	fsub	%f0, %f1, %f0  #1516 pc 17128
	lw	%x6, 16(%x2)  #1517 pc 17132
	fsw	%f0, 48(%x2)  #1517 pc 17136
	sw	%x1, 56(%x2)  #1517 pc 17140
	addi	%x2, %x2, 60  #1517 pc 17144
	jal	%x1, o_form.2661  #1517 pc 17148
	addi	%x2, %x2, -60  #1517 pc 17152
	lw	%x1, 56(%x2) #1517 pc 17156
	addi	%x31, %x0, 1  #pc 17160
	beq	%x6, %x31, 12  #1518 pc 17164
	j	be_else.9319 #pc 17168
	nop #pc 17172
	flw	%f0, 32(%x2)  #1519 pc 17176
	flw	%f1, 40(%x2)  #1519 pc 17180
	flw	%f2, 48(%x2)  #1519 pc 17184
	lw	%x6, 16(%x2)  #1519 pc 17188
	j	is_rect_outside.2856  #1519 pc 17192
	nop #pc 17196
be_else.9319: #pc 17200
	addi	%x31, %x0, 2  #pc 17200
	beq	%x6, %x31, 12  #1520 pc 17204
	j	be_else.9320 #pc 17208
	nop #pc 17212
	flw	%f0, 32(%x2)  #1521 pc 17216
	flw	%f1, 40(%x2)  #1521 pc 17220
	flw	%f2, 48(%x2)  #1521 pc 17224
	lw	%x6, 16(%x2)  #1521 pc 17228
	j	is_plane_outside.2861  #1521 pc 17232
	nop #pc 17236
be_else.9320: #pc 17240
	flw	%f0, 32(%x2)  #1523 pc 17240
	flw	%f1, 40(%x2)  #1523 pc 17244
	flw	%f2, 48(%x2)  #1523 pc 17248
	lw	%x6, 16(%x2)  #1523 pc 17252
	j	is_second_outside.2866  #1523 pc 17256
	nop #pc 17260
check_all_inside.2876:  #pc 17264
	lw	%x8, 4(%x29)  #1528 pc 17264
	slli	%x9, %x6, 2  #1528 pc 17268
	add	%x31, %x9, %x7  #1528 pc 17272
	lw	%x9, 0(%x31)  #1528 pc 17276
	addi	%x31, %x0, -1  #pc 17280
	beq	%x9, %x31, 12  #1529 pc 17284
	j	be_else.9321 #pc 17288
	nop #pc 17292
	addi	%x6, %x0, 1  #0 pc 17296
	ret #pc 17300
	nop #pc 17304
be_else.9321: #pc 17308
	slli	%x9, %x9, 2  #1532 pc 17308
	add	%x31, %x9, %x8  #1532 pc 17312
	lw	%x8, 0(%x31)  #1532 pc 17316
	fsw	%f2, 0(%x2)  #1532 pc 17320
	fsw	%f1, 8(%x2)  #1532 pc 17324
	fsw	%f0, 16(%x2)  #1532 pc 17328
	sw	%x7, 24(%x2)  #1532 pc 17332
	sw	%x29, 28(%x2)  #1532 pc 17336
	sw	%x6, 32(%x2)  #1532 pc 17340
	addi	%x6, %x8, 0  #0 pc 17344
	sw	%x1, 36(%x2)  #1532 pc 17348
	addi	%x2, %x2, 40  #1532 pc 17352
	jal	%x1, is_outside.2871  #1532 pc 17356
	addi	%x2, %x2, -40  #1532 pc 17360
	lw	%x1, 36(%x2) #1532 pc 17364
	beq	%x6, %x0, 12  #1532 pc 17368
	j	be_else.9322 #pc 17372
	nop #pc 17376
	lw	%x6, 32(%x2)  #1535 pc 17380
	addi	%x6, %x6, 1  #1535 pc 17384
	flw	%f0, 16(%x2)  #1535 pc 17388
	flw	%f1, 8(%x2)  #1535 pc 17392
	flw	%f2, 0(%x2)  #1535 pc 17396
	lw	%x7, 24(%x2)  #1535 pc 17400
	lw	%x29, 28(%x2)  #1535 pc 17404
	lw	%x30, 0(%x29)  #1535 pc 17408
	jalr	%x0, %x30, 0  #1535 pc 17412
	nop #pc 17416
be_else.9322: #pc 17420
	addi	%x6, %x0, 0  #0 pc 17420
	ret #pc 17424
	nop #pc 17428
shadow_check_and_group.2882:  #pc 17432
	lw	%x8, 28(%x29)  #0 pc 17432
	lw	%x9, 24(%x29)  #0 pc 17436
	lw	%x10, 20(%x29)  #0 pc 17440
	lw	%x11, 16(%x29)  #0 pc 17444
	lw	%x12, 12(%x29)  #0 pc 17448
	lw	%x13, 8(%x29)  #0 pc 17452
	lw	%x14, 4(%x29)  #0 pc 17456
	slli	%x15, %x6, 2  #1548 pc 17460
	add	%x31, %x15, %x7  #1548 pc 17464
	lw	%x15, 0(%x31)  #1548 pc 17468
	addi	%x31, %x0, -1  #pc 17472
	beq	%x15, %x31, 12  #1548 pc 17476
	j	be_else.9323 #pc 17480
	nop #pc 17484
	addi	%x6, %x0, 0  #0 pc 17488
	ret #pc 17492
	nop #pc 17496
be_else.9323: #pc 17500
	slli	%x15, %x6, 2  #1551 pc 17500
	add	%x31, %x15, %x7  #1551 pc 17504
	lw	%x15, 0(%x31)  #1551 pc 17508
	sw	%x14, 0(%x2)  #1552 pc 17512
	sw	%x13, 4(%x2)  #1552 pc 17516
	sw	%x12, 8(%x2)  #1552 pc 17520
	sw	%x7, 12(%x2)  #1552 pc 17524
	sw	%x29, 16(%x2)  #1552 pc 17528
	sw	%x6, 20(%x2)  #1552 pc 17532
	sw	%x10, 24(%x2)  #1552 pc 17536
	sw	%x15, 28(%x2)  #1552 pc 17540
	sw	%x9, 32(%x2)  #1552 pc 17544
	addi	%x7, %x11, 0  #0 pc 17548
	addi	%x6, %x15, 0  #0 pc 17552
	addi	%x29, %x8, 0  #0 pc 17556
	addi	%x8, %x13, 0  #0 pc 17560
	sw	%x1, 36(%x2)  #1552 pc 17564
	lw	%x30, 0(%x29)  #1552 pc 17568
	addi	%x2, %x2, 40  #1552 pc 17572
	jalr	%x1, %x30, 0  #1552 pc 17576
	addi	%x2, %x2, -40  #1552 pc 17580
	lw	%x1, 36(%x2)  #1552 pc 17584
	lw	%x7, 32(%x2)  #1553 pc 17588
	flw	%f0, 0(%x7)  #1553 pc 17592
	fsw	%f0, 40(%x2)  #1554 pc 17596
	beq	%x6, %x0, 12  #1554 pc 17600
	j	be_else.9325 #pc 17604
	nop #pc 17608
	addi	%x6, %x0, 0  #0 pc 17612
	j	be_cont.9326 #pc 17616
	nop #pc 17620
be_else.9325: #pc 17624
	fmv	%f1, l.6644  #0 pc 17624
	sw	%x1, 48(%x2)  #1554 pc 17628
	addi	%x2, %x2, 52  #1554 pc 17632
	jal	%x1, fless.2521  #1554 pc 17636
	addi	%x2, %x2, -52  #1554 pc 17640
	lw	%x1, 48(%x2) #1554 pc 17644
be_cont.9326: #pc 17648
	beq	%x6, %x0, 12  #1554 pc 17648
	j	be_else.9327 #pc 17652
	nop #pc 17656
	lw	%x6, 28(%x2)  #1570 pc 17660
	slli	%x6, %x6, 2  #1570 pc 17664
	lw	%x7, 24(%x2)  #1570 pc 17668
	add	%x31, %x6, %x7  #1570 pc 17672
	lw	%x6, 0(%x31)  #1570 pc 17676
	sw	%x1, 48(%x2)  #1570 pc 17680
	addi	%x2, %x2, 52  #1570 pc 17684
	jal	%x1, o_isinvert.2665  #1570 pc 17688
	addi	%x2, %x2, -52  #1570 pc 17692
	lw	%x1, 48(%x2) #1570 pc 17696
	beq	%x6, %x0, 12  #1570 pc 17700
	j	be_else.9328 #pc 17704
	nop #pc 17708
	addi	%x6, %x0, 0  #0 pc 17712
	ret #pc 17716
	nop #pc 17720
be_else.9328: #pc 17724
	lw	%x6, 20(%x2)  #1571 pc 17724
	addi	%x6, %x6, 1  #1571 pc 17728
	lw	%x7, 12(%x2)  #1571 pc 17732
	lw	%x29, 16(%x2)  #1571 pc 17736
	lw	%x30, 0(%x29)  #1571 pc 17740
	jalr	%x0, %x30, 0  #1571 pc 17744
	nop #pc 17748
be_else.9327: #pc 17752
	fmv	%f0, l.6646  #0 pc 17752
	flw	%f1, 40(%x2)  #1557 pc 17756
	fadd	%f0, %f1, %f0  #1557 pc 17760
	lw	%x6, 8(%x2)  #1558 pc 17764
	flw	%f1, 0(%x6)  #1558 pc 17768
	fmul	%f1, %f1, %f0  #1558 pc 17772
	lw	%x7, 4(%x2)  #1558 pc 17776
	flw	%f2, 0(%x7)  #1558 pc 17780
	fadd	%f1, %f1, %f2  #1558 pc 17784
	flw	%f2, 4(%x6)  #1559 pc 17788
	fmul	%f2, %f2, %f0  #1559 pc 17792
	flw	%f3, 4(%x7)  #1559 pc 17796
	fadd	%f2, %f2, %f3  #1559 pc 17800
	flw	%f3, 8(%x6)  #1560 pc 17804
	fmul	%f0, %f3, %f0  #1560 pc 17808
	flw	%f3, 8(%x7)  #1560 pc 17812
	fadd	%f0, %f0, %f3  #1560 pc 17816
	addi	%x6, %x0, 0  #0 pc 17820
	lw	%x7, 12(%x2)  #1561 pc 17824
	lw	%x29, 0(%x2)  #1561 pc 17828
	fadd	%f29, %f2, %f30  #0 pc 17832
	fadd	%f2, %f0, %f30  #0 pc 17836
	fadd	%f0, %f1, %f30  #0 pc 17840
	fadd	%f1, %f29, %f30  #0 pc 17844
	sw	%x1, 48(%x2)  #1561 pc 17848
	lw	%x30, 0(%x29)  #1561 pc 17852
	addi	%x2, %x2, 52  #1561 pc 17856
	jalr	%x1, %x30, 0  #1561 pc 17860
	addi	%x2, %x2, -52  #1561 pc 17864
	lw	%x1, 48(%x2)  #1561 pc 17868
	beq	%x6, %x0, 12  #1561 pc 17872
	j	be_else.9329 #pc 17876
	nop #pc 17880
	lw	%x6, 20(%x2)  #1564 pc 17884
	addi	%x6, %x6, 1  #1564 pc 17888
	lw	%x7, 12(%x2)  #1564 pc 17892
	lw	%x29, 16(%x2)  #1564 pc 17896
	lw	%x30, 0(%x29)  #1564 pc 17900
	jalr	%x0, %x30, 0  #1564 pc 17904
	nop #pc 17908
be_else.9329: #pc 17912
	addi	%x6, %x0, 1  #0 pc 17912
	ret #pc 17916
	nop #pc 17920
shadow_check_one_or_group.2885:  #pc 17924
	lw	%x8, 8(%x29)  #1578 pc 17924
	lw	%x9, 4(%x29)  #1578 pc 17928
	slli	%x10, %x6, 2  #1578 pc 17932
	add	%x31, %x10, %x7  #1578 pc 17936
	lw	%x10, 0(%x31)  #1578 pc 17940
	addi	%x31, %x0, -1  #pc 17944
	beq	%x10, %x31, 12  #1579 pc 17948
	j	be_else.9330 #pc 17952
	nop #pc 17956
	addi	%x6, %x0, 0  #0 pc 17960
	ret #pc 17964
	nop #pc 17968
be_else.9330: #pc 17972
	slli	%x10, %x10, 2  #1582 pc 17972
	add	%x31, %x10, %x9  #1582 pc 17976
	lw	%x9, 0(%x31)  #1582 pc 17980
	addi	%x10, %x0, 0  #0 pc 17984
	sw	%x7, 0(%x2)  #1583 pc 17988
	sw	%x29, 4(%x2)  #1583 pc 17992
	sw	%x6, 8(%x2)  #1583 pc 17996
	addi	%x7, %x9, 0  #0 pc 18000
	addi	%x6, %x10, 0  #0 pc 18004
	addi	%x29, %x8, 0  #0 pc 18008
	sw	%x1, 12(%x2)  #1583 pc 18012
	lw	%x30, 0(%x29)  #1583 pc 18016
	addi	%x2, %x2, 16  #1583 pc 18020
	jalr	%x1, %x30, 0  #1583 pc 18024
	addi	%x2, %x2, -16  #1583 pc 18028
	lw	%x1, 12(%x2)  #1583 pc 18032
	beq	%x6, %x0, 12  #1584 pc 18036
	j	be_else.9331 #pc 18040
	nop #pc 18044
	lw	%x6, 8(%x2)  #1587 pc 18048
	addi	%x6, %x6, 1  #1587 pc 18052
	lw	%x7, 0(%x2)  #1587 pc 18056
	lw	%x29, 4(%x2)  #1587 pc 18060
	lw	%x30, 0(%x29)  #1587 pc 18064
	jalr	%x0, %x30, 0  #1587 pc 18068
	nop #pc 18072
be_else.9331: #pc 18076
	addi	%x6, %x0, 1  #0 pc 18076
	ret #pc 18080
	nop #pc 18084
shadow_check_one_or_matrix.2888:  #pc 18088
	lw	%x8, 20(%x29)  #1593 pc 18088
	lw	%x9, 16(%x29)  #1593 pc 18092
	lw	%x10, 12(%x29)  #1593 pc 18096
	lw	%x11, 8(%x29)  #1593 pc 18100
	lw	%x12, 4(%x29)  #1593 pc 18104
	slli	%x13, %x6, 2  #1593 pc 18108
	add	%x31, %x13, %x7  #1593 pc 18112
	lw	%x13, 0(%x31)  #1593 pc 18116
	lw	%x14, 0(%x13)  #1594 pc 18120
	addi	%x31, %x0, -1  #pc 18124
	beq	%x14, %x31, 12  #1595 pc 18128
	j	be_else.9332 #pc 18132
	nop #pc 18136
	addi	%x6, %x0, 0  #0 pc 18140
	ret #pc 18144
	nop #pc 18148
be_else.9332: #pc 18152
	sw	%x13, 0(%x2)  #1599 pc 18152
	sw	%x10, 4(%x2)  #1599 pc 18156
	sw	%x7, 8(%x2)  #1599 pc 18160
	sw	%x29, 12(%x2)  #1599 pc 18164
	sw	%x6, 16(%x2)  #1599 pc 18168
	addi	%x31, %x0, 99  #pc 18172
	beq	%x14, %x31, 12  #1599 pc 18176
	j	be_else.9333 #pc 18180
	nop #pc 18184
	addi	%x6, %x0, 1  #0 pc 18188
	j	be_cont.9334 #pc 18192
	nop #pc 18196
be_else.9333: #pc 18200
	sw	%x9, 20(%x2)  #1602 pc 18200
	addi	%x7, %x11, 0  #0 pc 18204
	addi	%x6, %x14, 0  #0 pc 18208
	addi	%x29, %x8, 0  #0 pc 18212
	addi	%x8, %x12, 0  #0 pc 18216
	sw	%x1, 24(%x2)  #1602 pc 18220
	lw	%x30, 0(%x29)  #1602 pc 18224
	addi	%x2, %x2, 28  #1602 pc 18228
	jalr	%x1, %x30, 0  #1602 pc 18232
	addi	%x2, %x2, -28  #1602 pc 18236
	lw	%x1, 24(%x2)  #1602 pc 18240
	beq	%x6, %x0, 12  #1605 pc 18244
	j	be_else.9335 #pc 18248
	nop #pc 18252
	addi	%x6, %x0, 0  #0 pc 18256
	j	be_cont.9336 #pc 18260
	nop #pc 18264
be_else.9335: #pc 18268
	lw	%x6, 20(%x2)  #1606 pc 18268
	flw	%f0, 0(%x6)  #1606 pc 18272
	fmv	%f1, l.6660  #0 pc 18276
	sw	%x1, 24(%x2)  #1606 pc 18280
	addi	%x2, %x2, 28  #1606 pc 18284
	jal	%x1, fless.2521  #1606 pc 18288
	addi	%x2, %x2, -28  #1606 pc 18292
	lw	%x1, 24(%x2) #1606 pc 18296
	beq	%x6, %x0, 12  #1606 pc 18300
	j	be_else.9337 #pc 18304
	nop #pc 18308
	addi	%x6, %x0, 0  #0 pc 18312
	j	be_cont.9338 #pc 18316
	nop #pc 18320
be_else.9337: #pc 18324
	addi	%x6, %x0, 1  #0 pc 18324
	lw	%x7, 0(%x2)  #1607 pc 18328
	lw	%x29, 4(%x2)  #1607 pc 18332
	sw	%x1, 24(%x2)  #1607 pc 18336
	lw	%x30, 0(%x29)  #1607 pc 18340
	addi	%x2, %x2, 28  #1607 pc 18344
	jalr	%x1, %x30, 0  #1607 pc 18348
	addi	%x2, %x2, -28  #1607 pc 18352
	lw	%x1, 24(%x2)  #1607 pc 18356
	beq	%x6, %x0, 12  #1607 pc 18360
	j	be_else.9339 #pc 18364
	nop #pc 18368
	addi	%x6, %x0, 0  #0 pc 18372
	j	be_cont.9340 #pc 18376
	nop #pc 18380
be_else.9339: #pc 18384
	addi	%x6, %x0, 1  #0 pc 18384
be_cont.9340: #pc 18388
be_cont.9338: #pc 18388
be_cont.9336: #pc 18388
be_cont.9334: #pc 18388
	beq	%x6, %x0, 12  #1598 pc 18388
	j	be_else.9341 #pc 18392
	nop #pc 18396
	lw	%x6, 16(%x2)  #1618 pc 18400
	addi	%x6, %x6, 1  #1618 pc 18404
	lw	%x7, 8(%x2)  #1618 pc 18408
	lw	%x29, 12(%x2)  #1618 pc 18412
	lw	%x30, 0(%x29)  #1618 pc 18416
	jalr	%x0, %x30, 0  #1618 pc 18420
	nop #pc 18424
be_else.9341: #pc 18428
	addi	%x6, %x0, 1  #0 pc 18428
	lw	%x7, 0(%x2)  #1613 pc 18432
	lw	%x29, 4(%x2)  #1613 pc 18436
	sw	%x1, 24(%x2)  #1613 pc 18440
	lw	%x30, 0(%x29)  #1613 pc 18444
	addi	%x2, %x2, 28  #1613 pc 18448
	jalr	%x1, %x30, 0  #1613 pc 18452
	addi	%x2, %x2, -28  #1613 pc 18456
	lw	%x1, 24(%x2)  #1613 pc 18460
	beq	%x6, %x0, 12  #1613 pc 18464
	j	be_else.9342 #pc 18468
	nop #pc 18472
	lw	%x6, 16(%x2)  #1616 pc 18476
	addi	%x6, %x6, 1  #1616 pc 18480
	lw	%x7, 8(%x2)  #1616 pc 18484
	lw	%x29, 12(%x2)  #1616 pc 18488
	lw	%x30, 0(%x29)  #1616 pc 18492
	jalr	%x0, %x30, 0  #1616 pc 18496
	nop #pc 18500
be_else.9342: #pc 18504
	addi	%x6, %x0, 1  #0 pc 18504
	ret #pc 18508
	nop #pc 18512
solve_each_element.2891:  #pc 18516
	lw	%x9, 36(%x29)  #1629 pc 18516
	lw	%x10, 32(%x29)  #1629 pc 18520
	lw	%x11, 28(%x29)  #1629 pc 18524
	lw	%x12, 24(%x29)  #1629 pc 18528
	lw	%x13, 20(%x29)  #1629 pc 18532
	lw	%x14, 16(%x29)  #1629 pc 18536
	lw	%x15, 12(%x29)  #1629 pc 18540
	lw	%x16, 8(%x29)  #1629 pc 18544
	lw	%x17, 4(%x29)  #1629 pc 18548
	slli	%x18, %x6, 2  #1629 pc 18552
	add	%x31, %x18, %x7  #1629 pc 18556
	lw	%x18, 0(%x31)  #1629 pc 18560
	addi	%x31, %x0, -1  #pc 18564
	beq	%x18, %x31, 12  #1630 pc 18568
	j	be_else.9343 #pc 18572
	nop #pc 18576
	ret #pc 18580
	nop #pc 18584
be_else.9343: #pc 18588
	sw	%x14, 0(%x2)  #1632 pc 18588
	sw	%x16, 4(%x2)  #1632 pc 18592
	sw	%x15, 8(%x2)  #1632 pc 18596
	sw	%x17, 12(%x2)  #1632 pc 18600
	sw	%x10, 16(%x2)  #1632 pc 18604
	sw	%x9, 20(%x2)  #1632 pc 18608
	sw	%x11, 24(%x2)  #1632 pc 18612
	sw	%x8, 28(%x2)  #1632 pc 18616
	sw	%x7, 32(%x2)  #1632 pc 18620
	sw	%x29, 36(%x2)  #1632 pc 18624
	sw	%x6, 40(%x2)  #1632 pc 18628
	sw	%x13, 44(%x2)  #1632 pc 18632
	sw	%x18, 48(%x2)  #1632 pc 18636
	addi	%x7, %x8, 0  #0 pc 18640
	addi	%x6, %x18, 0  #0 pc 18644
	addi	%x29, %x12, 0  #0 pc 18648
	addi	%x8, %x10, 0  #0 pc 18652
	sw	%x1, 52(%x2)  #1632 pc 18656
	lw	%x30, 0(%x29)  #1632 pc 18660
	addi	%x2, %x2, 56  #1632 pc 18664
	jalr	%x1, %x30, 0  #1632 pc 18668
	addi	%x2, %x2, -56  #1632 pc 18672
	lw	%x1, 52(%x2)  #1632 pc 18676
	beq	%x6, %x0, 12  #1633 pc 18680
	j	be_else.9345 #pc 18684
	nop #pc 18688
	lw	%x6, 48(%x2)  #1661 pc 18692
	slli	%x6, %x6, 2  #1661 pc 18696
	lw	%x7, 44(%x2)  #1661 pc 18700
	add	%x31, %x6, %x7  #1661 pc 18704
	lw	%x6, 0(%x31)  #1661 pc 18708
	sw	%x1, 52(%x2)  #1661 pc 18712
	addi	%x2, %x2, 56  #1661 pc 18716
	jal	%x1, o_isinvert.2665  #1661 pc 18720
	addi	%x2, %x2, -56  #1661 pc 18724
	lw	%x1, 52(%x2) #1661 pc 18728
	beq	%x6, %x0, 12  #1661 pc 18732
	j	be_else.9346 #pc 18736
	nop #pc 18740
	ret #pc 18744
	nop #pc 18748
be_else.9346: #pc 18752
	lw	%x6, 40(%x2)  #1662 pc 18752
	addi	%x6, %x6, 1  #1662 pc 18756
	lw	%x7, 32(%x2)  #1662 pc 18760
	lw	%x8, 28(%x2)  #1662 pc 18764
	lw	%x29, 36(%x2)  #1662 pc 18768
	lw	%x30, 0(%x29)  #1662 pc 18772
	jalr	%x0, %x30, 0  #1662 pc 18776
	nop #pc 18780
be_else.9345: #pc 18784
	lw	%x7, 24(%x2)  #1637 pc 18784
	flw	%f1, 0(%x7)  #1637 pc 18788
	fmv	%f0, l.6244  #0 pc 18792
	sw	%x6, 52(%x2)  #1639 pc 18796
	fsw	%f1, 56(%x2)  #1639 pc 18800
	sw	%x1, 64(%x2)  #1639 pc 18804
	addi	%x2, %x2, 68  #1639 pc 18808
	jal	%x1, fless.2521  #1639 pc 18812
	addi	%x2, %x2, -68  #1639 pc 18816
	lw	%x1, 64(%x2) #1639 pc 18820
	beq	%x6, %x0, 12  #1639 pc 18824
	j	be_else.9348 #pc 18828
	nop #pc 18832
	j	be_cont.9349 #pc 18836
	nop #pc 18840
be_else.9348: #pc 18844
	lw	%x6, 20(%x2)  #1640 pc 18844
	flw	%f1, 0(%x6)  #1640 pc 18848
	flw	%f0, 56(%x2)  #1640 pc 18852
	sw	%x1, 64(%x2)  #1640 pc 18856
	addi	%x2, %x2, 68  #1640 pc 18860
	jal	%x1, fless.2521  #1640 pc 18864
	addi	%x2, %x2, -68  #1640 pc 18868
	lw	%x1, 64(%x2) #1640 pc 18872
	beq	%x6, %x0, 12  #1640 pc 18876
	j	be_else.9350 #pc 18880
	nop #pc 18884
	j	be_cont.9351 #pc 18888
	nop #pc 18892
be_else.9350: #pc 18896
	fmv	%f0, l.6646  #0 pc 18896
	flw	%f1, 56(%x2)  #1642 pc 18900
	fadd	%f0, %f1, %f0  #1642 pc 18904
	lw	%x6, 28(%x2)  #1643 pc 18908
	flw	%f1, 0(%x6)  #1643 pc 18912
	fmul	%f1, %f1, %f0  #1643 pc 18916
	lw	%x7, 16(%x2)  #1643 pc 18920
	flw	%f2, 0(%x7)  #1643 pc 18924
	fadd	%f1, %f1, %f2  #1643 pc 18928
	flw	%f2, 4(%x6)  #1644 pc 18932
	fmul	%f2, %f2, %f0  #1644 pc 18936
	flw	%f3, 4(%x7)  #1644 pc 18940
	fadd	%f2, %f2, %f3  #1644 pc 18944
	flw	%f3, 8(%x6)  #1645 pc 18948
	fmul	%f3, %f3, %f0  #1645 pc 18952
	flw	%f4, 8(%x7)  #1645 pc 18956
	fadd	%f3, %f3, %f4  #1645 pc 18960
	addi	%x7, %x0, 0  #0 pc 18964
	lw	%x8, 32(%x2)  #1646 pc 18968
	lw	%x29, 12(%x2)  #1646 pc 18972
	fsw	%f3, 64(%x2)  #1646 pc 18976
	fsw	%f2, 72(%x2)  #1646 pc 18980
	fsw	%f1, 80(%x2)  #1646 pc 18984
	fsw	%f0, 88(%x2)  #1646 pc 18988
	addi	%x6, %x7, 0  #0 pc 18992
	addi	%x7, %x8, 0  #0 pc 18996
	fadd	%f0, %f1, %f30  #0 pc 19000
	fadd	%f1, %f2, %f30  #0 pc 19004
	fadd	%f2, %f3, %f30  #0 pc 19008
	sw	%x1, 96(%x2)  #1646 pc 19012
	lw	%x30, 0(%x29)  #1646 pc 19016
	addi	%x2, %x2, 100  #1646 pc 19020
	jalr	%x1, %x30, 0  #1646 pc 19024
	addi	%x2, %x2, -100  #1646 pc 19028
	lw	%x1, 96(%x2)  #1646 pc 19032
	beq	%x6, %x0, 12  #1646 pc 19036
	j	be_else.9352 #pc 19040
	nop #pc 19044
	j	be_cont.9353 #pc 19048
	nop #pc 19052
be_else.9352: #pc 19056
	lw	%x6, 20(%x2)  #1648 pc 19056
	flw	%f0, 88(%x2)  #1648 pc 19060
	fsw	%f0, 0(%x6)  #1648 pc 19064
	flw	%f0, 80(%x2)  #1649 pc 19068
	flw	%f1, 72(%x2)  #1649 pc 19072
	flw	%f2, 64(%x2)  #1649 pc 19076
	lw	%x6, 8(%x2)  #1649 pc 19080
	sw	%x1, 96(%x2)  #1649 pc 19084
	addi	%x2, %x2, 100  #1649 pc 19088
	jal	%x1, vecset.2621  #1649 pc 19092
	addi	%x2, %x2, -100  #1649 pc 19096
	lw	%x1, 96(%x2) #1649 pc 19100
	lw	%x6, 4(%x2)  #1650 pc 19104
	lw	%x7, 48(%x2)  #1650 pc 19108
	sw	%x7, 0(%x6)  #1650 pc 19112
	lw	%x6, 0(%x2)  #1651 pc 19116
	lw	%x7, 52(%x2)  #1651 pc 19120
	sw	%x7, 0(%x6)  #1651 pc 19124
be_cont.9353: #pc 19128
be_cont.9351: #pc 19128
be_cont.9349: #pc 19128
	lw	%x6, 40(%x2)  #1657 pc 19128
	addi	%x6, %x6, 1  #1657 pc 19132
	lw	%x7, 32(%x2)  #1657 pc 19136
	lw	%x8, 28(%x2)  #1657 pc 19140
	lw	%x29, 36(%x2)  #1657 pc 19144
	lw	%x30, 0(%x29)  #1657 pc 19148
	jalr	%x0, %x30, 0  #1657 pc 19152
	nop #pc 19156
solve_one_or_network.2895:  #pc 19160
	lw	%x9, 8(%x29)  #1670 pc 19160
	lw	%x10, 4(%x29)  #1670 pc 19164
	slli	%x11, %x6, 2  #1670 pc 19168
	add	%x31, %x11, %x7  #1670 pc 19172
	lw	%x11, 0(%x31)  #1670 pc 19176
	addi	%x31, %x0, -1  #pc 19180
	beq	%x11, %x31, 12  #1671 pc 19184
	j	be_else.9354 #pc 19188
	nop #pc 19192
	ret #pc 19196
	nop #pc 19200
be_else.9354: #pc 19204
	slli	%x11, %x11, 2  #1672 pc 19204
	add	%x31, %x11, %x10  #1672 pc 19208
	lw	%x10, 0(%x31)  #1672 pc 19212
	addi	%x11, %x0, 0  #0 pc 19216
	sw	%x8, 0(%x2)  #1673 pc 19220
	sw	%x7, 4(%x2)  #1673 pc 19224
	sw	%x29, 8(%x2)  #1673 pc 19228
	sw	%x6, 12(%x2)  #1673 pc 19232
	addi	%x7, %x10, 0  #0 pc 19236
	addi	%x6, %x11, 0  #0 pc 19240
	addi	%x29, %x9, 0  #0 pc 19244
	sw	%x1, 16(%x2)  #1673 pc 19248
	lw	%x30, 0(%x29)  #1673 pc 19252
	addi	%x2, %x2, 20  #1673 pc 19256
	jalr	%x1, %x30, 0  #1673 pc 19260
	addi	%x2, %x2, -20  #1673 pc 19264
	lw	%x1, 16(%x2)  #1673 pc 19268
	lw	%x6, 12(%x2)  #1674 pc 19272
	addi	%x6, %x6, 1  #1674 pc 19276
	lw	%x7, 4(%x2)  #1674 pc 19280
	lw	%x8, 0(%x2)  #1674 pc 19284
	lw	%x29, 8(%x2)  #1674 pc 19288
	lw	%x30, 0(%x29)  #1674 pc 19292
	jalr	%x0, %x30, 0  #1674 pc 19296
	nop #pc 19300
trace_or_matrix.2899:  #pc 19304
	lw	%x9, 20(%x29)  #1680 pc 19304
	lw	%x10, 16(%x29)  #1680 pc 19308
	lw	%x11, 12(%x29)  #1680 pc 19312
	lw	%x12, 8(%x29)  #1680 pc 19316
	lw	%x13, 4(%x29)  #1680 pc 19320
	slli	%x14, %x6, 2  #1680 pc 19324
	add	%x31, %x14, %x7  #1680 pc 19328
	lw	%x14, 0(%x31)  #1680 pc 19332
	lw	%x15, 0(%x14)  #1681 pc 19336
	addi	%x31, %x0, -1  #pc 19340
	beq	%x15, %x31, 12  #1682 pc 19344
	j	be_else.9356 #pc 19348
	nop #pc 19352
	ret #pc 19356
	nop #pc 19360
be_else.9356: #pc 19364
	sw	%x8, 0(%x2)  #1685 pc 19364
	sw	%x7, 4(%x2)  #1685 pc 19368
	sw	%x29, 8(%x2)  #1685 pc 19372
	sw	%x6, 12(%x2)  #1685 pc 19376
	addi	%x31, %x0, 99  #pc 19380
	beq	%x15, %x31, 12  #1685 pc 19384
	j	be_else.9358 #pc 19388
	nop #pc 19392
	addi	%x9, %x0, 1  #0 pc 19396
	addi	%x7, %x14, 0  #0 pc 19400
	addi	%x6, %x9, 0  #0 pc 19404
	addi	%x29, %x13, 0  #0 pc 19408
	sw	%x1, 16(%x2)  #1686 pc 19412
	lw	%x30, 0(%x29)  #1686 pc 19416
	addi	%x2, %x2, 20  #1686 pc 19420
	jalr	%x1, %x30, 0  #1686 pc 19424
	addi	%x2, %x2, -20  #1686 pc 19428
	lw	%x1, 16(%x2)  #1686 pc 19432
	j	be_cont.9359 #pc 19436
	nop #pc 19440
be_else.9358: #pc 19444
	sw	%x14, 16(%x2)  #1690 pc 19444
	sw	%x13, 20(%x2)  #1690 pc 19448
	sw	%x9, 24(%x2)  #1690 pc 19452
	sw	%x11, 28(%x2)  #1690 pc 19456
	addi	%x7, %x8, 0  #0 pc 19460
	addi	%x6, %x15, 0  #0 pc 19464
	addi	%x29, %x12, 0  #0 pc 19468
	addi	%x8, %x10, 0  #0 pc 19472
	sw	%x1, 32(%x2)  #1690 pc 19476
	lw	%x30, 0(%x29)  #1690 pc 19480
	addi	%x2, %x2, 36  #1690 pc 19484
	jalr	%x1, %x30, 0  #1690 pc 19488
	addi	%x2, %x2, -36  #1690 pc 19492
	lw	%x1, 32(%x2)  #1690 pc 19496
	beq	%x6, %x0, 12  #1691 pc 19500
	j	be_else.9360 #pc 19504
	nop #pc 19508
	j	be_cont.9361 #pc 19512
	nop #pc 19516
be_else.9360: #pc 19520
	lw	%x6, 28(%x2)  #1692 pc 19520
	flw	%f0, 0(%x6)  #1692 pc 19524
	lw	%x6, 24(%x2)  #1693 pc 19528
	flw	%f1, 0(%x6)  #1693 pc 19532
	sw	%x1, 32(%x2)  #1693 pc 19536
	addi	%x2, %x2, 36  #1693 pc 19540
	jal	%x1, fless.2521  #1693 pc 19544
	addi	%x2, %x2, -36  #1693 pc 19548
	lw	%x1, 32(%x2) #1693 pc 19552
	beq	%x6, %x0, 12  #1693 pc 19556
	j	be_else.9362 #pc 19560
	nop #pc 19564
	j	be_cont.9363 #pc 19568
	nop #pc 19572
be_else.9362: #pc 19576
	addi	%x6, %x0, 1  #0 pc 19576
	lw	%x7, 16(%x2)  #1694 pc 19580
	lw	%x8, 0(%x2)  #1694 pc 19584
	lw	%x29, 20(%x2)  #1694 pc 19588
	sw	%x1, 32(%x2)  #1694 pc 19592
	lw	%x30, 0(%x29)  #1694 pc 19596
	addi	%x2, %x2, 36  #1694 pc 19600
	jalr	%x1, %x30, 0  #1694 pc 19604
	addi	%x2, %x2, -36  #1694 pc 19608
	lw	%x1, 32(%x2)  #1694 pc 19612
be_cont.9363: #pc 19616
be_cont.9361: #pc 19616
be_cont.9359: #pc 19616
	lw	%x6, 12(%x2)  #1698 pc 19616
	addi	%x6, %x6, 1  #1698 pc 19620
	lw	%x7, 4(%x2)  #1698 pc 19624
	lw	%x8, 0(%x2)  #1698 pc 19628
	lw	%x29, 8(%x2)  #1698 pc 19632
	lw	%x30, 0(%x29)  #1698 pc 19636
	jalr	%x0, %x30, 0  #1698 pc 19640
	nop #pc 19644
judge_intersection.2903:  #pc 19648
	lw	%x7, 12(%x29)  #0 pc 19648
	lw	%x8, 8(%x29)  #0 pc 19652
	lw	%x9, 4(%x29)  #0 pc 19656
	fmv	%f0, l.6683  #0 pc 19660
	fsw	%f0, 0(%x8)  #1707 pc 19664
	addi	%x10, %x0, 0  #0 pc 19668
	lw	%x9, 0(%x9)  #1708 pc 19672
	sw	%x8, 0(%x2)  #1708 pc 19676
	addi	%x8, %x6, 0  #0 pc 19680
	addi	%x29, %x7, 0  #0 pc 19684
	addi	%x7, %x9, 0  #0 pc 19688
	addi	%x6, %x10, 0  #0 pc 19692
	sw	%x1, 4(%x2)  #1708 pc 19696
	lw	%x30, 0(%x29)  #1708 pc 19700
	addi	%x2, %x2, 8  #1708 pc 19704
	jalr	%x1, %x30, 0  #1708 pc 19708
	addi	%x2, %x2, -8  #1708 pc 19712
	lw	%x1, 4(%x2)  #1708 pc 19716
	lw	%x6, 0(%x2)  #1709 pc 19720
	flw	%f1, 0(%x6)  #1709 pc 19724
	fmv	%f0, l.6660  #0 pc 19728
	fsw	%f1, 8(%x2)  #1711 pc 19732
	sw	%x1, 16(%x2)  #1711 pc 19736
	addi	%x2, %x2, 20  #1711 pc 19740
	jal	%x1, fless.2521  #1711 pc 19744
	addi	%x2, %x2, -20  #1711 pc 19748
	lw	%x1, 16(%x2) #1711 pc 19752
	beq	%x6, %x0, 12  #1711 pc 19756
	j	be_else.9365 #pc 19760
	nop #pc 19764
	addi	%x6, %x0, 0  #0 pc 19768
	ret #pc 19772
	nop #pc 19776
be_else.9365: #pc 19780
	fmv	%f1, l.6689  #0 pc 19780
	flw	%f0, 8(%x2)  #1712 pc 19784
	j	fless.2521  #1712 pc 19788
	nop #pc 19792
solve_each_element_fast.2905:  #pc 19796
	lw	%x9, 36(%x29)  #1722 pc 19796
	lw	%x10, 32(%x29)  #1722 pc 19800
	lw	%x11, 28(%x29)  #1722 pc 19804
	lw	%x12, 24(%x29)  #1722 pc 19808
	lw	%x13, 20(%x29)  #1722 pc 19812
	lw	%x14, 16(%x29)  #1722 pc 19816
	lw	%x15, 12(%x29)  #1722 pc 19820
	lw	%x16, 8(%x29)  #1722 pc 19824
	lw	%x17, 4(%x29)  #1722 pc 19828
	sw	%x14, 0(%x2)  #1722 pc 19832
	sw	%x16, 4(%x2)  #1722 pc 19836
	sw	%x15, 8(%x2)  #1722 pc 19840
	sw	%x17, 12(%x2)  #1722 pc 19844
	sw	%x10, 16(%x2)  #1722 pc 19848
	sw	%x9, 20(%x2)  #1722 pc 19852
	sw	%x12, 24(%x2)  #1722 pc 19856
	sw	%x29, 28(%x2)  #1722 pc 19860
	sw	%x13, 32(%x2)  #1722 pc 19864
	sw	%x8, 36(%x2)  #1722 pc 19868
	sw	%x11, 40(%x2)  #1722 pc 19872
	sw	%x7, 44(%x2)  #1722 pc 19876
	sw	%x6, 48(%x2)  #1722 pc 19880
	addi	%x6, %x8, 0  #0 pc 19884
	sw	%x1, 52(%x2)  #1722 pc 19888
	addi	%x2, %x2, 56  #1722 pc 19892
	jal	%x1, d_vec.2720  #1722 pc 19896
	addi	%x2, %x2, -56  #1722 pc 19900
	lw	%x1, 52(%x2) #1722 pc 19904
	lw	%x7, 48(%x2)  #1723 pc 19908
	slli	%x8, %x7, 2  #1723 pc 19912
	lw	%x9, 44(%x2)  #1723 pc 19916
	add	%x31, %x8, %x9  #1723 pc 19920
	lw	%x8, 0(%x31)  #1723 pc 19924
	addi	%x31, %x0, -1  #pc 19928
	beq	%x8, %x31, 12  #1724 pc 19932
	j	be_else.9366 #pc 19936
	nop #pc 19940
	ret #pc 19944
	nop #pc 19948
be_else.9366: #pc 19952
	lw	%x10, 36(%x2)  #1726 pc 19952
	lw	%x29, 40(%x2)  #1726 pc 19956
	sw	%x6, 52(%x2)  #1726 pc 19960
	sw	%x8, 56(%x2)  #1726 pc 19964
	addi	%x7, %x10, 0  #0 pc 19968
	addi	%x6, %x8, 0  #0 pc 19972
	sw	%x1, 60(%x2)  #1726 pc 19976
	lw	%x30, 0(%x29)  #1726 pc 19980
	addi	%x2, %x2, 64  #1726 pc 19984
	jalr	%x1, %x30, 0  #1726 pc 19988
	addi	%x2, %x2, -64  #1726 pc 19992
	lw	%x1, 60(%x2)  #1726 pc 19996
	beq	%x6, %x0, 12  #1727 pc 20000
	j	be_else.9368 #pc 20004
	nop #pc 20008
	lw	%x6, 56(%x2)  #1755 pc 20012
	slli	%x6, %x6, 2  #1755 pc 20016
	lw	%x7, 32(%x2)  #1755 pc 20020
	add	%x31, %x6, %x7  #1755 pc 20024
	lw	%x6, 0(%x31)  #1755 pc 20028
	sw	%x1, 60(%x2)  #1755 pc 20032
	addi	%x2, %x2, 64  #1755 pc 20036
	jal	%x1, o_isinvert.2665  #1755 pc 20040
	addi	%x2, %x2, -64  #1755 pc 20044
	lw	%x1, 60(%x2) #1755 pc 20048
	beq	%x6, %x0, 12  #1755 pc 20052
	j	be_else.9369 #pc 20056
	nop #pc 20060
	ret #pc 20064
	nop #pc 20068
be_else.9369: #pc 20072
	lw	%x6, 48(%x2)  #1756 pc 20072
	addi	%x6, %x6, 1  #1756 pc 20076
	lw	%x7, 44(%x2)  #1756 pc 20080
	lw	%x8, 36(%x2)  #1756 pc 20084
	lw	%x29, 28(%x2)  #1756 pc 20088
	lw	%x30, 0(%x29)  #1756 pc 20092
	jalr	%x0, %x30, 0  #1756 pc 20096
	nop #pc 20100
be_else.9368: #pc 20104
	lw	%x7, 24(%x2)  #1731 pc 20104
	flw	%f1, 0(%x7)  #1731 pc 20108
	fmv	%f0, l.6244  #0 pc 20112
	sw	%x6, 60(%x2)  #1733 pc 20116
	fsw	%f1, 64(%x2)  #1733 pc 20120
	sw	%x1, 72(%x2)  #1733 pc 20124
	addi	%x2, %x2, 76  #1733 pc 20128
	jal	%x1, fless.2521  #1733 pc 20132
	addi	%x2, %x2, -76  #1733 pc 20136
	lw	%x1, 72(%x2) #1733 pc 20140
	beq	%x6, %x0, 12  #1733 pc 20144
	j	be_else.9371 #pc 20148
	nop #pc 20152
	j	be_cont.9372 #pc 20156
	nop #pc 20160
be_else.9371: #pc 20164
	lw	%x6, 20(%x2)  #1734 pc 20164
	flw	%f1, 0(%x6)  #1734 pc 20168
	flw	%f0, 64(%x2)  #1734 pc 20172
	sw	%x1, 72(%x2)  #1734 pc 20176
	addi	%x2, %x2, 76  #1734 pc 20180
	jal	%x1, fless.2521  #1734 pc 20184
	addi	%x2, %x2, -76  #1734 pc 20188
	lw	%x1, 72(%x2) #1734 pc 20192
	beq	%x6, %x0, 12  #1734 pc 20196
	j	be_else.9373 #pc 20200
	nop #pc 20204
	j	be_cont.9374 #pc 20208
	nop #pc 20212
be_else.9373: #pc 20216
	fmv	%f0, l.6646  #0 pc 20216
	flw	%f1, 64(%x2)  #1736 pc 20220
	fadd	%f0, %f1, %f0  #1736 pc 20224
	lw	%x6, 52(%x2)  #1737 pc 20228
	flw	%f1, 0(%x6)  #1737 pc 20232
	fmul	%f1, %f1, %f0  #1737 pc 20236
	lw	%x7, 16(%x2)  #1737 pc 20240
	flw	%f2, 0(%x7)  #1737 pc 20244
	fadd	%f1, %f1, %f2  #1737 pc 20248
	flw	%f2, 4(%x6)  #1738 pc 20252
	fmul	%f2, %f2, %f0  #1738 pc 20256
	flw	%f3, 4(%x7)  #1738 pc 20260
	fadd	%f2, %f2, %f3  #1738 pc 20264
	flw	%f3, 8(%x6)  #1739 pc 20268
	fmul	%f3, %f3, %f0  #1739 pc 20272
	flw	%f4, 8(%x7)  #1739 pc 20276
	fadd	%f3, %f3, %f4  #1739 pc 20280
	addi	%x6, %x0, 0  #0 pc 20284
	lw	%x7, 44(%x2)  #1740 pc 20288
	lw	%x29, 12(%x2)  #1740 pc 20292
	fsw	%f3, 72(%x2)  #1740 pc 20296
	fsw	%f2, 80(%x2)  #1740 pc 20300
	fsw	%f1, 88(%x2)  #1740 pc 20304
	fsw	%f0, 96(%x2)  #1740 pc 20308
	fadd	%f0, %f1, %f30  #0 pc 20312
	fadd	%f1, %f2, %f30  #0 pc 20316
	fadd	%f2, %f3, %f30  #0 pc 20320
	sw	%x1, 104(%x2)  #1740 pc 20324
	lw	%x30, 0(%x29)  #1740 pc 20328
	addi	%x2, %x2, 108  #1740 pc 20332
	jalr	%x1, %x30, 0  #1740 pc 20336
	addi	%x2, %x2, -108  #1740 pc 20340
	lw	%x1, 104(%x2)  #1740 pc 20344
	beq	%x6, %x0, 12  #1740 pc 20348
	j	be_else.9375 #pc 20352
	nop #pc 20356
	j	be_cont.9376 #pc 20360
	nop #pc 20364
be_else.9375: #pc 20368
	lw	%x6, 20(%x2)  #1742 pc 20368
	flw	%f0, 96(%x2)  #1742 pc 20372
	fsw	%f0, 0(%x6)  #1742 pc 20376
	flw	%f0, 88(%x2)  #1743 pc 20380
	flw	%f1, 80(%x2)  #1743 pc 20384
	flw	%f2, 72(%x2)  #1743 pc 20388
	lw	%x6, 8(%x2)  #1743 pc 20392
	sw	%x1, 104(%x2)  #1743 pc 20396
	addi	%x2, %x2, 108  #1743 pc 20400
	jal	%x1, vecset.2621  #1743 pc 20404
	addi	%x2, %x2, -108  #1743 pc 20408
	lw	%x1, 104(%x2) #1743 pc 20412
	lw	%x6, 4(%x2)  #1744 pc 20416
	lw	%x7, 56(%x2)  #1744 pc 20420
	sw	%x7, 0(%x6)  #1744 pc 20424
	lw	%x6, 0(%x2)  #1745 pc 20428
	lw	%x7, 60(%x2)  #1745 pc 20432
	sw	%x7, 0(%x6)  #1745 pc 20436
be_cont.9376: #pc 20440
be_cont.9374: #pc 20440
be_cont.9372: #pc 20440
	lw	%x6, 48(%x2)  #1751 pc 20440
	addi	%x6, %x6, 1  #1751 pc 20444
	lw	%x7, 44(%x2)  #1751 pc 20448
	lw	%x8, 36(%x2)  #1751 pc 20452
	lw	%x29, 28(%x2)  #1751 pc 20456
	lw	%x30, 0(%x29)  #1751 pc 20460
	jalr	%x0, %x30, 0  #1751 pc 20464
	nop #pc 20468
solve_one_or_network_fast.2909:  #pc 20472
	lw	%x9, 8(%x29)  #1763 pc 20472
	lw	%x10, 4(%x29)  #1763 pc 20476
	slli	%x11, %x6, 2  #1763 pc 20480
	add	%x31, %x11, %x7  #1763 pc 20484
	lw	%x11, 0(%x31)  #1763 pc 20488
	addi	%x31, %x0, -1  #pc 20492
	beq	%x11, %x31, 12  #1764 pc 20496
	j	be_else.9377 #pc 20500
	nop #pc 20504
	ret #pc 20508
	nop #pc 20512
be_else.9377: #pc 20516
	slli	%x11, %x11, 2  #1765 pc 20516
	add	%x31, %x11, %x10  #1765 pc 20520
	lw	%x10, 0(%x31)  #1765 pc 20524
	addi	%x11, %x0, 0  #0 pc 20528
	sw	%x8, 0(%x2)  #1766 pc 20532
	sw	%x7, 4(%x2)  #1766 pc 20536
	sw	%x29, 8(%x2)  #1766 pc 20540
	sw	%x6, 12(%x2)  #1766 pc 20544
	addi	%x7, %x10, 0  #0 pc 20548
	addi	%x6, %x11, 0  #0 pc 20552
	addi	%x29, %x9, 0  #0 pc 20556
	sw	%x1, 16(%x2)  #1766 pc 20560
	lw	%x30, 0(%x29)  #1766 pc 20564
	addi	%x2, %x2, 20  #1766 pc 20568
	jalr	%x1, %x30, 0  #1766 pc 20572
	addi	%x2, %x2, -20  #1766 pc 20576
	lw	%x1, 16(%x2)  #1766 pc 20580
	lw	%x6, 12(%x2)  #1767 pc 20584
	addi	%x6, %x6, 1  #1767 pc 20588
	lw	%x7, 4(%x2)  #1767 pc 20592
	lw	%x8, 0(%x2)  #1767 pc 20596
	lw	%x29, 8(%x2)  #1767 pc 20600
	lw	%x30, 0(%x29)  #1767 pc 20604
	jalr	%x0, %x30, 0  #1767 pc 20608
	nop #pc 20612
trace_or_matrix_fast.2913:  #pc 20616
	lw	%x9, 16(%x29)  #1773 pc 20616
	lw	%x10, 12(%x29)  #1773 pc 20620
	lw	%x11, 8(%x29)  #1773 pc 20624
	lw	%x12, 4(%x29)  #1773 pc 20628
	slli	%x13, %x6, 2  #1773 pc 20632
	add	%x31, %x13, %x7  #1773 pc 20636
	lw	%x13, 0(%x31)  #1773 pc 20640
	lw	%x14, 0(%x13)  #1774 pc 20644
	addi	%x31, %x0, -1  #pc 20648
	beq	%x14, %x31, 12  #1775 pc 20652
	j	be_else.9379 #pc 20656
	nop #pc 20660
	ret #pc 20664
	nop #pc 20668
be_else.9379: #pc 20672
	sw	%x8, 0(%x2)  #1778 pc 20672
	sw	%x7, 4(%x2)  #1778 pc 20676
	sw	%x29, 8(%x2)  #1778 pc 20680
	sw	%x6, 12(%x2)  #1778 pc 20684
	addi	%x31, %x0, 99  #pc 20688
	beq	%x14, %x31, 12  #1778 pc 20692
	j	be_else.9381 #pc 20696
	nop #pc 20700
	addi	%x9, %x0, 1  #0 pc 20704
	addi	%x7, %x13, 0  #0 pc 20708
	addi	%x6, %x9, 0  #0 pc 20712
	addi	%x29, %x12, 0  #0 pc 20716
	sw	%x1, 16(%x2)  #1779 pc 20720
	lw	%x30, 0(%x29)  #1779 pc 20724
	addi	%x2, %x2, 20  #1779 pc 20728
	jalr	%x1, %x30, 0  #1779 pc 20732
	addi	%x2, %x2, -20  #1779 pc 20736
	lw	%x1, 16(%x2)  #1779 pc 20740
	j	be_cont.9382 #pc 20744
	nop #pc 20748
be_else.9381: #pc 20752
	sw	%x13, 16(%x2)  #1783 pc 20752
	sw	%x12, 20(%x2)  #1783 pc 20756
	sw	%x9, 24(%x2)  #1783 pc 20760
	sw	%x11, 28(%x2)  #1783 pc 20764
	addi	%x7, %x8, 0  #0 pc 20768
	addi	%x6, %x14, 0  #0 pc 20772
	addi	%x29, %x10, 0  #0 pc 20776
	sw	%x1, 32(%x2)  #1783 pc 20780
	lw	%x30, 0(%x29)  #1783 pc 20784
	addi	%x2, %x2, 36  #1783 pc 20788
	jalr	%x1, %x30, 0  #1783 pc 20792
	addi	%x2, %x2, -36  #1783 pc 20796
	lw	%x1, 32(%x2)  #1783 pc 20800
	beq	%x6, %x0, 12  #1784 pc 20804
	j	be_else.9383 #pc 20808
	nop #pc 20812
	j	be_cont.9384 #pc 20816
	nop #pc 20820
be_else.9383: #pc 20824
	lw	%x6, 28(%x2)  #1785 pc 20824
	flw	%f0, 0(%x6)  #1785 pc 20828
	lw	%x6, 24(%x2)  #1786 pc 20832
	flw	%f1, 0(%x6)  #1786 pc 20836
	sw	%x1, 32(%x2)  #1786 pc 20840
	addi	%x2, %x2, 36  #1786 pc 20844
	jal	%x1, fless.2521  #1786 pc 20848
	addi	%x2, %x2, -36  #1786 pc 20852
	lw	%x1, 32(%x2) #1786 pc 20856
	beq	%x6, %x0, 12  #1786 pc 20860
	j	be_else.9385 #pc 20864
	nop #pc 20868
	j	be_cont.9386 #pc 20872
	nop #pc 20876
be_else.9385: #pc 20880
	addi	%x6, %x0, 1  #0 pc 20880
	lw	%x7, 16(%x2)  #1787 pc 20884
	lw	%x8, 0(%x2)  #1787 pc 20888
	lw	%x29, 20(%x2)  #1787 pc 20892
	sw	%x1, 32(%x2)  #1787 pc 20896
	lw	%x30, 0(%x29)  #1787 pc 20900
	addi	%x2, %x2, 36  #1787 pc 20904
	jalr	%x1, %x30, 0  #1787 pc 20908
	addi	%x2, %x2, -36  #1787 pc 20912
	lw	%x1, 32(%x2)  #1787 pc 20916
be_cont.9386: #pc 20920
be_cont.9384: #pc 20920
be_cont.9382: #pc 20920
	lw	%x6, 12(%x2)  #1791 pc 20920
	addi	%x6, %x6, 1  #1791 pc 20924
	lw	%x7, 4(%x2)  #1791 pc 20928
	lw	%x8, 0(%x2)  #1791 pc 20932
	lw	%x29, 8(%x2)  #1791 pc 20936
	lw	%x30, 0(%x29)  #1791 pc 20940
	jalr	%x0, %x30, 0  #1791 pc 20944
	nop #pc 20948
judge_intersection_fast.2917:  #pc 20952
	lw	%x7, 12(%x29)  #0 pc 20952
	lw	%x8, 8(%x29)  #0 pc 20956
	lw	%x9, 4(%x29)  #0 pc 20960
	fmv	%f0, l.6683  #0 pc 20964
	fsw	%f0, 0(%x8)  #1798 pc 20968
	addi	%x10, %x0, 0  #0 pc 20972
	lw	%x9, 0(%x9)  #1799 pc 20976
	sw	%x8, 0(%x2)  #1799 pc 20980
	addi	%x8, %x6, 0  #0 pc 20984
	addi	%x29, %x7, 0  #0 pc 20988
	addi	%x7, %x9, 0  #0 pc 20992
	addi	%x6, %x10, 0  #0 pc 20996
	sw	%x1, 4(%x2)  #1799 pc 21000
	lw	%x30, 0(%x29)  #1799 pc 21004
	addi	%x2, %x2, 8  #1799 pc 21008
	jalr	%x1, %x30, 0  #1799 pc 21012
	addi	%x2, %x2, -8  #1799 pc 21016
	lw	%x1, 4(%x2)  #1799 pc 21020
	lw	%x6, 0(%x2)  #1800 pc 21024
	flw	%f1, 0(%x6)  #1800 pc 21028
	fmv	%f0, l.6660  #0 pc 21032
	fsw	%f1, 8(%x2)  #1802 pc 21036
	sw	%x1, 16(%x2)  #1802 pc 21040
	addi	%x2, %x2, 20  #1802 pc 21044
	jal	%x1, fless.2521  #1802 pc 21048
	addi	%x2, %x2, -20  #1802 pc 21052
	lw	%x1, 16(%x2) #1802 pc 21056
	beq	%x6, %x0, 12  #1802 pc 21060
	j	be_else.9388 #pc 21064
	nop #pc 21068
	addi	%x6, %x0, 0  #0 pc 21072
	ret #pc 21076
	nop #pc 21080
be_else.9388: #pc 21084
	fmv	%f1, l.6689  #0 pc 21084
	flw	%f0, 8(%x2)  #1803 pc 21088
	j	fless.2521  #1803 pc 21092
	nop #pc 21096
get_nvector_rect.2919:  #pc 21100
	lw	%x7, 8(%x29)  #0 pc 21100
	lw	%x8, 4(%x29)  #0 pc 21104
	lw	%x8, 0(%x8)  #1818 pc 21108
	sw	%x7, 0(%x2)  #1820 pc 21112
	sw	%x6, 4(%x2)  #1820 pc 21116
	sw	%x8, 8(%x2)  #1820 pc 21120
	addi	%x6, %x7, 0  #0 pc 21124
	sw	%x1, 12(%x2)  #1820 pc 21128
	addi	%x2, %x2, 16  #1820 pc 21132
	jal	%x1, vecbzero.2629  #1820 pc 21136
	addi	%x2, %x2, -16  #1820 pc 21140
	lw	%x1, 12(%x2) #1820 pc 21144
	lw	%x6, 8(%x2)  #1821 pc 21148
	addi	%x7, %x6, -1  #1821 pc 21152
	addi	%x6, %x6, -1  #1821 pc 21156
	slli	%x6, %x6, 2  #1821 pc 21160
	lw	%x8, 4(%x2)  #1821 pc 21164
	add	%x31, %x6, %x8  #1821 pc 21168
	flw	%f0, 0(%x31)  #1821 pc 21172
	sw	%x7, 12(%x2)  #1821 pc 21176
	sw	%x1, 16(%x2)  #1821 pc 21180
	addi	%x2, %x2, 20  #1821 pc 21184
	jal	%x1, sgn.2613  #1821 pc 21188
	addi	%x2, %x2, -20  #1821 pc 21192
	lw	%x1, 16(%x2) #1821 pc 21196
	sw	%x1, 16(%x2)  #1821 pc 21200
	addi	%x2, %x2, 20  #1821 pc 21204
	jal	%x1, fneg.2515  #1821 pc 21208
	addi	%x2, %x2, -20  #1821 pc 21212
	lw	%x1, 16(%x2) #1821 pc 21216
	lw	%x6, 12(%x2)  #1821 pc 21220
	slli	%x6, %x6, 2  #1821 pc 21224
	lw	%x7, 0(%x2)  #1821 pc 21228
	add	%x31, %x6, %x7  #1821 pc 21232
	fsw	%f0, 0(%x31) #1821 pc 21236
	ret #pc 21240
	nop #pc 21244
get_nvector_plane.2921:  #pc 21248
	lw	%x7, 4(%x29)  #0 pc 21248
	sw	%x6, 0(%x2)  #1827 pc 21252
	sw	%x7, 4(%x2)  #1827 pc 21256
	sw	%x1, 8(%x2)  #1827 pc 21260
	addi	%x2, %x2, 12  #1827 pc 21264
	jal	%x1, o_param_a.2669  #1827 pc 21268
	addi	%x2, %x2, -12  #1827 pc 21272
	lw	%x1, 8(%x2) #1827 pc 21276
	sw	%x1, 8(%x2)  #1827 pc 21280
	addi	%x2, %x2, 12  #1827 pc 21284
	jal	%x1, fneg.2515  #1827 pc 21288
	addi	%x2, %x2, -12  #1827 pc 21292
	lw	%x1, 8(%x2) #1827 pc 21296
	lw	%x6, 4(%x2)  #1827 pc 21300
	fsw	%f0, 0(%x6)  #1827 pc 21304
	lw	%x7, 0(%x2)  #1828 pc 21308
	addi	%x6, %x7, 0  #0 pc 21312
	sw	%x1, 8(%x2)  #1828 pc 21316
	addi	%x2, %x2, 12  #1828 pc 21320
	jal	%x1, o_param_b.2671  #1828 pc 21324
	addi	%x2, %x2, -12  #1828 pc 21328
	lw	%x1, 8(%x2) #1828 pc 21332
	sw	%x1, 8(%x2)  #1828 pc 21336
	addi	%x2, %x2, 12  #1828 pc 21340
	jal	%x1, fneg.2515  #1828 pc 21344
	addi	%x2, %x2, -12  #1828 pc 21348
	lw	%x1, 8(%x2) #1828 pc 21352
	lw	%x6, 4(%x2)  #1828 pc 21356
	fsw	%f0, 4(%x6)  #1828 pc 21360
	lw	%x7, 0(%x2)  #1829 pc 21364
	addi	%x6, %x7, 0  #0 pc 21368
	sw	%x1, 8(%x2)  #1829 pc 21372
	addi	%x2, %x2, 12  #1829 pc 21376
	jal	%x1, o_param_c.2673  #1829 pc 21380
	addi	%x2, %x2, -12  #1829 pc 21384
	lw	%x1, 8(%x2) #1829 pc 21388
	sw	%x1, 8(%x2)  #1829 pc 21392
	addi	%x2, %x2, 12  #1829 pc 21396
	jal	%x1, fneg.2515  #1829 pc 21400
	addi	%x2, %x2, -12  #1829 pc 21404
	lw	%x1, 8(%x2) #1829 pc 21408
	lw	%x6, 4(%x2)  #1829 pc 21412
	fsw	%f0, 8(%x6)  #1829 pc 21416
	ret #pc 21420
	nop #pc 21424
get_nvector_second.2923:  #pc 21428
	lw	%x7, 8(%x29)  #0 pc 21428
	lw	%x8, 4(%x29)  #0 pc 21432
	flw	%f0, 0(%x8)  #1834 pc 21436
	sw	%x7, 0(%x2)  #1834 pc 21440
	sw	%x6, 4(%x2)  #1834 pc 21444
	sw	%x8, 8(%x2)  #1834 pc 21448
	fsw	%f0, 16(%x2)  #1834 pc 21452
	sw	%x1, 24(%x2)  #1834 pc 21456
	addi	%x2, %x2, 28  #1834 pc 21460
	jal	%x1, o_param_x.2677  #1834 pc 21464
	addi	%x2, %x2, -28  #1834 pc 21468
	lw	%x1, 24(%x2) #1834 pc 21472
	flw	%f1, 16(%x2)  #1834 pc 21476
	fsub	%f0, %f1, %f0  #1834 pc 21480
	lw	%x6, 8(%x2)  #1835 pc 21484
	flw	%f1, 4(%x6)  #1835 pc 21488
	lw	%x7, 4(%x2)  #1835 pc 21492
	fsw	%f0, 24(%x2)  #1835 pc 21496
	fsw	%f1, 32(%x2)  #1835 pc 21500
	addi	%x6, %x7, 0  #0 pc 21504
	sw	%x1, 40(%x2)  #1835 pc 21508
	addi	%x2, %x2, 44  #1835 pc 21512
	jal	%x1, o_param_y.2679  #1835 pc 21516
	addi	%x2, %x2, -44  #1835 pc 21520
	lw	%x1, 40(%x2) #1835 pc 21524
	flw	%f1, 32(%x2)  #1835 pc 21528
	fsub	%f0, %f1, %f0  #1835 pc 21532
	lw	%x6, 8(%x2)  #1836 pc 21536
	flw	%f1, 8(%x6)  #1836 pc 21540
	lw	%x6, 4(%x2)  #1836 pc 21544
	fsw	%f0, 40(%x2)  #1836 pc 21548
	fsw	%f1, 48(%x2)  #1836 pc 21552
	sw	%x1, 56(%x2)  #1836 pc 21556
	addi	%x2, %x2, 60  #1836 pc 21560
	jal	%x1, o_param_z.2681  #1836 pc 21564
	addi	%x2, %x2, -60  #1836 pc 21568
	lw	%x1, 56(%x2) #1836 pc 21572
	flw	%f1, 48(%x2)  #1836 pc 21576
	fsub	%f0, %f1, %f0  #1836 pc 21580
	lw	%x6, 4(%x2)  #1838 pc 21584
	fsw	%f0, 56(%x2)  #1838 pc 21588
	sw	%x1, 64(%x2)  #1838 pc 21592
	addi	%x2, %x2, 68  #1838 pc 21596
	jal	%x1, o_param_a.2669  #1838 pc 21600
	addi	%x2, %x2, -68  #1838 pc 21604
	lw	%x1, 64(%x2) #1838 pc 21608
	flw	%f1, 24(%x2)  #1838 pc 21612
	fmul	%f0, %f1, %f0  #1838 pc 21616
	lw	%x6, 4(%x2)  #1839 pc 21620
	fsw	%f0, 64(%x2)  #1839 pc 21624
	sw	%x1, 72(%x2)  #1839 pc 21628
	addi	%x2, %x2, 76  #1839 pc 21632
	jal	%x1, o_param_b.2671  #1839 pc 21636
	addi	%x2, %x2, -76  #1839 pc 21640
	lw	%x1, 72(%x2) #1839 pc 21644
	flw	%f1, 40(%x2)  #1839 pc 21648
	fmul	%f0, %f1, %f0  #1839 pc 21652
	lw	%x6, 4(%x2)  #1840 pc 21656
	fsw	%f0, 72(%x2)  #1840 pc 21660
	sw	%x1, 80(%x2)  #1840 pc 21664
	addi	%x2, %x2, 84  #1840 pc 21668
	jal	%x1, o_param_c.2673  #1840 pc 21672
	addi	%x2, %x2, -84  #1840 pc 21676
	lw	%x1, 80(%x2) #1840 pc 21680
	flw	%f1, 56(%x2)  #1840 pc 21684
	fmul	%f0, %f1, %f0  #1840 pc 21688
	lw	%x6, 4(%x2)  #1842 pc 21692
	fsw	%f0, 80(%x2)  #1842 pc 21696
	sw	%x1, 88(%x2)  #1842 pc 21700
	addi	%x2, %x2, 92  #1842 pc 21704
	jal	%x1, o_isrot.2667  #1842 pc 21708
	addi	%x2, %x2, -92  #1842 pc 21712
	lw	%x1, 88(%x2) #1842 pc 21716
	beq	%x6, %x0, 12  #1842 pc 21720
	j	be_else.9392 #pc 21724
	nop #pc 21728
	lw	%x6, 0(%x2)  #1843 pc 21732
	flw	%f0, 64(%x2)  #1843 pc 21736
	fsw	%f0, 0(%x6)  #1843 pc 21740
	flw	%f0, 72(%x2)  #1844 pc 21744
	fsw	%f0, 4(%x6)  #1844 pc 21748
	flw	%f0, 80(%x2)  #1845 pc 21752
	fsw	%f0, 8(%x6)  #1845 pc 21756
	j	be_cont.9393 #pc 21760
	nop #pc 21764
be_else.9392: #pc 21768
	lw	%x6, 4(%x2)  #1847 pc 21768
	sw	%x1, 88(%x2)  #1847 pc 21772
	addi	%x2, %x2, 92  #1847 pc 21776
	jal	%x1, o_param_r3.2697  #1847 pc 21780
	addi	%x2, %x2, -92  #1847 pc 21784
	lw	%x1, 88(%x2) #1847 pc 21788
	flw	%f1, 40(%x2)  #1847 pc 21792
	fmul	%f0, %f1, %f0  #1847 pc 21796
	lw	%x6, 4(%x2)  #1847 pc 21800
	fsw	%f0, 88(%x2)  #1847 pc 21804
	sw	%x1, 96(%x2)  #1847 pc 21808
	addi	%x2, %x2, 100  #1847 pc 21812
	jal	%x1, o_param_r2.2695  #1847 pc 21816
	addi	%x2, %x2, -100  #1847 pc 21820
	lw	%x1, 96(%x2) #1847 pc 21824
	flw	%f1, 56(%x2)  #1847 pc 21828
	fmul	%f0, %f1, %f0  #1847 pc 21832
	flw	%f2, 88(%x2)  #1847 pc 21836
	fadd	%f0, %f2, %f0  #1847 pc 21840
	sw	%x1, 96(%x2)  #1847 pc 21844
	addi	%x2, %x2, 100  #1847 pc 21848
	jal	%x1, fhalf.2519  #1847 pc 21852
	addi	%x2, %x2, -100  #1847 pc 21856
	lw	%x1, 96(%x2) #1847 pc 21860
	flw	%f1, 64(%x2)  #1847 pc 21864
	fadd	%f0, %f1, %f0  #1847 pc 21868
	lw	%x6, 0(%x2)  #1847 pc 21872
	fsw	%f0, 0(%x6)  #1847 pc 21876
	lw	%x7, 4(%x2)  #1848 pc 21880
	addi	%x6, %x7, 0  #0 pc 21884
	sw	%x1, 96(%x2)  #1848 pc 21888
	addi	%x2, %x2, 100  #1848 pc 21892
	jal	%x1, o_param_r3.2697  #1848 pc 21896
	addi	%x2, %x2, -100  #1848 pc 21900
	lw	%x1, 96(%x2) #1848 pc 21904
	flw	%f1, 24(%x2)  #1848 pc 21908
	fmul	%f0, %f1, %f0  #1848 pc 21912
	lw	%x6, 4(%x2)  #1848 pc 21916
	fsw	%f0, 96(%x2)  #1848 pc 21920
	sw	%x1, 104(%x2)  #1848 pc 21924
	addi	%x2, %x2, 108  #1848 pc 21928
	jal	%x1, o_param_r1.2693  #1848 pc 21932
	addi	%x2, %x2, -108  #1848 pc 21936
	lw	%x1, 104(%x2) #1848 pc 21940
	flw	%f1, 56(%x2)  #1848 pc 21944
	fmul	%f0, %f1, %f0  #1848 pc 21948
	flw	%f1, 96(%x2)  #1848 pc 21952
	fadd	%f0, %f1, %f0  #1848 pc 21956
	sw	%x1, 104(%x2)  #1848 pc 21960
	addi	%x2, %x2, 108  #1848 pc 21964
	jal	%x1, fhalf.2519  #1848 pc 21968
	addi	%x2, %x2, -108  #1848 pc 21972
	lw	%x1, 104(%x2) #1848 pc 21976
	flw	%f1, 72(%x2)  #1848 pc 21980
	fadd	%f0, %f1, %f0  #1848 pc 21984
	lw	%x6, 0(%x2)  #1848 pc 21988
	fsw	%f0, 4(%x6)  #1848 pc 21992
	lw	%x7, 4(%x2)  #1849 pc 21996
	addi	%x6, %x7, 0  #0 pc 22000
	sw	%x1, 104(%x2)  #1849 pc 22004
	addi	%x2, %x2, 108  #1849 pc 22008
	jal	%x1, o_param_r2.2695  #1849 pc 22012
	addi	%x2, %x2, -108  #1849 pc 22016
	lw	%x1, 104(%x2) #1849 pc 22020
	flw	%f1, 24(%x2)  #1849 pc 22024
	fmul	%f0, %f1, %f0  #1849 pc 22028
	lw	%x6, 4(%x2)  #1849 pc 22032
	fsw	%f0, 104(%x2)  #1849 pc 22036
	sw	%x1, 112(%x2)  #1849 pc 22040
	addi	%x2, %x2, 116  #1849 pc 22044
	jal	%x1, o_param_r1.2693  #1849 pc 22048
	addi	%x2, %x2, -116  #1849 pc 22052
	lw	%x1, 112(%x2) #1849 pc 22056
	flw	%f1, 40(%x2)  #1849 pc 22060
	fmul	%f0, %f1, %f0  #1849 pc 22064
	flw	%f1, 104(%x2)  #1849 pc 22068
	fadd	%f0, %f1, %f0  #1849 pc 22072
	sw	%x1, 112(%x2)  #1849 pc 22076
	addi	%x2, %x2, 116  #1849 pc 22080
	jal	%x1, fhalf.2519  #1849 pc 22084
	addi	%x2, %x2, -116  #1849 pc 22088
	lw	%x1, 112(%x2) #1849 pc 22092
	flw	%f1, 80(%x2)  #1849 pc 22096
	fadd	%f0, %f1, %f0  #1849 pc 22100
	lw	%x6, 0(%x2)  #1849 pc 22104
	fsw	%f0, 8(%x6)  #1849 pc 22108
be_cont.9393: #pc 22112
	lw	%x7, 4(%x2)  #1851 pc 22112
	addi	%x6, %x7, 0  #0 pc 22116
	sw	%x1, 112(%x2)  #1851 pc 22120
	addi	%x2, %x2, 116  #1851 pc 22124
	jal	%x1, o_isinvert.2665  #1851 pc 22128
	addi	%x2, %x2, -116  #1851 pc 22132
	lw	%x1, 112(%x2) #1851 pc 22136
	addi	%x7, %x6, 0  #1851 pc 22140
	lw	%x6, 0(%x2)  #1851 pc 22144
	j	vecunit_sgn.2634  #1851 pc 22148
	nop #pc 22152
get_nvector.2925:  #pc 22156
	lw	%x8, 12(%x29)  #1856 pc 22156
	lw	%x9, 8(%x29)  #1856 pc 22160
	lw	%x10, 4(%x29)  #1856 pc 22164
	sw	%x8, 0(%x2)  #1856 pc 22168
	sw	%x6, 4(%x2)  #1856 pc 22172
	sw	%x10, 8(%x2)  #1856 pc 22176
	sw	%x7, 12(%x2)  #1856 pc 22180
	sw	%x9, 16(%x2)  #1856 pc 22184
	sw	%x1, 20(%x2)  #1856 pc 22188
	addi	%x2, %x2, 24  #1856 pc 22192
	jal	%x1, o_form.2661  #1856 pc 22196
	addi	%x2, %x2, -24  #1856 pc 22200
	lw	%x1, 20(%x2) #1856 pc 22204
	addi	%x31, %x0, 1  #pc 22208
	beq	%x6, %x31, 12  #1857 pc 22212
	j	be_else.9394 #pc 22216
	nop #pc 22220
	lw	%x6, 12(%x2)  #1858 pc 22224
	lw	%x29, 16(%x2)  #1858 pc 22228
	lw	%x30, 0(%x29)  #1858 pc 22232
	jalr	%x0, %x30, 0  #1858 pc 22236
	nop #pc 22240
be_else.9394: #pc 22244
	addi	%x31, %x0, 2  #pc 22244
	beq	%x6, %x31, 12  #1859 pc 22248
	j	be_else.9395 #pc 22252
	nop #pc 22256
	lw	%x6, 4(%x2)  #1860 pc 22260
	lw	%x29, 8(%x2)  #1860 pc 22264
	lw	%x30, 0(%x29)  #1860 pc 22268
	jalr	%x0, %x30, 0  #1860 pc 22272
	nop #pc 22276
be_else.9395: #pc 22280
	lw	%x6, 4(%x2)  #1862 pc 22280
	lw	%x29, 0(%x2)  #1862 pc 22284
	lw	%x30, 0(%x29)  #1862 pc 22288
	jalr	%x0, %x30, 0  #1862 pc 22292
	nop #pc 22296
utexture.2928:  #pc 22300
	lw	%x8, 4(%x29)  #1872 pc 22300
	sw	%x7, 0(%x2)  #1872 pc 22304
	sw	%x8, 4(%x2)  #1872 pc 22308
	sw	%x6, 8(%x2)  #1872 pc 22312
	sw	%x1, 12(%x2)  #1872 pc 22316
	addi	%x2, %x2, 16  #1872 pc 22320
	jal	%x1, o_texturetype.2659  #1872 pc 22324
	addi	%x2, %x2, -16  #1872 pc 22328
	lw	%x1, 12(%x2) #1872 pc 22332
	lw	%x7, 8(%x2)  #1874 pc 22336
	sw	%x6, 12(%x2)  #1874 pc 22340
	addi	%x6, %x7, 0  #0 pc 22344
	sw	%x1, 16(%x2)  #1874 pc 22348
	addi	%x2, %x2, 20  #1874 pc 22352
	jal	%x1, o_color_red.2687  #1874 pc 22356
	addi	%x2, %x2, -20  #1874 pc 22360
	lw	%x1, 16(%x2) #1874 pc 22364
	lw	%x6, 4(%x2)  #1874 pc 22368
	fsw	%f0, 0(%x6)  #1874 pc 22372
	lw	%x7, 8(%x2)  #1875 pc 22376
	addi	%x6, %x7, 0  #0 pc 22380
	sw	%x1, 16(%x2)  #1875 pc 22384
	addi	%x2, %x2, 20  #1875 pc 22388
	jal	%x1, o_color_green.2689  #1875 pc 22392
	addi	%x2, %x2, -20  #1875 pc 22396
	lw	%x1, 16(%x2) #1875 pc 22400
	lw	%x6, 4(%x2)  #1875 pc 22404
	fsw	%f0, 4(%x6)  #1875 pc 22408
	lw	%x7, 8(%x2)  #1876 pc 22412
	addi	%x6, %x7, 0  #0 pc 22416
	sw	%x1, 16(%x2)  #1876 pc 22420
	addi	%x2, %x2, 20  #1876 pc 22424
	jal	%x1, o_color_blue.2691  #1876 pc 22428
	addi	%x2, %x2, -20  #1876 pc 22432
	lw	%x1, 16(%x2) #1876 pc 22436
	lw	%x6, 4(%x2)  #1876 pc 22440
	fsw	%f0, 8(%x6)  #1876 pc 22444
	lw	%x7, 12(%x2)  #1877 pc 22448
	addi	%x31, %x0, 1  #pc 22452
	beq	%x7, %x31, 12  #1877 pc 22456
	j	be_else.9396 #pc 22460
	nop #pc 22464
	lw	%x7, 0(%x2)  #1880 pc 22468
	flw	%f0, 0(%x7)  #1880 pc 22472
	lw	%x8, 8(%x2)  #1880 pc 22476
	fsw	%f0, 16(%x2)  #1880 pc 22480
	addi	%x6, %x8, 0  #0 pc 22484
	sw	%x1, 24(%x2)  #1880 pc 22488
	addi	%x2, %x2, 28  #1880 pc 22492
	jal	%x1, o_param_x.2677  #1880 pc 22496
	addi	%x2, %x2, -28  #1880 pc 22500
	lw	%x1, 24(%x2) #1880 pc 22504
	flw	%f1, 16(%x2)  #1880 pc 22508
	fsub	%f0, %f1, %f0  #1880 pc 22512
	fmv	%f1, l.6780  #0 pc 22516
	fmul	%f1, %f0, %f1  #1882 pc 22520
	fsw	%f0, 24(%x2)  #1882 pc 22524
	fadd	%f0, %f1, %f30  #0 pc 22528
	sw	%x1, 32(%x2)  #1882 pc 22532
	addi	%x2, %x2, 36  #1882 pc 22536
	jal	%x1, floor.2534  #1882 pc 22540
	addi	%x2, %x2, -36  #1882 pc 22544
	lw	%x1, 32(%x2) #1882 pc 22548
	fmv	%f1, l.6782  #0 pc 22552
	fmul	%f0, %f0, %f1  #1882 pc 22556
	flw	%f1, 24(%x2)  #1883 pc 22560
	fsub	%f0, %f1, %f0  #1883 pc 22564
	fmv	%f1, l.6763  #0 pc 22568
	sw	%x1, 32(%x2)  #1883 pc 22572
	addi	%x2, %x2, 36  #1883 pc 22576
	jal	%x1, fless.2521  #1883 pc 22580
	addi	%x2, %x2, -36  #1883 pc 22584
	lw	%x1, 32(%x2) #1883 pc 22588
	lw	%x7, 0(%x2)  #1885 pc 22592
	flw	%f0, 8(%x7)  #1885 pc 22596
	lw	%x7, 8(%x2)  #1885 pc 22600
	sw	%x6, 32(%x2)  #1885 pc 22604
	fsw	%f0, 40(%x2)  #1885 pc 22608
	addi	%x6, %x7, 0  #0 pc 22612
	sw	%x1, 48(%x2)  #1885 pc 22616
	addi	%x2, %x2, 52  #1885 pc 22620
	jal	%x1, o_param_z.2681  #1885 pc 22624
	addi	%x2, %x2, -52  #1885 pc 22628
	lw	%x1, 48(%x2) #1885 pc 22632
	flw	%f1, 40(%x2)  #1885 pc 22636
	fsub	%f0, %f1, %f0  #1885 pc 22640
	fmv	%f1, l.6780  #0 pc 22644
	fmul	%f1, %f0, %f1  #1887 pc 22648
	fsw	%f0, 48(%x2)  #1887 pc 22652
	fadd	%f0, %f1, %f30  #0 pc 22656
	sw	%x1, 56(%x2)  #1887 pc 22660
	addi	%x2, %x2, 60  #1887 pc 22664
	jal	%x1, floor.2534  #1887 pc 22668
	addi	%x2, %x2, -60  #1887 pc 22672
	lw	%x1, 56(%x2) #1887 pc 22676
	fmv	%f1, l.6782  #0 pc 22680
	fmul	%f0, %f0, %f1  #1887 pc 22684
	flw	%f1, 48(%x2)  #1888 pc 22688
	fsub	%f0, %f1, %f0  #1888 pc 22692
	fmv	%f1, l.6763  #0 pc 22696
	sw	%x1, 56(%x2)  #1888 pc 22700
	addi	%x2, %x2, 60  #1888 pc 22704
	jal	%x1, fless.2521  #1888 pc 22708
	addi	%x2, %x2, -60  #1888 pc 22712
	lw	%x1, 56(%x2) #1888 pc 22716
	lw	%x7, 32(%x2)  #1891 pc 22720
	beq	%x7, %x0, 12  #1891 pc 22724
	j	be_else.9398 #pc 22728
	nop #pc 22732
	beq	%x6, %x0, 12  #1893 pc 22736
	j	be_else.9400 #pc 22740
	nop #pc 22744
	fmv	%f0, l.6756  #0 pc 22748
	j	be_cont.9401 #pc 22752
	nop #pc 22756
be_else.9400: #pc 22760
	fmv	%f0, l.6244  #0 pc 22760
be_cont.9401: #pc 22764
	j	be_cont.9399 #pc 22764
	nop #pc 22768
be_else.9398: #pc 22772
	beq	%x6, %x0, 12  #1892 pc 22772
	j	be_else.9402 #pc 22776
	nop #pc 22780
	fmv	%f0, l.6244  #0 pc 22784
	j	be_cont.9403 #pc 22788
	nop #pc 22792
be_else.9402: #pc 22796
	fmv	%f0, l.6756  #0 pc 22796
be_cont.9403: #pc 22800
be_cont.9399: #pc 22800
	lw	%x6, 4(%x2)  #1890 pc 22800
	fsw	%f0, 4(%x6)  #1890 pc 22804
	ret #pc 22808
	nop #pc 22812
be_else.9396: #pc 22816
	addi	%x31, %x0, 2  #pc 22816
	beq	%x7, %x31, 12  #1895 pc 22820
	j	be_else.9405 #pc 22824
	nop #pc 22828
	lw	%x7, 0(%x2)  #1898 pc 22832
	flw	%f0, 4(%x7)  #1898 pc 22836
	fmv	%f1, l.6772  #0 pc 22840
	fmul	%f0, %f0, %f1  #1898 pc 22844
	sw	%x1, 56(%x2)  #1898 pc 22848
	addi	%x2, %x2, 60  #1898 pc 22852
	jal	%x1, sin.2526  #1898 pc 22856
	addi	%x2, %x2, -60  #1898 pc 22860
	lw	%x1, 56(%x2) #1898 pc 22864
	sw	%x1, 56(%x2)  #1898 pc 22868
	addi	%x2, %x2, 60  #1898 pc 22872
	jal	%x1, fsqr.2517  #1898 pc 22876
	addi	%x2, %x2, -60  #1898 pc 22880
	lw	%x1, 56(%x2) #1898 pc 22884
	fmv	%f1, l.6756  #0 pc 22888
	fmul	%f1, %f1, %f0  #1899 pc 22892
	lw	%x6, 4(%x2)  #1899 pc 22896
	fsw	%f1, 0(%x6)  #1899 pc 22900
	fmv	%f1, l.6756  #0 pc 22904
	fmv	%f2, l.6263  #0 pc 22908
	fsub	%f0, %f2, %f0  #1900 pc 22912
	fmul	%f0, %f1, %f0  #1900 pc 22916
	fsw	%f0, 4(%x6)  #1900 pc 22920
	ret #pc 22924
	nop #pc 22928
be_else.9405: #pc 22932
	addi	%x31, %x0, 3  #pc 22932
	beq	%x7, %x31, 12  #1902 pc 22936
	j	be_else.9407 #pc 22940
	nop #pc 22944
	lw	%x7, 0(%x2)  #1905 pc 22948
	flw	%f0, 0(%x7)  #1905 pc 22952
	lw	%x8, 8(%x2)  #1905 pc 22956
	fsw	%f0, 56(%x2)  #1905 pc 22960
	addi	%x6, %x8, 0  #0 pc 22964
	sw	%x1, 64(%x2)  #1905 pc 22968
	addi	%x2, %x2, 68  #1905 pc 22972
	jal	%x1, o_param_x.2677  #1905 pc 22976
	addi	%x2, %x2, -68  #1905 pc 22980
	lw	%x1, 64(%x2) #1905 pc 22984
	flw	%f1, 56(%x2)  #1905 pc 22988
	fsub	%f0, %f1, %f0  #1905 pc 22992
	lw	%x6, 0(%x2)  #1906 pc 22996
	flw	%f1, 8(%x6)  #1906 pc 23000
	lw	%x6, 8(%x2)  #1906 pc 23004
	fsw	%f0, 64(%x2)  #1906 pc 23008
	fsw	%f1, 72(%x2)  #1906 pc 23012
	sw	%x1, 80(%x2)  #1906 pc 23016
	addi	%x2, %x2, 84  #1906 pc 23020
	jal	%x1, o_param_z.2681  #1906 pc 23024
	addi	%x2, %x2, -84  #1906 pc 23028
	lw	%x1, 80(%x2) #1906 pc 23032
	flw	%f1, 72(%x2)  #1906 pc 23036
	fsub	%f0, %f1, %f0  #1906 pc 23040
	flw	%f1, 64(%x2)  #1907 pc 23044
	fsw	%f0, 80(%x2)  #1907 pc 23048
	fadd	%f0, %f1, %f30  #0 pc 23052
	sw	%x1, 88(%x2)  #1907 pc 23056
	addi	%x2, %x2, 92  #1907 pc 23060
	jal	%x1, fsqr.2517  #1907 pc 23064
	addi	%x2, %x2, -92  #1907 pc 23068
	lw	%x1, 88(%x2) #1907 pc 23072
	flw	%f1, 80(%x2)  #1907 pc 23076
	fsw	%f0, 88(%x2)  #1907 pc 23080
	fadd	%f0, %f1, %f30  #0 pc 23084
	sw	%x1, 96(%x2)  #1907 pc 23088
	addi	%x2, %x2, 100  #1907 pc 23092
	jal	%x1, fsqr.2517  #1907 pc 23096
	addi	%x2, %x2, -100  #1907 pc 23100
	lw	%x1, 96(%x2) #1907 pc 23104
	flw	%f1, 88(%x2)  #1907 pc 23108
	fadd	%f0, %f1, %f0  #1907 pc 23112
	fmv	%f1, l.6763  #0 pc 23116
	fdiv	%f0, %f0, %f1  #1907 pc 23120
	fsqrt	%f0, %f0  #1907 pc 23124
	fsw	%f0, 96(%x2)  #1908 pc 23128
	sw	%x1, 104(%x2)  #1908 pc 23132
	addi	%x2, %x2, 108  #1908 pc 23136
	jal	%x1, floor.2534  #1908 pc 23140
	addi	%x2, %x2, -108  #1908 pc 23144
	lw	%x1, 104(%x2) #1908 pc 23148
	flw	%f1, 96(%x2)  #1908 pc 23152
	fsub	%f0, %f1, %f0  #1908 pc 23156
	fmv	%f1, l.6744  #0 pc 23160
	fmul	%f0, %f0, %f1  #1908 pc 23164
	sw	%x1, 104(%x2)  #1909 pc 23168
	addi	%x2, %x2, 108  #1909 pc 23172
	jal	%x1, cos.2530  #1909 pc 23176
	addi	%x2, %x2, -108  #1909 pc 23180
	lw	%x1, 104(%x2) #1909 pc 23184
	sw	%x1, 104(%x2)  #1909 pc 23188
	addi	%x2, %x2, 108  #1909 pc 23192
	jal	%x1, fsqr.2517  #1909 pc 23196
	addi	%x2, %x2, -108  #1909 pc 23200
	lw	%x1, 104(%x2) #1909 pc 23204
	fmv	%f1, l.6756  #0 pc 23208
	fmul	%f1, %f0, %f1  #1910 pc 23212
	lw	%x6, 4(%x2)  #1910 pc 23216
	fsw	%f1, 4(%x6)  #1910 pc 23220
	fmv	%f1, l.6263  #0 pc 23224
	fsub	%f0, %f1, %f0  #1911 pc 23228
	fmv	%f1, l.6756  #0 pc 23232
	fmul	%f0, %f0, %f1  #1911 pc 23236
	fsw	%f0, 8(%x6)  #1911 pc 23240
	ret #pc 23244
	nop #pc 23248
be_else.9407: #pc 23252
	addi	%x31, %x0, 4  #pc 23252
	beq	%x7, %x31, 12  #1913 pc 23256
	j	be_else.9409 #pc 23260
	nop #pc 23264
	lw	%x7, 0(%x2)  #1915 pc 23268
	flw	%f0, 0(%x7)  #1915 pc 23272
	lw	%x8, 8(%x2)  #1915 pc 23276
	fsw	%f0, 104(%x2)  #1915 pc 23280
	addi	%x6, %x8, 0  #0 pc 23284
	sw	%x1, 112(%x2)  #1915 pc 23288
	addi	%x2, %x2, 116  #1915 pc 23292
	jal	%x1, o_param_x.2677  #1915 pc 23296
	addi	%x2, %x2, -116  #1915 pc 23300
	lw	%x1, 112(%x2) #1915 pc 23304
	flw	%f1, 104(%x2)  #1915 pc 23308
	fsub	%f0, %f1, %f0  #1915 pc 23312
	lw	%x6, 8(%x2)  #1915 pc 23316
	fsw	%f0, 112(%x2)  #1915 pc 23320
	sw	%x1, 120(%x2)  #1915 pc 23324
	addi	%x2, %x2, 124  #1915 pc 23328
	jal	%x1, o_param_a.2669  #1915 pc 23332
	addi	%x2, %x2, -124  #1915 pc 23336
	lw	%x1, 120(%x2) #1915 pc 23340
	fsqrt	%f0, %f0  #1915 pc 23344
	flw	%f1, 112(%x2)  #1915 pc 23348
	fmul	%f0, %f1, %f0  #1915 pc 23352
	lw	%x6, 0(%x2)  #1916 pc 23356
	flw	%f1, 8(%x6)  #1916 pc 23360
	lw	%x7, 8(%x2)  #1916 pc 23364
	fsw	%f0, 120(%x2)  #1916 pc 23368
	fsw	%f1, 128(%x2)  #1916 pc 23372
	addi	%x6, %x7, 0  #0 pc 23376
	sw	%x1, 136(%x2)  #1916 pc 23380
	addi	%x2, %x2, 140  #1916 pc 23384
	jal	%x1, o_param_z.2681  #1916 pc 23388
	addi	%x2, %x2, -140  #1916 pc 23392
	lw	%x1, 136(%x2) #1916 pc 23396
	flw	%f1, 128(%x2)  #1916 pc 23400
	fsub	%f0, %f1, %f0  #1916 pc 23404
	lw	%x6, 8(%x2)  #1916 pc 23408
	fsw	%f0, 136(%x2)  #1916 pc 23412
	sw	%x1, 144(%x2)  #1916 pc 23416
	addi	%x2, %x2, 148  #1916 pc 23420
	jal	%x1, o_param_c.2673  #1916 pc 23424
	addi	%x2, %x2, -148  #1916 pc 23428
	lw	%x1, 144(%x2) #1916 pc 23432
	fsqrt	%f0, %f0  #1916 pc 23436
	flw	%f1, 136(%x2)  #1916 pc 23440
	fmul	%f0, %f1, %f0  #1916 pc 23444
	flw	%f1, 120(%x2)  #1917 pc 23448
	fsw	%f0, 144(%x2)  #1917 pc 23452
	fadd	%f0, %f1, %f30  #0 pc 23456
	sw	%x1, 152(%x2)  #1917 pc 23460
	addi	%x2, %x2, 156  #1917 pc 23464
	jal	%x1, fsqr.2517  #1917 pc 23468
	addi	%x2, %x2, -156  #1917 pc 23472
	lw	%x1, 152(%x2) #1917 pc 23476
	flw	%f1, 144(%x2)  #1917 pc 23480
	fsw	%f0, 152(%x2)  #1917 pc 23484
	fadd	%f0, %f1, %f30  #0 pc 23488
	sw	%x1, 160(%x2)  #1917 pc 23492
	addi	%x2, %x2, 164  #1917 pc 23496
	jal	%x1, fsqr.2517  #1917 pc 23500
	addi	%x2, %x2, -164  #1917 pc 23504
	lw	%x1, 160(%x2) #1917 pc 23508
	flw	%f1, 152(%x2)  #1917 pc 23512
	fadd	%f0, %f1, %f0  #1917 pc 23516
	flw	%f1, 120(%x2)  #1919 pc 23520
	fabs	%f2, %f1  #1919 pc 23524
	fmv	%f3, l.6738  #0 pc 23528
	fsw	%f0, 160(%x2)  #1919 pc 23532
	fadd	%f1, %f3, %f30  #0 pc 23536
	fadd	%f0, %f2, %f30  #0 pc 23540
	sw	%x1, 168(%x2)  #1919 pc 23544
	addi	%x2, %x2, 172  #1919 pc 23548
	jal	%x1, fless.2521  #1919 pc 23552
	addi	%x2, %x2, -172  #1919 pc 23556
	lw	%x1, 168(%x2) #1919 pc 23560
	beq	%x6, %x0, 12  #1919 pc 23564
	j	be_else.9410 #pc 23568
	nop #pc 23572
	flw	%f0, 120(%x2)  #1922 pc 23576
	flw	%f1, 144(%x2)  #1922 pc 23580
	fdiv	%f0, %f1, %f0  #1922 pc 23584
	fabs	%f0, %f0  #1922 pc 23588
	sw	%x1, 168(%x2)  #1924 pc 23592
	addi	%x2, %x2, 172  #1924 pc 23596
	jal	%x1, atan.2532  #1924 pc 23600
	addi	%x2, %x2, -172  #1924 pc 23604
	lw	%x1, 168(%x2) #1924 pc 23608
	fmv	%f1, l.6742  #0 pc 23612
	fmul	%f0, %f0, %f1  #1924 pc 23616
	fmv	%f1, l.6744  #0 pc 23620
	fdiv	%f0, %f0, %f1  #1924 pc 23624
	j	be_cont.9411 #pc 23628
	nop #pc 23632
be_else.9410: #pc 23636
	fmv	%f0, l.6740  #0 pc 23636
be_cont.9411: #pc 23640
	fsw	%f0, 168(%x2)  #1926 pc 23640
	sw	%x1, 176(%x2)  #1926 pc 23644
	addi	%x2, %x2, 180  #1926 pc 23648
	jal	%x1, floor.2534  #1926 pc 23652
	addi	%x2, %x2, -180  #1926 pc 23656
	lw	%x1, 176(%x2) #1926 pc 23660
	flw	%f1, 168(%x2)  #1926 pc 23664
	fsub	%f0, %f1, %f0  #1926 pc 23668
	lw	%x6, 0(%x2)  #1928 pc 23672
	flw	%f1, 4(%x6)  #1928 pc 23676
	lw	%x6, 8(%x2)  #1928 pc 23680
	fsw	%f0, 176(%x2)  #1928 pc 23684
	fsw	%f1, 184(%x2)  #1928 pc 23688
	sw	%x1, 192(%x2)  #1928 pc 23692
	addi	%x2, %x2, 196  #1928 pc 23696
	jal	%x1, o_param_y.2679  #1928 pc 23700
	addi	%x2, %x2, -196  #1928 pc 23704
	lw	%x1, 192(%x2) #1928 pc 23708
	flw	%f1, 184(%x2)  #1928 pc 23712
	fsub	%f0, %f1, %f0  #1928 pc 23716
	lw	%x6, 8(%x2)  #1928 pc 23720
	fsw	%f0, 192(%x2)  #1928 pc 23724
	sw	%x1, 200(%x2)  #1928 pc 23728
	addi	%x2, %x2, 204  #1928 pc 23732
	jal	%x1, o_param_b.2671  #1928 pc 23736
	addi	%x2, %x2, -204  #1928 pc 23740
	lw	%x1, 200(%x2) #1928 pc 23744
	fsqrt	%f0, %f0  #1928 pc 23748
	flw	%f1, 192(%x2)  #1928 pc 23752
	fmul	%f0, %f1, %f0  #1928 pc 23756
	flw	%f1, 160(%x2)  #1930 pc 23760
	fabs	%f2, %f1  #1930 pc 23764
	fmv	%f3, l.6738  #0 pc 23768
	fsw	%f0, 200(%x2)  #1930 pc 23772
	fadd	%f1, %f3, %f30  #0 pc 23776
	fadd	%f0, %f2, %f30  #0 pc 23780
	sw	%x1, 208(%x2)  #1930 pc 23784
	addi	%x2, %x2, 212  #1930 pc 23788
	jal	%x1, fless.2521  #1930 pc 23792
	addi	%x2, %x2, -212  #1930 pc 23796
	lw	%x1, 208(%x2) #1930 pc 23800
	beq	%x6, %x0, 12  #1930 pc 23804
	j	be_else.9412 #pc 23808
	nop #pc 23812
	flw	%f0, 160(%x2)  #1933 pc 23816
	flw	%f1, 200(%x2)  #1933 pc 23820
	fdiv	%f0, %f1, %f0  #1933 pc 23824
	fabs	%f0, %f0  #1933 pc 23828
	sw	%x1, 208(%x2)  #1934 pc 23832
	addi	%x2, %x2, 212  #1934 pc 23836
	jal	%x1, atan.2532  #1934 pc 23840
	addi	%x2, %x2, -212  #1934 pc 23844
	lw	%x1, 208(%x2) #1934 pc 23848
	fmv	%f1, l.6742  #0 pc 23852
	fmul	%f0, %f0, %f1  #1934 pc 23856
	fmv	%f1, l.6744  #0 pc 23860
	fdiv	%f0, %f0, %f1  #1934 pc 23864
	j	be_cont.9413 #pc 23868
	nop #pc 23872
be_else.9412: #pc 23876
	fmv	%f0, l.6740  #0 pc 23876
be_cont.9413: #pc 23880
	fsw	%f0, 208(%x2)  #1936 pc 23880
	sw	%x1, 216(%x2)  #1936 pc 23884
	addi	%x2, %x2, 220  #1936 pc 23888
	jal	%x1, floor.2534  #1936 pc 23892
	addi	%x2, %x2, -220  #1936 pc 23896
	lw	%x1, 216(%x2) #1936 pc 23900
	flw	%f1, 208(%x2)  #1936 pc 23904
	fsub	%f0, %f1, %f0  #1936 pc 23908
	fmv	%f1, l.6751  #0 pc 23912
	fmv	%f2, l.6248  #0 pc 23916
	flw	%f3, 176(%x2)  #1937 pc 23920
	fsub	%f2, %f2, %f3  #1937 pc 23924
	fsw	%f0, 216(%x2)  #1937 pc 23928
	fsw	%f1, 224(%x2)  #1937 pc 23932
	fadd	%f0, %f2, %f30  #0 pc 23936
	sw	%x1, 232(%x2)  #1937 pc 23940
	addi	%x2, %x2, 236  #1937 pc 23944
	jal	%x1, fsqr.2517  #1937 pc 23948
	addi	%x2, %x2, -236  #1937 pc 23952
	lw	%x1, 232(%x2) #1937 pc 23956
	flw	%f1, 224(%x2)  #1937 pc 23960
	fsub	%f0, %f1, %f0  #1937 pc 23964
	fmv	%f1, l.6248  #0 pc 23968
	flw	%f2, 216(%x2)  #1937 pc 23972
	fsub	%f1, %f1, %f2  #1937 pc 23976
	fsw	%f0, 232(%x2)  #1937 pc 23980
	fadd	%f0, %f1, %f30  #0 pc 23984
	sw	%x1, 240(%x2)  #1937 pc 23988
	addi	%x2, %x2, 244  #1937 pc 23992
	jal	%x1, fsqr.2517  #1937 pc 23996
	addi	%x2, %x2, -244  #1937 pc 24000
	lw	%x1, 240(%x2) #1937 pc 24004
	flw	%f1, 232(%x2)  #1937 pc 24008
	fsub	%f0, %f1, %f0  #1937 pc 24012
	fsw	%f0, 240(%x2)  #1938 pc 24016
	sw	%x1, 248(%x2)  #1938 pc 24020
	addi	%x2, %x2, 252  #1938 pc 24024
	jal	%x1, fisneg.2513  #1938 pc 24028
	addi	%x2, %x2, -252  #1938 pc 24032
	lw	%x1, 248(%x2) #1938 pc 24036
	beq	%x6, %x0, 12  #1938 pc 24040
	j	be_else.9414 #pc 24044
	nop #pc 24048
	flw	%f0, 240(%x2)  #1938 pc 24052
	j	be_cont.9415 #pc 24056
	nop #pc 24060
be_else.9414: #pc 24064
	fmv	%f0, l.6244  #0 pc 24064
be_cont.9415: #pc 24068
	fmv	%f1, l.6756  #0 pc 24068
	fmul	%f0, %f1, %f0  #1939 pc 24072
	fmv	%f1, l.6758  #0 pc 24076
	fdiv	%f0, %f0, %f1  #1939 pc 24080
	lw	%x6, 4(%x2)  #1939 pc 24084
	fsw	%f0, 8(%x6)  #1939 pc 24088
	ret #pc 24092
	nop #pc 24096
be_else.9409: #pc 24100
	ret #pc 24100
	nop #pc 24104
add_light.2931:  #pc 24108
	lw	%x6, 8(%x29)  #0 pc 24108
	lw	%x7, 4(%x29)  #0 pc 24112
	fsw	%f2, 0(%x2)  #1952 pc 24116
	fsw	%f1, 8(%x2)  #1952 pc 24120
	fsw	%f0, 16(%x2)  #1952 pc 24124
	sw	%x6, 24(%x2)  #1952 pc 24128
	sw	%x7, 28(%x2)  #1952 pc 24132
	sw	%x1, 32(%x2)  #1952 pc 24136
	addi	%x2, %x2, 36  #1952 pc 24140
	jal	%x1, fispos.2511  #1952 pc 24144
	addi	%x2, %x2, -36  #1952 pc 24148
	lw	%x1, 32(%x2) #1952 pc 24152
	beq	%x6, %x0, 12  #1952 pc 24156
	j	be_else.9418 #pc 24160
	nop #pc 24164
	j	be_cont.9419 #pc 24168
	nop #pc 24172
be_else.9418: #pc 24176
	flw	%f0, 16(%x2)  #1953 pc 24176
	lw	%x6, 28(%x2)  #1953 pc 24180
	lw	%x7, 24(%x2)  #1953 pc 24184
	sw	%x1, 32(%x2)  #1953 pc 24188
	addi	%x2, %x2, 36  #1953 pc 24192
	jal	%x1, vecaccum.2645  #1953 pc 24196
	addi	%x2, %x2, -36  #1953 pc 24200
	lw	%x1, 32(%x2) #1953 pc 24204
be_cont.9419: #pc 24208
	flw	%f0, 8(%x2)  #1957 pc 24208
	sw	%x1, 32(%x2)  #1957 pc 24212
	addi	%x2, %x2, 36  #1957 pc 24216
	jal	%x1, fispos.2511  #1957 pc 24220
	addi	%x2, %x2, -36  #1957 pc 24224
	lw	%x1, 32(%x2) #1957 pc 24228
	beq	%x6, %x0, 12  #1957 pc 24232
	j	be_else.9420 #pc 24236
	nop #pc 24240
	ret #pc 24244
	nop #pc 24248
be_else.9420: #pc 24252
	flw	%f0, 8(%x2)  #1958 pc 24252
	sw	%x1, 32(%x2)  #1958 pc 24256
	addi	%x2, %x2, 36  #1958 pc 24260
	jal	%x1, fsqr.2517  #1958 pc 24264
	addi	%x2, %x2, -36  #1958 pc 24268
	lw	%x1, 32(%x2) #1958 pc 24272
	sw	%x1, 32(%x2)  #1958 pc 24276
	addi	%x2, %x2, 36  #1958 pc 24280
	jal	%x1, fsqr.2517  #1958 pc 24284
	addi	%x2, %x2, -36  #1958 pc 24288
	lw	%x1, 32(%x2) #1958 pc 24292
	flw	%f1, 0(%x2)  #1958 pc 24296
	fmul	%f0, %f0, %f1  #1958 pc 24300
	lw	%x6, 28(%x2)  #1959 pc 24304
	flw	%f1, 0(%x6)  #1959 pc 24308
	fadd	%f1, %f1, %f0  #1959 pc 24312
	fsw	%f1, 0(%x6)  #1959 pc 24316
	flw	%f1, 4(%x6)  #1960 pc 24320
	fadd	%f1, %f1, %f0  #1960 pc 24324
	fsw	%f1, 4(%x6)  #1960 pc 24328
	flw	%f1, 8(%x6)  #1961 pc 24332
	fadd	%f0, %f1, %f0  #1961 pc 24336
	fsw	%f0, 8(%x6)  #1961 pc 24340
	ret #pc 24344
	nop #pc 24348
trace_reflections.2935:  #pc 24352
	lw	%x8, 32(%x29)  #0 pc 24352
	lw	%x9, 28(%x29)  #0 pc 24356
	lw	%x10, 24(%x29)  #0 pc 24360
	lw	%x11, 20(%x29)  #0 pc 24364
	lw	%x12, 16(%x29)  #0 pc 24368
	lw	%x13, 12(%x29)  #0 pc 24372
	lw	%x14, 8(%x29)  #0 pc 24376
	lw	%x15, 4(%x29)  #0 pc 24380
	bge	%x6, %x0, 12  #1968 pc 24384
	j	bge_else.9423 #pc 24388
	nop #pc 24392
	slli	%x16, %x6, 2  #1969 pc 24396
	add	%x31, %x16, %x9  #1969 pc 24400
	lw	%x9, 0(%x31)  #1969 pc 24404
	sw	%x29, 0(%x2)  #1970 pc 24408
	sw	%x6, 4(%x2)  #1970 pc 24412
	fsw	%f1, 8(%x2)  #1970 pc 24416
	sw	%x15, 16(%x2)  #1970 pc 24420
	sw	%x7, 20(%x2)  #1970 pc 24424
	fsw	%f0, 24(%x2)  #1970 pc 24428
	sw	%x11, 32(%x2)  #1970 pc 24432
	sw	%x8, 36(%x2)  #1970 pc 24436
	sw	%x10, 40(%x2)  #1970 pc 24440
	sw	%x9, 44(%x2)  #1970 pc 24444
	sw	%x13, 48(%x2)  #1970 pc 24448
	sw	%x14, 52(%x2)  #1970 pc 24452
	sw	%x12, 56(%x2)  #1970 pc 24456
	addi	%x6, %x9, 0  #0 pc 24460
	sw	%x1, 60(%x2)  #1970 pc 24464
	addi	%x2, %x2, 64  #1970 pc 24468
	jal	%x1, r_dvec.2726  #1970 pc 24472
	addi	%x2, %x2, -64  #1970 pc 24476
	lw	%x1, 60(%x2) #1970 pc 24480
	lw	%x29, 56(%x2)  #1973 pc 24484
	sw	%x6, 60(%x2)  #1973 pc 24488
	sw	%x1, 64(%x2)  #1973 pc 24492
	lw	%x30, 0(%x29)  #1973 pc 24496
	addi	%x2, %x2, 68  #1973 pc 24500
	jalr	%x1, %x30, 0  #1973 pc 24504
	addi	%x2, %x2, -68  #1973 pc 24508
	lw	%x1, 64(%x2)  #1973 pc 24512
	beq	%x6, %x0, 12  #1973 pc 24516
	j	be_else.9424 #pc 24520
	nop #pc 24524
	j	be_cont.9425 #pc 24528
	nop #pc 24532
be_else.9424: #pc 24536
	lw	%x6, 52(%x2)  #1974 pc 24536
	lw	%x6, 0(%x6)  #1974 pc 24540
	addi	%x7, %x0, 4  #0 pc 24544
	sw	%x1, 64(%x2)  #1974 pc 24548
	addi	%x2, %x2, 68  #1974 pc 24552
	jal	%x1, mul.2547  #1974 pc 24556
	addi	%x2, %x2, -68  #1974 pc 24560
	lw	%x1, 64(%x2) #1974 pc 24564
	lw	%x7, 48(%x2)  #1974 pc 24568
	lw	%x7, 0(%x7)  #1974 pc 24572
	add	%x6, %x6, %x7  #1974 pc 24576
	lw	%x7, 44(%x2)  #1975 pc 24580
	sw	%x6, 64(%x2)  #1975 pc 24584
	addi	%x6, %x7, 0  #0 pc 24588
	sw	%x1, 68(%x2)  #1975 pc 24592
	addi	%x2, %x2, 72  #1975 pc 24596
	jal	%x1, r_surface_id.2724  #1975 pc 24600
	addi	%x2, %x2, -72  #1975 pc 24604
	lw	%x1, 68(%x2) #1975 pc 24608
	lw	%x7, 64(%x2)  #1975 pc 24612
	beq	%x7, %x6, 12  #1975 pc 24616
	j	be_else.9426 #pc 24620
	nop #pc 24624
	addi	%x6, %x0, 0  #0 pc 24628
	lw	%x7, 40(%x2)  #1977 pc 24632
	lw	%x7, 0(%x7)  #1977 pc 24636
	lw	%x29, 36(%x2)  #1977 pc 24640
	sw	%x1, 68(%x2)  #1977 pc 24644
	lw	%x30, 0(%x29)  #1977 pc 24648
	addi	%x2, %x2, 72  #1977 pc 24652
	jalr	%x1, %x30, 0  #1977 pc 24656
	addi	%x2, %x2, -72  #1977 pc 24660
	lw	%x1, 68(%x2)  #1977 pc 24664
	beq	%x6, %x0, 12  #1977 pc 24668
	j	be_else.9428 #pc 24672
	nop #pc 24676
	lw	%x6, 60(%x2)  #1979 pc 24680
	sw	%x1, 68(%x2)  #1979 pc 24684
	addi	%x2, %x2, 72  #1979 pc 24688
	jal	%x1, d_vec.2720  #1979 pc 24692
	addi	%x2, %x2, -72  #1979 pc 24696
	lw	%x1, 68(%x2) #1979 pc 24700
	addi	%x7, %x6, 0  #1979 pc 24704
	lw	%x6, 32(%x2)  #1979 pc 24708
	sw	%x1, 68(%x2)  #1979 pc 24712
	addi	%x2, %x2, 72  #1979 pc 24716
	jal	%x1, veciprod.2637  #1979 pc 24720
	addi	%x2, %x2, -72  #1979 pc 24724
	lw	%x1, 68(%x2) #1979 pc 24728
	lw	%x6, 44(%x2)  #1980 pc 24732
	fsw	%f0, 72(%x2)  #1980 pc 24736
	sw	%x1, 80(%x2)  #1980 pc 24740
	addi	%x2, %x2, 84  #1980 pc 24744
	jal	%x1, r_bright.2728  #1980 pc 24748
	addi	%x2, %x2, -84  #1980 pc 24752
	lw	%x1, 80(%x2) #1980 pc 24756
	flw	%f1, 24(%x2)  #1981 pc 24760
	fmul	%f2, %f0, %f1  #1981 pc 24764
	flw	%f3, 72(%x2)  #1981 pc 24768
	fmul	%f2, %f2, %f3  #1981 pc 24772
	lw	%x6, 60(%x2)  #1982 pc 24776
	fsw	%f2, 80(%x2)  #1982 pc 24780
	fsw	%f0, 88(%x2)  #1982 pc 24784
	sw	%x1, 96(%x2)  #1982 pc 24788
	addi	%x2, %x2, 100  #1982 pc 24792
	jal	%x1, d_vec.2720  #1982 pc 24796
	addi	%x2, %x2, -100  #1982 pc 24800
	lw	%x1, 96(%x2) #1982 pc 24804
	addi	%x7, %x6, 0  #1982 pc 24808
	lw	%x6, 20(%x2)  #1982 pc 24812
	sw	%x1, 96(%x2)  #1982 pc 24816
	addi	%x2, %x2, 100  #1982 pc 24820
	jal	%x1, veciprod.2637  #1982 pc 24824
	addi	%x2, %x2, -100  #1982 pc 24828
	lw	%x1, 96(%x2) #1982 pc 24832
	flw	%f1, 88(%x2)  #1982 pc 24836
	fmul	%f1, %f1, %f0  #1982 pc 24840
	flw	%f0, 80(%x2)  #1983 pc 24844
	flw	%f2, 8(%x2)  #1983 pc 24848
	lw	%x29, 16(%x2)  #1983 pc 24852
	sw	%x1, 96(%x2)  #1983 pc 24856
	lw	%x30, 0(%x29)  #1983 pc 24860
	addi	%x2, %x2, 100  #1983 pc 24864
	jalr	%x1, %x30, 0  #1983 pc 24868
	addi	%x2, %x2, -100  #1983 pc 24872
	lw	%x1, 96(%x2)  #1983 pc 24876
	j	be_cont.9429 #pc 24880
	nop #pc 24884
be_else.9428: #pc 24888
be_cont.9429: #pc 24888
	j	be_cont.9427 #pc 24888
	nop #pc 24892
be_else.9426: #pc 24896
be_cont.9427: #pc 24896
be_cont.9425: #pc 24896
	lw	%x6, 4(%x2)  #1987 pc 24896
	addi	%x6, %x6, -1  #1987 pc 24900
	flw	%f0, 24(%x2)  #1987 pc 24904
	flw	%f1, 8(%x2)  #1987 pc 24908
	lw	%x7, 20(%x2)  #1987 pc 24912
	lw	%x29, 0(%x2)  #1987 pc 24916
	lw	%x30, 0(%x29)  #1987 pc 24920
	jalr	%x0, %x30, 0  #1987 pc 24924
	nop #pc 24928
bge_else.9423: #pc 24932
	ret #pc 24932
	nop #pc 24936
trace_ray.2940:  #pc 24940
	lw	%x9, 80(%x29)  #0 pc 24940
	lw	%x10, 76(%x29)  #0 pc 24944
	lw	%x11, 72(%x29)  #0 pc 24948
	lw	%x12, 68(%x29)  #0 pc 24952
	lw	%x13, 64(%x29)  #0 pc 24956
	lw	%x14, 60(%x29)  #0 pc 24960
	lw	%x15, 56(%x29)  #0 pc 24964
	lw	%x16, 52(%x29)  #0 pc 24968
	lw	%x17, 48(%x29)  #0 pc 24972
	lw	%x18, 44(%x29)  #0 pc 24976
	lw	%x19, 40(%x29)  #0 pc 24980
	lw	%x20, 36(%x29)  #0 pc 24984
	lw	%x21, 32(%x29)  #0 pc 24988
	lw	%x22, 28(%x29)  #0 pc 24992
	lw	%x23, 24(%x29)  #0 pc 24996
	lw	%x24, 20(%x29)  #0 pc 25000
	lw	%x25, 16(%x29)  #0 pc 25004
	lw	%x26, 12(%x29)  #0 pc 25008
	lw	%x27, 8(%x29)  #0 pc 25012
	lw	%x28, 4(%x29)  #0 pc 25016
	addi	%x31, %x0, 4  #pc 25020
	bge	%x31, %x6, 12  #1996 pc 25024
	j	ble_else.9432 #pc 25028
	nop #pc 25032
	sw	%x29, 0(%x2)  #1997 pc 25036
	fsw	%f1, 8(%x2)  #1997 pc 25040
	sw	%x11, 16(%x2)  #1997 pc 25044
	sw	%x10, 20(%x2)  #1997 pc 25048
	sw	%x20, 24(%x2)  #1997 pc 25052
	sw	%x15, 28(%x2)  #1997 pc 25056
	sw	%x28, 32(%x2)  #1997 pc 25060
	sw	%x14, 36(%x2)  #1997 pc 25064
	sw	%x17, 40(%x2)  #1997 pc 25068
	sw	%x19, 44(%x2)  #1997 pc 25072
	sw	%x12, 48(%x2)  #1997 pc 25076
	sw	%x8, 52(%x2)  #1997 pc 25080
	sw	%x23, 56(%x2)  #1997 pc 25084
	sw	%x9, 60(%x2)  #1997 pc 25088
	sw	%x24, 64(%x2)  #1997 pc 25092
	sw	%x13, 68(%x2)  #1997 pc 25096
	sw	%x26, 72(%x2)  #1997 pc 25100
	sw	%x18, 76(%x2)  #1997 pc 25104
	sw	%x25, 80(%x2)  #1997 pc 25108
	sw	%x16, 84(%x2)  #1997 pc 25112
	sw	%x27, 88(%x2)  #1997 pc 25116
	fsw	%f0, 96(%x2)  #1997 pc 25120
	sw	%x21, 104(%x2)  #1997 pc 25124
	sw	%x6, 108(%x2)  #1997 pc 25128
	sw	%x7, 112(%x2)  #1997 pc 25132
	sw	%x22, 116(%x2)  #1997 pc 25136
	addi	%x6, %x8, 0  #0 pc 25140
	sw	%x1, 120(%x2)  #1997 pc 25144
	addi	%x2, %x2, 124  #1997 pc 25148
	jal	%x1, p_surface_ids.2705  #1997 pc 25152
	addi	%x2, %x2, -124  #1997 pc 25156
	lw	%x1, 120(%x2) #1997 pc 25160
	lw	%x7, 112(%x2)  #1998 pc 25164
	lw	%x29, 116(%x2)  #1998 pc 25168
	sw	%x6, 120(%x2)  #1998 pc 25172
	addi	%x6, %x7, 0  #0 pc 25176
	sw	%x1, 124(%x2)  #1998 pc 25180
	lw	%x30, 0(%x29)  #1998 pc 25184
	addi	%x2, %x2, 128  #1998 pc 25188
	jalr	%x1, %x30, 0  #1998 pc 25192
	addi	%x2, %x2, -128  #1998 pc 25196
	lw	%x1, 124(%x2)  #1998 pc 25200
	beq	%x6, %x0, 12  #1998 pc 25204
	j	be_else.9435 #pc 25208
	nop #pc 25212
	addi	%x6, %x0, -1  #0 pc 25216
	lw	%x7, 108(%x2)  #2061 pc 25220
	slli	%x8, %x7, 2  #2061 pc 25224
	lw	%x9, 120(%x2)  #2061 pc 25228
	add	%x31, %x8, %x9  #2061 pc 25232
	sw	%x6, 0(%x31)  #2061 pc 25236
	beq	%x7, %x0, 12  #2063 pc 25240
	j	be_else.9436 #pc 25244
	nop #pc 25248
	ret #pc 25252
	nop #pc 25256
be_else.9436: #pc 25260
	lw	%x6, 112(%x2)  #2064 pc 25260
	lw	%x7, 104(%x2)  #2064 pc 25264
	sw	%x1, 124(%x2)  #2064 pc 25268
	addi	%x2, %x2, 128  #2064 pc 25272
	jal	%x1, veciprod.2637  #2064 pc 25276
	addi	%x2, %x2, -128  #2064 pc 25280
	lw	%x1, 124(%x2) #2064 pc 25284
	sw	%x1, 124(%x2)  #2064 pc 25288
	addi	%x2, %x2, 128  #2064 pc 25292
	jal	%x1, fneg.2515  #2064 pc 25296
	addi	%x2, %x2, -128  #2064 pc 25300
	lw	%x1, 124(%x2) #2064 pc 25304
	fsw	%f0, 128(%x2)  #2066 pc 25308
	sw	%x1, 136(%x2)  #2066 pc 25312
	addi	%x2, %x2, 140  #2066 pc 25316
	jal	%x1, fispos.2511  #2066 pc 25320
	addi	%x2, %x2, -140  #2066 pc 25324
	lw	%x1, 136(%x2) #2066 pc 25328
	beq	%x6, %x0, 12  #2066 pc 25332
	j	be_else.9439 #pc 25336
	nop #pc 25340
	ret #pc 25344
	nop #pc 25348
be_else.9439: #pc 25352
	flw	%f0, 128(%x2)  #2069 pc 25352
	sw	%x1, 136(%x2)  #2069 pc 25356
	addi	%x2, %x2, 140  #2069 pc 25360
	jal	%x1, fsqr.2517  #2069 pc 25364
	addi	%x2, %x2, -140  #2069 pc 25368
	lw	%x1, 136(%x2) #2069 pc 25372
	flw	%f1, 128(%x2)  #2069 pc 25376
	fmul	%f0, %f0, %f1  #2069 pc 25380
	flw	%f1, 96(%x2)  #2069 pc 25384
	fmul	%f0, %f0, %f1  #2069 pc 25388
	lw	%x6, 88(%x2)  #2069 pc 25392
	flw	%f1, 0(%x6)  #2069 pc 25396
	fmul	%f0, %f0, %f1  #2069 pc 25400
	lw	%x6, 84(%x2)  #2070 pc 25404
	flw	%f1, 0(%x6)  #2070 pc 25408
	fadd	%f1, %f1, %f0  #2070 pc 25412
	fsw	%f1, 0(%x6)  #2070 pc 25416
	flw	%f1, 4(%x6)  #2071 pc 25420
	fadd	%f1, %f1, %f0  #2071 pc 25424
	fsw	%f1, 4(%x6)  #2071 pc 25428
	flw	%f1, 8(%x6)  #2072 pc 25432
	fadd	%f0, %f1, %f0  #2072 pc 25436
	fsw	%f0, 8(%x6)  #2072 pc 25440
	ret #pc 25444
	nop #pc 25448
be_else.9435: #pc 25452
	lw	%x6, 80(%x2)  #2000 pc 25452
	lw	%x6, 0(%x6)  #2000 pc 25456
	slli	%x7, %x6, 2  #2001 pc 25460
	lw	%x8, 76(%x2)  #2001 pc 25464
	add	%x31, %x7, %x8  #2001 pc 25468
	lw	%x7, 0(%x31)  #2001 pc 25472
	sw	%x6, 136(%x2)  #2002 pc 25476
	sw	%x7, 140(%x2)  #2002 pc 25480
	addi	%x6, %x7, 0  #0 pc 25484
	sw	%x1, 144(%x2)  #2002 pc 25488
	addi	%x2, %x2, 148  #2002 pc 25492
	jal	%x1, o_reflectiontype.2663  #2002 pc 25496
	addi	%x2, %x2, -148  #2002 pc 25500
	lw	%x1, 144(%x2) #2002 pc 25504
	lw	%x7, 140(%x2)  #2003 pc 25508
	sw	%x6, 144(%x2)  #2003 pc 25512
	addi	%x6, %x7, 0  #0 pc 25516
	sw	%x1, 148(%x2)  #2003 pc 25520
	addi	%x2, %x2, 152  #2003 pc 25524
	jal	%x1, o_diffuse.2683  #2003 pc 25528
	addi	%x2, %x2, -152  #2003 pc 25532
	lw	%x1, 148(%x2) #2003 pc 25536
	flw	%f1, 96(%x2)  #2003 pc 25540
	fmul	%f0, %f0, %f1  #2003 pc 25544
	lw	%x6, 140(%x2)  #2005 pc 25548
	lw	%x7, 112(%x2)  #2005 pc 25552
	lw	%x29, 72(%x2)  #2005 pc 25556
	fsw	%f0, 152(%x2)  #2005 pc 25560
	sw	%x1, 160(%x2)  #2005 pc 25564
	lw	%x30, 0(%x29)  #2005 pc 25568
	addi	%x2, %x2, 164  #2005 pc 25572
	jalr	%x1, %x30, 0  #2005 pc 25576
	addi	%x2, %x2, -164  #2005 pc 25580
	lw	%x1, 160(%x2)  #2005 pc 25584
	lw	%x6, 68(%x2)  #2006 pc 25588
	lw	%x7, 64(%x2)  #2006 pc 25592
	sw	%x1, 160(%x2)  #2006 pc 25596
	addi	%x2, %x2, 164  #2006 pc 25600
	jal	%x1, veccpy.2631  #2006 pc 25604
	addi	%x2, %x2, -164  #2006 pc 25608
	lw	%x1, 160(%x2) #2006 pc 25612
	lw	%x6, 140(%x2)  #2007 pc 25616
	lw	%x7, 64(%x2)  #2007 pc 25620
	lw	%x29, 60(%x2)  #2007 pc 25624
	sw	%x1, 160(%x2)  #2007 pc 25628
	lw	%x30, 0(%x29)  #2007 pc 25632
	addi	%x2, %x2, 164  #2007 pc 25636
	jalr	%x1, %x30, 0  #2007 pc 25640
	addi	%x2, %x2, -164  #2007 pc 25644
	lw	%x1, 160(%x2)  #2007 pc 25648
	addi	%x7, %x0, 4  #0 pc 25652
	lw	%x6, 136(%x2)  #2010 pc 25656
	sw	%x1, 160(%x2)  #2010 pc 25660
	addi	%x2, %x2, 164  #2010 pc 25664
	jal	%x1, mul.2547  #2010 pc 25668
	addi	%x2, %x2, -164  #2010 pc 25672
	lw	%x1, 160(%x2) #2010 pc 25676
	lw	%x7, 56(%x2)  #2010 pc 25680
	lw	%x7, 0(%x7)  #2010 pc 25684
	add	%x6, %x6, %x7  #2010 pc 25688
	lw	%x7, 108(%x2)  #2010 pc 25692
	slli	%x8, %x7, 2  #2010 pc 25696
	lw	%x9, 120(%x2)  #2010 pc 25700
	add	%x31, %x8, %x9  #2010 pc 25704
	sw	%x6, 0(%x31)  #2010 pc 25708
	lw	%x6, 52(%x2)  #2011 pc 25712
	sw	%x1, 160(%x2)  #2011 pc 25716
	addi	%x2, %x2, 164  #2011 pc 25720
	jal	%x1, p_intersection_points.2703  #2011 pc 25724
	addi	%x2, %x2, -164  #2011 pc 25728
	lw	%x1, 160(%x2) #2011 pc 25732
	lw	%x7, 108(%x2)  #2012 pc 25736
	slli	%x8, %x7, 2  #2012 pc 25740
	add	%x31, %x8, %x6  #2012 pc 25744
	lw	%x6, 0(%x31)  #2012 pc 25748
	lw	%x8, 64(%x2)  #2012 pc 25752
	addi	%x7, %x8, 0  #0 pc 25756
	sw	%x1, 160(%x2)  #2012 pc 25760
	addi	%x2, %x2, 164  #2012 pc 25764
	jal	%x1, veccpy.2631  #2012 pc 25768
	addi	%x2, %x2, -164  #2012 pc 25772
	lw	%x1, 160(%x2) #2012 pc 25776
	lw	%x6, 52(%x2)  #2015 pc 25780
	sw	%x1, 160(%x2)  #2015 pc 25784
	addi	%x2, %x2, 164  #2015 pc 25788
	jal	%x1, p_calc_diffuse.2707  #2015 pc 25792
	addi	%x2, %x2, -164  #2015 pc 25796
	lw	%x1, 160(%x2) #2015 pc 25800
	lw	%x7, 140(%x2)  #2016 pc 25804
	sw	%x6, 160(%x2)  #2016 pc 25808
	addi	%x6, %x7, 0  #0 pc 25812
	sw	%x1, 164(%x2)  #2016 pc 25816
	addi	%x2, %x2, 168  #2016 pc 25820
	jal	%x1, o_diffuse.2683  #2016 pc 25824
	addi	%x2, %x2, -168  #2016 pc 25828
	lw	%x1, 164(%x2) #2016 pc 25832
	fmv	%f1, l.6248  #0 pc 25836
	sw	%x1, 164(%x2)  #2016 pc 25840
	addi	%x2, %x2, 168  #2016 pc 25844
	jal	%x1, fless.2521  #2016 pc 25848
	addi	%x2, %x2, -168  #2016 pc 25852
	lw	%x1, 164(%x2) #2016 pc 25856
	beq	%x6, %x0, 12  #2016 pc 25860
	j	be_else.9443 #pc 25864
	nop #pc 25868
	addi	%x6, %x0, 1  #0 pc 25872
	lw	%x7, 108(%x2)  #2019 pc 25876
	slli	%x8, %x7, 2  #2019 pc 25880
	lw	%x9, 160(%x2)  #2019 pc 25884
	add	%x31, %x8, %x9  #2019 pc 25888
	sw	%x6, 0(%x31)  #2019 pc 25892
	lw	%x6, 52(%x2)  #2020 pc 25896
	sw	%x1, 164(%x2)  #2020 pc 25900
	addi	%x2, %x2, 168  #2020 pc 25904
	jal	%x1, p_energy.2709  #2020 pc 25908
	addi	%x2, %x2, -168  #2020 pc 25912
	lw	%x1, 164(%x2) #2020 pc 25916
	lw	%x7, 108(%x2)  #2021 pc 25920
	slli	%x8, %x7, 2  #2021 pc 25924
	add	%x31, %x8, %x6  #2021 pc 25928
	lw	%x8, 0(%x31)  #2021 pc 25932
	lw	%x9, 48(%x2)  #2021 pc 25936
	sw	%x6, 164(%x2)  #2021 pc 25940
	addi	%x7, %x9, 0  #0 pc 25944
	addi	%x6, %x8, 0  #0 pc 25948
	sw	%x1, 168(%x2)  #2021 pc 25952
	addi	%x2, %x2, 172  #2021 pc 25956
	jal	%x1, veccpy.2631  #2021 pc 25960
	addi	%x2, %x2, -172  #2021 pc 25964
	lw	%x1, 168(%x2) #2021 pc 25968
	lw	%x6, 108(%x2)  #2022 pc 25972
	slli	%x7, %x6, 2  #2022 pc 25976
	lw	%x8, 164(%x2)  #2022 pc 25980
	add	%x31, %x7, %x8  #2022 pc 25984
	lw	%x7, 0(%x31)  #2022 pc 25988
	fmv	%f0, l.6814  #0 pc 25992
	flw	%f1, 152(%x2)  #2022 pc 25996
	fmul	%f0, %f0, %f1  #2022 pc 26000
	addi	%x6, %x7, 0  #0 pc 26004
	sw	%x1, 168(%x2)  #2022 pc 26008
	addi	%x2, %x2, 172  #2022 pc 26012
	jal	%x1, vecscale.2652  #2022 pc 26016
	addi	%x2, %x2, -172  #2022 pc 26020
	lw	%x1, 168(%x2) #2022 pc 26024
	lw	%x6, 52(%x2)  #2023 pc 26028
	sw	%x1, 168(%x2)  #2023 pc 26032
	addi	%x2, %x2, 172  #2023 pc 26036
	jal	%x1, p_nvectors.2718  #2023 pc 26040
	addi	%x2, %x2, -172  #2023 pc 26044
	lw	%x1, 168(%x2) #2023 pc 26048
	lw	%x7, 108(%x2)  #2024 pc 26052
	slli	%x8, %x7, 2  #2024 pc 26056
	add	%x31, %x8, %x6  #2024 pc 26060
	lw	%x6, 0(%x31)  #2024 pc 26064
	lw	%x8, 44(%x2)  #2024 pc 26068
	addi	%x7, %x8, 0  #0 pc 26072
	sw	%x1, 168(%x2)  #2024 pc 26076
	addi	%x2, %x2, 172  #2024 pc 26080
	jal	%x1, veccpy.2631  #2024 pc 26084
	addi	%x2, %x2, -172  #2024 pc 26088
	lw	%x1, 168(%x2) #2024 pc 26092
	j	be_cont.9444 #pc 26096
	nop #pc 26100
be_else.9443: #pc 26104
	addi	%x6, %x0, 0  #0 pc 26104
	lw	%x7, 108(%x2)  #2017 pc 26108
	slli	%x8, %x7, 2  #2017 pc 26112
	lw	%x9, 160(%x2)  #2017 pc 26116
	add	%x31, %x8, %x9  #2017 pc 26120
	sw	%x6, 0(%x31)  #2017 pc 26124
be_cont.9444: #pc 26128
	fmv	%f0, l.6817  #0 pc 26128
	lw	%x6, 112(%x2)  #2027 pc 26132
	lw	%x7, 44(%x2)  #2027 pc 26136
	fsw	%f0, 168(%x2)  #2027 pc 26140
	sw	%x1, 176(%x2)  #2027 pc 26144
	addi	%x2, %x2, 180  #2027 pc 26148
	jal	%x1, veciprod.2637  #2027 pc 26152
	addi	%x2, %x2, -180  #2027 pc 26156
	lw	%x1, 176(%x2) #2027 pc 26160
	flw	%f1, 168(%x2)  #2027 pc 26164
	fmul	%f0, %f1, %f0  #2027 pc 26168
	lw	%x6, 112(%x2)  #2029 pc 26172
	lw	%x7, 44(%x2)  #2029 pc 26176
	sw	%x1, 176(%x2)  #2029 pc 26180
	addi	%x2, %x2, 180  #2029 pc 26184
	jal	%x1, vecaccum.2645  #2029 pc 26188
	addi	%x2, %x2, -180  #2029 pc 26192
	lw	%x1, 176(%x2) #2029 pc 26196
	lw	%x6, 140(%x2)  #2031 pc 26200
	sw	%x1, 176(%x2)  #2031 pc 26204
	addi	%x2, %x2, 180  #2031 pc 26208
	jal	%x1, o_hilight.2685  #2031 pc 26212
	addi	%x2, %x2, -180  #2031 pc 26216
	lw	%x1, 176(%x2) #2031 pc 26220
	flw	%f1, 96(%x2)  #2031 pc 26224
	fmul	%f0, %f1, %f0  #2031 pc 26228
	addi	%x6, %x0, 0  #0 pc 26232
	lw	%x7, 40(%x2)  #2034 pc 26236
	lw	%x7, 0(%x7)  #2034 pc 26240
	lw	%x29, 36(%x2)  #2034 pc 26244
	fsw	%f0, 176(%x2)  #2034 pc 26248
	sw	%x1, 184(%x2)  #2034 pc 26252
	lw	%x30, 0(%x29)  #2034 pc 26256
	addi	%x2, %x2, 188  #2034 pc 26260
	jalr	%x1, %x30, 0  #2034 pc 26264
	addi	%x2, %x2, -188  #2034 pc 26268
	lw	%x1, 184(%x2)  #2034 pc 26272
	beq	%x6, %x0, 12  #2034 pc 26276
	j	be_else.9445 #pc 26280
	nop #pc 26284
	lw	%x6, 44(%x2)  #2035 pc 26288
	lw	%x7, 104(%x2)  #2035 pc 26292
	sw	%x1, 184(%x2)  #2035 pc 26296
	addi	%x2, %x2, 188  #2035 pc 26300
	jal	%x1, veciprod.2637  #2035 pc 26304
	addi	%x2, %x2, -188  #2035 pc 26308
	lw	%x1, 184(%x2) #2035 pc 26312
	sw	%x1, 184(%x2)  #2035 pc 26316
	addi	%x2, %x2, 188  #2035 pc 26320
	jal	%x1, fneg.2515  #2035 pc 26324
	addi	%x2, %x2, -188  #2035 pc 26328
	lw	%x1, 184(%x2) #2035 pc 26332
	flw	%f1, 152(%x2)  #2035 pc 26336
	fmul	%f0, %f0, %f1  #2035 pc 26340
	lw	%x6, 112(%x2)  #2036 pc 26344
	lw	%x7, 104(%x2)  #2036 pc 26348
	fsw	%f0, 184(%x2)  #2036 pc 26352
	sw	%x1, 192(%x2)  #2036 pc 26356
	addi	%x2, %x2, 196  #2036 pc 26360
	jal	%x1, veciprod.2637  #2036 pc 26364
	addi	%x2, %x2, -196  #2036 pc 26368
	lw	%x1, 192(%x2) #2036 pc 26372
	sw	%x1, 192(%x2)  #2036 pc 26376
	addi	%x2, %x2, 196  #2036 pc 26380
	jal	%x1, fneg.2515  #2036 pc 26384
	addi	%x2, %x2, -196  #2036 pc 26388
	lw	%x1, 192(%x2) #2036 pc 26392
	fadd	%f1, %f0, %f30  #2036 pc 26396
	flw	%f0, 184(%x2)  #2037 pc 26400
	flw	%f2, 176(%x2)  #2037 pc 26404
	lw	%x29, 32(%x2)  #2037 pc 26408
	sw	%x1, 192(%x2)  #2037 pc 26412
	lw	%x30, 0(%x29)  #2037 pc 26416
	addi	%x2, %x2, 196  #2037 pc 26420
	jalr	%x1, %x30, 0  #2037 pc 26424
	addi	%x2, %x2, -196  #2037 pc 26428
	lw	%x1, 192(%x2)  #2037 pc 26432
	j	be_cont.9446 #pc 26436
	nop #pc 26440
be_else.9445: #pc 26444
be_cont.9446: #pc 26444
	lw	%x6, 64(%x2)  #2041 pc 26444
	lw	%x29, 28(%x2)  #2041 pc 26448
	sw	%x1, 192(%x2)  #2041 pc 26452
	lw	%x30, 0(%x29)  #2041 pc 26456
	addi	%x2, %x2, 196  #2041 pc 26460
	jalr	%x1, %x30, 0  #2041 pc 26464
	addi	%x2, %x2, -196  #2041 pc 26468
	lw	%x1, 192(%x2)  #2041 pc 26472
	lw	%x6, 24(%x2)  #2042 pc 26476
	lw	%x6, 0(%x6)  #2042 pc 26480
	addi	%x6, %x6, -1  #2042 pc 26484
	flw	%f0, 152(%x2)  #2042 pc 26488
	flw	%f1, 176(%x2)  #2042 pc 26492
	lw	%x7, 112(%x2)  #2042 pc 26496
	lw	%x29, 20(%x2)  #2042 pc 26500
	sw	%x1, 192(%x2)  #2042 pc 26504
	lw	%x30, 0(%x29)  #2042 pc 26508
	addi	%x2, %x2, 196  #2042 pc 26512
	jalr	%x1, %x30, 0  #2042 pc 26516
	addi	%x2, %x2, -196  #2042 pc 26520
	lw	%x1, 192(%x2)  #2042 pc 26524
	fmv	%f0, l.6821  #0 pc 26528
	flw	%f1, 96(%x2)  #2045 pc 26532
	sw	%x1, 192(%x2)  #2045 pc 26536
	addi	%x2, %x2, 196  #2045 pc 26540
	jal	%x1, fless.2521  #2045 pc 26544
	addi	%x2, %x2, -196  #2045 pc 26548
	lw	%x1, 192(%x2) #2045 pc 26552
	beq	%x6, %x0, 12  #2045 pc 26556
	j	be_else.9447 #pc 26560
	nop #pc 26564
	ret #pc 26568
	nop #pc 26572
be_else.9447: #pc 26576
	lw	%x6, 108(%x2)  #2047 pc 26576
	addi	%x31, %x0, 4  #pc 26580
	bge	%x6, %x31, 12  #2047 pc 26584
	j	bge_else.9449 #pc 26588
	nop #pc 26592
	j	bge_cont.9450 #pc 26596
	nop #pc 26600
bge_else.9449: #pc 26604
	addi	%x7, %x6, 1  #2048 pc 26604
	addi	%x8, %x0, -1  #0 pc 26608
	slli	%x7, %x7, 2  #2048 pc 26612
	lw	%x9, 120(%x2)  #2048 pc 26616
	add	%x31, %x7, %x9  #2048 pc 26620
	sw	%x8, 0(%x31)  #2048 pc 26624
bge_cont.9450: #pc 26628
	lw	%x7, 144(%x2)  #2051 pc 26628
	addi	%x31, %x0, 2  #pc 26632
	beq	%x7, %x31, 12  #2051 pc 26636
	j	be_else.9451 #pc 26640
	nop #pc 26644
	fmv	%f0, l.6263  #0 pc 26648
	lw	%x7, 140(%x2)  #2052 pc 26652
	fsw	%f0, 192(%x2)  #2052 pc 26656
	addi	%x6, %x7, 0  #0 pc 26660
	sw	%x1, 200(%x2)  #2052 pc 26664
	addi	%x2, %x2, 204  #2052 pc 26668
	jal	%x1, o_diffuse.2683  #2052 pc 26672
	addi	%x2, %x2, -204  #2052 pc 26676
	lw	%x1, 200(%x2) #2052 pc 26680
	flw	%f1, 192(%x2)  #2052 pc 26684
	fsub	%f0, %f1, %f0  #2052 pc 26688
	flw	%f1, 96(%x2)  #2052 pc 26692
	fmul	%f0, %f1, %f0  #2052 pc 26696
	lw	%x6, 108(%x2)  #2053 pc 26700
	addi	%x6, %x6, 1  #2053 pc 26704
	lw	%x7, 16(%x2)  #2053 pc 26708
	flw	%f1, 0(%x7)  #2053 pc 26712
	flw	%f2, 8(%x2)  #2053 pc 26716
	fadd	%f1, %f2, %f1  #2053 pc 26720
	lw	%x7, 112(%x2)  #2053 pc 26724
	lw	%x8, 52(%x2)  #2053 pc 26728
	lw	%x29, 0(%x2)  #2053 pc 26732
	lw	%x30, 0(%x29)  #2053 pc 26736
	jalr	%x0, %x30, 0  #2053 pc 26740
	nop #pc 26744
be_else.9451: #pc 26748
	ret #pc 26748
	nop #pc 26752
ble_else.9432: #pc 26756
	ret #pc 26756
	nop #pc 26760
trace_diffuse_ray.2946:  #pc 26764
	lw	%x7, 48(%x29)  #0 pc 26764
	lw	%x8, 44(%x29)  #0 pc 26768
	lw	%x9, 40(%x29)  #0 pc 26772
	lw	%x10, 36(%x29)  #0 pc 26776
	lw	%x11, 32(%x29)  #0 pc 26780
	lw	%x12, 28(%x29)  #0 pc 26784
	lw	%x13, 24(%x29)  #0 pc 26788
	lw	%x14, 20(%x29)  #0 pc 26792
	lw	%x15, 16(%x29)  #0 pc 26796
	lw	%x16, 12(%x29)  #0 pc 26800
	lw	%x17, 8(%x29)  #0 pc 26804
	lw	%x18, 4(%x29)  #0 pc 26808
	sw	%x8, 0(%x2)  #2091 pc 26812
	sw	%x18, 4(%x2)  #2091 pc 26816
	fsw	%f0, 8(%x2)  #2091 pc 26820
	sw	%x13, 16(%x2)  #2091 pc 26824
	sw	%x12, 20(%x2)  #2091 pc 26828
	sw	%x9, 24(%x2)  #2091 pc 26832
	sw	%x10, 28(%x2)  #2091 pc 26836
	sw	%x15, 32(%x2)  #2091 pc 26840
	sw	%x7, 36(%x2)  #2091 pc 26844
	sw	%x17, 40(%x2)  #2091 pc 26848
	sw	%x6, 44(%x2)  #2091 pc 26852
	sw	%x11, 48(%x2)  #2091 pc 26856
	sw	%x16, 52(%x2)  #2091 pc 26860
	addi	%x29, %x14, 0  #0 pc 26864
	sw	%x1, 56(%x2)  #2091 pc 26868
	lw	%x30, 0(%x29)  #2091 pc 26872
	addi	%x2, %x2, 60  #2091 pc 26876
	jalr	%x1, %x30, 0  #2091 pc 26880
	addi	%x2, %x2, -60  #2091 pc 26884
	lw	%x1, 56(%x2)  #2091 pc 26888
	beq	%x6, %x0, 12  #2091 pc 26892
	j	be_else.9454 #pc 26896
	nop #pc 26900
	ret #pc 26904
	nop #pc 26908
be_else.9454: #pc 26912
	lw	%x6, 52(%x2)  #2092 pc 26912
	lw	%x6, 0(%x6)  #2092 pc 26916
	slli	%x6, %x6, 2  #2092 pc 26920
	lw	%x7, 48(%x2)  #2092 pc 26924
	add	%x31, %x6, %x7  #2092 pc 26928
	lw	%x6, 0(%x31)  #2092 pc 26932
	lw	%x7, 44(%x2)  #2093 pc 26936
	sw	%x6, 56(%x2)  #2093 pc 26940
	addi	%x6, %x7, 0  #0 pc 26944
	sw	%x1, 60(%x2)  #2093 pc 26948
	addi	%x2, %x2, 64  #2093 pc 26952
	jal	%x1, d_vec.2720  #2093 pc 26956
	addi	%x2, %x2, -64  #2093 pc 26960
	lw	%x1, 60(%x2) #2093 pc 26964
	addi	%x7, %x6, 0  #2093 pc 26968
	lw	%x6, 56(%x2)  #2093 pc 26972
	lw	%x29, 40(%x2)  #2093 pc 26976
	sw	%x1, 60(%x2)  #2093 pc 26980
	lw	%x30, 0(%x29)  #2093 pc 26984
	addi	%x2, %x2, 64  #2093 pc 26988
	jalr	%x1, %x30, 0  #2093 pc 26992
	addi	%x2, %x2, -64  #2093 pc 26996
	lw	%x1, 60(%x2)  #2093 pc 27000
	lw	%x6, 56(%x2)  #2094 pc 27004
	lw	%x7, 32(%x2)  #2094 pc 27008
	lw	%x29, 36(%x2)  #2094 pc 27012
	sw	%x1, 60(%x2)  #2094 pc 27016
	lw	%x30, 0(%x29)  #2094 pc 27020
	addi	%x2, %x2, 64  #2094 pc 27024
	jalr	%x1, %x30, 0  #2094 pc 27028
	addi	%x2, %x2, -64  #2094 pc 27032
	lw	%x1, 60(%x2)  #2094 pc 27036
	addi	%x6, %x0, 0  #0 pc 27040
	lw	%x7, 28(%x2)  #2097 pc 27044
	lw	%x7, 0(%x7)  #2097 pc 27048
	lw	%x29, 24(%x2)  #2097 pc 27052
	sw	%x1, 60(%x2)  #2097 pc 27056
	lw	%x30, 0(%x29)  #2097 pc 27060
	addi	%x2, %x2, 64  #2097 pc 27064
	jalr	%x1, %x30, 0  #2097 pc 27068
	addi	%x2, %x2, -64  #2097 pc 27072
	lw	%x1, 60(%x2)  #2097 pc 27076
	beq	%x6, %x0, 12  #2097 pc 27080
	j	be_else.9456 #pc 27084
	nop #pc 27088
	lw	%x6, 20(%x2)  #2098 pc 27092
	lw	%x7, 16(%x2)  #2098 pc 27096
	sw	%x1, 60(%x2)  #2098 pc 27100
	addi	%x2, %x2, 64  #2098 pc 27104
	jal	%x1, veciprod.2637  #2098 pc 27108
	addi	%x2, %x2, -64  #2098 pc 27112
	lw	%x1, 60(%x2) #2098 pc 27116
	sw	%x1, 60(%x2)  #2098 pc 27120
	addi	%x2, %x2, 64  #2098 pc 27124
	jal	%x1, fneg.2515  #2098 pc 27128
	addi	%x2, %x2, -64  #2098 pc 27132
	lw	%x1, 60(%x2) #2098 pc 27136
	fsw	%f0, 64(%x2)  #2099 pc 27140
	sw	%x1, 72(%x2)  #2099 pc 27144
	addi	%x2, %x2, 76  #2099 pc 27148
	jal	%x1, fispos.2511  #2099 pc 27152
	addi	%x2, %x2, -76  #2099 pc 27156
	lw	%x1, 72(%x2) #2099 pc 27160
	beq	%x6, %x0, 12  #2099 pc 27164
	j	be_else.9458 #pc 27168
	nop #pc 27172
	fmv	%f0, l.6244  #0 pc 27176
	j	be_cont.9459 #pc 27180
	nop #pc 27184
be_else.9458: #pc 27188
	flw	%f0, 64(%x2)  #2099 pc 27188
be_cont.9459: #pc 27192
	flw	%f1, 8(%x2)  #2100 pc 27192
	fmul	%f0, %f1, %f0  #2100 pc 27196
	lw	%x6, 56(%x2)  #2100 pc 27200
	fsw	%f0, 72(%x2)  #2100 pc 27204
	sw	%x1, 80(%x2)  #2100 pc 27208
	addi	%x2, %x2, 84  #2100 pc 27212
	jal	%x1, o_diffuse.2683  #2100 pc 27216
	addi	%x2, %x2, -84  #2100 pc 27220
	lw	%x1, 80(%x2) #2100 pc 27224
	flw	%f1, 72(%x2)  #2100 pc 27228
	fmul	%f0, %f1, %f0  #2100 pc 27232
	lw	%x6, 4(%x2)  #2100 pc 27236
	lw	%x7, 0(%x2)  #2100 pc 27240
	j	vecaccum.2645  #2100 pc 27244
	nop #pc 27248
be_else.9456: #pc 27252
	ret #pc 27252
	nop #pc 27256
iter_trace_diffuse_rays.2949:  #pc 27260
	lw	%x10, 4(%x29)  #0 pc 27260
	bge	%x9, %x0, 12  #2108 pc 27264
	j	bge_else.9461 #pc 27268
	nop #pc 27272
	slli	%x11, %x9, 2  #2109 pc 27276
	add	%x31, %x11, %x6  #2109 pc 27280
	lw	%x11, 0(%x31)  #2109 pc 27284
	sw	%x8, 0(%x2)  #2109 pc 27288
	sw	%x29, 4(%x2)  #2109 pc 27292
	sw	%x10, 8(%x2)  #2109 pc 27296
	sw	%x6, 12(%x2)  #2109 pc 27300
	sw	%x9, 16(%x2)  #2109 pc 27304
	sw	%x7, 20(%x2)  #2109 pc 27308
	addi	%x6, %x11, 0  #0 pc 27312
	sw	%x1, 24(%x2)  #2109 pc 27316
	addi	%x2, %x2, 28  #2109 pc 27320
	jal	%x1, d_vec.2720  #2109 pc 27324
	addi	%x2, %x2, -28  #2109 pc 27328
	lw	%x1, 24(%x2) #2109 pc 27332
	lw	%x7, 20(%x2)  #2109 pc 27336
	sw	%x1, 24(%x2)  #2109 pc 27340
	addi	%x2, %x2, 28  #2109 pc 27344
	jal	%x1, veciprod.2637  #2109 pc 27348
	addi	%x2, %x2, -28  #2109 pc 27352
	lw	%x1, 24(%x2) #2109 pc 27356
	fsw	%f0, 24(%x2)  #2113 pc 27360
	sw	%x1, 32(%x2)  #2113 pc 27364
	addi	%x2, %x2, 36  #2113 pc 27368
	jal	%x1, fisneg.2513  #2113 pc 27372
	addi	%x2, %x2, -36  #2113 pc 27376
	lw	%x1, 32(%x2) #2113 pc 27380
	beq	%x6, %x0, 12  #2113 pc 27384
	j	be_else.9462 #pc 27388
	nop #pc 27392
	lw	%x6, 16(%x2)  #2116 pc 27396
	slli	%x7, %x6, 2  #2116 pc 27400
	lw	%x8, 12(%x2)  #2116 pc 27404
	add	%x31, %x7, %x8  #2116 pc 27408
	lw	%x7, 0(%x31)  #2116 pc 27412
	fmv	%f0, l.6843  #0 pc 27416
	flw	%f1, 24(%x2)  #2116 pc 27420
	fdiv	%f0, %f1, %f0  #2116 pc 27424
	lw	%x29, 8(%x2)  #2116 pc 27428
	addi	%x6, %x7, 0  #0 pc 27432
	sw	%x1, 32(%x2)  #2116 pc 27436
	lw	%x30, 0(%x29)  #2116 pc 27440
	addi	%x2, %x2, 36  #2116 pc 27444
	jalr	%x1, %x30, 0  #2116 pc 27448
	addi	%x2, %x2, -36  #2116 pc 27452
	lw	%x1, 32(%x2)  #2116 pc 27456
	j	be_cont.9463 #pc 27460
	nop #pc 27464
be_else.9462: #pc 27468
	lw	%x6, 16(%x2)  #2114 pc 27468
	addi	%x7, %x6, 1  #2114 pc 27472
	slli	%x7, %x7, 2  #2114 pc 27476
	lw	%x8, 12(%x2)  #2114 pc 27480
	add	%x31, %x7, %x8  #2114 pc 27484
	lw	%x7, 0(%x31)  #2114 pc 27488
	fmv	%f0, l.6840  #0 pc 27492
	flw	%f1, 24(%x2)  #2114 pc 27496
	fdiv	%f0, %f1, %f0  #2114 pc 27500
	lw	%x29, 8(%x2)  #2114 pc 27504
	addi	%x6, %x7, 0  #0 pc 27508
	sw	%x1, 32(%x2)  #2114 pc 27512
	lw	%x30, 0(%x29)  #2114 pc 27516
	addi	%x2, %x2, 36  #2114 pc 27520
	jalr	%x1, %x30, 0  #2114 pc 27524
	addi	%x2, %x2, -36  #2114 pc 27528
	lw	%x1, 32(%x2)  #2114 pc 27532
be_cont.9463: #pc 27536
	lw	%x6, 16(%x2)  #2118 pc 27536
	addi	%x9, %x6, -2  #2118 pc 27540
	lw	%x6, 12(%x2)  #2118 pc 27544
	lw	%x7, 20(%x2)  #2118 pc 27548
	lw	%x8, 0(%x2)  #2118 pc 27552
	lw	%x29, 4(%x2)  #2118 pc 27556
	lw	%x30, 0(%x29)  #2118 pc 27560
	jalr	%x0, %x30, 0  #2118 pc 27564
	nop #pc 27568
bge_else.9461: #pc 27572
	ret #pc 27572
	nop #pc 27576
trace_diffuse_rays.2954:  #pc 27580
	lw	%x9, 8(%x29)  #2124 pc 27580
	lw	%x10, 4(%x29)  #2124 pc 27584
	sw	%x8, 0(%x2)  #2124 pc 27588
	sw	%x7, 4(%x2)  #2124 pc 27592
	sw	%x6, 8(%x2)  #2124 pc 27596
	sw	%x10, 12(%x2)  #2124 pc 27600
	addi	%x6, %x8, 0  #0 pc 27604
	addi	%x29, %x9, 0  #0 pc 27608
	sw	%x1, 16(%x2)  #2124 pc 27612
	lw	%x30, 0(%x29)  #2124 pc 27616
	addi	%x2, %x2, 20  #2124 pc 27620
	jalr	%x1, %x30, 0  #2124 pc 27624
	addi	%x2, %x2, -20  #2124 pc 27628
	lw	%x1, 16(%x2)  #2124 pc 27632
	addi	%x9, %x0, 118  #0 pc 27636
	lw	%x6, 8(%x2)  #2128 pc 27640
	lw	%x7, 4(%x2)  #2128 pc 27644
	lw	%x8, 0(%x2)  #2128 pc 27648
	lw	%x29, 12(%x2)  #2128 pc 27652
	lw	%x30, 0(%x29)  #2128 pc 27656
	jalr	%x0, %x30, 0  #2128 pc 27660
	nop #pc 27664
trace_diffuse_ray_80percent.2958:  #pc 27668
	lw	%x9, 8(%x29)  #0 pc 27668
	lw	%x10, 4(%x29)  #0 pc 27672
	sw	%x8, 0(%x2)  #2135 pc 27676
	sw	%x7, 4(%x2)  #2135 pc 27680
	sw	%x9, 8(%x2)  #2135 pc 27684
	sw	%x10, 12(%x2)  #2135 pc 27688
	sw	%x6, 16(%x2)  #2135 pc 27692
	beq	%x6, %x0, 12  #2135 pc 27696
	j	be_else.9465 #pc 27700
	nop #pc 27704
	j	be_cont.9466 #pc 27708
	nop #pc 27712
be_else.9465: #pc 27716
	lw	%x11, 0(%x10)  #2136 pc 27716
	addi	%x6, %x11, 0  #0 pc 27720
	addi	%x29, %x9, 0  #0 pc 27724
	sw	%x1, 20(%x2)  #2136 pc 27728
	lw	%x30, 0(%x29)  #2136 pc 27732
	addi	%x2, %x2, 24  #2136 pc 27736
	jalr	%x1, %x30, 0  #2136 pc 27740
	addi	%x2, %x2, -24  #2136 pc 27744
	lw	%x1, 20(%x2)  #2136 pc 27748
be_cont.9466: #pc 27752
	lw	%x6, 16(%x2)  #2139 pc 27752
	addi	%x31, %x0, 1  #pc 27756
	beq	%x6, %x31, 12  #2139 pc 27760
	j	be_else.9467 #pc 27764
	nop #pc 27768
	j	be_cont.9468 #pc 27772
	nop #pc 27776
be_else.9467: #pc 27780
	lw	%x7, 12(%x2)  #2140 pc 27780
	lw	%x8, 4(%x7)  #2140 pc 27784
	lw	%x9, 4(%x2)  #2140 pc 27788
	lw	%x10, 0(%x2)  #2140 pc 27792
	lw	%x29, 8(%x2)  #2140 pc 27796
	addi	%x7, %x9, 0  #0 pc 27800
	addi	%x6, %x8, 0  #0 pc 27804
	addi	%x8, %x10, 0  #0 pc 27808
	sw	%x1, 20(%x2)  #2140 pc 27812
	lw	%x30, 0(%x29)  #2140 pc 27816
	addi	%x2, %x2, 24  #2140 pc 27820
	jalr	%x1, %x30, 0  #2140 pc 27824
	addi	%x2, %x2, -24  #2140 pc 27828
	lw	%x1, 20(%x2)  #2140 pc 27832
be_cont.9468: #pc 27836
	lw	%x6, 16(%x2)  #2143 pc 27836
	addi	%x31, %x0, 2  #pc 27840
	beq	%x6, %x31, 12  #2143 pc 27844
	j	be_else.9469 #pc 27848
	nop #pc 27852
	j	be_cont.9470 #pc 27856
	nop #pc 27860
be_else.9469: #pc 27864
	lw	%x7, 12(%x2)  #2144 pc 27864
	lw	%x8, 8(%x7)  #2144 pc 27868
	lw	%x9, 4(%x2)  #2144 pc 27872
	lw	%x10, 0(%x2)  #2144 pc 27876
	lw	%x29, 8(%x2)  #2144 pc 27880
	addi	%x7, %x9, 0  #0 pc 27884
	addi	%x6, %x8, 0  #0 pc 27888
	addi	%x8, %x10, 0  #0 pc 27892
	sw	%x1, 20(%x2)  #2144 pc 27896
	lw	%x30, 0(%x29)  #2144 pc 27900
	addi	%x2, %x2, 24  #2144 pc 27904
	jalr	%x1, %x30, 0  #2144 pc 27908
	addi	%x2, %x2, -24  #2144 pc 27912
	lw	%x1, 20(%x2)  #2144 pc 27916
be_cont.9470: #pc 27920
	lw	%x6, 16(%x2)  #2147 pc 27920
	addi	%x31, %x0, 3  #pc 27924
	beq	%x6, %x31, 12  #2147 pc 27928
	j	be_else.9471 #pc 27932
	nop #pc 27936
	j	be_cont.9472 #pc 27940
	nop #pc 27944
be_else.9471: #pc 27948
	lw	%x7, 12(%x2)  #2148 pc 27948
	lw	%x8, 12(%x7)  #2148 pc 27952
	lw	%x9, 4(%x2)  #2148 pc 27956
	lw	%x10, 0(%x2)  #2148 pc 27960
	lw	%x29, 8(%x2)  #2148 pc 27964
	addi	%x7, %x9, 0  #0 pc 27968
	addi	%x6, %x8, 0  #0 pc 27972
	addi	%x8, %x10, 0  #0 pc 27976
	sw	%x1, 20(%x2)  #2148 pc 27980
	lw	%x30, 0(%x29)  #2148 pc 27984
	addi	%x2, %x2, 24  #2148 pc 27988
	jalr	%x1, %x30, 0  #2148 pc 27992
	addi	%x2, %x2, -24  #2148 pc 27996
	lw	%x1, 20(%x2)  #2148 pc 28000
be_cont.9472: #pc 28004
	lw	%x6, 16(%x2)  #2151 pc 28004
	addi	%x31, %x0, 4  #pc 28008
	beq	%x6, %x31, 12  #2151 pc 28012
	j	be_else.9473 #pc 28016
	nop #pc 28020
	ret #pc 28024
	nop #pc 28028
be_else.9473: #pc 28032
	lw	%x6, 12(%x2)  #2152 pc 28032
	lw	%x6, 16(%x6)  #2152 pc 28036
	lw	%x7, 4(%x2)  #2152 pc 28040
	lw	%x8, 0(%x2)  #2152 pc 28044
	lw	%x29, 8(%x2)  #2152 pc 28048
	lw	%x30, 0(%x29)  #2152 pc 28052
	jalr	%x0, %x30, 0  #2152 pc 28056
	nop #pc 28060
calc_diffuse_using_1point.2962:  #pc 28064
	lw	%x8, 12(%x29)  #2161 pc 28064
	lw	%x9, 8(%x29)  #2161 pc 28068
	lw	%x10, 4(%x29)  #2161 pc 28072
	sw	%x9, 0(%x2)  #2161 pc 28076
	sw	%x8, 4(%x2)  #2161 pc 28080
	sw	%x10, 8(%x2)  #2161 pc 28084
	sw	%x7, 12(%x2)  #2161 pc 28088
	sw	%x6, 16(%x2)  #2161 pc 28092
	sw	%x1, 20(%x2)  #2161 pc 28096
	addi	%x2, %x2, 24  #2161 pc 28100
	jal	%x1, p_received_ray_20percent.2711  #2161 pc 28104
	addi	%x2, %x2, -24  #2161 pc 28108
	lw	%x1, 20(%x2) #2161 pc 28112
	lw	%x7, 16(%x2)  #2162 pc 28116
	sw	%x6, 20(%x2)  #2162 pc 28120
	addi	%x6, %x7, 0  #0 pc 28124
	sw	%x1, 24(%x2)  #2162 pc 28128
	addi	%x2, %x2, 28  #2162 pc 28132
	jal	%x1, p_nvectors.2718  #2162 pc 28136
	addi	%x2, %x2, -28  #2162 pc 28140
	lw	%x1, 24(%x2) #2162 pc 28144
	lw	%x7, 16(%x2)  #2163 pc 28148
	sw	%x6, 24(%x2)  #2163 pc 28152
	addi	%x6, %x7, 0  #0 pc 28156
	sw	%x1, 28(%x2)  #2163 pc 28160
	addi	%x2, %x2, 32  #2163 pc 28164
	jal	%x1, p_intersection_points.2703  #2163 pc 28168
	addi	%x2, %x2, -32  #2163 pc 28172
	lw	%x1, 28(%x2) #2163 pc 28176
	lw	%x7, 16(%x2)  #2164 pc 28180
	sw	%x6, 28(%x2)  #2164 pc 28184
	addi	%x6, %x7, 0  #0 pc 28188
	sw	%x1, 32(%x2)  #2164 pc 28192
	addi	%x2, %x2, 36  #2164 pc 28196
	jal	%x1, p_energy.2709  #2164 pc 28200
	addi	%x2, %x2, -36  #2164 pc 28204
	lw	%x1, 32(%x2) #2164 pc 28208
	lw	%x7, 12(%x2)  #2166 pc 28212
	slli	%x8, %x7, 2  #2166 pc 28216
	lw	%x9, 20(%x2)  #2166 pc 28220
	add	%x31, %x8, %x9  #2166 pc 28224
	lw	%x8, 0(%x31)  #2166 pc 28228
	lw	%x9, 8(%x2)  #2166 pc 28232
	sw	%x6, 32(%x2)  #2166 pc 28236
	addi	%x7, %x8, 0  #0 pc 28240
	addi	%x6, %x9, 0  #0 pc 28244
	sw	%x1, 36(%x2)  #2166 pc 28248
	addi	%x2, %x2, 40  #2166 pc 28252
	jal	%x1, veccpy.2631  #2166 pc 28256
	addi	%x2, %x2, -40  #2166 pc 28260
	lw	%x1, 36(%x2) #2166 pc 28264
	lw	%x6, 16(%x2)  #2168 pc 28268
	sw	%x1, 36(%x2)  #2168 pc 28272
	addi	%x2, %x2, 40  #2168 pc 28276
	jal	%x1, p_group_id.2713  #2168 pc 28280
	addi	%x2, %x2, -40  #2168 pc 28284
	lw	%x1, 36(%x2) #2168 pc 28288
	lw	%x7, 12(%x2)  #2169 pc 28292
	slli	%x8, %x7, 2  #2169 pc 28296
	lw	%x9, 24(%x2)  #2169 pc 28300
	add	%x31, %x8, %x9  #2169 pc 28304
	lw	%x8, 0(%x31)  #2169 pc 28308
	slli	%x9, %x7, 2  #2170 pc 28312
	lw	%x10, 28(%x2)  #2170 pc 28316
	add	%x31, %x9, %x10  #2170 pc 28320
	lw	%x9, 0(%x31)  #2170 pc 28324
	lw	%x29, 4(%x2)  #2167 pc 28328
	addi	%x7, %x8, 0  #0 pc 28332
	addi	%x8, %x9, 0  #0 pc 28336
	sw	%x1, 36(%x2)  #2167 pc 28340
	lw	%x30, 0(%x29)  #2167 pc 28344
	addi	%x2, %x2, 40  #2167 pc 28348
	jalr	%x1, %x30, 0  #2167 pc 28352
	addi	%x2, %x2, -40  #2167 pc 28356
	lw	%x1, 36(%x2)  #2167 pc 28360
	lw	%x6, 12(%x2)  #2171 pc 28364
	slli	%x6, %x6, 2  #2171 pc 28368
	lw	%x7, 32(%x2)  #2171 pc 28372
	add	%x31, %x6, %x7  #2171 pc 28376
	lw	%x7, 0(%x31)  #2171 pc 28380
	lw	%x6, 0(%x2)  #2171 pc 28384
	lw	%x8, 8(%x2)  #2171 pc 28388
	j	vecaccumv.2655  #2171 pc 28392
	nop #pc 28396
calc_diffuse_using_5points.2965:  #pc 28400
	lw	%x11, 8(%x29)  #0 pc 28400
	lw	%x12, 4(%x29)  #0 pc 28404
	slli	%x13, %x6, 2  #2180 pc 28408
	add	%x31, %x13, %x7  #2180 pc 28412
	lw	%x7, 0(%x31)  #2180 pc 28416
	sw	%x11, 0(%x2)  #2180 pc 28420
	sw	%x12, 4(%x2)  #2180 pc 28424
	sw	%x10, 8(%x2)  #2180 pc 28428
	sw	%x9, 12(%x2)  #2180 pc 28432
	sw	%x8, 16(%x2)  #2180 pc 28436
	sw	%x6, 20(%x2)  #2180 pc 28440
	addi	%x6, %x7, 0  #0 pc 28444
	sw	%x1, 24(%x2)  #2180 pc 28448
	addi	%x2, %x2, 28  #2180 pc 28452
	jal	%x1, p_received_ray_20percent.2711  #2180 pc 28456
	addi	%x2, %x2, -28  #2180 pc 28460
	lw	%x1, 24(%x2) #2180 pc 28464
	lw	%x7, 20(%x2)  #2181 pc 28468
	addi	%x8, %x7, -1  #2181 pc 28472
	slli	%x8, %x8, 2  #2181 pc 28476
	lw	%x9, 16(%x2)  #2181 pc 28480
	add	%x31, %x8, %x9  #2181 pc 28484
	lw	%x8, 0(%x31)  #2181 pc 28488
	sw	%x6, 24(%x2)  #2181 pc 28492
	addi	%x6, %x8, 0  #0 pc 28496
	sw	%x1, 28(%x2)  #2181 pc 28500
	addi	%x2, %x2, 32  #2181 pc 28504
	jal	%x1, p_received_ray_20percent.2711  #2181 pc 28508
	addi	%x2, %x2, -32  #2181 pc 28512
	lw	%x1, 28(%x2) #2181 pc 28516
	lw	%x7, 20(%x2)  #2182 pc 28520
	slli	%x8, %x7, 2  #2182 pc 28524
	lw	%x9, 16(%x2)  #2182 pc 28528
	add	%x31, %x8, %x9  #2182 pc 28532
	lw	%x8, 0(%x31)  #2182 pc 28536
	sw	%x6, 28(%x2)  #2182 pc 28540
	addi	%x6, %x8, 0  #0 pc 28544
	sw	%x1, 32(%x2)  #2182 pc 28548
	addi	%x2, %x2, 36  #2182 pc 28552
	jal	%x1, p_received_ray_20percent.2711  #2182 pc 28556
	addi	%x2, %x2, -36  #2182 pc 28560
	lw	%x1, 32(%x2) #2182 pc 28564
	lw	%x7, 20(%x2)  #2183 pc 28568
	addi	%x8, %x7, 1  #2183 pc 28572
	slli	%x8, %x8, 2  #2183 pc 28576
	lw	%x9, 16(%x2)  #2183 pc 28580
	add	%x31, %x8, %x9  #2183 pc 28584
	lw	%x8, 0(%x31)  #2183 pc 28588
	sw	%x6, 32(%x2)  #2183 pc 28592
	addi	%x6, %x8, 0  #0 pc 28596
	sw	%x1, 36(%x2)  #2183 pc 28600
	addi	%x2, %x2, 40  #2183 pc 28604
	jal	%x1, p_received_ray_20percent.2711  #2183 pc 28608
	addi	%x2, %x2, -40  #2183 pc 28612
	lw	%x1, 36(%x2) #2183 pc 28616
	lw	%x7, 20(%x2)  #2184 pc 28620
	slli	%x8, %x7, 2  #2184 pc 28624
	lw	%x9, 12(%x2)  #2184 pc 28628
	add	%x31, %x8, %x9  #2184 pc 28632
	lw	%x8, 0(%x31)  #2184 pc 28636
	sw	%x6, 36(%x2)  #2184 pc 28640
	addi	%x6, %x8, 0  #0 pc 28644
	sw	%x1, 40(%x2)  #2184 pc 28648
	addi	%x2, %x2, 44  #2184 pc 28652
	jal	%x1, p_received_ray_20percent.2711  #2184 pc 28656
	addi	%x2, %x2, -44  #2184 pc 28660
	lw	%x1, 40(%x2) #2184 pc 28664
	lw	%x7, 8(%x2)  #2186 pc 28668
	slli	%x8, %x7, 2  #2186 pc 28672
	lw	%x9, 24(%x2)  #2186 pc 28676
	add	%x31, %x8, %x9  #2186 pc 28680
	lw	%x8, 0(%x31)  #2186 pc 28684
	lw	%x9, 4(%x2)  #2186 pc 28688
	sw	%x6, 40(%x2)  #2186 pc 28692
	addi	%x7, %x8, 0  #0 pc 28696
	addi	%x6, %x9, 0  #0 pc 28700
	sw	%x1, 44(%x2)  #2186 pc 28704
	addi	%x2, %x2, 48  #2186 pc 28708
	jal	%x1, veccpy.2631  #2186 pc 28712
	addi	%x2, %x2, -48  #2186 pc 28716
	lw	%x1, 44(%x2) #2186 pc 28720
	lw	%x6, 8(%x2)  #2187 pc 28724
	slli	%x7, %x6, 2  #2187 pc 28728
	lw	%x8, 28(%x2)  #2187 pc 28732
	add	%x31, %x7, %x8  #2187 pc 28736
	lw	%x7, 0(%x31)  #2187 pc 28740
	lw	%x8, 4(%x2)  #2187 pc 28744
	addi	%x6, %x8, 0  #0 pc 28748
	sw	%x1, 44(%x2)  #2187 pc 28752
	addi	%x2, %x2, 48  #2187 pc 28756
	jal	%x1, vecadd.2649  #2187 pc 28760
	addi	%x2, %x2, -48  #2187 pc 28764
	lw	%x1, 44(%x2) #2187 pc 28768
	lw	%x6, 8(%x2)  #2188 pc 28772
	slli	%x7, %x6, 2  #2188 pc 28776
	lw	%x8, 32(%x2)  #2188 pc 28780
	add	%x31, %x7, %x8  #2188 pc 28784
	lw	%x7, 0(%x31)  #2188 pc 28788
	lw	%x8, 4(%x2)  #2188 pc 28792
	addi	%x6, %x8, 0  #0 pc 28796
	sw	%x1, 44(%x2)  #2188 pc 28800
	addi	%x2, %x2, 48  #2188 pc 28804
	jal	%x1, vecadd.2649  #2188 pc 28808
	addi	%x2, %x2, -48  #2188 pc 28812
	lw	%x1, 44(%x2) #2188 pc 28816
	lw	%x6, 8(%x2)  #2189 pc 28820
	slli	%x7, %x6, 2  #2189 pc 28824
	lw	%x8, 36(%x2)  #2189 pc 28828
	add	%x31, %x7, %x8  #2189 pc 28832
	lw	%x7, 0(%x31)  #2189 pc 28836
	lw	%x8, 4(%x2)  #2189 pc 28840
	addi	%x6, %x8, 0  #0 pc 28844
	sw	%x1, 44(%x2)  #2189 pc 28848
	addi	%x2, %x2, 48  #2189 pc 28852
	jal	%x1, vecadd.2649  #2189 pc 28856
	addi	%x2, %x2, -48  #2189 pc 28860
	lw	%x1, 44(%x2) #2189 pc 28864
	lw	%x6, 8(%x2)  #2190 pc 28868
	slli	%x7, %x6, 2  #2190 pc 28872
	lw	%x8, 40(%x2)  #2190 pc 28876
	add	%x31, %x7, %x8  #2190 pc 28880
	lw	%x7, 0(%x31)  #2190 pc 28884
	lw	%x8, 4(%x2)  #2190 pc 28888
	addi	%x6, %x8, 0  #0 pc 28892
	sw	%x1, 44(%x2)  #2190 pc 28896
	addi	%x2, %x2, 48  #2190 pc 28900
	jal	%x1, vecadd.2649  #2190 pc 28904
	addi	%x2, %x2, -48  #2190 pc 28908
	lw	%x1, 44(%x2) #2190 pc 28912
	lw	%x6, 20(%x2)  #2192 pc 28916
	slli	%x6, %x6, 2  #2192 pc 28920
	lw	%x7, 16(%x2)  #2192 pc 28924
	add	%x31, %x6, %x7  #2192 pc 28928
	lw	%x6, 0(%x31)  #2192 pc 28932
	sw	%x1, 44(%x2)  #2192 pc 28936
	addi	%x2, %x2, 48  #2192 pc 28940
	jal	%x1, p_energy.2709  #2192 pc 28944
	addi	%x2, %x2, -48  #2192 pc 28948
	lw	%x1, 44(%x2) #2192 pc 28952
	lw	%x7, 8(%x2)  #2193 pc 28956
	slli	%x7, %x7, 2  #2193 pc 28960
	add	%x31, %x7, %x6  #2193 pc 28964
	lw	%x7, 0(%x31)  #2193 pc 28968
	lw	%x6, 0(%x2)  #2193 pc 28972
	lw	%x8, 4(%x2)  #2193 pc 28976
	j	vecaccumv.2655  #2193 pc 28980
	nop #pc 28984
do_without_neighbors.2971:  #pc 28988
	lw	%x8, 4(%x29)  #0 pc 28988
	addi	%x31, %x0, 4  #pc 28992
	bge	%x31, %x7, 12  #2199 pc 28996
	j	ble_else.9475 #pc 29000
	nop #pc 29004
	sw	%x29, 0(%x2)  #2201 pc 29008
	sw	%x8, 4(%x2)  #2201 pc 29012
	sw	%x6, 8(%x2)  #2201 pc 29016
	sw	%x7, 12(%x2)  #2201 pc 29020
	sw	%x1, 16(%x2)  #2201 pc 29024
	addi	%x2, %x2, 20  #2201 pc 29028
	jal	%x1, p_surface_ids.2705  #2201 pc 29032
	addi	%x2, %x2, -20  #2201 pc 29036
	lw	%x1, 16(%x2) #2201 pc 29040
	lw	%x7, 12(%x2)  #2202 pc 29044
	slli	%x8, %x7, 2  #2202 pc 29048
	add	%x31, %x8, %x6  #2202 pc 29052
	lw	%x6, 0(%x31)  #2202 pc 29056
	bge	%x6, %x0, 12  #2202 pc 29060
	j	bge_else.9476 #pc 29064
	nop #pc 29068
	lw	%x6, 8(%x2)  #2203 pc 29072
	sw	%x1, 16(%x2)  #2203 pc 29076
	addi	%x2, %x2, 20  #2203 pc 29080
	jal	%x1, p_calc_diffuse.2707  #2203 pc 29084
	addi	%x2, %x2, -20  #2203 pc 29088
	lw	%x1, 16(%x2) #2203 pc 29092
	lw	%x7, 12(%x2)  #2204 pc 29096
	slli	%x8, %x7, 2  #2204 pc 29100
	add	%x31, %x8, %x6  #2204 pc 29104
	lw	%x6, 0(%x31)  #2204 pc 29108
	beq	%x6, %x0, 12  #2204 pc 29112
	j	be_else.9477 #pc 29116
	nop #pc 29120
	j	be_cont.9478 #pc 29124
	nop #pc 29128
be_else.9477: #pc 29132
	lw	%x6, 8(%x2)  #2205 pc 29132
	lw	%x29, 4(%x2)  #2205 pc 29136
	sw	%x1, 16(%x2)  #2205 pc 29140
	lw	%x30, 0(%x29)  #2205 pc 29144
	addi	%x2, %x2, 20  #2205 pc 29148
	jalr	%x1, %x30, 0  #2205 pc 29152
	addi	%x2, %x2, -20  #2205 pc 29156
	lw	%x1, 16(%x2)  #2205 pc 29160
be_cont.9478: #pc 29164
	lw	%x6, 12(%x2)  #2207 pc 29164
	addi	%x7, %x6, 1  #2207 pc 29168
	lw	%x6, 8(%x2)  #2207 pc 29172
	lw	%x29, 0(%x2)  #2207 pc 29176
	lw	%x30, 0(%x29)  #2207 pc 29180
	jalr	%x0, %x30, 0  #2207 pc 29184
	nop #pc 29188
bge_else.9476: #pc 29192
	ret #pc 29192
	nop #pc 29196
ble_else.9475: #pc 29200
	ret #pc 29200
	nop #pc 29204
neighbors_exist.2974:  #pc 29208
	lw	%x8, 4(%x29)  #0 pc 29208
	lw	%x9, 4(%x8)  #2214 pc 29212
	addi	%x10, %x7, 1  #2214 pc 29216
	bge	%x10, %x9, 12  #2214 pc 29220
	j	ble_else.9481 #pc 29224
	nop #pc 29228
	addi	%x6, %x0, 0  #0 pc 29232
	ret #pc 29236
	nop #pc 29240
ble_else.9481: #pc 29244
	bge	%x0, %x7, 12  #2215 pc 29244
	j	ble_else.9482 #pc 29248
	nop #pc 29252
	addi	%x6, %x0, 0  #0 pc 29256
	ret #pc 29260
	nop #pc 29264
ble_else.9482: #pc 29268
	lw	%x7, 0(%x8)  #2216 pc 29268
	addi	%x8, %x6, 1  #2216 pc 29272
	bge	%x8, %x7, 12  #2216 pc 29276
	j	ble_else.9483 #pc 29280
	nop #pc 29284
	addi	%x6, %x0, 0  #0 pc 29288
	ret #pc 29292
	nop #pc 29296
ble_else.9483: #pc 29300
	bge	%x0, %x6, 12  #2217 pc 29300
	j	ble_else.9484 #pc 29304
	nop #pc 29308
	addi	%x6, %x0, 0  #0 pc 29312
	ret #pc 29316
	nop #pc 29320
ble_else.9484: #pc 29324
	addi	%x6, %x0, 1  #0 pc 29324
	ret #pc 29328
	nop #pc 29332
get_surface_id.2978:  #pc 29336
	sw	%x7, 0(%x2)  #2226 pc 29336
	sw	%x1, 4(%x2)  #2226 pc 29340
	addi	%x2, %x2, 8  #2226 pc 29344
	jal	%x1, p_surface_ids.2705  #2226 pc 29348
	addi	%x2, %x2, -8  #2226 pc 29352
	lw	%x1, 4(%x2) #2226 pc 29356
	lw	%x7, 0(%x2)  #2227 pc 29360
	slli	%x7, %x7, 2  #2227 pc 29364
	add	%x31, %x7, %x6  #2227 pc 29368
	lw	%x6, 0(%x31)  #2227 pc 29372
	ret #pc 29376
	nop #pc 29380
neighbors_are_available.2981:  #pc 29384
	slli	%x11, %x6, 2  #2233 pc 29384
	add	%x31, %x11, %x8  #2233 pc 29388
	lw	%x11, 0(%x31)  #2233 pc 29392
	sw	%x8, 0(%x2)  #2233 pc 29396
	sw	%x9, 4(%x2)  #2233 pc 29400
	sw	%x10, 8(%x2)  #2233 pc 29404
	sw	%x7, 12(%x2)  #2233 pc 29408
	sw	%x6, 16(%x2)  #2233 pc 29412
	addi	%x7, %x10, 0  #0 pc 29416
	addi	%x6, %x11, 0  #0 pc 29420
	sw	%x1, 20(%x2)  #2233 pc 29424
	addi	%x2, %x2, 24  #2233 pc 29428
	jal	%x1, get_surface_id.2978  #2233 pc 29432
	addi	%x2, %x2, -24  #2233 pc 29436
	lw	%x1, 20(%x2) #2233 pc 29440
	lw	%x7, 16(%x2)  #2235 pc 29444
	slli	%x8, %x7, 2  #2235 pc 29448
	lw	%x9, 12(%x2)  #2235 pc 29452
	add	%x31, %x8, %x9  #2235 pc 29456
	lw	%x8, 0(%x31)  #2235 pc 29460
	lw	%x9, 8(%x2)  #2235 pc 29464
	sw	%x6, 20(%x2)  #2235 pc 29468
	addi	%x7, %x9, 0  #0 pc 29472
	addi	%x6, %x8, 0  #0 pc 29476
	sw	%x1, 24(%x2)  #2235 pc 29480
	addi	%x2, %x2, 28  #2235 pc 29484
	jal	%x1, get_surface_id.2978  #2235 pc 29488
	addi	%x2, %x2, -28  #2235 pc 29492
	lw	%x1, 24(%x2) #2235 pc 29496
	lw	%x7, 20(%x2)  #2235 pc 29500
	beq	%x6, %x7, 12  #2235 pc 29504
	j	be_else.9485 #pc 29508
	nop #pc 29512
	lw	%x6, 16(%x2)  #2236 pc 29516
	slli	%x8, %x6, 2  #2236 pc 29520
	lw	%x9, 4(%x2)  #2236 pc 29524
	add	%x31, %x8, %x9  #2236 pc 29528
	lw	%x8, 0(%x31)  #2236 pc 29532
	lw	%x9, 8(%x2)  #2236 pc 29536
	addi	%x7, %x9, 0  #0 pc 29540
	addi	%x6, %x8, 0  #0 pc 29544
	sw	%x1, 24(%x2)  #2236 pc 29548
	addi	%x2, %x2, 28  #2236 pc 29552
	jal	%x1, get_surface_id.2978  #2236 pc 29556
	addi	%x2, %x2, -28  #2236 pc 29560
	lw	%x1, 24(%x2) #2236 pc 29564
	lw	%x7, 20(%x2)  #2236 pc 29568
	beq	%x6, %x7, 12  #2236 pc 29572
	j	be_else.9486 #pc 29576
	nop #pc 29580
	lw	%x6, 16(%x2)  #2237 pc 29584
	addi	%x8, %x6, -1  #2237 pc 29588
	slli	%x8, %x8, 2  #2237 pc 29592
	lw	%x9, 0(%x2)  #2237 pc 29596
	add	%x31, %x8, %x9  #2237 pc 29600
	lw	%x8, 0(%x31)  #2237 pc 29604
	lw	%x10, 8(%x2)  #2237 pc 29608
	addi	%x7, %x10, 0  #0 pc 29612
	addi	%x6, %x8, 0  #0 pc 29616
	sw	%x1, 24(%x2)  #2237 pc 29620
	addi	%x2, %x2, 28  #2237 pc 29624
	jal	%x1, get_surface_id.2978  #2237 pc 29628
	addi	%x2, %x2, -28  #2237 pc 29632
	lw	%x1, 24(%x2) #2237 pc 29636
	lw	%x7, 20(%x2)  #2237 pc 29640
	beq	%x6, %x7, 12  #2237 pc 29644
	j	be_else.9487 #pc 29648
	nop #pc 29652
	lw	%x6, 16(%x2)  #2238 pc 29656
	addi	%x6, %x6, 1  #2238 pc 29660
	slli	%x6, %x6, 2  #2238 pc 29664
	lw	%x8, 0(%x2)  #2238 pc 29668
	add	%x31, %x6, %x8  #2238 pc 29672
	lw	%x6, 0(%x31)  #2238 pc 29676
	lw	%x8, 8(%x2)  #2238 pc 29680
	addi	%x7, %x8, 0  #0 pc 29684
	sw	%x1, 24(%x2)  #2238 pc 29688
	addi	%x2, %x2, 28  #2238 pc 29692
	jal	%x1, get_surface_id.2978  #2238 pc 29696
	addi	%x2, %x2, -28  #2238 pc 29700
	lw	%x1, 24(%x2) #2238 pc 29704
	lw	%x7, 20(%x2)  #2238 pc 29708
	beq	%x6, %x7, 12  #2238 pc 29712
	j	be_else.9488 #pc 29716
	nop #pc 29720
	addi	%x6, %x0, 1  #0 pc 29724
	ret #pc 29728
	nop #pc 29732
be_else.9488: #pc 29736
	addi	%x6, %x0, 0  #0 pc 29736
	ret #pc 29740
	nop #pc 29744
be_else.9487: #pc 29748
	addi	%x6, %x0, 0  #0 pc 29748
	ret #pc 29752
	nop #pc 29756
be_else.9486: #pc 29760
	addi	%x6, %x0, 0  #0 pc 29760
	ret #pc 29764
	nop #pc 29768
be_else.9485: #pc 29772
	addi	%x6, %x0, 0  #0 pc 29772
	ret #pc 29776
	nop #pc 29780
try_exploit_neighbors.2987:  #pc 29784
	lw	%x12, 8(%x29)  #2251 pc 29784
	lw	%x13, 4(%x29)  #2251 pc 29788
	slli	%x14, %x6, 2  #2251 pc 29792
	add	%x31, %x14, %x9  #2251 pc 29796
	lw	%x14, 0(%x31)  #2251 pc 29800
	addi	%x31, %x0, 4  #pc 29804
	bge	%x31, %x11, 12  #2252 pc 29808
	j	ble_else.9489 #pc 29812
	nop #pc 29816
	sw	%x7, 0(%x2)  #2255 pc 29820
	sw	%x29, 4(%x2)  #2255 pc 29824
	sw	%x13, 8(%x2)  #2255 pc 29828
	sw	%x14, 12(%x2)  #2255 pc 29832
	sw	%x12, 16(%x2)  #2255 pc 29836
	sw	%x11, 20(%x2)  #2255 pc 29840
	sw	%x10, 24(%x2)  #2255 pc 29844
	sw	%x9, 28(%x2)  #2255 pc 29848
	sw	%x8, 32(%x2)  #2255 pc 29852
	sw	%x6, 36(%x2)  #2255 pc 29856
	addi	%x7, %x11, 0  #0 pc 29860
	addi	%x6, %x14, 0  #0 pc 29864
	sw	%x1, 40(%x2)  #2255 pc 29868
	addi	%x2, %x2, 44  #2255 pc 29872
	jal	%x1, get_surface_id.2978  #2255 pc 29876
	addi	%x2, %x2, -44  #2255 pc 29880
	lw	%x1, 40(%x2) #2255 pc 29884
	bge	%x6, %x0, 12  #2255 pc 29888
	j	bge_else.9490 #pc 29892
	nop #pc 29896
	lw	%x6, 36(%x2)  #2257 pc 29900
	lw	%x7, 32(%x2)  #2257 pc 29904
	lw	%x8, 28(%x2)  #2257 pc 29908
	lw	%x9, 24(%x2)  #2257 pc 29912
	lw	%x10, 20(%x2)  #2257 pc 29916
	sw	%x1, 40(%x2)  #2257 pc 29920
	addi	%x2, %x2, 44  #2257 pc 29924
	jal	%x1, neighbors_are_available.2981  #2257 pc 29928
	addi	%x2, %x2, -44  #2257 pc 29932
	lw	%x1, 40(%x2) #2257 pc 29936
	beq	%x6, %x0, 12  #2257 pc 29940
	j	be_else.9491 #pc 29944
	nop #pc 29948
	lw	%x6, 36(%x2)  #2269 pc 29952
	slli	%x6, %x6, 2  #2269 pc 29956
	lw	%x7, 28(%x2)  #2269 pc 29960
	add	%x31, %x6, %x7  #2269 pc 29964
	lw	%x6, 0(%x31)  #2269 pc 29968
	lw	%x7, 20(%x2)  #2269 pc 29972
	lw	%x29, 16(%x2)  #2269 pc 29976
	lw	%x30, 0(%x29)  #2269 pc 29980
	jalr	%x0, %x30, 0  #2269 pc 29984
	nop #pc 29988
be_else.9491: #pc 29992
	lw	%x6, 12(%x2)  #2260 pc 29992
	sw	%x1, 40(%x2)  #2260 pc 29996
	addi	%x2, %x2, 44  #2260 pc 30000
	jal	%x1, p_calc_diffuse.2707  #2260 pc 30004
	addi	%x2, %x2, -44  #2260 pc 30008
	lw	%x1, 40(%x2) #2260 pc 30012
	lw	%x10, 20(%x2)  #2261 pc 30016
	slli	%x7, %x10, 2  #2261 pc 30020
	add	%x31, %x7, %x6  #2261 pc 30024
	lw	%x6, 0(%x31)  #2261 pc 30028
	beq	%x6, %x0, 12  #2261 pc 30032
	j	be_else.9492 #pc 30036
	nop #pc 30040
	j	be_cont.9493 #pc 30044
	nop #pc 30048
be_else.9492: #pc 30052
	lw	%x6, 36(%x2)  #2262 pc 30052
	lw	%x7, 32(%x2)  #2262 pc 30056
	lw	%x8, 28(%x2)  #2262 pc 30060
	lw	%x9, 24(%x2)  #2262 pc 30064
	lw	%x29, 8(%x2)  #2262 pc 30068
	sw	%x1, 40(%x2)  #2262 pc 30072
	lw	%x30, 0(%x29)  #2262 pc 30076
	addi	%x2, %x2, 44  #2262 pc 30080
	jalr	%x1, %x30, 0  #2262 pc 30084
	addi	%x2, %x2, -44  #2262 pc 30088
	lw	%x1, 40(%x2)  #2262 pc 30092
be_cont.9493: #pc 30096
	lw	%x6, 20(%x2)  #2266 pc 30096
	addi	%x11, %x6, 1  #2266 pc 30100
	lw	%x6, 36(%x2)  #2266 pc 30104
	lw	%x7, 0(%x2)  #2266 pc 30108
	lw	%x8, 32(%x2)  #2266 pc 30112
	lw	%x9, 28(%x2)  #2266 pc 30116
	lw	%x10, 24(%x2)  #2266 pc 30120
	lw	%x29, 4(%x2)  #2266 pc 30124
	lw	%x30, 0(%x29)  #2266 pc 30128
	jalr	%x0, %x30, 0  #2266 pc 30132
	nop #pc 30136
bge_else.9490: #pc 30140
	ret #pc 30140
	nop #pc 30144
ble_else.9489: #pc 30148
	ret #pc 30148
	nop #pc 30152
write_ppm_header.2994:  #pc 30156
	lw	%x7, 4(%x29)  #0 pc 30156
	addi	%x8, %x0, 80  #0 pc 30160
	sw	%x7, 0(%x2)  #2279 pc 30164
	sw	%x6, 4(%x2)  #2279 pc 30168
	addi	%x6, %x8, 0  #0 pc 30172
	sw	%x1, 8(%x2)  #2279 pc 30176
	addi	%x2, %x2, 12  #2279 pc 30180
	jal	%x1, print_char.2558  #2279 pc 30184
	addi	%x2, %x2, -12  #2279 pc 30188
	lw	%x1, 8(%x2) #2279 pc 30192
	lw	%x6, 4(%x2)  #2280 pc 30196
	addi	%x6, %x6, 48  #2280 pc 30200
	sw	%x1, 8(%x2)  #2280 pc 30204
	addi	%x2, %x2, 12  #2280 pc 30208
	jal	%x1, print_char.2558  #2280 pc 30212
	addi	%x2, %x2, -12  #2280 pc 30216
	lw	%x1, 8(%x2) #2280 pc 30220
	addi	%x6, %x0, 10  #0 pc 30224
	sw	%x1, 8(%x2)  #2281 pc 30228
	addi	%x2, %x2, 12  #2281 pc 30232
	jal	%x1, print_char.2558  #2281 pc 30236
	addi	%x2, %x2, -12  #2281 pc 30240
	lw	%x1, 8(%x2) #2281 pc 30244
	lw	%x6, 0(%x2)  #2282 pc 30248
	lw	%x7, 0(%x6)  #2282 pc 30252
	addi	%x6, %x7, 0  #0 pc 30256
	sw	%x1, 8(%x2)  #2282 pc 30260
	addi	%x2, %x2, 12  #2282 pc 30264
	jal	%x1, print_int.2560  #2282 pc 30268
	addi	%x2, %x2, -12  #2282 pc 30272
	lw	%x1, 8(%x2) #2282 pc 30276
	addi	%x6, %x0, 32  #0 pc 30280
	sw	%x1, 8(%x2)  #2283 pc 30284
	addi	%x2, %x2, 12  #2283 pc 30288
	jal	%x1, print_char.2558  #2283 pc 30292
	addi	%x2, %x2, -12  #2283 pc 30296
	lw	%x1, 8(%x2) #2283 pc 30300
	lw	%x6, 0(%x2)  #2284 pc 30304
	lw	%x6, 4(%x6)  #2284 pc 30308
	sw	%x1, 8(%x2)  #2284 pc 30312
	addi	%x2, %x2, 12  #2284 pc 30316
	jal	%x1, print_int.2560  #2284 pc 30320
	addi	%x2, %x2, -12  #2284 pc 30324
	lw	%x1, 8(%x2) #2284 pc 30328
	addi	%x6, %x0, 32  #0 pc 30332
	sw	%x1, 8(%x2)  #2285 pc 30336
	addi	%x2, %x2, 12  #2285 pc 30340
	jal	%x1, print_char.2558  #2285 pc 30344
	addi	%x2, %x2, -12  #2285 pc 30348
	lw	%x1, 8(%x2) #2285 pc 30352
	addi	%x6, %x0, 255  #0 pc 30356
	sw	%x1, 8(%x2)  #2286 pc 30360
	addi	%x2, %x2, 12  #2286 pc 30364
	jal	%x1, print_int.2560  #2286 pc 30368
	addi	%x2, %x2, -12  #2286 pc 30372
	lw	%x1, 8(%x2) #2286 pc 30376
	addi	%x6, %x0, 10  #0 pc 30380
	j	print_char.2558  #2287 pc 30384
	nop #pc 30388
write_rgb_element_int.2996:  #pc 30392
	sw	%x1, 0(%x2)  #2292 pc 30392
	addi	%x2, %x2, 4  #2292 pc 30396
	jal	%x1, int_of_float.2540  #2292 pc 30400
	addi	%x2, %x2, -4  #2292 pc 30404
	lw	%x1, 0(%x2) #2292 pc 30408
	addi	%x31, %x0, 255  #pc 30412
	bge	%x31, %x6, 12  #2293 pc 30416
	j	ble_else.9496 #pc 30420
	nop #pc 30424
	bge	%x6, %x0, 12  #2293 pc 30428
	j	bge_else.9498 #pc 30432
	nop #pc 30436
	j	bge_cont.9499 #pc 30440
	nop #pc 30444
bge_else.9498: #pc 30448
	addi	%x6, %x0, 0  #0 pc 30448
bge_cont.9499: #pc 30452
	j	ble_cont.9497 #pc 30452
	nop #pc 30456
ble_else.9496: #pc 30460
	addi	%x6, %x0, 255  #0 pc 30460
ble_cont.9497: #pc 30464
	j	print_int.2560  #2294 pc 30464
	nop #pc 30468
write_rgb_element_char.2998:  #pc 30472
	sw	%x1, 0(%x2)  #2298 pc 30472
	addi	%x2, %x2, 4  #2298 pc 30476
	jal	%x1, int_of_float.2540  #2298 pc 30480
	addi	%x2, %x2, -4  #2298 pc 30484
	lw	%x1, 0(%x2) #2298 pc 30488
	addi	%x31, %x0, 255  #pc 30492
	bge	%x31, %x6, 12  #2299 pc 30496
	j	ble_else.9500 #pc 30500
	nop #pc 30504
	bge	%x6, %x0, 12  #2299 pc 30508
	j	bge_else.9502 #pc 30512
	nop #pc 30516
	j	bge_cont.9503 #pc 30520
	nop #pc 30524
bge_else.9502: #pc 30528
	addi	%x6, %x0, 0  #0 pc 30528
bge_cont.9503: #pc 30532
	j	ble_cont.9501 #pc 30532
	nop #pc 30536
ble_else.9500: #pc 30540
	addi	%x6, %x0, 255  #0 pc 30540
ble_cont.9501: #pc 30544
	j	print_char.2558  #2300 pc 30544
	nop #pc 30548
write_rgb.3000:  #pc 30552
	lw	%x7, 4(%x29)  #0 pc 30552
	addi	%x31, %x0, 3  #pc 30556
	beq	%x6, %x31, 12  #2304 pc 30560
	j	be_else.9504 #pc 30564
	nop #pc 30568
	flw	%f0, 0(%x7)  #2305 pc 30572
	sw	%x7, 0(%x2)  #2305 pc 30576
	sw	%x1, 4(%x2)  #2305 pc 30580
	addi	%x2, %x2, 8  #2305 pc 30584
	jal	%x1, write_rgb_element_int.2996  #2305 pc 30588
	addi	%x2, %x2, -8  #2305 pc 30592
	lw	%x1, 4(%x2) #2305 pc 30596
	addi	%x6, %x0, 32  #0 pc 30600
	sw	%x1, 4(%x2)  #2306 pc 30604
	addi	%x2, %x2, 8  #2306 pc 30608
	jal	%x1, print_char.2558  #2306 pc 30612
	addi	%x2, %x2, -8  #2306 pc 30616
	lw	%x1, 4(%x2) #2306 pc 30620
	lw	%x6, 0(%x2)  #2307 pc 30624
	flw	%f0, 4(%x6)  #2307 pc 30628
	sw	%x1, 4(%x2)  #2307 pc 30632
	addi	%x2, %x2, 8  #2307 pc 30636
	jal	%x1, write_rgb_element_int.2996  #2307 pc 30640
	addi	%x2, %x2, -8  #2307 pc 30644
	lw	%x1, 4(%x2) #2307 pc 30648
	addi	%x6, %x0, 32  #0 pc 30652
	sw	%x1, 4(%x2)  #2308 pc 30656
	addi	%x2, %x2, 8  #2308 pc 30660
	jal	%x1, print_char.2558  #2308 pc 30664
	addi	%x2, %x2, -8  #2308 pc 30668
	lw	%x1, 4(%x2) #2308 pc 30672
	lw	%x6, 0(%x2)  #2309 pc 30676
	flw	%f0, 8(%x6)  #2309 pc 30680
	sw	%x1, 4(%x2)  #2309 pc 30684
	addi	%x2, %x2, 8  #2309 pc 30688
	jal	%x1, write_rgb_element_int.2996  #2309 pc 30692
	addi	%x2, %x2, -8  #2309 pc 30696
	lw	%x1, 4(%x2) #2309 pc 30700
	addi	%x6, %x0, 10  #0 pc 30704
	j	print_char.2558  #2310 pc 30708
	nop #pc 30712
be_else.9504: #pc 30716
	flw	%f0, 0(%x7)  #2312 pc 30716
	sw	%x7, 0(%x2)  #2312 pc 30720
	sw	%x1, 4(%x2)  #2312 pc 30724
	addi	%x2, %x2, 8  #2312 pc 30728
	jal	%x1, write_rgb_element_char.2998  #2312 pc 30732
	addi	%x2, %x2, -8  #2312 pc 30736
	lw	%x1, 4(%x2) #2312 pc 30740
	lw	%x6, 0(%x2)  #2313 pc 30744
	flw	%f0, 4(%x6)  #2313 pc 30748
	sw	%x1, 4(%x2)  #2313 pc 30752
	addi	%x2, %x2, 8  #2313 pc 30756
	jal	%x1, write_rgb_element_char.2998  #2313 pc 30760
	addi	%x2, %x2, -8  #2313 pc 30764
	lw	%x1, 4(%x2) #2313 pc 30768
	lw	%x6, 0(%x2)  #2314 pc 30772
	flw	%f0, 8(%x6)  #2314 pc 30776
	j	write_rgb_element_char.2998  #2314 pc 30780
	nop #pc 30784
pretrace_diffuse_rays.3002:  #pc 30788
	lw	%x8, 12(%x29)  #0 pc 30788
	lw	%x9, 8(%x29)  #0 pc 30792
	lw	%x10, 4(%x29)  #0 pc 30796
	addi	%x31, %x0, 4  #pc 30800
	bge	%x31, %x7, 12  #2327 pc 30804
	j	ble_else.9505 #pc 30808
	nop #pc 30812
	sw	%x29, 0(%x2)  #2330 pc 30816
	sw	%x8, 4(%x2)  #2330 pc 30820
	sw	%x9, 8(%x2)  #2330 pc 30824
	sw	%x10, 12(%x2)  #2330 pc 30828
	sw	%x7, 16(%x2)  #2330 pc 30832
	sw	%x6, 20(%x2)  #2330 pc 30836
	sw	%x1, 24(%x2)  #2330 pc 30840
	addi	%x2, %x2, 28  #2330 pc 30844
	jal	%x1, get_surface_id.2978  #2330 pc 30848
	addi	%x2, %x2, -28  #2330 pc 30852
	lw	%x1, 24(%x2) #2330 pc 30856
	bge	%x6, %x0, 12  #2331 pc 30860
	j	bge_else.9506 #pc 30864
	nop #pc 30868
	lw	%x6, 20(%x2)  #2333 pc 30872
	sw	%x1, 24(%x2)  #2333 pc 30876
	addi	%x2, %x2, 28  #2333 pc 30880
	jal	%x1, p_calc_diffuse.2707  #2333 pc 30884
	addi	%x2, %x2, -28  #2333 pc 30888
	lw	%x1, 24(%x2) #2333 pc 30892
	lw	%x7, 16(%x2)  #2334 pc 30896
	slli	%x8, %x7, 2  #2334 pc 30900
	add	%x31, %x8, %x6  #2334 pc 30904
	lw	%x6, 0(%x31)  #2334 pc 30908
	beq	%x6, %x0, 12  #2334 pc 30912
	j	be_else.9507 #pc 30916
	nop #pc 30920
	j	be_cont.9508 #pc 30924
	nop #pc 30928
be_else.9507: #pc 30932
	lw	%x6, 20(%x2)  #2335 pc 30932
	sw	%x1, 24(%x2)  #2335 pc 30936
	addi	%x2, %x2, 28  #2335 pc 30940
	jal	%x1, p_group_id.2713  #2335 pc 30944
	addi	%x2, %x2, -28  #2335 pc 30948
	lw	%x1, 24(%x2) #2335 pc 30952
	lw	%x7, 12(%x2)  #2336 pc 30956
	sw	%x6, 24(%x2)  #2336 pc 30960
	addi	%x6, %x7, 0  #0 pc 30964
	sw	%x1, 28(%x2)  #2336 pc 30968
	addi	%x2, %x2, 32  #2336 pc 30972
	jal	%x1, vecbzero.2629  #2336 pc 30976
	addi	%x2, %x2, -32  #2336 pc 30980
	lw	%x1, 28(%x2) #2336 pc 30984
	lw	%x6, 20(%x2)  #2340 pc 30988
	sw	%x1, 28(%x2)  #2340 pc 30992
	addi	%x2, %x2, 32  #2340 pc 30996
	jal	%x1, p_nvectors.2718  #2340 pc 31000
	addi	%x2, %x2, -32  #2340 pc 31004
	lw	%x1, 28(%x2) #2340 pc 31008
	lw	%x7, 20(%x2)  #2341 pc 31012
	sw	%x6, 28(%x2)  #2341 pc 31016
	addi	%x6, %x7, 0  #0 pc 31020
	sw	%x1, 32(%x2)  #2341 pc 31024
	addi	%x2, %x2, 36  #2341 pc 31028
	jal	%x1, p_intersection_points.2703  #2341 pc 31032
	addi	%x2, %x2, -36  #2341 pc 31036
	lw	%x1, 32(%x2) #2341 pc 31040
	lw	%x7, 24(%x2)  #2343 pc 31044
	slli	%x7, %x7, 2  #2343 pc 31048
	lw	%x8, 8(%x2)  #2343 pc 31052
	add	%x31, %x7, %x8  #2343 pc 31056
	lw	%x7, 0(%x31)  #2343 pc 31060
	lw	%x8, 16(%x2)  #2344 pc 31064
	slli	%x9, %x8, 2  #2344 pc 31068
	lw	%x10, 28(%x2)  #2344 pc 31072
	add	%x31, %x9, %x10  #2344 pc 31076
	lw	%x9, 0(%x31)  #2344 pc 31080
	slli	%x10, %x8, 2  #2345 pc 31084
	add	%x31, %x10, %x6  #2345 pc 31088
	lw	%x6, 0(%x31)  #2345 pc 31092
	lw	%x29, 4(%x2)  #2342 pc 31096
	addi	%x8, %x6, 0  #0 pc 31100
	addi	%x6, %x7, 0  #0 pc 31104
	addi	%x7, %x9, 0  #0 pc 31108
	sw	%x1, 32(%x2)  #2342 pc 31112
	lw	%x30, 0(%x29)  #2342 pc 31116
	addi	%x2, %x2, 36  #2342 pc 31120
	jalr	%x1, %x30, 0  #2342 pc 31124
	addi	%x2, %x2, -36  #2342 pc 31128
	lw	%x1, 32(%x2)  #2342 pc 31132
	lw	%x6, 20(%x2)  #2346 pc 31136
	sw	%x1, 32(%x2)  #2346 pc 31140
	addi	%x2, %x2, 36  #2346 pc 31144
	jal	%x1, p_received_ray_20percent.2711  #2346 pc 31148
	addi	%x2, %x2, -36  #2346 pc 31152
	lw	%x1, 32(%x2) #2346 pc 31156
	lw	%x7, 16(%x2)  #2347 pc 31160
	slli	%x8, %x7, 2  #2347 pc 31164
	add	%x31, %x8, %x6  #2347 pc 31168
	lw	%x6, 0(%x31)  #2347 pc 31172
	lw	%x8, 12(%x2)  #2347 pc 31176
	addi	%x7, %x8, 0  #0 pc 31180
	sw	%x1, 32(%x2)  #2347 pc 31184
	addi	%x2, %x2, 36  #2347 pc 31188
	jal	%x1, veccpy.2631  #2347 pc 31192
	addi	%x2, %x2, -36  #2347 pc 31196
	lw	%x1, 32(%x2) #2347 pc 31200
be_cont.9508: #pc 31204
	lw	%x6, 16(%x2)  #2349 pc 31204
	addi	%x7, %x6, 1  #2349 pc 31208
	lw	%x6, 20(%x2)  #2349 pc 31212
	lw	%x29, 0(%x2)  #2349 pc 31216
	lw	%x30, 0(%x29)  #2349 pc 31220
	jalr	%x0, %x30, 0  #2349 pc 31224
	nop #pc 31228
bge_else.9506: #pc 31232
	ret #pc 31232
	nop #pc 31236
ble_else.9505: #pc 31240
	ret #pc 31240
	nop #pc 31244
pretrace_pixels.3005:  #pc 31248
	lw	%x9, 36(%x29)  #0 pc 31248
	lw	%x10, 32(%x29)  #0 pc 31252
	lw	%x11, 28(%x29)  #0 pc 31256
	lw	%x12, 24(%x29)  #0 pc 31260
	lw	%x13, 20(%x29)  #0 pc 31264
	lw	%x14, 16(%x29)  #0 pc 31268
	lw	%x15, 12(%x29)  #0 pc 31272
	lw	%x16, 8(%x29)  #0 pc 31276
	lw	%x17, 4(%x29)  #0 pc 31280
	bge	%x7, %x0, 12  #2357 pc 31284
	j	bge_else.9511 #pc 31288
	nop #pc 31292
	flw	%f3, 0(%x13)  #2359 pc 31296
	lw	%x13, 0(%x17)  #2359 pc 31300
	sub	%x13, %x7, %x13  #2359 pc 31304
	sw	%x29, 0(%x2)  #2359 pc 31308
	sw	%x16, 4(%x2)  #2359 pc 31312
	sw	%x8, 8(%x2)  #2359 pc 31316
	sw	%x10, 12(%x2)  #2359 pc 31320
	sw	%x6, 16(%x2)  #2359 pc 31324
	sw	%x7, 20(%x2)  #2359 pc 31328
	sw	%x9, 24(%x2)  #2359 pc 31332
	sw	%x11, 28(%x2)  #2359 pc 31336
	sw	%x14, 32(%x2)  #2359 pc 31340
	fsw	%f2, 40(%x2)  #2359 pc 31344
	fsw	%f1, 48(%x2)  #2359 pc 31348
	sw	%x15, 56(%x2)  #2359 pc 31352
	fsw	%f0, 64(%x2)  #2359 pc 31356
	sw	%x12, 72(%x2)  #2359 pc 31360
	fsw	%f3, 80(%x2)  #2359 pc 31364
	addi	%x6, %x13, 0  #0 pc 31368
	sw	%x1, 88(%x2)  #2359 pc 31372
	addi	%x2, %x2, 92  #2359 pc 31376
	jal	%x1, float_of_int.2538  #2359 pc 31380
	addi	%x2, %x2, -92  #2359 pc 31384
	lw	%x1, 88(%x2) #2359 pc 31388
	flw	%f1, 80(%x2)  #2359 pc 31392
	fmul	%f0, %f1, %f0  #2359 pc 31396
	lw	%x6, 72(%x2)  #2360 pc 31400
	flw	%f1, 0(%x6)  #2360 pc 31404
	fmul	%f1, %f0, %f1  #2360 pc 31408
	flw	%f2, 64(%x2)  #2360 pc 31412
	fadd	%f1, %f1, %f2  #2360 pc 31416
	lw	%x7, 56(%x2)  #2360 pc 31420
	fsw	%f1, 0(%x7)  #2360 pc 31424
	flw	%f1, 4(%x6)  #2361 pc 31428
	fmul	%f1, %f0, %f1  #2361 pc 31432
	flw	%f3, 48(%x2)  #2361 pc 31436
	fadd	%f1, %f1, %f3  #2361 pc 31440
	fsw	%f1, 4(%x7)  #2361 pc 31444
	flw	%f1, 8(%x6)  #2362 pc 31448
	fmul	%f0, %f0, %f1  #2362 pc 31452
	flw	%f1, 40(%x2)  #2362 pc 31456
	fadd	%f0, %f0, %f1  #2362 pc 31460
	fsw	%f0, 8(%x7)  #2362 pc 31464
	addi	%x6, %x0, 0  #0 pc 31468
	addi	%x30, %x7, 0  #0 pc 31472
	addi	%x7, %x6, 0  #0 pc 31476
	addi	%x6, %x30, 0  #0 pc 31480
	sw	%x1, 88(%x2)  #2363 pc 31484
	addi	%x2, %x2, 92  #2363 pc 31488
	jal	%x1, vecunit_sgn.2634  #2363 pc 31492
	addi	%x2, %x2, -92  #2363 pc 31496
	lw	%x1, 88(%x2) #2363 pc 31500
	lw	%x6, 32(%x2)  #2364 pc 31504
	sw	%x1, 88(%x2)  #2364 pc 31508
	addi	%x2, %x2, 92  #2364 pc 31512
	jal	%x1, vecbzero.2629  #2364 pc 31516
	addi	%x2, %x2, -92  #2364 pc 31520
	lw	%x1, 88(%x2) #2364 pc 31524
	lw	%x6, 28(%x2)  #2365 pc 31528
	lw	%x7, 24(%x2)  #2365 pc 31532
	sw	%x1, 88(%x2)  #2365 pc 31536
	addi	%x2, %x2, 92  #2365 pc 31540
	jal	%x1, veccpy.2631  #2365 pc 31544
	addi	%x2, %x2, -92  #2365 pc 31548
	lw	%x1, 88(%x2) #2365 pc 31552
	addi	%x6, %x0, 0  #0 pc 31556
	fmv	%f0, l.6263  #0 pc 31560
	lw	%x7, 20(%x2)  #2368 pc 31564
	slli	%x8, %x7, 2  #2368 pc 31568
	lw	%x9, 16(%x2)  #2368 pc 31572
	add	%x31, %x8, %x9  #2368 pc 31576
	lw	%x8, 0(%x31)  #2368 pc 31580
	fmv	%f1, l.6244  #0 pc 31584
	lw	%x10, 56(%x2)  #2368 pc 31588
	lw	%x29, 12(%x2)  #2368 pc 31592
	addi	%x7, %x10, 0  #0 pc 31596
	sw	%x1, 88(%x2)  #2368 pc 31600
	lw	%x30, 0(%x29)  #2368 pc 31604
	addi	%x2, %x2, 92  #2368 pc 31608
	jalr	%x1, %x30, 0  #2368 pc 31612
	addi	%x2, %x2, -92  #2368 pc 31616
	lw	%x1, 88(%x2)  #2368 pc 31620
	lw	%x6, 20(%x2)  #2369 pc 31624
	slli	%x7, %x6, 2  #2369 pc 31628
	lw	%x8, 16(%x2)  #2369 pc 31632
	add	%x31, %x7, %x8  #2369 pc 31636
	lw	%x7, 0(%x31)  #2369 pc 31640
	addi	%x6, %x7, 0  #0 pc 31644
	sw	%x1, 88(%x2)  #2369 pc 31648
	addi	%x2, %x2, 92  #2369 pc 31652
	jal	%x1, p_rgb.2701  #2369 pc 31656
	addi	%x2, %x2, -92  #2369 pc 31660
	lw	%x1, 88(%x2) #2369 pc 31664
	lw	%x7, 32(%x2)  #2369 pc 31668
	sw	%x1, 88(%x2)  #2369 pc 31672
	addi	%x2, %x2, 92  #2369 pc 31676
	jal	%x1, veccpy.2631  #2369 pc 31680
	addi	%x2, %x2, -92  #2369 pc 31684
	lw	%x1, 88(%x2) #2369 pc 31688
	lw	%x6, 20(%x2)  #2370 pc 31692
	slli	%x7, %x6, 2  #2370 pc 31696
	lw	%x8, 16(%x2)  #2370 pc 31700
	add	%x31, %x7, %x8  #2370 pc 31704
	lw	%x7, 0(%x31)  #2370 pc 31708
	lw	%x9, 8(%x2)  #2370 pc 31712
	addi	%x6, %x7, 0  #0 pc 31716
	addi	%x7, %x9, 0  #0 pc 31720
	sw	%x1, 88(%x2)  #2370 pc 31724
	addi	%x2, %x2, 92  #2370 pc 31728
	jal	%x1, p_set_group_id.2715  #2370 pc 31732
	addi	%x2, %x2, -92  #2370 pc 31736
	lw	%x1, 88(%x2) #2370 pc 31740
	lw	%x6, 20(%x2)  #2373 pc 31744
	slli	%x7, %x6, 2  #2373 pc 31748
	lw	%x8, 16(%x2)  #2373 pc 31752
	add	%x31, %x7, %x8  #2373 pc 31756
	lw	%x7, 0(%x31)  #2373 pc 31760
	addi	%x9, %x0, 0  #0 pc 31764
	lw	%x29, 4(%x2)  #2373 pc 31768
	addi	%x6, %x7, 0  #0 pc 31772
	addi	%x7, %x9, 0  #0 pc 31776
	sw	%x1, 88(%x2)  #2373 pc 31780
	lw	%x30, 0(%x29)  #2373 pc 31784
	addi	%x2, %x2, 92  #2373 pc 31788
	jalr	%x1, %x30, 0  #2373 pc 31792
	addi	%x2, %x2, -92  #2373 pc 31796
	lw	%x1, 88(%x2)  #2373 pc 31800
	lw	%x6, 20(%x2)  #2375 pc 31804
	addi	%x6, %x6, -1  #2375 pc 31808
	addi	%x7, %x0, 1  #0 pc 31812
	lw	%x8, 8(%x2)  #2375 pc 31816
	sw	%x6, 88(%x2)  #2375 pc 31820
	addi	%x6, %x8, 0  #0 pc 31824
	sw	%x1, 92(%x2)  #2375 pc 31828
	addi	%x2, %x2, 96  #2375 pc 31832
	jal	%x1, add_mod5.2618  #2375 pc 31836
	addi	%x2, %x2, -96  #2375 pc 31840
	lw	%x1, 92(%x2) #2375 pc 31844
	addi	%x8, %x6, 0  #2375 pc 31848
	flw	%f0, 64(%x2)  #2375 pc 31852
	flw	%f1, 48(%x2)  #2375 pc 31856
	flw	%f2, 40(%x2)  #2375 pc 31860
	lw	%x6, 16(%x2)  #2375 pc 31864
	lw	%x7, 88(%x2)  #2375 pc 31868
	lw	%x29, 0(%x2)  #2375 pc 31872
	lw	%x30, 0(%x29)  #2375 pc 31876
	jalr	%x0, %x30, 0  #2375 pc 31880
	nop #pc 31884
bge_else.9511: #pc 31888
	ret #pc 31888
	nop #pc 31892
pretrace_line.3012:  #pc 31896
	lw	%x9, 24(%x29)  #0 pc 31896
	lw	%x10, 20(%x29)  #0 pc 31900
	lw	%x11, 16(%x29)  #0 pc 31904
	lw	%x12, 12(%x29)  #0 pc 31908
	lw	%x13, 8(%x29)  #0 pc 31912
	lw	%x14, 4(%x29)  #0 pc 31916
	flw	%f0, 0(%x11)  #2382 pc 31920
	lw	%x11, 4(%x14)  #2382 pc 31924
	sub	%x7, %x7, %x11  #2382 pc 31928
	sw	%x8, 0(%x2)  #2382 pc 31932
	sw	%x6, 4(%x2)  #2382 pc 31936
	sw	%x12, 8(%x2)  #2382 pc 31940
	sw	%x13, 12(%x2)  #2382 pc 31944
	sw	%x9, 16(%x2)  #2382 pc 31948
	sw	%x10, 20(%x2)  #2382 pc 31952
	fsw	%f0, 24(%x2)  #2382 pc 31956
	addi	%x6, %x7, 0  #0 pc 31960
	sw	%x1, 32(%x2)  #2382 pc 31964
	addi	%x2, %x2, 36  #2382 pc 31968
	jal	%x1, float_of_int.2538  #2382 pc 31972
	addi	%x2, %x2, -36  #2382 pc 31976
	lw	%x1, 32(%x2) #2382 pc 31980
	flw	%f1, 24(%x2)  #2382 pc 31984
	fmul	%f0, %f1, %f0  #2382 pc 31988
	lw	%x6, 20(%x2)  #2385 pc 31992
	flw	%f1, 0(%x6)  #2385 pc 31996
	fmul	%f1, %f0, %f1  #2385 pc 32000
	lw	%x7, 16(%x2)  #2385 pc 32004
	flw	%f2, 0(%x7)  #2385 pc 32008
	fadd	%f1, %f1, %f2  #2385 pc 32012
	flw	%f2, 4(%x6)  #2386 pc 32016
	fmul	%f2, %f0, %f2  #2386 pc 32020
	flw	%f3, 4(%x7)  #2386 pc 32024
	fadd	%f2, %f2, %f3  #2386 pc 32028
	flw	%f3, 8(%x6)  #2387 pc 32032
	fmul	%f0, %f0, %f3  #2387 pc 32036
	flw	%f3, 8(%x7)  #2387 pc 32040
	fadd	%f0, %f0, %f3  #2387 pc 32044
	lw	%x6, 12(%x2)  #2388 pc 32048
	lw	%x6, 0(%x6)  #2388 pc 32052
	addi	%x7, %x6, -1  #2388 pc 32056
	lw	%x6, 4(%x2)  #2388 pc 32060
	lw	%x8, 0(%x2)  #2388 pc 32064
	lw	%x29, 8(%x2)  #2388 pc 32068
	fadd	%f29, %f2, %f30  #0 pc 32072
	fadd	%f2, %f0, %f30  #0 pc 32076
	fadd	%f0, %f1, %f30  #0 pc 32080
	fadd	%f1, %f29, %f30  #0 pc 32084
	lw	%x30, 0(%x29)  #2388 pc 32088
	jalr	%x0, %x30, 0  #2388 pc 32092
	nop #pc 32096
scan_pixel.3016:  #pc 32100
	lw	%x12, 24(%x29)  #0 pc 32100
	lw	%x13, 20(%x29)  #0 pc 32104
	lw	%x14, 16(%x29)  #0 pc 32108
	lw	%x15, 12(%x29)  #0 pc 32112
	lw	%x16, 8(%x29)  #0 pc 32116
	lw	%x17, 4(%x29)  #0 pc 32120
	lw	%x16, 0(%x16)  #2398 pc 32124
	bge	%x6, %x16, 12  #2398 pc 32128
	j	ble_else.9516 #pc 32132
	nop #pc 32136
	ret #pc 32140
	nop #pc 32144
ble_else.9516: #pc 32148
	slli	%x16, %x6, 2  #2401 pc 32148
	add	%x31, %x16, %x9  #2401 pc 32152
	lw	%x16, 0(%x31)  #2401 pc 32156
	sw	%x29, 0(%x2)  #2401 pc 32160
	sw	%x11, 4(%x2)  #2401 pc 32164
	sw	%x12, 8(%x2)  #2401 pc 32168
	sw	%x8, 12(%x2)  #2401 pc 32172
	sw	%x13, 16(%x2)  #2401 pc 32176
	sw	%x17, 20(%x2)  #2401 pc 32180
	sw	%x9, 24(%x2)  #2401 pc 32184
	sw	%x10, 28(%x2)  #2401 pc 32188
	sw	%x7, 32(%x2)  #2401 pc 32192
	sw	%x6, 36(%x2)  #2401 pc 32196
	sw	%x15, 40(%x2)  #2401 pc 32200
	sw	%x14, 44(%x2)  #2401 pc 32204
	addi	%x6, %x16, 0  #0 pc 32208
	sw	%x1, 48(%x2)  #2401 pc 32212
	addi	%x2, %x2, 52  #2401 pc 32216
	jal	%x1, p_rgb.2701  #2401 pc 32220
	addi	%x2, %x2, -52  #2401 pc 32224
	lw	%x1, 48(%x2) #2401 pc 32228
	addi	%x7, %x6, 0  #2401 pc 32232
	lw	%x6, 44(%x2)  #2401 pc 32236
	sw	%x1, 48(%x2)  #2401 pc 32240
	addi	%x2, %x2, 52  #2401 pc 32244
	jal	%x1, veccpy.2631  #2401 pc 32248
	addi	%x2, %x2, -52  #2401 pc 32252
	lw	%x1, 48(%x2) #2401 pc 32256
	lw	%x6, 36(%x2)  #2404 pc 32260
	lw	%x7, 32(%x2)  #2404 pc 32264
	lw	%x8, 28(%x2)  #2404 pc 32268
	lw	%x29, 40(%x2)  #2404 pc 32272
	sw	%x1, 48(%x2)  #2404 pc 32276
	lw	%x30, 0(%x29)  #2404 pc 32280
	addi	%x2, %x2, 52  #2404 pc 32284
	jalr	%x1, %x30, 0  #2404 pc 32288
	addi	%x2, %x2, -52  #2404 pc 32292
	lw	%x1, 48(%x2)  #2404 pc 32296
	beq	%x6, %x0, 12  #2404 pc 32300
	j	be_else.9518 #pc 32304
	nop #pc 32308
	lw	%x6, 36(%x2)  #2407 pc 32312
	slli	%x7, %x6, 2  #2407 pc 32316
	lw	%x8, 24(%x2)  #2407 pc 32320
	add	%x31, %x7, %x8  #2407 pc 32324
	lw	%x7, 0(%x31)  #2407 pc 32328
	addi	%x9, %x0, 0  #0 pc 32332
	lw	%x29, 20(%x2)  #2407 pc 32336
	addi	%x6, %x7, 0  #0 pc 32340
	addi	%x7, %x9, 0  #0 pc 32344
	sw	%x1, 48(%x2)  #2407 pc 32348
	lw	%x30, 0(%x29)  #2407 pc 32352
	addi	%x2, %x2, 52  #2407 pc 32356
	jalr	%x1, %x30, 0  #2407 pc 32360
	addi	%x2, %x2, -52  #2407 pc 32364
	lw	%x1, 48(%x2)  #2407 pc 32368
	j	be_cont.9519 #pc 32372
	nop #pc 32376
be_else.9518: #pc 32380
	addi	%x11, %x0, 0  #0 pc 32380
	lw	%x6, 36(%x2)  #2405 pc 32384
	lw	%x7, 32(%x2)  #2405 pc 32388
	lw	%x8, 12(%x2)  #2405 pc 32392
	lw	%x9, 24(%x2)  #2405 pc 32396
	lw	%x10, 28(%x2)  #2405 pc 32400
	lw	%x29, 16(%x2)  #2405 pc 32404
	sw	%x1, 48(%x2)  #2405 pc 32408
	lw	%x30, 0(%x29)  #2405 pc 32412
	addi	%x2, %x2, 52  #2405 pc 32416
	jalr	%x1, %x30, 0  #2405 pc 32420
	addi	%x2, %x2, -52  #2405 pc 32424
	lw	%x1, 48(%x2)  #2405 pc 32428
be_cont.9519: #pc 32432
	lw	%x6, 4(%x2)  #2410 pc 32432
	lw	%x29, 8(%x2)  #2410 pc 32436
	sw	%x1, 48(%x2)  #2410 pc 32440
	lw	%x30, 0(%x29)  #2410 pc 32444
	addi	%x2, %x2, 52  #2410 pc 32448
	jalr	%x1, %x30, 0  #2410 pc 32452
	addi	%x2, %x2, -52  #2410 pc 32456
	lw	%x1, 48(%x2)  #2410 pc 32460
	lw	%x6, 36(%x2)  #2412 pc 32464
	addi	%x6, %x6, 1  #2412 pc 32468
	lw	%x7, 32(%x2)  #2412 pc 32472
	lw	%x8, 12(%x2)  #2412 pc 32476
	lw	%x9, 24(%x2)  #2412 pc 32480
	lw	%x10, 28(%x2)  #2412 pc 32484
	lw	%x11, 4(%x2)  #2412 pc 32488
	lw	%x29, 0(%x2)  #2412 pc 32492
	lw	%x30, 0(%x29)  #2412 pc 32496
	jalr	%x0, %x30, 0  #2412 pc 32500
	nop #pc 32504
scan_line.3023:  #pc 32508
	lw	%x12, 12(%x29)  #0 pc 32508
	lw	%x13, 8(%x29)  #0 pc 32512
	lw	%x14, 4(%x29)  #0 pc 32516
	lw	%x15, 4(%x14)  #2419 pc 32520
	bge	%x6, %x15, 12  #2419 pc 32524
	j	ble_else.9520 #pc 32528
	nop #pc 32532
	ret #pc 32536
	nop #pc 32540
ble_else.9520: #pc 32544
	lw	%x14, 4(%x14)  #2421 pc 32544
	addi	%x14, %x14, -1  #2421 pc 32548
	sw	%x29, 0(%x2)  #2421 pc 32552
	sw	%x10, 4(%x2)  #2421 pc 32556
	sw	%x11, 8(%x2)  #2421 pc 32560
	sw	%x9, 12(%x2)  #2421 pc 32564
	sw	%x8, 16(%x2)  #2421 pc 32568
	sw	%x7, 20(%x2)  #2421 pc 32572
	sw	%x6, 24(%x2)  #2421 pc 32576
	sw	%x12, 28(%x2)  #2421 pc 32580
	bge	%x6, %x14, 12  #2421 pc 32584
	j	ble_else.9522 #pc 32588
	nop #pc 32592
	j	ble_cont.9523 #pc 32596
	nop #pc 32600
ble_else.9522: #pc 32604
	addi	%x14, %x6, 1  #2422 pc 32604
	addi	%x8, %x10, 0  #0 pc 32608
	addi	%x7, %x14, 0  #0 pc 32612
	addi	%x6, %x9, 0  #0 pc 32616
	addi	%x29, %x13, 0  #0 pc 32620
	sw	%x1, 32(%x2)  #2422 pc 32624
	lw	%x30, 0(%x29)  #2422 pc 32628
	addi	%x2, %x2, 36  #2422 pc 32632
	jalr	%x1, %x30, 0  #2422 pc 32636
	addi	%x2, %x2, -36  #2422 pc 32640
	lw	%x1, 32(%x2)  #2422 pc 32644
ble_cont.9523: #pc 32648
	addi	%x6, %x0, 0  #0 pc 32648
	lw	%x7, 24(%x2)  #2424 pc 32652
	lw	%x8, 20(%x2)  #2424 pc 32656
	lw	%x9, 16(%x2)  #2424 pc 32660
	lw	%x10, 12(%x2)  #2424 pc 32664
	lw	%x11, 8(%x2)  #2424 pc 32668
	lw	%x29, 28(%x2)  #2424 pc 32672
	sw	%x1, 32(%x2)  #2424 pc 32676
	lw	%x30, 0(%x29)  #2424 pc 32680
	addi	%x2, %x2, 36  #2424 pc 32684
	jalr	%x1, %x30, 0  #2424 pc 32688
	addi	%x2, %x2, -36  #2424 pc 32692
	lw	%x1, 32(%x2)  #2424 pc 32696
	lw	%x6, 24(%x2)  #2425 pc 32700
	addi	%x6, %x6, 1  #2425 pc 32704
	addi	%x7, %x0, 2  #0 pc 32708
	lw	%x8, 4(%x2)  #2425 pc 32712
	sw	%x6, 32(%x2)  #2425 pc 32716
	addi	%x6, %x8, 0  #0 pc 32720
	sw	%x1, 36(%x2)  #2425 pc 32724
	addi	%x2, %x2, 40  #2425 pc 32728
	jal	%x1, add_mod5.2618  #2425 pc 32732
	addi	%x2, %x2, -40  #2425 pc 32736
	lw	%x1, 36(%x2) #2425 pc 32740
	addi	%x10, %x6, 0  #2425 pc 32744
	lw	%x6, 32(%x2)  #2425 pc 32748
	lw	%x7, 16(%x2)  #2425 pc 32752
	lw	%x8, 12(%x2)  #2425 pc 32756
	lw	%x9, 20(%x2)  #2425 pc 32760
	lw	%x11, 8(%x2)  #2425 pc 32764
	lw	%x29, 0(%x2)  #2425 pc 32768
	lw	%x30, 0(%x29)  #2425 pc 32772
	jalr	%x0, %x30, 0  #2425 pc 32776
	nop #pc 32780
create_float5x3array.3030:  #pc 32784
	addi	%x6, %x0, 3  #0 pc 32784
	fmv	%f0, l.6244  #0 pc 32788
	sw	%x1, 0(%x2)  #2436 pc 32792
	addi	%x2, %x2, 4  #2436 pc 32796
	jal	%x1, create_float_array.2577  #2436 pc 32800
	addi	%x2, %x2, -4  #2436 pc 32804
	lw	%x1, 0(%x2) #2436 pc 32808
	addi	%x7, %x6, 0  #2436 pc 32812
	addi	%x6, %x0, 5  #0 pc 32816
	sw	%x1, 0(%x2)  #2437 pc 32820
	addi	%x2, %x2, 4  #2437 pc 32824
	jal	%x1, create_array.2570  #2437 pc 32828
	addi	%x2, %x2, -4  #2437 pc 32832
	lw	%x1, 0(%x2) #2437 pc 32836
	addi	%x7, %x0, 3  #0 pc 32840
	fmv	%f0, l.6244  #0 pc 32844
	sw	%x6, 0(%x2)  #2438 pc 32848
	addi	%x6, %x7, 0  #0 pc 32852
	sw	%x1, 4(%x2)  #2438 pc 32856
	addi	%x2, %x2, 8  #2438 pc 32860
	jal	%x1, create_float_array.2577  #2438 pc 32864
	addi	%x2, %x2, -8  #2438 pc 32868
	lw	%x1, 4(%x2) #2438 pc 32872
	lw	%x7, 0(%x2)  #2438 pc 32876
	sw	%x6, 4(%x7)  #2438 pc 32880
	addi	%x6, %x0, 3  #0 pc 32884
	fmv	%f0, l.6244  #0 pc 32888
	sw	%x1, 4(%x2)  #2439 pc 32892
	addi	%x2, %x2, 8  #2439 pc 32896
	jal	%x1, create_float_array.2577  #2439 pc 32900
	addi	%x2, %x2, -8  #2439 pc 32904
	lw	%x1, 4(%x2) #2439 pc 32908
	lw	%x7, 0(%x2)  #2439 pc 32912
	sw	%x6, 8(%x7)  #2439 pc 32916
	addi	%x6, %x0, 3  #0 pc 32920
	fmv	%f0, l.6244  #0 pc 32924
	sw	%x1, 4(%x2)  #2440 pc 32928
	addi	%x2, %x2, 8  #2440 pc 32932
	jal	%x1, create_float_array.2577  #2440 pc 32936
	addi	%x2, %x2, -8  #2440 pc 32940
	lw	%x1, 4(%x2) #2440 pc 32944
	lw	%x7, 0(%x2)  #2440 pc 32948
	sw	%x6, 12(%x7)  #2440 pc 32952
	addi	%x6, %x0, 3  #0 pc 32956
	fmv	%f0, l.6244  #0 pc 32960
	sw	%x1, 4(%x2)  #2441 pc 32964
	addi	%x2, %x2, 8  #2441 pc 32968
	jal	%x1, create_float_array.2577  #2441 pc 32972
	addi	%x2, %x2, -8  #2441 pc 32976
	lw	%x1, 4(%x2) #2441 pc 32980
	lw	%x7, 0(%x2)  #2441 pc 32984
	sw	%x6, 16(%x7)  #2441 pc 32988
	addi	%x6, %x7, 0  #2442 pc 32992
	ret #pc 32996
	nop #pc 33000
create_pixel.3032:  #pc 33004
	addi	%x6, %x0, 3  #0 pc 33004
	fmv	%f0, l.6244  #0 pc 33008
	sw	%x1, 0(%x2)  #2448 pc 33012
	addi	%x2, %x2, 4  #2448 pc 33016
	jal	%x1, create_float_array.2577  #2448 pc 33020
	addi	%x2, %x2, -4  #2448 pc 33024
	lw	%x1, 0(%x2) #2448 pc 33028
	sw	%x6, 0(%x2)  #2449 pc 33032
	sw	%x1, 4(%x2)  #2449 pc 33036
	addi	%x2, %x2, 8  #2449 pc 33040
	jal	%x1, create_float5x3array.3030  #2449 pc 33044
	addi	%x2, %x2, -8  #2449 pc 33048
	lw	%x1, 4(%x2) #2449 pc 33052
	addi	%x7, %x0, 5  #0 pc 33056
	addi	%x8, %x0, 0  #0 pc 33060
	sw	%x6, 4(%x2)  #2450 pc 33064
	addi	%x6, %x7, 0  #0 pc 33068
	addi	%x7, %x8, 0  #0 pc 33072
	sw	%x1, 8(%x2)  #2450 pc 33076
	addi	%x2, %x2, 12  #2450 pc 33080
	jal	%x1, create_array.2570  #2450 pc 33084
	addi	%x2, %x2, -12  #2450 pc 33088
	lw	%x1, 8(%x2) #2450 pc 33092
	addi	%x7, %x0, 5  #0 pc 33096
	addi	%x8, %x0, 0  #0 pc 33100
	sw	%x6, 8(%x2)  #2451 pc 33104
	addi	%x6, %x7, 0  #0 pc 33108
	addi	%x7, %x8, 0  #0 pc 33112
	sw	%x1, 12(%x2)  #2451 pc 33116
	addi	%x2, %x2, 16  #2451 pc 33120
	jal	%x1, create_array.2570  #2451 pc 33124
	addi	%x2, %x2, -16  #2451 pc 33128
	lw	%x1, 12(%x2) #2451 pc 33132
	sw	%x6, 12(%x2)  #2452 pc 33136
	sw	%x1, 16(%x2)  #2452 pc 33140
	addi	%x2, %x2, 20  #2452 pc 33144
	jal	%x1, create_float5x3array.3030  #2452 pc 33148
	addi	%x2, %x2, -20  #2452 pc 33152
	lw	%x1, 16(%x2) #2452 pc 33156
	sw	%x6, 16(%x2)  #2453 pc 33160
	sw	%x1, 20(%x2)  #2453 pc 33164
	addi	%x2, %x2, 24  #2453 pc 33168
	jal	%x1, create_float5x3array.3030  #2453 pc 33172
	addi	%x2, %x2, -24  #2453 pc 33176
	lw	%x1, 20(%x2) #2453 pc 33180
	addi	%x7, %x0, 1  #0 pc 33184
	addi	%x8, %x0, 0  #0 pc 33188
	sw	%x6, 20(%x2)  #2454 pc 33192
	addi	%x6, %x7, 0  #0 pc 33196
	addi	%x7, %x8, 0  #0 pc 33200
	sw	%x1, 24(%x2)  #2454 pc 33204
	addi	%x2, %x2, 28  #2454 pc 33208
	jal	%x1, create_array.2570  #2454 pc 33212
	addi	%x2, %x2, -28  #2454 pc 33216
	lw	%x1, 24(%x2) #2454 pc 33220
	sw	%x6, 24(%x2)  #2455 pc 33224
	sw	%x1, 28(%x2)  #2455 pc 33228
	addi	%x2, %x2, 32  #2455 pc 33232
	jal	%x1, create_float5x3array.3030  #2455 pc 33236
	addi	%x2, %x2, -32  #2455 pc 33240
	lw	%x1, 28(%x2) #2455 pc 33244
	addi	%x7, %x3, 0  #2456 pc 33248
	addi	%x3, %x3, 32  #2456 pc 33252
	sw	%x6, 28(%x7)  #2456 pc 33256
	lw	%x6, 24(%x2)  #2456 pc 33260
	sw	%x6, 24(%x7)  #2456 pc 33264
	lw	%x6, 20(%x2)  #2456 pc 33268
	sw	%x6, 20(%x7)  #2456 pc 33272
	lw	%x6, 16(%x2)  #2456 pc 33276
	sw	%x6, 16(%x7)  #2456 pc 33280
	lw	%x6, 12(%x2)  #2456 pc 33284
	sw	%x6, 12(%x7)  #2456 pc 33288
	lw	%x6, 8(%x2)  #2456 pc 33292
	sw	%x6, 8(%x7)  #2456 pc 33296
	lw	%x6, 4(%x2)  #2456 pc 33300
	sw	%x6, 4(%x7)  #2456 pc 33304
	lw	%x6, 0(%x2)  #2456 pc 33308
	sw	%x6, 0(%x7)  #2456 pc 33312
	addi	%x6, %x7, 0  #2456 pc 33316
	ret #pc 33320
	nop #pc 33324
init_line_elements.3034:  #pc 33328
	bge	%x7, %x0, 12  #2461 pc 33328
	j	bge_else.9524 #pc 33332
	nop #pc 33336
	sw	%x6, 0(%x2)  #2462 pc 33340
	sw	%x7, 4(%x2)  #2462 pc 33344
	sw	%x1, 8(%x2)  #2462 pc 33348
	addi	%x2, %x2, 12  #2462 pc 33352
	jal	%x1, create_pixel.3032  #2462 pc 33356
	addi	%x2, %x2, -12  #2462 pc 33360
	lw	%x1, 8(%x2) #2462 pc 33364
	lw	%x7, 4(%x2)  #2462 pc 33368
	slli	%x8, %x7, 2  #2462 pc 33372
	lw	%x9, 0(%x2)  #2462 pc 33376
	add	%x31, %x8, %x9  #2462 pc 33380
	sw	%x6, 0(%x31)  #2462 pc 33384
	addi	%x7, %x7, -1  #2463 pc 33388
	addi	%x6, %x9, 0  #0 pc 33392
	j	init_line_elements.3034  #2463 pc 33396
	nop #pc 33400
bge_else.9524: #pc 33404
	ret #pc 33404
	nop #pc 33408
create_pixelline.3037:  #pc 33412
	lw	%x6, 4(%x29)  #0 pc 33412
	lw	%x7, 0(%x6)  #2470 pc 33416
	sw	%x6, 0(%x2)  #2470 pc 33420
	sw	%x7, 4(%x2)  #2470 pc 33424
	sw	%x1, 8(%x2)  #2470 pc 33428
	addi	%x2, %x2, 12  #2470 pc 33432
	jal	%x1, create_pixel.3032  #2470 pc 33436
	addi	%x2, %x2, -12  #2470 pc 33440
	lw	%x1, 8(%x2) #2470 pc 33444
	addi	%x7, %x6, 0  #2470 pc 33448
	lw	%x6, 4(%x2)  #2470 pc 33452
	sw	%x1, 8(%x2)  #2470 pc 33456
	addi	%x2, %x2, 12  #2470 pc 33460
	jal	%x1, create_array.2570  #2470 pc 33464
	addi	%x2, %x2, -12  #2470 pc 33468
	lw	%x1, 8(%x2) #2470 pc 33472
	lw	%x7, 0(%x2)  #2471 pc 33476
	lw	%x7, 0(%x7)  #2471 pc 33480
	addi	%x7, %x7, -2  #2471 pc 33484
	j	init_line_elements.3034  #2471 pc 33488
	nop #pc 33492
tan.3039:  #pc 33496
	fsw	%f0, 0(%x2)  #2484 pc 33496
	sw	%x1, 8(%x2)  #2484 pc 33500
	addi	%x2, %x2, 12  #2484 pc 33504
	jal	%x1, sin.2526  #2484 pc 33508
	addi	%x2, %x2, -12  #2484 pc 33512
	lw	%x1, 8(%x2) #2484 pc 33516
	flw	%f1, 0(%x2)  #2484 pc 33520
	fsw	%f0, 8(%x2)  #2484 pc 33524
	fadd	%f0, %f1, %f30  #0 pc 33528
	sw	%x1, 16(%x2)  #2484 pc 33532
	addi	%x2, %x2, 20  #2484 pc 33536
	jal	%x1, cos.2530  #2484 pc 33540
	addi	%x2, %x2, -20  #2484 pc 33544
	lw	%x1, 16(%x2) #2484 pc 33548
	flw	%f1, 8(%x2)  #2484 pc 33552
	fdiv	%f0, %f1, %f0  #2484 pc 33556
	ret #pc 33560
	nop #pc 33564
adjust_position.3041:  #pc 33568
	fmul	%f0, %f0, %f0  #2489 pc 33568
	fmv	%f2, l.6821  #0 pc 33572
	fadd	%f0, %f0, %f2  #2489 pc 33576
	fsqrt	%f0, %f0  #2489 pc 33580
	fmv	%f2, l.6263  #0 pc 33584
	fdiv	%f2, %f2, %f0  #2490 pc 33588
	fsw	%f0, 0(%x2)  #2491 pc 33592
	fsw	%f1, 8(%x2)  #2491 pc 33596
	fadd	%f0, %f2, %f30  #0 pc 33600
	sw	%x1, 16(%x2)  #2491 pc 33604
	addi	%x2, %x2, 20  #2491 pc 33608
	jal	%x1, atan.2532  #2491 pc 33612
	addi	%x2, %x2, -20  #2491 pc 33616
	lw	%x1, 16(%x2) #2491 pc 33620
	flw	%f1, 8(%x2)  #2492 pc 33624
	fmul	%f0, %f0, %f1  #2492 pc 33628
	sw	%x1, 16(%x2)  #2492 pc 33632
	addi	%x2, %x2, 20  #2492 pc 33636
	jal	%x1, tan.3039  #2492 pc 33640
	addi	%x2, %x2, -20  #2492 pc 33644
	lw	%x1, 16(%x2) #2492 pc 33648
	flw	%f1, 0(%x2)  #2493 pc 33652
	fmul	%f0, %f0, %f1  #2493 pc 33656
	ret #pc 33660
	nop #pc 33664
calc_dirvec.3044:  #pc 33668
	lw	%x9, 4(%x29)  #0 pc 33668
	addi	%x31, %x0, 5  #pc 33672
	bge	%x6, %x31, 12  #2498 pc 33676
	j	bge_else.9525 #pc 33680
	nop #pc 33684
	sw	%x8, 0(%x2)  #2499 pc 33688
	sw	%x9, 4(%x2)  #2499 pc 33692
	sw	%x7, 8(%x2)  #2499 pc 33696
	fsw	%f0, 16(%x2)  #2499 pc 33700
	fsw	%f1, 24(%x2)  #2499 pc 33704
	sw	%x1, 32(%x2)  #2499 pc 33708
	addi	%x2, %x2, 36  #2499 pc 33712
	jal	%x1, fsqr.2517  #2499 pc 33716
	addi	%x2, %x2, -36  #2499 pc 33720
	lw	%x1, 32(%x2) #2499 pc 33724
	flw	%f1, 24(%x2)  #2499 pc 33728
	fsw	%f0, 32(%x2)  #2499 pc 33732
	fadd	%f0, %f1, %f30  #0 pc 33736
	sw	%x1, 40(%x2)  #2499 pc 33740
	addi	%x2, %x2, 44  #2499 pc 33744
	jal	%x1, fsqr.2517  #2499 pc 33748
	addi	%x2, %x2, -44  #2499 pc 33752
	lw	%x1, 40(%x2) #2499 pc 33756
	flw	%f1, 32(%x2)  #2499 pc 33760
	fadd	%f0, %f1, %f0  #2499 pc 33764
	fmv	%f1, l.6263  #0 pc 33768
	fadd	%f0, %f0, %f1  #2499 pc 33772
	fsqrt	%f0, %f0  #2499 pc 33776
	flw	%f1, 16(%x2)  #2500 pc 33780
	fdiv	%f1, %f1, %f0  #2500 pc 33784
	flw	%f2, 24(%x2)  #2501 pc 33788
	fdiv	%f2, %f2, %f0  #2501 pc 33792
	fmv	%f3, l.6263  #0 pc 33796
	fdiv	%f0, %f3, %f0  #2502 pc 33800
	lw	%x6, 8(%x2)  #2505 pc 33804
	slli	%x6, %x6, 2  #2505 pc 33808
	lw	%x7, 4(%x2)  #2505 pc 33812
	add	%x31, %x6, %x7  #2505 pc 33816
	lw	%x6, 0(%x31)  #2505 pc 33820
	lw	%x7, 0(%x2)  #2506 pc 33824
	slli	%x8, %x7, 2  #2506 pc 33828
	add	%x31, %x8, %x6  #2506 pc 33832
	lw	%x8, 0(%x31)  #2506 pc 33836
	sw	%x6, 40(%x2)  #2506 pc 33840
	fsw	%f0, 48(%x2)  #2506 pc 33844
	fsw	%f2, 56(%x2)  #2506 pc 33848
	fsw	%f1, 64(%x2)  #2506 pc 33852
	addi	%x6, %x8, 0  #0 pc 33856
	sw	%x1, 72(%x2)  #2506 pc 33860
	addi	%x2, %x2, 76  #2506 pc 33864
	jal	%x1, d_vec.2720  #2506 pc 33868
	addi	%x2, %x2, -76  #2506 pc 33872
	lw	%x1, 72(%x2) #2506 pc 33876
	flw	%f0, 64(%x2)  #2506 pc 33880
	flw	%f1, 56(%x2)  #2506 pc 33884
	flw	%f2, 48(%x2)  #2506 pc 33888
	sw	%x1, 72(%x2)  #2506 pc 33892
	addi	%x2, %x2, 76  #2506 pc 33896
	jal	%x1, vecset.2621  #2506 pc 33900
	addi	%x2, %x2, -76  #2506 pc 33904
	lw	%x1, 72(%x2) #2506 pc 33908
	lw	%x6, 0(%x2)  #2507 pc 33912
	addi	%x7, %x6, 40  #2507 pc 33916
	slli	%x7, %x7, 2  #2507 pc 33920
	lw	%x8, 40(%x2)  #2507 pc 33924
	add	%x31, %x7, %x8  #2507 pc 33928
	lw	%x7, 0(%x31)  #2507 pc 33932
	addi	%x6, %x7, 0  #0 pc 33936
	sw	%x1, 72(%x2)  #2507 pc 33940
	addi	%x2, %x2, 76  #2507 pc 33944
	jal	%x1, d_vec.2720  #2507 pc 33948
	addi	%x2, %x2, -76  #2507 pc 33952
	lw	%x1, 72(%x2) #2507 pc 33956
	flw	%f0, 56(%x2)  #2507 pc 33960
	sw	%x6, 72(%x2)  #2507 pc 33964
	sw	%x1, 76(%x2)  #2507 pc 33968
	addi	%x2, %x2, 80  #2507 pc 33972
	jal	%x1, fneg.2515  #2507 pc 33976
	addi	%x2, %x2, -80  #2507 pc 33980
	lw	%x1, 76(%x2) #2507 pc 33984
	fadd	%f2, %f0, %f30  #2507 pc 33988
	flw	%f0, 64(%x2)  #2507 pc 33992
	flw	%f1, 48(%x2)  #2507 pc 33996
	lw	%x6, 72(%x2)  #2507 pc 34000
	sw	%x1, 76(%x2)  #2507 pc 34004
	addi	%x2, %x2, 80  #2507 pc 34008
	jal	%x1, vecset.2621  #2507 pc 34012
	addi	%x2, %x2, -80  #2507 pc 34016
	lw	%x1, 76(%x2) #2507 pc 34020
	lw	%x6, 0(%x2)  #2508 pc 34024
	addi	%x7, %x6, 80  #2508 pc 34028
	slli	%x7, %x7, 2  #2508 pc 34032
	lw	%x8, 40(%x2)  #2508 pc 34036
	add	%x31, %x7, %x8  #2508 pc 34040
	lw	%x7, 0(%x31)  #2508 pc 34044
	addi	%x6, %x7, 0  #0 pc 34048
	sw	%x1, 76(%x2)  #2508 pc 34052
	addi	%x2, %x2, 80  #2508 pc 34056
	jal	%x1, d_vec.2720  #2508 pc 34060
	addi	%x2, %x2, -80  #2508 pc 34064
	lw	%x1, 76(%x2) #2508 pc 34068
	flw	%f0, 64(%x2)  #2508 pc 34072
	sw	%x6, 76(%x2)  #2508 pc 34076
	sw	%x1, 80(%x2)  #2508 pc 34080
	addi	%x2, %x2, 84  #2508 pc 34084
	jal	%x1, fneg.2515  #2508 pc 34088
	addi	%x2, %x2, -84  #2508 pc 34092
	lw	%x1, 80(%x2) #2508 pc 34096
	flw	%f1, 56(%x2)  #2508 pc 34100
	fsw	%f0, 80(%x2)  #2508 pc 34104
	fadd	%f0, %f1, %f30  #0 pc 34108
	sw	%x1, 88(%x2)  #2508 pc 34112
	addi	%x2, %x2, 92  #2508 pc 34116
	jal	%x1, fneg.2515  #2508 pc 34120
	addi	%x2, %x2, -92  #2508 pc 34124
	lw	%x1, 88(%x2) #2508 pc 34128
	fadd	%f2, %f0, %f30  #2508 pc 34132
	flw	%f0, 48(%x2)  #2508 pc 34136
	flw	%f1, 80(%x2)  #2508 pc 34140
	lw	%x6, 76(%x2)  #2508 pc 34144
	sw	%x1, 88(%x2)  #2508 pc 34148
	addi	%x2, %x2, 92  #2508 pc 34152
	jal	%x1, vecset.2621  #2508 pc 34156
	addi	%x2, %x2, -92  #2508 pc 34160
	lw	%x1, 88(%x2) #2508 pc 34164
	lw	%x6, 0(%x2)  #2509 pc 34168
	addi	%x7, %x6, 1  #2509 pc 34172
	slli	%x7, %x7, 2  #2509 pc 34176
	lw	%x8, 40(%x2)  #2509 pc 34180
	add	%x31, %x7, %x8  #2509 pc 34184
	lw	%x7, 0(%x31)  #2509 pc 34188
	addi	%x6, %x7, 0  #0 pc 34192
	sw	%x1, 88(%x2)  #2509 pc 34196
	addi	%x2, %x2, 92  #2509 pc 34200
	jal	%x1, d_vec.2720  #2509 pc 34204
	addi	%x2, %x2, -92  #2509 pc 34208
	lw	%x1, 88(%x2) #2509 pc 34212
	flw	%f0, 64(%x2)  #2509 pc 34216
	sw	%x6, 88(%x2)  #2509 pc 34220
	sw	%x1, 92(%x2)  #2509 pc 34224
	addi	%x2, %x2, 96  #2509 pc 34228
	jal	%x1, fneg.2515  #2509 pc 34232
	addi	%x2, %x2, -96  #2509 pc 34236
	lw	%x1, 92(%x2) #2509 pc 34240
	flw	%f1, 56(%x2)  #2509 pc 34244
	fsw	%f0, 96(%x2)  #2509 pc 34248
	fadd	%f0, %f1, %f30  #0 pc 34252
	sw	%x1, 104(%x2)  #2509 pc 34256
	addi	%x2, %x2, 108  #2509 pc 34260
	jal	%x1, fneg.2515  #2509 pc 34264
	addi	%x2, %x2, -108  #2509 pc 34268
	lw	%x1, 104(%x2) #2509 pc 34272
	flw	%f1, 48(%x2)  #2509 pc 34276
	fsw	%f0, 104(%x2)  #2509 pc 34280
	fadd	%f0, %f1, %f30  #0 pc 34284
	sw	%x1, 112(%x2)  #2509 pc 34288
	addi	%x2, %x2, 116  #2509 pc 34292
	jal	%x1, fneg.2515  #2509 pc 34296
	addi	%x2, %x2, -116  #2509 pc 34300
	lw	%x1, 112(%x2) #2509 pc 34304
	fadd	%f2, %f0, %f30  #2509 pc 34308
	flw	%f0, 96(%x2)  #2509 pc 34312
	flw	%f1, 104(%x2)  #2509 pc 34316
	lw	%x6, 88(%x2)  #2509 pc 34320
	sw	%x1, 112(%x2)  #2509 pc 34324
	addi	%x2, %x2, 116  #2509 pc 34328
	jal	%x1, vecset.2621  #2509 pc 34332
	addi	%x2, %x2, -116  #2509 pc 34336
	lw	%x1, 112(%x2) #2509 pc 34340
	lw	%x6, 0(%x2)  #2510 pc 34344
	addi	%x7, %x6, 41  #2510 pc 34348
	slli	%x7, %x7, 2  #2510 pc 34352
	lw	%x8, 40(%x2)  #2510 pc 34356
	add	%x31, %x7, %x8  #2510 pc 34360
	lw	%x7, 0(%x31)  #2510 pc 34364
	addi	%x6, %x7, 0  #0 pc 34368
	sw	%x1, 112(%x2)  #2510 pc 34372
	addi	%x2, %x2, 116  #2510 pc 34376
	jal	%x1, d_vec.2720  #2510 pc 34380
	addi	%x2, %x2, -116  #2510 pc 34384
	lw	%x1, 112(%x2) #2510 pc 34388
	flw	%f0, 64(%x2)  #2510 pc 34392
	sw	%x6, 112(%x2)  #2510 pc 34396
	sw	%x1, 116(%x2)  #2510 pc 34400
	addi	%x2, %x2, 120  #2510 pc 34404
	jal	%x1, fneg.2515  #2510 pc 34408
	addi	%x2, %x2, -120  #2510 pc 34412
	lw	%x1, 116(%x2) #2510 pc 34416
	flw	%f1, 48(%x2)  #2510 pc 34420
	fsw	%f0, 120(%x2)  #2510 pc 34424
	fadd	%f0, %f1, %f30  #0 pc 34428
	sw	%x1, 128(%x2)  #2510 pc 34432
	addi	%x2, %x2, 132  #2510 pc 34436
	jal	%x1, fneg.2515  #2510 pc 34440
	addi	%x2, %x2, -132  #2510 pc 34444
	lw	%x1, 128(%x2) #2510 pc 34448
	fadd	%f1, %f0, %f30  #2510 pc 34452
	flw	%f0, 120(%x2)  #2510 pc 34456
	flw	%f2, 56(%x2)  #2510 pc 34460
	lw	%x6, 112(%x2)  #2510 pc 34464
	sw	%x1, 128(%x2)  #2510 pc 34468
	addi	%x2, %x2, 132  #2510 pc 34472
	jal	%x1, vecset.2621  #2510 pc 34476
	addi	%x2, %x2, -132  #2510 pc 34480
	lw	%x1, 128(%x2) #2510 pc 34484
	lw	%x6, 0(%x2)  #2511 pc 34488
	addi	%x6, %x6, 81  #2511 pc 34492
	slli	%x6, %x6, 2  #2511 pc 34496
	lw	%x7, 40(%x2)  #2511 pc 34500
	add	%x31, %x6, %x7  #2511 pc 34504
	lw	%x6, 0(%x31)  #2511 pc 34508
	sw	%x1, 128(%x2)  #2511 pc 34512
	addi	%x2, %x2, 132  #2511 pc 34516
	jal	%x1, d_vec.2720  #2511 pc 34520
	addi	%x2, %x2, -132  #2511 pc 34524
	lw	%x1, 128(%x2) #2511 pc 34528
	flw	%f0, 48(%x2)  #2511 pc 34532
	sw	%x6, 128(%x2)  #2511 pc 34536
	sw	%x1, 132(%x2)  #2511 pc 34540
	addi	%x2, %x2, 136  #2511 pc 34544
	jal	%x1, fneg.2515  #2511 pc 34548
	addi	%x2, %x2, -136  #2511 pc 34552
	lw	%x1, 132(%x2) #2511 pc 34556
	flw	%f1, 64(%x2)  #2511 pc 34560
	flw	%f2, 56(%x2)  #2511 pc 34564
	lw	%x6, 128(%x2)  #2511 pc 34568
	j	vecset.2621  #2511 pc 34572
	nop #pc 34576
bge_else.9525: #pc 34580
	fsw	%f2, 136(%x2)  #2513 pc 34580
	sw	%x8, 0(%x2)  #2513 pc 34584
	sw	%x7, 8(%x2)  #2513 pc 34588
	sw	%x29, 144(%x2)  #2513 pc 34592
	fsw	%f3, 152(%x2)  #2513 pc 34596
	sw	%x6, 160(%x2)  #2513 pc 34600
	fadd	%f0, %f1, %f30  #0 pc 34604
	fadd	%f1, %f2, %f30  #0 pc 34608
	sw	%x1, 164(%x2)  #2513 pc 34612
	addi	%x2, %x2, 168  #2513 pc 34616
	jal	%x1, adjust_position.3041  #2513 pc 34620
	addi	%x2, %x2, -168  #2513 pc 34624
	lw	%x1, 164(%x2) #2513 pc 34628
	lw	%x6, 160(%x2)  #2514 pc 34632
	addi	%x6, %x6, 1  #2514 pc 34636
	flw	%f1, 152(%x2)  #2514 pc 34640
	fsw	%f0, 168(%x2)  #2514 pc 34644
	sw	%x6, 176(%x2)  #2514 pc 34648
	sw	%x1, 180(%x2)  #2514 pc 34652
	addi	%x2, %x2, 184  #2514 pc 34656
	jal	%x1, adjust_position.3041  #2514 pc 34660
	addi	%x2, %x2, -184  #2514 pc 34664
	lw	%x1, 180(%x2) #2514 pc 34668
	fadd	%f1, %f0, %f30  #2514 pc 34672
	flw	%f0, 168(%x2)  #2514 pc 34676
	flw	%f2, 136(%x2)  #2514 pc 34680
	flw	%f3, 152(%x2)  #2514 pc 34684
	lw	%x6, 176(%x2)  #2514 pc 34688
	lw	%x7, 8(%x2)  #2514 pc 34692
	lw	%x8, 0(%x2)  #2514 pc 34696
	lw	%x29, 144(%x2)  #2514 pc 34700
	lw	%x30, 0(%x29)  #2514 pc 34704
	jalr	%x0, %x30, 0  #2514 pc 34708
	nop #pc 34712
calc_dirvecs.3052:  #pc 34716
	lw	%x9, 4(%x29)  #0 pc 34716
	bge	%x6, %x0, 12  #2519 pc 34720
	j	bge_else.9533 #pc 34724
	nop #pc 34728
	sw	%x29, 0(%x2)  #2521 pc 34732
	sw	%x6, 4(%x2)  #2521 pc 34736
	fsw	%f0, 8(%x2)  #2521 pc 34740
	sw	%x8, 16(%x2)  #2521 pc 34744
	sw	%x7, 20(%x2)  #2521 pc 34748
	sw	%x9, 24(%x2)  #2521 pc 34752
	sw	%x1, 28(%x2)  #2521 pc 34756
	addi	%x2, %x2, 32  #2521 pc 34760
	jal	%x1, float_of_int.2538  #2521 pc 34764
	addi	%x2, %x2, -32  #2521 pc 34768
	lw	%x1, 28(%x2) #2521 pc 34772
	fmv	%f1, l.6277  #0 pc 34776
	fmul	%f0, %f0, %f1  #2521 pc 34780
	fmv	%f1, l.6954  #0 pc 34784
	fsub	%f2, %f0, %f1  #2521 pc 34788
	addi	%x6, %x0, 0  #0 pc 34792
	fmv	%f0, l.6244  #0 pc 34796
	fmv	%f1, l.6244  #0 pc 34800
	flw	%f3, 8(%x2)  #2522 pc 34804
	lw	%x7, 20(%x2)  #2522 pc 34808
	lw	%x8, 16(%x2)  #2522 pc 34812
	lw	%x29, 24(%x2)  #2522 pc 34816
	sw	%x1, 28(%x2)  #2522 pc 34820
	lw	%x30, 0(%x29)  #2522 pc 34824
	addi	%x2, %x2, 32  #2522 pc 34828
	jalr	%x1, %x30, 0  #2522 pc 34832
	addi	%x2, %x2, -32  #2522 pc 34836
	lw	%x1, 28(%x2)  #2522 pc 34840
	lw	%x6, 4(%x2)  #2524 pc 34844
	sw	%x1, 28(%x2)  #2524 pc 34848
	addi	%x2, %x2, 32  #2524 pc 34852
	jal	%x1, float_of_int.2538  #2524 pc 34856
	addi	%x2, %x2, -32  #2524 pc 34860
	lw	%x1, 28(%x2) #2524 pc 34864
	fmv	%f1, l.6277  #0 pc 34868
	fmul	%f0, %f0, %f1  #2524 pc 34872
	fmv	%f1, l.6821  #0 pc 34876
	fadd	%f2, %f0, %f1  #2524 pc 34880
	addi	%x6, %x0, 0  #0 pc 34884
	fmv	%f0, l.6244  #0 pc 34888
	fmv	%f1, l.6244  #0 pc 34892
	lw	%x7, 16(%x2)  #2525 pc 34896
	addi	%x8, %x7, 2  #2525 pc 34900
	flw	%f3, 8(%x2)  #2525 pc 34904
	lw	%x9, 20(%x2)  #2525 pc 34908
	lw	%x29, 24(%x2)  #2525 pc 34912
	addi	%x7, %x9, 0  #0 pc 34916
	sw	%x1, 28(%x2)  #2525 pc 34920
	lw	%x30, 0(%x29)  #2525 pc 34924
	addi	%x2, %x2, 32  #2525 pc 34928
	jalr	%x1, %x30, 0  #2525 pc 34932
	addi	%x2, %x2, -32  #2525 pc 34936
	lw	%x1, 28(%x2)  #2525 pc 34940
	lw	%x6, 4(%x2)  #2527 pc 34944
	addi	%x6, %x6, -1  #2527 pc 34948
	addi	%x7, %x0, 1  #0 pc 34952
	lw	%x8, 20(%x2)  #2527 pc 34956
	sw	%x6, 28(%x2)  #2527 pc 34960
	addi	%x6, %x8, 0  #0 pc 34964
	sw	%x1, 32(%x2)  #2527 pc 34968
	addi	%x2, %x2, 36  #2527 pc 34972
	jal	%x1, add_mod5.2618  #2527 pc 34976
	addi	%x2, %x2, -36  #2527 pc 34980
	lw	%x1, 32(%x2) #2527 pc 34984
	addi	%x7, %x6, 0  #2527 pc 34988
	flw	%f0, 8(%x2)  #2527 pc 34992
	lw	%x6, 28(%x2)  #2527 pc 34996
	lw	%x8, 16(%x2)  #2527 pc 35000
	lw	%x29, 0(%x2)  #2527 pc 35004
	lw	%x30, 0(%x29)  #2527 pc 35008
	jalr	%x0, %x30, 0  #2527 pc 35012
	nop #pc 35016
bge_else.9533: #pc 35020
	ret #pc 35020
	nop #pc 35024
calc_dirvec_rows.3057:  #pc 35028
	lw	%x9, 4(%x29)  #0 pc 35028
	bge	%x6, %x0, 12  #2533 pc 35032
	j	bge_else.9535 #pc 35036
	nop #pc 35040
	sw	%x29, 0(%x2)  #2534 pc 35044
	sw	%x6, 4(%x2)  #2534 pc 35048
	sw	%x8, 8(%x2)  #2534 pc 35052
	sw	%x7, 12(%x2)  #2534 pc 35056
	sw	%x9, 16(%x2)  #2534 pc 35060
	sw	%x1, 20(%x2)  #2534 pc 35064
	addi	%x2, %x2, 24  #2534 pc 35068
	jal	%x1, float_of_int.2538  #2534 pc 35072
	addi	%x2, %x2, -24  #2534 pc 35076
	lw	%x1, 20(%x2) #2534 pc 35080
	fmv	%f1, l.6277  #0 pc 35084
	fmul	%f0, %f0, %f1  #2534 pc 35088
	fmv	%f1, l.6954  #0 pc 35092
	fsub	%f0, %f0, %f1  #2534 pc 35096
	addi	%x6, %x0, 4  #0 pc 35100
	lw	%x7, 12(%x2)  #2535 pc 35104
	lw	%x8, 8(%x2)  #2535 pc 35108
	lw	%x29, 16(%x2)  #2535 pc 35112
	sw	%x1, 20(%x2)  #2535 pc 35116
	lw	%x30, 0(%x29)  #2535 pc 35120
	addi	%x2, %x2, 24  #2535 pc 35124
	jalr	%x1, %x30, 0  #2535 pc 35128
	addi	%x2, %x2, -24  #2535 pc 35132
	lw	%x1, 20(%x2)  #2535 pc 35136
	lw	%x6, 4(%x2)  #2536 pc 35140
	addi	%x6, %x6, -1  #2536 pc 35144
	addi	%x7, %x0, 2  #0 pc 35148
	lw	%x8, 12(%x2)  #2536 pc 35152
	sw	%x6, 20(%x2)  #2536 pc 35156
	addi	%x6, %x8, 0  #0 pc 35160
	sw	%x1, 24(%x2)  #2536 pc 35164
	addi	%x2, %x2, 28  #2536 pc 35168
	jal	%x1, add_mod5.2618  #2536 pc 35172
	addi	%x2, %x2, -28  #2536 pc 35176
	lw	%x1, 24(%x2) #2536 pc 35180
	addi	%x7, %x6, 0  #2536 pc 35184
	lw	%x6, 8(%x2)  #2536 pc 35188
	addi	%x8, %x6, 4  #2536 pc 35192
	lw	%x6, 20(%x2)  #2536 pc 35196
	lw	%x29, 0(%x2)  #2536 pc 35200
	lw	%x30, 0(%x29)  #2536 pc 35204
	jalr	%x0, %x30, 0  #2536 pc 35208
	nop #pc 35212
bge_else.9535: #pc 35216
	ret #pc 35216
	nop #pc 35220
create_dirvec.3061:  #pc 35224
	lw	%x6, 4(%x29)  #0 pc 35224
	addi	%x7, %x0, 3  #0 pc 35228
	fmv	%f0, l.6244  #0 pc 35232
	sw	%x6, 0(%x2)  #2546 pc 35236
	addi	%x6, %x7, 0  #0 pc 35240
	sw	%x1, 4(%x2)  #2546 pc 35244
	addi	%x2, %x2, 8  #2546 pc 35248
	jal	%x1, create_float_array.2577  #2546 pc 35252
	addi	%x2, %x2, -8  #2546 pc 35256
	lw	%x1, 4(%x2) #2546 pc 35260
	addi	%x7, %x6, 0  #2546 pc 35264
	lw	%x6, 0(%x2)  #2547 pc 35268
	lw	%x6, 0(%x6)  #2547 pc 35272
	sw	%x7, 4(%x2)  #2547 pc 35276
	sw	%x1, 8(%x2)  #2547 pc 35280
	addi	%x2, %x2, 12  #2547 pc 35284
	jal	%x1, create_array.2570  #2547 pc 35288
	addi	%x2, %x2, -12  #2547 pc 35292
	lw	%x1, 8(%x2) #2547 pc 35296
	addi	%x7, %x3, 0  #2548 pc 35300
	addi	%x3, %x3, 8  #2548 pc 35304
	sw	%x6, 4(%x7)  #2548 pc 35308
	lw	%x6, 4(%x2)  #2548 pc 35312
	sw	%x6, 0(%x7)  #2548 pc 35316
	addi	%x6, %x7, 0  #2548 pc 35320
	ret #pc 35324
	nop #pc 35328
create_dirvec_elements.3063:  #pc 35332
	lw	%x8, 4(%x29)  #0 pc 35332
	bge	%x7, %x0, 12  #2552 pc 35336
	j	bge_else.9537 #pc 35340
	nop #pc 35344
	sw	%x29, 0(%x2)  #2553 pc 35348
	sw	%x6, 4(%x2)  #2553 pc 35352
	sw	%x7, 8(%x2)  #2553 pc 35356
	addi	%x29, %x8, 0  #0 pc 35360
	sw	%x1, 12(%x2)  #2553 pc 35364
	lw	%x30, 0(%x29)  #2553 pc 35368
	addi	%x2, %x2, 16  #2553 pc 35372
	jalr	%x1, %x30, 0  #2553 pc 35376
	addi	%x2, %x2, -16  #2553 pc 35380
	lw	%x1, 12(%x2)  #2553 pc 35384
	lw	%x7, 8(%x2)  #2553 pc 35388
	slli	%x8, %x7, 2  #2553 pc 35392
	lw	%x9, 4(%x2)  #2553 pc 35396
	add	%x31, %x8, %x9  #2553 pc 35400
	sw	%x6, 0(%x31)  #2553 pc 35404
	addi	%x7, %x7, -1  #2554 pc 35408
	lw	%x29, 0(%x2)  #2554 pc 35412
	addi	%x6, %x9, 0  #0 pc 35416
	lw	%x30, 0(%x29)  #2554 pc 35420
	jalr	%x0, %x30, 0  #2554 pc 35424
	nop #pc 35428
bge_else.9537: #pc 35432
	ret #pc 35432
	nop #pc 35436
create_dirvecs.3066:  #pc 35440
	lw	%x7, 12(%x29)  #0 pc 35440
	lw	%x8, 8(%x29)  #0 pc 35444
	lw	%x9, 4(%x29)  #0 pc 35448
	bge	%x6, %x0, 12  #2559 pc 35452
	j	bge_else.9539 #pc 35456
	nop #pc 35460
	addi	%x10, %x0, 120  #0 pc 35464
	sw	%x29, 0(%x2)  #2560 pc 35468
	sw	%x8, 4(%x2)  #2560 pc 35472
	sw	%x7, 8(%x2)  #2560 pc 35476
	sw	%x6, 12(%x2)  #2560 pc 35480
	sw	%x10, 16(%x2)  #2560 pc 35484
	addi	%x29, %x9, 0  #0 pc 35488
	sw	%x1, 20(%x2)  #2560 pc 35492
	lw	%x30, 0(%x29)  #2560 pc 35496
	addi	%x2, %x2, 24  #2560 pc 35500
	jalr	%x1, %x30, 0  #2560 pc 35504
	addi	%x2, %x2, -24  #2560 pc 35508
	lw	%x1, 20(%x2)  #2560 pc 35512
	addi	%x7, %x6, 0  #2560 pc 35516
	lw	%x6, 16(%x2)  #2560 pc 35520
	sw	%x1, 20(%x2)  #2560 pc 35524
	addi	%x2, %x2, 24  #2560 pc 35528
	jal	%x1, create_array.2570  #2560 pc 35532
	addi	%x2, %x2, -24  #2560 pc 35536
	lw	%x1, 20(%x2) #2560 pc 35540
	lw	%x7, 12(%x2)  #2560 pc 35544
	slli	%x8, %x7, 2  #2560 pc 35548
	lw	%x9, 8(%x2)  #2560 pc 35552
	add	%x31, %x8, %x9  #2560 pc 35556
	sw	%x6, 0(%x31)  #2560 pc 35560
	slli	%x6, %x7, 2  #2561 pc 35564
	add	%x31, %x6, %x9  #2561 pc 35568
	lw	%x6, 0(%x31)  #2561 pc 35572
	addi	%x8, %x0, 118  #0 pc 35576
	lw	%x29, 4(%x2)  #2561 pc 35580
	addi	%x7, %x8, 0  #0 pc 35584
	sw	%x1, 20(%x2)  #2561 pc 35588
	lw	%x30, 0(%x29)  #2561 pc 35592
	addi	%x2, %x2, 24  #2561 pc 35596
	jalr	%x1, %x30, 0  #2561 pc 35600
	addi	%x2, %x2, -24  #2561 pc 35604
	lw	%x1, 20(%x2)  #2561 pc 35608
	lw	%x6, 12(%x2)  #2562 pc 35612
	addi	%x6, %x6, -1  #2562 pc 35616
	lw	%x29, 0(%x2)  #2562 pc 35620
	lw	%x30, 0(%x29)  #2562 pc 35624
	jalr	%x0, %x30, 0  #2562 pc 35628
	nop #pc 35632
bge_else.9539: #pc 35636
	ret #pc 35636
	nop #pc 35640
init_dirvec_constants.3068:  #pc 35644
	lw	%x8, 4(%x29)  #0 pc 35644
	bge	%x7, %x0, 12  #2571 pc 35648
	j	bge_else.9541 #pc 35652
	nop #pc 35656
	slli	%x9, %x7, 2  #2572 pc 35660
	add	%x31, %x9, %x6  #2572 pc 35664
	lw	%x9, 0(%x31)  #2572 pc 35668
	sw	%x6, 0(%x2)  #2572 pc 35672
	sw	%x29, 4(%x2)  #2572 pc 35676
	sw	%x7, 8(%x2)  #2572 pc 35680
	addi	%x6, %x9, 0  #0 pc 35684
	addi	%x29, %x8, 0  #0 pc 35688
	sw	%x1, 12(%x2)  #2572 pc 35692
	lw	%x30, 0(%x29)  #2572 pc 35696
	addi	%x2, %x2, 16  #2572 pc 35700
	jalr	%x1, %x30, 0  #2572 pc 35704
	addi	%x2, %x2, -16  #2572 pc 35708
	lw	%x1, 12(%x2)  #2572 pc 35712
	lw	%x6, 8(%x2)  #2573 pc 35716
	addi	%x7, %x6, -1  #2573 pc 35720
	lw	%x6, 0(%x2)  #2573 pc 35724
	lw	%x29, 4(%x2)  #2573 pc 35728
	lw	%x30, 0(%x29)  #2573 pc 35732
	jalr	%x0, %x30, 0  #2573 pc 35736
	nop #pc 35740
bge_else.9541: #pc 35744
	ret #pc 35744
	nop #pc 35748
init_vecset_constants.3071:  #pc 35752
	lw	%x7, 8(%x29)  #0 pc 35752
	lw	%x8, 4(%x29)  #0 pc 35756
	bge	%x6, %x0, 12  #2578 pc 35760
	j	bge_else.9543 #pc 35764
	nop #pc 35768
	slli	%x9, %x6, 2  #2579 pc 35772
	add	%x31, %x9, %x8  #2579 pc 35776
	lw	%x8, 0(%x31)  #2579 pc 35780
	addi	%x9, %x0, 119  #0 pc 35784
	sw	%x29, 0(%x2)  #2579 pc 35788
	sw	%x6, 4(%x2)  #2579 pc 35792
	addi	%x6, %x8, 0  #0 pc 35796
	addi	%x29, %x7, 0  #0 pc 35800
	addi	%x7, %x9, 0  #0 pc 35804
	sw	%x1, 8(%x2)  #2579 pc 35808
	lw	%x30, 0(%x29)  #2579 pc 35812
	addi	%x2, %x2, 12  #2579 pc 35816
	jalr	%x1, %x30, 0  #2579 pc 35820
	addi	%x2, %x2, -12  #2579 pc 35824
	lw	%x1, 8(%x2)  #2579 pc 35828
	lw	%x6, 4(%x2)  #2580 pc 35832
	addi	%x6, %x6, -1  #2580 pc 35836
	lw	%x29, 0(%x2)  #2580 pc 35840
	lw	%x30, 0(%x29)  #2580 pc 35844
	jalr	%x0, %x30, 0  #2580 pc 35848
	nop #pc 35852
bge_else.9543: #pc 35856
	ret #pc 35856
	nop #pc 35860
init_dirvecs.3073:  #pc 35864
	lw	%x6, 12(%x29)  #0 pc 35864
	lw	%x7, 8(%x29)  #0 pc 35868
	lw	%x8, 4(%x29)  #0 pc 35872
	addi	%x9, %x0, 4  #0 pc 35876
	sw	%x6, 0(%x2)  #2585 pc 35880
	sw	%x8, 4(%x2)  #2585 pc 35884
	addi	%x6, %x9, 0  #0 pc 35888
	addi	%x29, %x7, 0  #0 pc 35892
	sw	%x1, 8(%x2)  #2585 pc 35896
	lw	%x30, 0(%x29)  #2585 pc 35900
	addi	%x2, %x2, 12  #2585 pc 35904
	jalr	%x1, %x30, 0  #2585 pc 35908
	addi	%x2, %x2, -12  #2585 pc 35912
	lw	%x1, 8(%x2)  #2585 pc 35916
	addi	%x6, %x0, 9  #0 pc 35920
	addi	%x7, %x0, 0  #0 pc 35924
	addi	%x8, %x0, 0  #0 pc 35928
	lw	%x29, 4(%x2)  #2586 pc 35932
	sw	%x1, 8(%x2)  #2586 pc 35936
	lw	%x30, 0(%x29)  #2586 pc 35940
	addi	%x2, %x2, 12  #2586 pc 35944
	jalr	%x1, %x30, 0  #2586 pc 35948
	addi	%x2, %x2, -12  #2586 pc 35952
	lw	%x1, 8(%x2)  #2586 pc 35956
	addi	%x6, %x0, 4  #0 pc 35960
	lw	%x29, 0(%x2)  #2587 pc 35964
	lw	%x30, 0(%x29)  #2587 pc 35968
	jalr	%x0, %x30, 0  #2587 pc 35972
	nop #pc 35976
add_reflection.3075:  #pc 35980
	lw	%x8, 12(%x29)  #0 pc 35980
	lw	%x9, 8(%x29)  #0 pc 35984
	lw	%x29, 4(%x29)  #0 pc 35988
	sw	%x9, 0(%x2)  #2596 pc 35992
	sw	%x6, 4(%x2)  #2596 pc 35996
	sw	%x7, 8(%x2)  #2596 pc 36000
	fsw	%f0, 16(%x2)  #2596 pc 36004
	sw	%x8, 24(%x2)  #2596 pc 36008
	fsw	%f3, 32(%x2)  #2596 pc 36012
	fsw	%f2, 40(%x2)  #2596 pc 36016
	fsw	%f1, 48(%x2)  #2596 pc 36020
	sw	%x1, 56(%x2)  #2596 pc 36024
	lw	%x30, 0(%x29)  #2596 pc 36028
	addi	%x2, %x2, 60  #2596 pc 36032
	jalr	%x1, %x30, 0  #2596 pc 36036
	addi	%x2, %x2, -60  #2596 pc 36040
	lw	%x1, 56(%x2)  #2596 pc 36044
	sw	%x6, 56(%x2)  #2597 pc 36048
	sw	%x1, 60(%x2)  #2597 pc 36052
	addi	%x2, %x2, 64  #2597 pc 36056
	jal	%x1, d_vec.2720  #2597 pc 36060
	addi	%x2, %x2, -64  #2597 pc 36064
	lw	%x1, 60(%x2) #2597 pc 36068
	flw	%f0, 48(%x2)  #2597 pc 36072
	flw	%f1, 40(%x2)  #2597 pc 36076
	flw	%f2, 32(%x2)  #2597 pc 36080
	sw	%x1, 60(%x2)  #2597 pc 36084
	addi	%x2, %x2, 64  #2597 pc 36088
	jal	%x1, vecset.2621  #2597 pc 36092
	addi	%x2, %x2, -64  #2597 pc 36096
	lw	%x1, 60(%x2) #2597 pc 36100
	lw	%x6, 56(%x2)  #2598 pc 36104
	lw	%x29, 24(%x2)  #2598 pc 36108
	sw	%x1, 60(%x2)  #2598 pc 36112
	lw	%x30, 0(%x29)  #2598 pc 36116
	addi	%x2, %x2, 64  #2598 pc 36120
	jalr	%x1, %x30, 0  #2598 pc 36124
	addi	%x2, %x2, -64  #2598 pc 36128
	lw	%x1, 60(%x2)  #2598 pc 36132
	addi	%x6, %x3, 0  #2600 pc 36136
	addi	%x3, %x3, 12  #2600 pc 36140
	flw	%f0, 16(%x2)  #2600 pc 36144
	fsw	%f0, 8(%x6)  #2600 pc 36148
	lw	%x7, 56(%x2)  #2600 pc 36152
	sw	%x7, 4(%x6)  #2600 pc 36156
	lw	%x7, 8(%x2)  #2600 pc 36160
	sw	%x7, 0(%x6)  #2600 pc 36164
	lw	%x7, 4(%x2)  #2600 pc 36168
	slli	%x7, %x7, 2  #2600 pc 36172
	lw	%x8, 0(%x2)  #2600 pc 36176
	add	%x31, %x7, %x8  #2600 pc 36180
	sw	%x6, 0(%x31)  #2600 pc 36184
	ret #pc 36188
	nop #pc 36192
setup_rect_reflection.3082:  #pc 36196
	lw	%x8, 12(%x29)  #0 pc 36196
	lw	%x9, 8(%x29)  #0 pc 36200
	lw	%x10, 4(%x29)  #0 pc 36204
	addi	%x11, %x0, 4  #0 pc 36208
	sw	%x10, 0(%x2)  #2605 pc 36212
	sw	%x9, 4(%x2)  #2605 pc 36216
	sw	%x7, 8(%x2)  #2605 pc 36220
	sw	%x8, 12(%x2)  #2605 pc 36224
	addi	%x7, %x11, 0  #0 pc 36228
	sw	%x1, 16(%x2)  #2605 pc 36232
	addi	%x2, %x2, 20  #2605 pc 36236
	jal	%x1, mul.2547  #2605 pc 36240
	addi	%x2, %x2, -20  #2605 pc 36244
	lw	%x1, 16(%x2) #2605 pc 36248
	lw	%x7, 12(%x2)  #2606 pc 36252
	lw	%x8, 0(%x7)  #2606 pc 36256
	fmv	%f0, l.6263  #0 pc 36260
	lw	%x9, 8(%x2)  #2607 pc 36264
	sw	%x8, 16(%x2)  #2607 pc 36268
	sw	%x6, 20(%x2)  #2607 pc 36272
	fsw	%f0, 24(%x2)  #2607 pc 36276
	addi	%x6, %x9, 0  #0 pc 36280
	sw	%x1, 32(%x2)  #2607 pc 36284
	addi	%x2, %x2, 36  #2607 pc 36288
	jal	%x1, o_diffuse.2683  #2607 pc 36292
	addi	%x2, %x2, -36  #2607 pc 36296
	lw	%x1, 32(%x2) #2607 pc 36300
	flw	%f1, 24(%x2)  #2607 pc 36304
	fsub	%f0, %f1, %f0  #2607 pc 36308
	lw	%x6, 4(%x2)  #2608 pc 36312
	flw	%f1, 0(%x6)  #2608 pc 36316
	fsw	%f0, 32(%x2)  #2608 pc 36320
	fadd	%f0, %f1, %f30  #0 pc 36324
	sw	%x1, 40(%x2)  #2608 pc 36328
	addi	%x2, %x2, 44  #2608 pc 36332
	jal	%x1, fneg.2515  #2608 pc 36336
	addi	%x2, %x2, -44  #2608 pc 36340
	lw	%x1, 40(%x2) #2608 pc 36344
	lw	%x6, 4(%x2)  #2609 pc 36348
	flw	%f1, 4(%x6)  #2609 pc 36352
	fsw	%f0, 40(%x2)  #2609 pc 36356
	fadd	%f0, %f1, %f30  #0 pc 36360
	sw	%x1, 48(%x2)  #2609 pc 36364
	addi	%x2, %x2, 52  #2609 pc 36368
	jal	%x1, fneg.2515  #2609 pc 36372
	addi	%x2, %x2, -52  #2609 pc 36376
	lw	%x1, 48(%x2) #2609 pc 36380
	lw	%x6, 4(%x2)  #2610 pc 36384
	flw	%f1, 8(%x6)  #2610 pc 36388
	fsw	%f0, 48(%x2)  #2610 pc 36392
	fadd	%f0, %f1, %f30  #0 pc 36396
	sw	%x1, 56(%x2)  #2610 pc 36400
	addi	%x2, %x2, 60  #2610 pc 36404
	jal	%x1, fneg.2515  #2610 pc 36408
	addi	%x2, %x2, -60  #2610 pc 36412
	lw	%x1, 56(%x2) #2610 pc 36416
	fadd	%f3, %f0, %f30  #2610 pc 36420
	lw	%x6, 20(%x2)  #2611 pc 36424
	addi	%x7, %x6, 1  #2611 pc 36428
	lw	%x8, 4(%x2)  #2611 pc 36432
	flw	%f1, 0(%x8)  #2611 pc 36436
	flw	%f0, 32(%x2)  #2611 pc 36440
	flw	%f2, 48(%x2)  #2611 pc 36444
	lw	%x9, 16(%x2)  #2611 pc 36448
	lw	%x29, 0(%x2)  #2611 pc 36452
	fsw	%f3, 56(%x2)  #2611 pc 36456
	addi	%x6, %x9, 0  #0 pc 36460
	sw	%x1, 64(%x2)  #2611 pc 36464
	lw	%x30, 0(%x29)  #2611 pc 36468
	addi	%x2, %x2, 68  #2611 pc 36472
	jalr	%x1, %x30, 0  #2611 pc 36476
	addi	%x2, %x2, -68  #2611 pc 36480
	lw	%x1, 64(%x2)  #2611 pc 36484
	lw	%x6, 16(%x2)  #2612 pc 36488
	addi	%x7, %x6, 1  #2612 pc 36492
	lw	%x8, 20(%x2)  #2612 pc 36496
	addi	%x9, %x8, 2  #2612 pc 36500
	lw	%x10, 4(%x2)  #2612 pc 36504
	flw	%f2, 4(%x10)  #2612 pc 36508
	flw	%f0, 32(%x2)  #2612 pc 36512
	flw	%f1, 40(%x2)  #2612 pc 36516
	flw	%f3, 56(%x2)  #2612 pc 36520
	lw	%x29, 0(%x2)  #2612 pc 36524
	addi	%x6, %x7, 0  #0 pc 36528
	addi	%x7, %x9, 0  #0 pc 36532
	sw	%x1, 64(%x2)  #2612 pc 36536
	lw	%x30, 0(%x29)  #2612 pc 36540
	addi	%x2, %x2, 68  #2612 pc 36544
	jalr	%x1, %x30, 0  #2612 pc 36548
	addi	%x2, %x2, -68  #2612 pc 36552
	lw	%x1, 64(%x2)  #2612 pc 36556
	lw	%x6, 16(%x2)  #2613 pc 36560
	addi	%x7, %x6, 2  #2613 pc 36564
	lw	%x8, 20(%x2)  #2613 pc 36568
	addi	%x8, %x8, 3  #2613 pc 36572
	lw	%x9, 4(%x2)  #2613 pc 36576
	flw	%f3, 8(%x9)  #2613 pc 36580
	flw	%f0, 32(%x2)  #2613 pc 36584
	flw	%f1, 40(%x2)  #2613 pc 36588
	flw	%f2, 48(%x2)  #2613 pc 36592
	lw	%x29, 0(%x2)  #2613 pc 36596
	addi	%x6, %x7, 0  #0 pc 36600
	addi	%x7, %x8, 0  #0 pc 36604
	sw	%x1, 64(%x2)  #2613 pc 36608
	lw	%x30, 0(%x29)  #2613 pc 36612
	addi	%x2, %x2, 68  #2613 pc 36616
	jalr	%x1, %x30, 0  #2613 pc 36620
	addi	%x2, %x2, -68  #2613 pc 36624
	lw	%x1, 64(%x2)  #2613 pc 36628
	lw	%x6, 16(%x2)  #2614 pc 36632
	addi	%x6, %x6, 3  #2614 pc 36636
	lw	%x7, 12(%x2)  #2614 pc 36640
	sw	%x6, 0(%x7)  #2614 pc 36644
	ret #pc 36648
	nop #pc 36652
setup_surface_reflection.3085:  #pc 36656
	lw	%x8, 12(%x29)  #0 pc 36656
	lw	%x9, 8(%x29)  #0 pc 36660
	lw	%x10, 4(%x29)  #0 pc 36664
	addi	%x11, %x0, 4  #0 pc 36668
	sw	%x10, 0(%x2)  #2619 pc 36672
	sw	%x9, 4(%x2)  #2619 pc 36676
	sw	%x7, 8(%x2)  #2619 pc 36680
	sw	%x8, 12(%x2)  #2619 pc 36684
	addi	%x7, %x11, 0  #0 pc 36688
	sw	%x1, 16(%x2)  #2619 pc 36692
	addi	%x2, %x2, 20  #2619 pc 36696
	jal	%x1, mul.2547  #2619 pc 36700
	addi	%x2, %x2, -20  #2619 pc 36704
	lw	%x1, 16(%x2) #2619 pc 36708
	addi	%x6, %x6, 1  #2619 pc 36712
	lw	%x7, 12(%x2)  #2620 pc 36716
	lw	%x8, 0(%x7)  #2620 pc 36720
	fmv	%f0, l.6263  #0 pc 36724
	lw	%x9, 8(%x2)  #2621 pc 36728
	sw	%x6, 16(%x2)  #2621 pc 36732
	sw	%x8, 20(%x2)  #2621 pc 36736
	fsw	%f0, 24(%x2)  #2621 pc 36740
	addi	%x6, %x9, 0  #0 pc 36744
	sw	%x1, 32(%x2)  #2621 pc 36748
	addi	%x2, %x2, 36  #2621 pc 36752
	jal	%x1, o_diffuse.2683  #2621 pc 36756
	addi	%x2, %x2, -36  #2621 pc 36760
	lw	%x1, 32(%x2) #2621 pc 36764
	flw	%f1, 24(%x2)  #2621 pc 36768
	fsub	%f0, %f1, %f0  #2621 pc 36772
	lw	%x6, 8(%x2)  #2622 pc 36776
	fsw	%f0, 32(%x2)  #2622 pc 36780
	sw	%x1, 40(%x2)  #2622 pc 36784
	addi	%x2, %x2, 44  #2622 pc 36788
	jal	%x1, o_param_abc.2675  #2622 pc 36792
	addi	%x2, %x2, -44  #2622 pc 36796
	lw	%x1, 40(%x2) #2622 pc 36800
	addi	%x7, %x6, 0  #2622 pc 36804
	lw	%x6, 4(%x2)  #2622 pc 36808
	sw	%x1, 40(%x2)  #2622 pc 36812
	addi	%x2, %x2, 44  #2622 pc 36816
	jal	%x1, veciprod.2637  #2622 pc 36820
	addi	%x2, %x2, -44  #2622 pc 36824
	lw	%x1, 40(%x2) #2622 pc 36828
	fmv	%f1, l.6425  #0 pc 36832
	lw	%x6, 8(%x2)  #2625 pc 36836
	fsw	%f0, 40(%x2)  #2625 pc 36840
	fsw	%f1, 48(%x2)  #2625 pc 36844
	sw	%x1, 56(%x2)  #2625 pc 36848
	addi	%x2, %x2, 60  #2625 pc 36852
	jal	%x1, o_param_a.2669  #2625 pc 36856
	addi	%x2, %x2, -60  #2625 pc 36860
	lw	%x1, 56(%x2) #2625 pc 36864
	flw	%f1, 48(%x2)  #2625 pc 36868
	fmul	%f0, %f1, %f0  #2625 pc 36872
	flw	%f1, 40(%x2)  #2625 pc 36876
	fmul	%f0, %f0, %f1  #2625 pc 36880
	lw	%x6, 4(%x2)  #2625 pc 36884
	flw	%f2, 0(%x6)  #2625 pc 36888
	fsub	%f0, %f0, %f2  #2625 pc 36892
	fmv	%f2, l.6425  #0 pc 36896
	lw	%x7, 8(%x2)  #2626 pc 36900
	fsw	%f0, 56(%x2)  #2626 pc 36904
	fsw	%f2, 64(%x2)  #2626 pc 36908
	addi	%x6, %x7, 0  #0 pc 36912
	sw	%x1, 72(%x2)  #2626 pc 36916
	addi	%x2, %x2, 76  #2626 pc 36920
	jal	%x1, o_param_b.2671  #2626 pc 36924
	addi	%x2, %x2, -76  #2626 pc 36928
	lw	%x1, 72(%x2) #2626 pc 36932
	flw	%f1, 64(%x2)  #2626 pc 36936
	fmul	%f0, %f1, %f0  #2626 pc 36940
	flw	%f1, 40(%x2)  #2626 pc 36944
	fmul	%f0, %f0, %f1  #2626 pc 36948
	lw	%x6, 4(%x2)  #2626 pc 36952
	flw	%f2, 4(%x6)  #2626 pc 36956
	fsub	%f0, %f0, %f2  #2626 pc 36960
	fmv	%f2, l.6425  #0 pc 36964
	lw	%x7, 8(%x2)  #2627 pc 36968
	fsw	%f0, 72(%x2)  #2627 pc 36972
	fsw	%f2, 80(%x2)  #2627 pc 36976
	addi	%x6, %x7, 0  #0 pc 36980
	sw	%x1, 88(%x2)  #2627 pc 36984
	addi	%x2, %x2, 92  #2627 pc 36988
	jal	%x1, o_param_c.2673  #2627 pc 36992
	addi	%x2, %x2, -92  #2627 pc 36996
	lw	%x1, 88(%x2) #2627 pc 37000
	flw	%f1, 80(%x2)  #2627 pc 37004
	fmul	%f0, %f1, %f0  #2627 pc 37008
	flw	%f1, 40(%x2)  #2627 pc 37012
	fmul	%f0, %f0, %f1  #2627 pc 37016
	lw	%x6, 4(%x2)  #2627 pc 37020
	flw	%f1, 8(%x6)  #2627 pc 37024
	fsub	%f3, %f0, %f1  #2627 pc 37028
	flw	%f0, 32(%x2)  #2624 pc 37032
	flw	%f1, 56(%x2)  #2624 pc 37036
	flw	%f2, 72(%x2)  #2624 pc 37040
	lw	%x6, 20(%x2)  #2624 pc 37044
	lw	%x7, 16(%x2)  #2624 pc 37048
	lw	%x29, 0(%x2)  #2624 pc 37052
	sw	%x1, 88(%x2)  #2624 pc 37056
	lw	%x30, 0(%x29)  #2624 pc 37060
	addi	%x2, %x2, 92  #2624 pc 37064
	jalr	%x1, %x30, 0  #2624 pc 37068
	addi	%x2, %x2, -92  #2624 pc 37072
	lw	%x1, 88(%x2)  #2624 pc 37076
	lw	%x6, 20(%x2)  #2628 pc 37080
	addi	%x6, %x6, 1  #2628 pc 37084
	lw	%x7, 12(%x2)  #2628 pc 37088
	sw	%x6, 0(%x7)  #2628 pc 37092
	ret #pc 37096
	nop #pc 37100
setup_reflections.3088:  #pc 37104
	lw	%x7, 12(%x29)  #0 pc 37104
	lw	%x8, 8(%x29)  #0 pc 37108
	lw	%x9, 4(%x29)  #0 pc 37112
	bge	%x6, %x0, 12  #2634 pc 37116
	j	bge_else.9550 #pc 37120
	nop #pc 37124
	slli	%x10, %x6, 2  #2635 pc 37128
	add	%x31, %x10, %x9  #2635 pc 37132
	lw	%x9, 0(%x31)  #2635 pc 37136
	sw	%x7, 0(%x2)  #2636 pc 37140
	sw	%x6, 4(%x2)  #2636 pc 37144
	sw	%x8, 8(%x2)  #2636 pc 37148
	sw	%x9, 12(%x2)  #2636 pc 37152
	addi	%x6, %x9, 0  #0 pc 37156
	sw	%x1, 16(%x2)  #2636 pc 37160
	addi	%x2, %x2, 20  #2636 pc 37164
	jal	%x1, o_reflectiontype.2663  #2636 pc 37168
	addi	%x2, %x2, -20  #2636 pc 37172
	lw	%x1, 16(%x2) #2636 pc 37176
	addi	%x31, %x0, 2  #pc 37180
	beq	%x6, %x31, 12  #2636 pc 37184
	j	be_else.9551 #pc 37188
	nop #pc 37192
	lw	%x6, 12(%x2)  #2637 pc 37196
	sw	%x1, 16(%x2)  #2637 pc 37200
	addi	%x2, %x2, 20  #2637 pc 37204
	jal	%x1, o_diffuse.2683  #2637 pc 37208
	addi	%x2, %x2, -20  #2637 pc 37212
	lw	%x1, 16(%x2) #2637 pc 37216
	fmv	%f1, l.6263  #0 pc 37220
	sw	%x1, 16(%x2)  #2637 pc 37224
	addi	%x2, %x2, 20  #2637 pc 37228
	jal	%x1, fless.2521  #2637 pc 37232
	addi	%x2, %x2, -20  #2637 pc 37236
	lw	%x1, 16(%x2) #2637 pc 37240
	beq	%x6, %x0, 12  #2637 pc 37244
	j	be_else.9552 #pc 37248
	nop #pc 37252
	ret #pc 37256
	nop #pc 37260
be_else.9552: #pc 37264
	lw	%x6, 12(%x2)  #2638 pc 37264
	sw	%x1, 16(%x2)  #2638 pc 37268
	addi	%x2, %x2, 20  #2638 pc 37272
	jal	%x1, o_form.2661  #2638 pc 37276
	addi	%x2, %x2, -20  #2638 pc 37280
	lw	%x1, 16(%x2) #2638 pc 37284
	addi	%x31, %x0, 1  #pc 37288
	beq	%x6, %x31, 12  #2640 pc 37292
	j	be_else.9554 #pc 37296
	nop #pc 37300
	lw	%x6, 4(%x2)  #2641 pc 37304
	lw	%x7, 12(%x2)  #2641 pc 37308
	lw	%x29, 8(%x2)  #2641 pc 37312
	lw	%x30, 0(%x29)  #2641 pc 37316
	jalr	%x0, %x30, 0  #2641 pc 37320
	nop #pc 37324
be_else.9554: #pc 37328
	addi	%x31, %x0, 2  #pc 37328
	beq	%x6, %x31, 12  #2642 pc 37332
	j	be_else.9555 #pc 37336
	nop #pc 37340
	lw	%x6, 4(%x2)  #2643 pc 37344
	lw	%x7, 12(%x2)  #2643 pc 37348
	lw	%x29, 0(%x2)  #2643 pc 37352
	lw	%x30, 0(%x29)  #2643 pc 37356
	jalr	%x0, %x30, 0  #2643 pc 37360
	nop #pc 37364
be_else.9555: #pc 37368
	ret #pc 37368
	nop #pc 37372
be_else.9551: #pc 37376
	ret #pc 37376
	nop #pc 37380
bge_else.9550: #pc 37384
	ret #pc 37384
	nop #pc 37388
rt.3090:  #pc 37392
	lw	%x9, 56(%x29)  #0 pc 37392
	lw	%x10, 52(%x29)  #0 pc 37396
	lw	%x11, 48(%x29)  #0 pc 37400
	lw	%x12, 44(%x29)  #0 pc 37404
	lw	%x13, 40(%x29)  #0 pc 37408
	lw	%x14, 36(%x29)  #0 pc 37412
	lw	%x15, 32(%x29)  #0 pc 37416
	lw	%x16, 28(%x29)  #0 pc 37420
	lw	%x17, 24(%x29)  #0 pc 37424
	lw	%x18, 20(%x29)  #0 pc 37428
	lw	%x19, 16(%x29)  #0 pc 37432
	lw	%x20, 12(%x29)  #0 pc 37436
	lw	%x21, 8(%x29)  #0 pc 37440
	lw	%x22, 4(%x29)  #0 pc 37444
	sw	%x6, 0(%x20)  #2656 pc 37448
	sw	%x7, 4(%x20)  #2657 pc 37452
	addi	%x20, %x0, 2  #0 pc 37456
	sw	%x13, 0(%x2)  #2658 pc 37460
	sw	%x15, 4(%x2)  #2658 pc 37464
	sw	%x10, 8(%x2)  #2658 pc 37468
	sw	%x16, 12(%x2)  #2658 pc 37472
	sw	%x11, 16(%x2)  #2658 pc 37476
	sw	%x18, 20(%x2)  #2658 pc 37480
	sw	%x17, 24(%x2)  #2658 pc 37484
	sw	%x19, 28(%x2)  #2658 pc 37488
	sw	%x8, 32(%x2)  #2658 pc 37492
	sw	%x9, 36(%x2)  #2658 pc 37496
	sw	%x14, 40(%x2)  #2658 pc 37500
	sw	%x22, 44(%x2)  #2658 pc 37504
	sw	%x12, 48(%x2)  #2658 pc 37508
	sw	%x6, 52(%x2)  #2658 pc 37512
	sw	%x7, 56(%x2)  #2658 pc 37516
	sw	%x21, 60(%x2)  #2658 pc 37520
	addi	%x7, %x20, 0  #0 pc 37524
	sw	%x1, 64(%x2)  #2658 pc 37528
	addi	%x2, %x2, 68  #2658 pc 37532
	jal	%x1, div.2555  #2658 pc 37536
	addi	%x2, %x2, -68  #2658 pc 37540
	lw	%x1, 64(%x2) #2658 pc 37544
	lw	%x7, 60(%x2)  #2658 pc 37548
	sw	%x6, 0(%x7)  #2658 pc 37552
	addi	%x6, %x0, 2  #0 pc 37556
	lw	%x8, 56(%x2)  #2659 pc 37560
	addi	%x7, %x6, 0  #0 pc 37564
	addi	%x6, %x8, 0  #0 pc 37568
	sw	%x1, 64(%x2)  #2659 pc 37572
	addi	%x2, %x2, 68  #2659 pc 37576
	jal	%x1, div.2555  #2659 pc 37580
	addi	%x2, %x2, -68  #2659 pc 37584
	lw	%x1, 64(%x2) #2659 pc 37588
	lw	%x7, 60(%x2)  #2659 pc 37592
	sw	%x6, 4(%x7)  #2659 pc 37596
	fmv	%f0, l.7003  #0 pc 37600
	lw	%x6, 52(%x2)  #2660 pc 37604
	fsw	%f0, 64(%x2)  #2660 pc 37608
	sw	%x1, 72(%x2)  #2660 pc 37612
	addi	%x2, %x2, 76  #2660 pc 37616
	jal	%x1, float_of_int.2538  #2660 pc 37620
	addi	%x2, %x2, -76  #2660 pc 37624
	lw	%x1, 72(%x2) #2660 pc 37628
	flw	%f1, 64(%x2)  #2660 pc 37632
	fdiv	%f0, %f1, %f0  #2660 pc 37636
	lw	%x6, 48(%x2)  #2660 pc 37640
	fsw	%f0, 0(%x6)  #2660 pc 37644
	lw	%x29, 44(%x2)  #2661 pc 37648
	sw	%x1, 72(%x2)  #2661 pc 37652
	lw	%x30, 0(%x29)  #2661 pc 37656
	addi	%x2, %x2, 76  #2661 pc 37660
	jalr	%x1, %x30, 0  #2661 pc 37664
	addi	%x2, %x2, -76  #2661 pc 37668
	lw	%x1, 72(%x2)  #2661 pc 37672
	lw	%x29, 44(%x2)  #2662 pc 37676
	sw	%x6, 72(%x2)  #2662 pc 37680
	sw	%x1, 76(%x2)  #2662 pc 37684
	lw	%x30, 0(%x29)  #2662 pc 37688
	addi	%x2, %x2, 80  #2662 pc 37692
	jalr	%x1, %x30, 0  #2662 pc 37696
	addi	%x2, %x2, -80  #2662 pc 37700
	lw	%x1, 76(%x2)  #2662 pc 37704
	lw	%x29, 44(%x2)  #2663 pc 37708
	sw	%x6, 76(%x2)  #2663 pc 37712
	sw	%x1, 80(%x2)  #2663 pc 37716
	lw	%x30, 0(%x29)  #2663 pc 37720
	addi	%x2, %x2, 84  #2663 pc 37724
	jalr	%x1, %x30, 0  #2663 pc 37728
	addi	%x2, %x2, -84  #2663 pc 37732
	lw	%x1, 80(%x2)  #2663 pc 37736
	lw	%x29, 40(%x2)  #2664 pc 37740
	sw	%x6, 80(%x2)  #2664 pc 37744
	sw	%x1, 84(%x2)  #2664 pc 37748
	lw	%x30, 0(%x29)  #2664 pc 37752
	addi	%x2, %x2, 88  #2664 pc 37756
	jalr	%x1, %x30, 0  #2664 pc 37760
	addi	%x2, %x2, -88  #2664 pc 37764
	lw	%x1, 84(%x2)  #2664 pc 37768
	lw	%x6, 32(%x2)  #2665 pc 37772
	lw	%x29, 36(%x2)  #2665 pc 37776
	sw	%x1, 84(%x2)  #2665 pc 37780
	lw	%x30, 0(%x29)  #2665 pc 37784
	addi	%x2, %x2, 88  #2665 pc 37788
	jalr	%x1, %x30, 0  #2665 pc 37792
	addi	%x2, %x2, -88  #2665 pc 37796
	lw	%x1, 84(%x2)  #2665 pc 37800
	lw	%x29, 28(%x2)  #2666 pc 37804
	sw	%x1, 84(%x2)  #2666 pc 37808
	lw	%x30, 0(%x29)  #2666 pc 37812
	addi	%x2, %x2, 88  #2666 pc 37816
	jalr	%x1, %x30, 0  #2666 pc 37820
	addi	%x2, %x2, -88  #2666 pc 37824
	lw	%x1, 84(%x2)  #2666 pc 37828
	lw	%x6, 24(%x2)  #2667 pc 37832
	sw	%x1, 84(%x2)  #2667 pc 37836
	addi	%x2, %x2, 88  #2667 pc 37840
	jal	%x1, d_vec.2720  #2667 pc 37844
	addi	%x2, %x2, -88  #2667 pc 37848
	lw	%x1, 84(%x2) #2667 pc 37852
	lw	%x7, 20(%x2)  #2667 pc 37856
	sw	%x1, 84(%x2)  #2667 pc 37860
	addi	%x2, %x2, 88  #2667 pc 37864
	jal	%x1, veccpy.2631  #2667 pc 37868
	addi	%x2, %x2, -88  #2667 pc 37872
	lw	%x1, 84(%x2) #2667 pc 37876
	lw	%x6, 24(%x2)  #2668 pc 37880
	lw	%x29, 16(%x2)  #2668 pc 37884
	sw	%x1, 84(%x2)  #2668 pc 37888
	lw	%x30, 0(%x29)  #2668 pc 37892
	addi	%x2, %x2, 88  #2668 pc 37896
	jalr	%x1, %x30, 0  #2668 pc 37900
	addi	%x2, %x2, -88  #2668 pc 37904
	lw	%x1, 84(%x2)  #2668 pc 37908
	lw	%x6, 12(%x2)  #2669 pc 37912
	lw	%x6, 0(%x6)  #2669 pc 37916
	addi	%x6, %x6, -1  #2669 pc 37920
	lw	%x29, 8(%x2)  #2669 pc 37924
	sw	%x1, 84(%x2)  #2669 pc 37928
	lw	%x30, 0(%x29)  #2669 pc 37932
	addi	%x2, %x2, 88  #2669 pc 37936
	jalr	%x1, %x30, 0  #2669 pc 37940
	addi	%x2, %x2, -88  #2669 pc 37944
	lw	%x1, 84(%x2)  #2669 pc 37948
	addi	%x7, %x0, 0  #0 pc 37952
	addi	%x8, %x0, 0  #0 pc 37956
	lw	%x6, 76(%x2)  #2670 pc 37960
	lw	%x29, 4(%x2)  #2670 pc 37964
	sw	%x1, 84(%x2)  #2670 pc 37968
	lw	%x30, 0(%x29)  #2670 pc 37972
	addi	%x2, %x2, 88  #2670 pc 37976
	jalr	%x1, %x30, 0  #2670 pc 37980
	addi	%x2, %x2, -88  #2670 pc 37984
	lw	%x1, 84(%x2)  #2670 pc 37988
	addi	%x6, %x0, 0  #0 pc 37992
	addi	%x10, %x0, 2  #0 pc 37996
	lw	%x7, 72(%x2)  #2671 pc 38000
	lw	%x8, 76(%x2)  #2671 pc 38004
	lw	%x9, 80(%x2)  #2671 pc 38008
	lw	%x11, 32(%x2)  #2671 pc 38012
	lw	%x29, 0(%x2)  #2671 pc 38016
	lw	%x30, 0(%x29)  #2671 pc 38020
	jalr	%x0, %x30, 0  #2671 pc 38024
	nop #pc 38028
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	addi	%x6, %x0, 1  #0 pc 38052
	addi	%x7, %x0, 0  #0 pc 38056
	sw	%x1, 0(%x2)  #250 pc 38060
	addi	%x2, %x2, 4  #250 pc 38064
	jal	%x1, create_array.2570  #250 pc 38068
	addi	%x2, %x2, -4  #250 pc 38072
	lw	%x1, 0(%x2) #250 pc 38076
	addi	%x7, %x0, 0  #0 pc 38080
	fmv	%f0, l.6244  #0 pc 38084
	sw	%x6, 0(%x2)  #255 pc 38088
	addi	%x6, %x7, 0  #0 pc 38092
	sw	%x1, 4(%x2)  #255 pc 38096
	addi	%x2, %x2, 8  #255 pc 38100
	jal	%x1, create_float_array.2577  #255 pc 38104
	addi	%x2, %x2, -8  #255 pc 38108
	lw	%x1, 4(%x2) #255 pc 38112
	addi	%x7, %x0, 60  #0 pc 38116
	addi	%x8, %x0, 0  #0 pc 38120
	addi	%x9, %x3, 0  #256 pc 38124
	addi	%x3, %x3, 44  #256 pc 38128
	sw	%x6, 40(%x9)  #256 pc 38132
	sw	%x6, 36(%x9)  #256 pc 38136
	sw	%x6, 32(%x9)  #256 pc 38140
	sw	%x6, 28(%x9)  #256 pc 38144
	sw	%x8, 24(%x9)  #256 pc 38148
	sw	%x6, 20(%x9)  #256 pc 38152
	sw	%x6, 16(%x9)  #256 pc 38156
	sw	%x8, 12(%x9)  #256 pc 38160
	sw	%x8, 8(%x9)  #256 pc 38164
	sw	%x8, 4(%x9)  #256 pc 38168
	sw	%x8, 0(%x9)  #256 pc 38172
	addi	%x6, %x9, 0  #256 pc 38176
	addi	%x30, %x7, 0  #0 pc 38180
	addi	%x7, %x6, 0  #0 pc 38184
	addi	%x6, %x30, 0  #0 pc 38188
	sw	%x1, 4(%x2)  #256 pc 38192
	addi	%x2, %x2, 8  #256 pc 38196
	jal	%x1, create_array.2570  #256 pc 38200
	addi	%x2, %x2, -8  #256 pc 38204
	lw	%x1, 4(%x2) #256 pc 38208
	addi	%x7, %x0, 3  #0 pc 38212
	fmv	%f0, l.6244  #0 pc 38216
	sw	%x6, 4(%x2)  #260 pc 38220
	addi	%x6, %x7, 0  #0 pc 38224
	sw	%x1, 8(%x2)  #260 pc 38228
	addi	%x2, %x2, 12  #260 pc 38232
	jal	%x1, create_float_array.2577  #260 pc 38236
	addi	%x2, %x2, -12  #260 pc 38240
	lw	%x1, 8(%x2) #260 pc 38244
	addi	%x7, %x0, 3  #0 pc 38248
	fmv	%f0, l.6244  #0 pc 38252
	sw	%x6, 8(%x2)  #263 pc 38256
	addi	%x6, %x7, 0  #0 pc 38260
	sw	%x1, 12(%x2)  #263 pc 38264
	addi	%x2, %x2, 16  #263 pc 38268
	jal	%x1, create_float_array.2577  #263 pc 38272
	addi	%x2, %x2, -16  #263 pc 38276
	lw	%x1, 12(%x2) #263 pc 38280
	addi	%x7, %x0, 3  #0 pc 38284
	fmv	%f0, l.6244  #0 pc 38288
	sw	%x6, 12(%x2)  #266 pc 38292
	addi	%x6, %x7, 0  #0 pc 38296
	sw	%x1, 16(%x2)  #266 pc 38300
	addi	%x2, %x2, 20  #266 pc 38304
	jal	%x1, create_float_array.2577  #266 pc 38308
	addi	%x2, %x2, -20  #266 pc 38312
	lw	%x1, 16(%x2) #266 pc 38316
	addi	%x7, %x0, 1  #0 pc 38320
	fmv	%f0, l.6756  #0 pc 38324
	sw	%x6, 16(%x2)  #269 pc 38328
	addi	%x6, %x7, 0  #0 pc 38332
	sw	%x1, 20(%x2)  #269 pc 38336
	addi	%x2, %x2, 24  #269 pc 38340
	jal	%x1, create_float_array.2577  #269 pc 38344
	addi	%x2, %x2, -24  #269 pc 38348
	lw	%x1, 20(%x2) #269 pc 38352
	addi	%x7, %x0, 50  #0 pc 38356
	addi	%x8, %x0, 1  #0 pc 38360
	addi	%x9, %x0, -1  #0 pc 38364
	sw	%x6, 20(%x2)  #272 pc 38368
	sw	%x7, 24(%x2)  #272 pc 38372
	addi	%x7, %x9, 0  #0 pc 38376
	addi	%x6, %x8, 0  #0 pc 38380
	sw	%x1, 28(%x2)  #272 pc 38384
	addi	%x2, %x2, 32  #272 pc 38388
	jal	%x1, create_array.2570  #272 pc 38392
	addi	%x2, %x2, -32  #272 pc 38396
	lw	%x1, 28(%x2) #272 pc 38400
	addi	%x7, %x6, 0  #272 pc 38404
	lw	%x6, 24(%x2)  #272 pc 38408
	sw	%x1, 28(%x2)  #272 pc 38412
	addi	%x2, %x2, 32  #272 pc 38416
	jal	%x1, create_array.2570  #272 pc 38420
	addi	%x2, %x2, -32  #272 pc 38424
	lw	%x1, 28(%x2) #272 pc 38428
	addi	%x7, %x0, 1  #0 pc 38432
	lw	%x8, 0(%x6)  #275 pc 38436
	sw	%x6, 28(%x2)  #275 pc 38440
	sw	%x7, 32(%x2)  #275 pc 38444
	addi	%x6, %x7, 0  #0 pc 38448
	addi	%x7, %x8, 0  #0 pc 38452
	sw	%x1, 36(%x2)  #275 pc 38456
	addi	%x2, %x2, 40  #275 pc 38460
	jal	%x1, create_array.2570  #275 pc 38464
	addi	%x2, %x2, -40  #275 pc 38468
	lw	%x1, 36(%x2) #275 pc 38472
	addi	%x7, %x6, 0  #275 pc 38476
	lw	%x6, 32(%x2)  #275 pc 38480
	sw	%x1, 36(%x2)  #275 pc 38484
	addi	%x2, %x2, 40  #275 pc 38488
	jal	%x1, create_array.2570  #275 pc 38492
	addi	%x2, %x2, -40  #275 pc 38496
	lw	%x1, 36(%x2) #275 pc 38500
	addi	%x7, %x0, 1  #0 pc 38504
	fmv	%f0, l.6244  #0 pc 38508
	sw	%x6, 36(%x2)  #280 pc 38512
	addi	%x6, %x7, 0  #0 pc 38516
	sw	%x1, 40(%x2)  #280 pc 38520
	addi	%x2, %x2, 44  #280 pc 38524
	jal	%x1, create_float_array.2577  #280 pc 38528
	addi	%x2, %x2, -44  #280 pc 38532
	lw	%x1, 40(%x2) #280 pc 38536
	addi	%x7, %x0, 1  #0 pc 38540
	addi	%x8, %x0, 0  #0 pc 38544
	sw	%x6, 40(%x2)  #283 pc 38548
	addi	%x6, %x7, 0  #0 pc 38552
	addi	%x7, %x8, 0  #0 pc 38556
	sw	%x1, 44(%x2)  #283 pc 38560
	addi	%x2, %x2, 48  #283 pc 38564
	jal	%x1, create_array.2570  #283 pc 38568
	addi	%x2, %x2, -48  #283 pc 38572
	lw	%x1, 44(%x2) #283 pc 38576
	addi	%x7, %x0, 1  #0 pc 38580
	fmv	%f0, l.6683  #0 pc 38584
	sw	%x6, 44(%x2)  #286 pc 38588
	addi	%x6, %x7, 0  #0 pc 38592
	sw	%x1, 48(%x2)  #286 pc 38596
	addi	%x2, %x2, 52  #286 pc 38600
	jal	%x1, create_float_array.2577  #286 pc 38604
	addi	%x2, %x2, -52  #286 pc 38608
	lw	%x1, 48(%x2) #286 pc 38612
	addi	%x7, %x0, 3  #0 pc 38616
	fmv	%f0, l.6244  #0 pc 38620
	sw	%x6, 48(%x2)  #289 pc 38624
	addi	%x6, %x7, 0  #0 pc 38628
	sw	%x1, 52(%x2)  #289 pc 38632
	addi	%x2, %x2, 56  #289 pc 38636
	jal	%x1, create_float_array.2577  #289 pc 38640
	addi	%x2, %x2, -56  #289 pc 38644
	lw	%x1, 52(%x2) #289 pc 38648
	addi	%x7, %x0, 1  #0 pc 38652
	addi	%x8, %x0, 0  #0 pc 38656
	sw	%x6, 52(%x2)  #292 pc 38660
	addi	%x6, %x7, 0  #0 pc 38664
	addi	%x7, %x8, 0  #0 pc 38668
	sw	%x1, 56(%x2)  #292 pc 38672
	addi	%x2, %x2, 60  #292 pc 38676
	jal	%x1, create_array.2570  #292 pc 38680
	addi	%x2, %x2, -60  #292 pc 38684
	lw	%x1, 56(%x2) #292 pc 38688
	addi	%x7, %x0, 3  #0 pc 38692
	fmv	%f0, l.6244  #0 pc 38696
	sw	%x6, 56(%x2)  #295 pc 38700
	addi	%x6, %x7, 0  #0 pc 38704
	sw	%x1, 60(%x2)  #295 pc 38708
	addi	%x2, %x2, 64  #295 pc 38712
	jal	%x1, create_float_array.2577  #295 pc 38716
	addi	%x2, %x2, -64  #295 pc 38720
	lw	%x1, 60(%x2) #295 pc 38724
	addi	%x7, %x0, 3  #0 pc 38728
	fmv	%f0, l.6244  #0 pc 38732
	sw	%x6, 60(%x2)  #298 pc 38736
	addi	%x6, %x7, 0  #0 pc 38740
	sw	%x1, 64(%x2)  #298 pc 38744
	addi	%x2, %x2, 68  #298 pc 38748
	jal	%x1, create_float_array.2577  #298 pc 38752
	addi	%x2, %x2, -68  #298 pc 38756
	lw	%x1, 64(%x2) #298 pc 38760
	addi	%x7, %x0, 3  #0 pc 38764
	fmv	%f0, l.6244  #0 pc 38768
	sw	%x6, 64(%x2)  #302 pc 38772
	addi	%x6, %x7, 0  #0 pc 38776
	sw	%x1, 68(%x2)  #302 pc 38780
	addi	%x2, %x2, 72  #302 pc 38784
	jal	%x1, create_float_array.2577  #302 pc 38788
	addi	%x2, %x2, -72  #302 pc 38792
	lw	%x1, 68(%x2) #302 pc 38796
	addi	%x7, %x0, 3  #0 pc 38800
	fmv	%f0, l.6244  #0 pc 38804
	sw	%x6, 68(%x2)  #305 pc 38808
	addi	%x6, %x7, 0  #0 pc 38812
	sw	%x1, 72(%x2)  #305 pc 38816
	addi	%x2, %x2, 76  #305 pc 38820
	jal	%x1, create_float_array.2577  #305 pc 38824
	addi	%x2, %x2, -76  #305 pc 38828
	lw	%x1, 72(%x2) #305 pc 38832
	addi	%x7, %x0, 2  #0 pc 38836
	addi	%x8, %x0, 0  #0 pc 38840
	sw	%x6, 72(%x2)  #309 pc 38844
	addi	%x6, %x7, 0  #0 pc 38848
	addi	%x7, %x8, 0  #0 pc 38852
	sw	%x1, 76(%x2)  #309 pc 38856
	addi	%x2, %x2, 80  #309 pc 38860
	jal	%x1, create_array.2570  #309 pc 38864
	addi	%x2, %x2, -80  #309 pc 38868
	lw	%x1, 76(%x2) #309 pc 38872
	addi	%x7, %x0, 2  #0 pc 38876
	addi	%x8, %x0, 0  #0 pc 38880
	sw	%x6, 76(%x2)  #312 pc 38884
	addi	%x6, %x7, 0  #0 pc 38888
	addi	%x7, %x8, 0  #0 pc 38892
	sw	%x1, 80(%x2)  #312 pc 38896
	addi	%x2, %x2, 84  #312 pc 38900
	jal	%x1, create_array.2570  #312 pc 38904
	addi	%x2, %x2, -84  #312 pc 38908
	lw	%x1, 80(%x2) #312 pc 38912
	addi	%x7, %x0, 1  #0 pc 38916
	fmv	%f0, l.6244  #0 pc 38920
	sw	%x6, 80(%x2)  #315 pc 38924
	addi	%x6, %x7, 0  #0 pc 38928
	sw	%x1, 84(%x2)  #315 pc 38932
	addi	%x2, %x2, 88  #315 pc 38936
	jal	%x1, create_float_array.2577  #315 pc 38940
	addi	%x2, %x2, -88  #315 pc 38944
	lw	%x1, 84(%x2) #315 pc 38948
	addi	%x7, %x0, 3  #0 pc 38952
	fmv	%f0, l.6244  #0 pc 38956
	sw	%x6, 84(%x2)  #319 pc 38960
	addi	%x6, %x7, 0  #0 pc 38964
	sw	%x1, 88(%x2)  #319 pc 38968
	addi	%x2, %x2, 92  #319 pc 38972
	jal	%x1, create_float_array.2577  #319 pc 38976
	addi	%x2, %x2, -92  #319 pc 38980
	lw	%x1, 88(%x2) #319 pc 38984
	addi	%x7, %x0, 3  #0 pc 38988
	fmv	%f0, l.6244  #0 pc 38992
	sw	%x6, 88(%x2)  #322 pc 38996
	addi	%x6, %x7, 0  #0 pc 39000
	sw	%x1, 92(%x2)  #322 pc 39004
	addi	%x2, %x2, 96  #322 pc 39008
	jal	%x1, create_float_array.2577  #322 pc 39012
	addi	%x2, %x2, -96  #322 pc 39016
	lw	%x1, 92(%x2) #322 pc 39020
	addi	%x7, %x0, 3  #0 pc 39024
	fmv	%f0, l.6244  #0 pc 39028
	sw	%x6, 92(%x2)  #326 pc 39032
	addi	%x6, %x7, 0  #0 pc 39036
	sw	%x1, 96(%x2)  #326 pc 39040
	addi	%x2, %x2, 100  #326 pc 39044
	jal	%x1, create_float_array.2577  #326 pc 39048
	addi	%x2, %x2, -100  #326 pc 39052
	lw	%x1, 96(%x2) #326 pc 39056
	addi	%x7, %x0, 3  #0 pc 39060
	fmv	%f0, l.6244  #0 pc 39064
	sw	%x6, 96(%x2)  #328 pc 39068
	addi	%x6, %x7, 0  #0 pc 39072
	sw	%x1, 100(%x2)  #328 pc 39076
	addi	%x2, %x2, 104  #328 pc 39080
	jal	%x1, create_float_array.2577  #328 pc 39084
	addi	%x2, %x2, -104  #328 pc 39088
	lw	%x1, 100(%x2) #328 pc 39092
	addi	%x7, %x0, 3  #0 pc 39096
	fmv	%f0, l.6244  #0 pc 39100
	sw	%x6, 100(%x2)  #330 pc 39104
	addi	%x6, %x7, 0  #0 pc 39108
	sw	%x1, 104(%x2)  #330 pc 39112
	addi	%x2, %x2, 108  #330 pc 39116
	jal	%x1, create_float_array.2577  #330 pc 39120
	addi	%x2, %x2, -108  #330 pc 39124
	lw	%x1, 104(%x2) #330 pc 39128
	addi	%x7, %x0, 3  #0 pc 39132
	fmv	%f0, l.6244  #0 pc 39136
	sw	%x6, 104(%x2)  #334 pc 39140
	addi	%x6, %x7, 0  #0 pc 39144
	sw	%x1, 108(%x2)  #334 pc 39148
	addi	%x2, %x2, 112  #334 pc 39152
	jal	%x1, create_float_array.2577  #334 pc 39156
	addi	%x2, %x2, -112  #334 pc 39160
	lw	%x1, 108(%x2) #334 pc 39164
	addi	%x7, %x0, 0  #0 pc 39168
	fmv	%f0, l.6244  #0 pc 39172
	sw	%x6, 108(%x2)  #339 pc 39176
	addi	%x6, %x7, 0  #0 pc 39180
	sw	%x1, 112(%x2)  #339 pc 39184
	addi	%x2, %x2, 116  #339 pc 39188
	jal	%x1, create_float_array.2577  #339 pc 39192
	addi	%x2, %x2, -116  #339 pc 39196
	lw	%x1, 112(%x2) #339 pc 39200
	addi	%x7, %x6, 0  #339 pc 39204
	addi	%x6, %x0, 0  #0 pc 39208
	sw	%x7, 112(%x2)  #340 pc 39212
	sw	%x1, 116(%x2)  #340 pc 39216
	addi	%x2, %x2, 120  #340 pc 39220
	jal	%x1, create_array.2570  #340 pc 39224
	addi	%x2, %x2, -120  #340 pc 39228
	lw	%x1, 116(%x2) #340 pc 39232
	addi	%x7, %x0, 0  #0 pc 39236
	addi	%x8, %x3, 0  #341 pc 39240
	addi	%x3, %x3, 8  #341 pc 39244
	sw	%x6, 4(%x8)  #341 pc 39248
	lw	%x6, 112(%x2)  #341 pc 39252
	sw	%x6, 0(%x8)  #341 pc 39256
	addi	%x6, %x8, 0  #341 pc 39260
	addi	%x30, %x7, 0  #0 pc 39264
	addi	%x7, %x6, 0  #0 pc 39268
	addi	%x6, %x30, 0  #0 pc 39272
	sw	%x1, 116(%x2)  #341 pc 39276
	addi	%x2, %x2, 120  #341 pc 39280
	jal	%x1, create_array.2570  #341 pc 39284
	addi	%x2, %x2, -120  #341 pc 39288
	lw	%x1, 116(%x2) #341 pc 39292
	addi	%x7, %x6, 0  #341 pc 39296
	addi	%x6, %x0, 5  #0 pc 39300
	sw	%x1, 116(%x2)  #342 pc 39304
	addi	%x2, %x2, 120  #342 pc 39308
	jal	%x1, create_array.2570  #342 pc 39312
	addi	%x2, %x2, -120  #342 pc 39316
	lw	%x1, 116(%x2) #342 pc 39320
	addi	%x7, %x0, 0  #0 pc 39324
	fmv	%f0, l.6244  #0 pc 39328
	sw	%x6, 116(%x2)  #347 pc 39332
	addi	%x6, %x7, 0  #0 pc 39336
	sw	%x1, 120(%x2)  #347 pc 39340
	addi	%x2, %x2, 124  #347 pc 39344
	jal	%x1, create_float_array.2577  #347 pc 39348
	addi	%x2, %x2, -124  #347 pc 39352
	lw	%x1, 120(%x2) #347 pc 39356
	addi	%x7, %x0, 3  #0 pc 39360
	fmv	%f0, l.6244  #0 pc 39364
	sw	%x6, 120(%x2)  #348 pc 39368
	addi	%x6, %x7, 0  #0 pc 39372
	sw	%x1, 124(%x2)  #348 pc 39376
	addi	%x2, %x2, 128  #348 pc 39380
	jal	%x1, create_float_array.2577  #348 pc 39384
	addi	%x2, %x2, -128  #348 pc 39388
	lw	%x1, 124(%x2) #348 pc 39392
	addi	%x7, %x0, 60  #0 pc 39396
	lw	%x8, 120(%x2)  #349 pc 39400
	sw	%x6, 124(%x2)  #349 pc 39404
	addi	%x6, %x7, 0  #0 pc 39408
	addi	%x7, %x8, 0  #0 pc 39412
	sw	%x1, 128(%x2)  #349 pc 39416
	addi	%x2, %x2, 132  #349 pc 39420
	jal	%x1, create_array.2570  #349 pc 39424
	addi	%x2, %x2, -132  #349 pc 39428
	lw	%x1, 128(%x2) #349 pc 39432
	addi	%x7, %x3, 0  #350 pc 39436
	addi	%x3, %x3, 8  #350 pc 39440
	sw	%x6, 4(%x7)  #350 pc 39444
	lw	%x6, 124(%x2)  #350 pc 39448
	sw	%x6, 0(%x7)  #350 pc 39452
	addi	%x6, %x7, 0  #350 pc 39456
	addi	%x7, %x0, 0  #0 pc 39460
	fmv	%f0, l.6244  #0 pc 39464
	sw	%x6, 128(%x2)  #355 pc 39468
	addi	%x6, %x7, 0  #0 pc 39472
	sw	%x1, 132(%x2)  #355 pc 39476
	addi	%x2, %x2, 136  #355 pc 39480
	jal	%x1, create_float_array.2577  #355 pc 39484
	addi	%x2, %x2, -136  #355 pc 39488
	lw	%x1, 132(%x2) #355 pc 39492
	addi	%x7, %x6, 0  #355 pc 39496
	addi	%x6, %x0, 0  #0 pc 39500
	sw	%x7, 132(%x2)  #356 pc 39504
	sw	%x1, 136(%x2)  #356 pc 39508
	addi	%x2, %x2, 140  #356 pc 39512
	jal	%x1, create_array.2570  #356 pc 39516
	addi	%x2, %x2, -140  #356 pc 39520
	lw	%x1, 136(%x2) #356 pc 39524
	addi	%x7, %x3, 0  #357 pc 39528
	addi	%x3, %x3, 8  #357 pc 39532
	sw	%x6, 4(%x7)  #357 pc 39536
	lw	%x6, 132(%x2)  #357 pc 39540
	sw	%x6, 0(%x7)  #357 pc 39544
	addi	%x6, %x7, 0  #357 pc 39548
	addi	%x7, %x0, 180  #0 pc 39552
	addi	%x8, %x0, 0  #0 pc 39556
	fmv	%f0, l.6244  #0 pc 39560
	addi	%x9, %x3, 0  #358 pc 39564
	addi	%x3, %x3, 12  #358 pc 39568
	fsw	%f0, 8(%x9)  #358 pc 39572
	sw	%x6, 4(%x9)  #358 pc 39576
	sw	%x8, 0(%x9)  #358 pc 39580
	addi	%x6, %x9, 0  #358 pc 39584
	addi	%x30, %x7, 0  #0 pc 39588
	addi	%x7, %x6, 0  #0 pc 39592
	addi	%x6, %x30, 0  #0 pc 39596
	sw	%x1, 136(%x2)  #358 pc 39600
	addi	%x2, %x2, 140  #358 pc 39604
	jal	%x1, create_array.2570  #358 pc 39608
	addi	%x2, %x2, -140  #358 pc 39612
	lw	%x1, 136(%x2) #358 pc 39616
	addi	%x7, %x0, 1  #0 pc 39620
	addi	%x8, %x0, 0  #0 pc 39624
	sw	%x6, 136(%x2)  #362 pc 39628
	addi	%x6, %x7, 0  #0 pc 39632
	addi	%x7, %x8, 0  #0 pc 39636
	sw	%x1, 140(%x2)  #362 pc 39640
	addi	%x2, %x2, 144  #362 pc 39644
	jal	%x1, create_array.2570  #362 pc 39648
	addi	%x2, %x2, -144  #362 pc 39652
	lw	%x1, 140(%x2) #362 pc 39656
	addi	%x7, %x3, 0  #845 pc 39660
	addi	%x3, %x3, 24  #845 pc 39664
	addj	%x8, 3232  #845 read_screen_settings.2732 pc 39668
	sw	%x8, 0(%x7)  #845 pc 39672
	lw	%x8, 12(%x2)  #845 pc 39676
	sw	%x8, 20(%x7)  #845 pc 39680
	lw	%x9, 104(%x2)  #845 pc 39684
	sw	%x9, 16(%x7)  #845 pc 39688
	lw	%x10, 100(%x2)  #845 pc 39692
	sw	%x10, 12(%x7)  #845 pc 39696
	lw	%x11, 96(%x2)  #845 pc 39700
	sw	%x11, 8(%x7)  #845 pc 39704
	lw	%x12, 8(%x2)  #845 pc 39708
	sw	%x12, 4(%x7)  #845 pc 39712
	addi	%x12, %x3, 0  #878 pc 39716
	addi	%x3, %x3, 12  #878 pc 39720
	addj	%x13, 3840  #878 read_light.2734 pc 39724
	sw	%x13, 0(%x12)  #878 pc 39728
	lw	%x13, 16(%x2)  #878 pc 39732
	sw	%x13, 8(%x12)  #878 pc 39736
	lw	%x14, 20(%x2)  #878 pc 39740
	sw	%x14, 4(%x12)  #878 pc 39744
	addi	%x15, %x3, 0  #941 pc 39748
	addi	%x3, %x3, 8  #941 pc 39752
	addj	%x16, 5176  #941 read_nth_object.2739 pc 39756
	sw	%x16, 0(%x15)  #941 pc 39760
	lw	%x16, 4(%x2)  #941 pc 39764
	sw	%x16, 4(%x15)  #941 pc 39768
	addi	%x17, %x3, 0  #1024 pc 39772
	addi	%x3, %x3, 12  #1024 pc 39776
	addj	%x18, 6740  #1024 read_object.2741 pc 39780
	sw	%x18, 0(%x17)  #1024 pc 39784
	sw	%x15, 8(%x17)  #1024 pc 39788
	lw	%x15, 0(%x2)  #1024 pc 39792
	sw	%x15, 4(%x17)  #1024 pc 39796
	addi	%x18, %x3, 0  #1033 pc 39800
	addi	%x3, %x3, 8  #1033 pc 39804
	addj	%x19, 6868  #1033 read_all_object.2743 pc 39808
	sw	%x19, 0(%x18)  #1033 pc 39812
	sw	%x17, 4(%x18)  #1033 pc 39816
	addi	%x17, %x3, 0  #1057 pc 39820
	addi	%x3, %x3, 8  #1057 pc 39824
	addj	%x19, 7148  #1057 read_and_network.2749 pc 39828
	sw	%x19, 0(%x17)  #1057 pc 39832
	lw	%x19, 28(%x2)  #1057 pc 39836
	sw	%x19, 4(%x17)  #1057 pc 39840
	addi	%x20, %x3, 0  #1066 pc 39844
	addi	%x3, %x3, 24  #1066 pc 39848
	addj	%x21, 7260  #1066 read_parameter.2751 pc 39852
	sw	%x21, 0(%x20)  #1066 pc 39856
	sw	%x7, 20(%x20)  #1066 pc 39860
	sw	%x12, 16(%x20)  #1066 pc 39864
	sw	%x17, 12(%x20)  #1066 pc 39868
	sw	%x18, 8(%x20)  #1066 pc 39872
	lw	%x7, 36(%x2)  #1066 pc 39876
	sw	%x7, 4(%x20)  #1066 pc 39880
	addi	%x12, %x3, 0  #1091 pc 39884
	addi	%x3, %x3, 8  #1091 pc 39888
	addj	%x17, 7452  #1091 solver_rect_surface.2753 pc 39892
	sw	%x17, 0(%x12)  #1091 pc 39896
	lw	%x17, 40(%x2)  #1091 pc 39900
	sw	%x17, 4(%x12)  #1091 pc 39904
	addi	%x18, %x3, 0  #1106 pc 39908
	addi	%x3, %x3, 8  #1106 pc 39912
	addj	%x21, 7984  #1106 solver_rect.2762 pc 39916
	sw	%x21, 0(%x18)  #1106 pc 39920
	sw	%x12, 4(%x18)  #1106 pc 39924
	addi	%x12, %x3, 0  #1115 pc 39928
	addi	%x3, %x3, 8  #1115 pc 39932
	addj	%x21, 8252  #1115 solver_surface.2768 pc 39936
	sw	%x21, 0(%x12)  #1115 pc 39940
	sw	%x17, 4(%x12)  #1115 pc 39944
	addi	%x21, %x3, 0  #1166 pc 39948
	addi	%x3, %x3, 8  #1166 pc 39952
	addj	%x22, 9408  #1166 solver_second.2787 pc 39956
	sw	%x22, 0(%x21)  #1166 pc 39960
	sw	%x17, 4(%x21)  #1166 pc 39964
	addi	%x22, %x3, 0  #1195 pc 39968
	addi	%x3, %x3, 20  #1195 pc 39972
	addj	%x23, 9916  #1195 solver.2793 pc 39976
	sw	%x23, 0(%x22)  #1195 pc 39980
	sw	%x12, 16(%x22)  #1195 pc 39984
	sw	%x21, 12(%x22)  #1195 pc 39988
	sw	%x18, 8(%x22)  #1195 pc 39992
	sw	%x16, 4(%x22)  #1195 pc 39996
	addi	%x12, %x3, 0  #1227 pc 40000
	addi	%x3, %x3, 8  #1227 pc 40004
	addj	%x18, 10272  #1227 solver_rect_fast.2797 pc 40008
	sw	%x18, 0(%x12)  #1227 pc 40012
	sw	%x17, 4(%x12)  #1227 pc 40016
	addi	%x18, %x3, 0  #1260 pc 40020
	addi	%x3, %x3, 8  #1260 pc 40024
	addj	%x21, 11308  #1260 solver_surface_fast.2804 pc 40028
	sw	%x21, 0(%x18)  #1260 pc 40032
	sw	%x17, 4(%x18)  #1260 pc 40036
	addi	%x21, %x3, 0  #1269 pc 40040
	addi	%x3, %x3, 8  #1269 pc 40044
	addj	%x23, 11452  #1269 solver_second_fast.2810 pc 40048
	sw	%x23, 0(%x21)  #1269 pc 40052
	sw	%x17, 4(%x21)  #1269 pc 40056
	addi	%x23, %x3, 0  #1289 pc 40060
	addi	%x3, %x3, 20  #1289 pc 40064
	addj	%x24, 11920  #1289 solver_fast.2816 pc 40068
	sw	%x24, 0(%x23)  #1289 pc 40072
	sw	%x18, 16(%x23)  #1289 pc 40076
	sw	%x21, 12(%x23)  #1289 pc 40080
	sw	%x12, 8(%x23)  #1289 pc 40084
	sw	%x16, 4(%x23)  #1289 pc 40088
	addi	%x18, %x3, 0  #1309 pc 40092
	addi	%x3, %x3, 8  #1309 pc 40096
	addj	%x21, 12360  #1309 solver_surface_fast2.2820 pc 40100
	sw	%x21, 0(%x18)  #1309 pc 40104
	sw	%x17, 4(%x18)  #1309 pc 40108
	addi	%x21, %x3, 0  #1317 pc 40112
	addi	%x3, %x3, 8  #1317 pc 40116
	addj	%x24, 12464  #1317 solver_second_fast2.2827 pc 40120
	sw	%x24, 0(%x21)  #1317 pc 40124
	sw	%x17, 4(%x21)  #1317 pc 40128
	addi	%x24, %x3, 0  #1336 pc 40132
	addi	%x3, %x3, 20  #1336 pc 40136
	addj	%x25, 12828  #1336 solver_fast2.2834 pc 40140
	sw	%x25, 0(%x24)  #1336 pc 40144
	sw	%x18, 16(%x24)  #1336 pc 40148
	sw	%x21, 12(%x24)  #1336 pc 40152
	sw	%x12, 8(%x24)  #1336 pc 40156
	sw	%x16, 4(%x24)  #1336 pc 40160
	addi	%x12, %x3, 0  #1433 pc 40164
	addi	%x3, %x3, 8  #1433 pc 40168
	addj	%x18, 15304  #1433 iter_setup_dirvec_constants.2846 pc 40172
	sw	%x18, 0(%x12)  #1433 pc 40176
	sw	%x16, 4(%x12)  #1433 pc 40180
	addi	%x18, %x3, 0  #1450 pc 40184
	addi	%x3, %x3, 12  #1450 pc 40188
	addj	%x21, 15656  #1450 setup_dirvec_constants.2849 pc 40192
	sw	%x21, 0(%x18)  #1450 pc 40196
	sw	%x15, 8(%x18)  #1450 pc 40200
	sw	%x12, 4(%x18)  #1450 pc 40204
	addi	%x12, %x3, 0  #1458 pc 40208
	addi	%x3, %x3, 8  #1458 pc 40212
	addj	%x21, 15684  #1458 setup_startp_constants.2851 pc 40216
	sw	%x21, 0(%x12)  #1458 pc 40220
	sw	%x16, 4(%x12)  #1458 pc 40224
	addi	%x21, %x3, 0  #1477 pc 40228
	addi	%x3, %x3, 16  #1477 pc 40232
	addj	%x25, 16200  #1477 setup_startp.2854 pc 40236
	sw	%x25, 0(%x21)  #1477 pc 40240
	lw	%x25, 92(%x2)  #1477 pc 40244
	sw	%x25, 12(%x21)  #1477 pc 40248
	sw	%x12, 8(%x21)  #1477 pc 40252
	sw	%x15, 4(%x21)  #1477 pc 40256
	addi	%x12, %x3, 0  #1527 pc 40260
	addi	%x3, %x3, 8  #1527 pc 40264
	addj	%x26, 17264  #1527 check_all_inside.2876 pc 40268
	sw	%x26, 0(%x12)  #1527 pc 40272
	sw	%x16, 4(%x12)  #1527 pc 40276
	addi	%x26, %x3, 0  #1547 pc 40280
	addi	%x3, %x3, 32  #1547 pc 40284
	addj	%x27, 17432  #1547 shadow_check_and_group.2882 pc 40288
	sw	%x27, 0(%x26)  #1547 pc 40292
	sw	%x23, 28(%x26)  #1547 pc 40296
	sw	%x17, 24(%x26)  #1547 pc 40300
	sw	%x16, 20(%x26)  #1547 pc 40304
	lw	%x27, 128(%x2)  #1547 pc 40308
	sw	%x27, 16(%x26)  #1547 pc 40312
	sw	%x13, 12(%x26)  #1547 pc 40316
	lw	%x28, 52(%x2)  #1547 pc 40320
	sw	%x28, 8(%x26)  #1547 pc 40324
	sw	%x12, 4(%x26)  #1547 pc 40328
	addi	%x29, %x3, 0  #1577 pc 40332
	addi	%x3, %x3, 12  #1577 pc 40336
	addj	%x30, 17924  #1577 shadow_check_one_or_group.2885 pc 40340
	sw	%x30, 0(%x29)  #1577 pc 40344
	sw	%x26, 8(%x29)  #1577 pc 40348
	sw	%x19, 4(%x29)  #1577 pc 40352
	addi	%x26, %x3, 0  #1592 pc 40356
	addi	%x3, %x3, 24  #1592 pc 40360
	addj	%x30, 18088  #1592 shadow_check_one_or_matrix.2888 pc 40364
	sw	%x30, 0(%x26)  #1592 pc 40368
	sw	%x23, 20(%x26)  #1592 pc 40372
	sw	%x17, 16(%x26)  #1592 pc 40376
	sw	%x29, 12(%x26)  #1592 pc 40380
	sw	%x27, 8(%x26)  #1592 pc 40384
	sw	%x28, 4(%x26)  #1592 pc 40388
	addi	%x23, %x3, 0  #1628 pc 40392
	addi	%x3, %x3, 40  #1628 pc 40396
	addj	%x29, 18516  #1628 solve_each_element.2891 pc 40400
	sw	%x29, 0(%x23)  #1628 pc 40404
	lw	%x29, 48(%x2)  #1628 pc 40408
	sw	%x29, 36(%x23)  #1628 pc 40412
	lw	%x30, 88(%x2)  #1628 pc 40416
	sw	%x30, 32(%x23)  #1628 pc 40420
	sw	%x17, 28(%x23)  #1628 pc 40424
	sw	%x22, 24(%x23)  #1628 pc 40428
	sw	%x16, 20(%x23)  #1628 pc 40432
	lw	%x27, 44(%x2)  #1628 pc 40436
	sw	%x27, 16(%x23)  #1628 pc 40440
	sw	%x28, 12(%x23)  #1628 pc 40444
	sw	%x20, 140(%x2)  #1628 pc 40448
	lw	%x20, 56(%x2)  #1628 pc 40452
	sw	%x20, 8(%x23)  #1628 pc 40456
	sw	%x12, 4(%x23)  #1628 pc 40460
	sw	%x18, 144(%x2)  #1669 pc 40464
	addi	%x18, %x3, 0  #1669 pc 40468
	addi	%x3, %x3, 12  #1669 pc 40472
	addj	%x15, 19160  #1669 solve_one_or_network.2895 pc 40476
	sw	%x15, 0(%x18)  #1669 pc 40480
	sw	%x23, 8(%x18)  #1669 pc 40484
	sw	%x19, 4(%x18)  #1669 pc 40488
	addi	%x15, %x3, 0  #1679 pc 40492
	addi	%x3, %x3, 24  #1679 pc 40496
	addj	%x23, 19304  #1679 trace_or_matrix.2899 pc 40500
	sw	%x23, 0(%x15)  #1679 pc 40504
	sw	%x29, 20(%x15)  #1679 pc 40508
	sw	%x30, 16(%x15)  #1679 pc 40512
	sw	%x17, 12(%x15)  #1679 pc 40516
	sw	%x22, 8(%x15)  #1679 pc 40520
	sw	%x18, 4(%x15)  #1679 pc 40524
	addi	%x18, %x3, 0  #1706 pc 40528
	addi	%x3, %x3, 16  #1706 pc 40532
	addj	%x22, 19648  #1706 judge_intersection.2903 pc 40536
	sw	%x22, 0(%x18)  #1706 pc 40540
	sw	%x15, 12(%x18)  #1706 pc 40544
	sw	%x29, 8(%x18)  #1706 pc 40548
	sw	%x7, 4(%x18)  #1706 pc 40552
	addi	%x15, %x3, 0  #1721 pc 40556
	addi	%x3, %x3, 40  #1721 pc 40560
	addj	%x22, 19796  #1721 solve_each_element_fast.2905 pc 40564
	sw	%x22, 0(%x15)  #1721 pc 40568
	sw	%x29, 36(%x15)  #1721 pc 40572
	sw	%x25, 32(%x15)  #1721 pc 40576
	sw	%x24, 28(%x15)  #1721 pc 40580
	sw	%x17, 24(%x15)  #1721 pc 40584
	sw	%x16, 20(%x15)  #1721 pc 40588
	sw	%x27, 16(%x15)  #1721 pc 40592
	sw	%x28, 12(%x15)  #1721 pc 40596
	sw	%x20, 8(%x15)  #1721 pc 40600
	sw	%x12, 4(%x15)  #1721 pc 40604
	addi	%x12, %x3, 0  #1762 pc 40608
	addi	%x3, %x3, 12  #1762 pc 40612
	addj	%x22, 20472  #1762 solve_one_or_network_fast.2909 pc 40616
	sw	%x22, 0(%x12)  #1762 pc 40620
	sw	%x15, 8(%x12)  #1762 pc 40624
	sw	%x19, 4(%x12)  #1762 pc 40628
	addi	%x15, %x3, 0  #1772 pc 40632
	addi	%x3, %x3, 20  #1772 pc 40636
	addj	%x19, 20616  #1772 trace_or_matrix_fast.2913 pc 40640
	sw	%x19, 0(%x15)  #1772 pc 40644
	sw	%x29, 16(%x15)  #1772 pc 40648
	sw	%x24, 12(%x15)  #1772 pc 40652
	sw	%x17, 8(%x15)  #1772 pc 40656
	sw	%x12, 4(%x15)  #1772 pc 40660
	addi	%x12, %x3, 0  #1796 pc 40664
	addi	%x3, %x3, 16  #1796 pc 40668
	addj	%x17, 20952  #1796 judge_intersection_fast.2917 pc 40672
	sw	%x17, 0(%x12)  #1796 pc 40676
	sw	%x15, 12(%x12)  #1796 pc 40680
	sw	%x29, 8(%x12)  #1796 pc 40684
	sw	%x7, 4(%x12)  #1796 pc 40688
	addi	%x15, %x3, 0  #1817 pc 40692
	addi	%x3, %x3, 12  #1817 pc 40696
	addj	%x17, 21100  #1817 get_nvector_rect.2919 pc 40700
	sw	%x17, 0(%x15)  #1817 pc 40704
	lw	%x17, 60(%x2)  #1817 pc 40708
	sw	%x17, 8(%x15)  #1817 pc 40712
	sw	%x27, 4(%x15)  #1817 pc 40716
	addi	%x19, %x3, 0  #1825 pc 40720
	addi	%x3, %x3, 8  #1825 pc 40724
	addj	%x22, 21248  #1825 get_nvector_plane.2921 pc 40728
	sw	%x22, 0(%x19)  #1825 pc 40732
	sw	%x17, 4(%x19)  #1825 pc 40736
	addi	%x22, %x3, 0  #1833 pc 40740
	addi	%x3, %x3, 12  #1833 pc 40744
	addj	%x23, 21428  #1833 get_nvector_second.2923 pc 40748
	sw	%x23, 0(%x22)  #1833 pc 40752
	sw	%x17, 8(%x22)  #1833 pc 40756
	sw	%x28, 4(%x22)  #1833 pc 40760
	addi	%x23, %x3, 0  #1855 pc 40764
	addi	%x3, %x3, 16  #1855 pc 40768
	addj	%x24, 22156  #1855 get_nvector.2925 pc 40772
	sw	%x24, 0(%x23)  #1855 pc 40776
	sw	%x22, 12(%x23)  #1855 pc 40780
	sw	%x15, 8(%x23)  #1855 pc 40784
	sw	%x19, 4(%x23)  #1855 pc 40788
	addi	%x15, %x3, 0  #1871 pc 40792
	addi	%x3, %x3, 8  #1871 pc 40796
	addj	%x19, 22300  #1871 utexture.2928 pc 40800
	sw	%x19, 0(%x15)  #1871 pc 40804
	lw	%x19, 64(%x2)  #1871 pc 40808
	sw	%x19, 4(%x15)  #1871 pc 40812
	addi	%x22, %x3, 0  #1949 pc 40816
	addi	%x3, %x3, 12  #1949 pc 40820
	addj	%x24, 24108  #1949 add_light.2931 pc 40824
	sw	%x24, 0(%x22)  #1949 pc 40828
	sw	%x19, 8(%x22)  #1949 pc 40832
	lw	%x24, 72(%x2)  #1949 pc 40836
	sw	%x24, 4(%x22)  #1949 pc 40840
	addi	%x25, %x3, 0  #1966 pc 40844
	addi	%x3, %x3, 36  #1966 pc 40848
	addj	%x10, 24352  #1966 trace_reflections.2935 pc 40852
	sw	%x10, 0(%x25)  #1966 pc 40856
	sw	%x26, 32(%x25)  #1966 pc 40860
	lw	%x10, 136(%x2)  #1966 pc 40864
	sw	%x10, 28(%x25)  #1966 pc 40868
	sw	%x7, 24(%x25)  #1966 pc 40872
	sw	%x17, 20(%x25)  #1966 pc 40876
	sw	%x12, 16(%x25)  #1966 pc 40880
	sw	%x27, 12(%x25)  #1966 pc 40884
	sw	%x20, 8(%x25)  #1966 pc 40888
	sw	%x22, 4(%x25)  #1966 pc 40892
	addi	%x10, %x3, 0  #1995 pc 40896
	addi	%x3, %x3, 84  #1995 pc 40900
	addj	%x9, 24940  #1995 trace_ray.2940 pc 40904
	sw	%x9, 0(%x10)  #1995 pc 40908
	sw	%x15, 80(%x10)  #1995 pc 40912
	sw	%x25, 76(%x10)  #1995 pc 40916
	sw	%x29, 72(%x10)  #1995 pc 40920
	sw	%x19, 68(%x10)  #1995 pc 40924
	sw	%x30, 64(%x10)  #1995 pc 40928
	sw	%x26, 60(%x10)  #1995 pc 40932
	sw	%x21, 56(%x10)  #1995 pc 40936
	sw	%x24, 52(%x10)  #1995 pc 40940
	sw	%x7, 48(%x10)  #1995 pc 40944
	sw	%x16, 44(%x10)  #1995 pc 40948
	sw	%x17, 40(%x10)  #1995 pc 40952
	sw	%x6, 36(%x10)  #1995 pc 40956
	sw	%x13, 32(%x10)  #1995 pc 40960
	sw	%x18, 28(%x10)  #1995 pc 40964
	sw	%x27, 24(%x10)  #1995 pc 40968
	sw	%x28, 20(%x10)  #1995 pc 40972
	sw	%x20, 16(%x10)  #1995 pc 40976
	sw	%x23, 12(%x10)  #1995 pc 40980
	sw	%x14, 8(%x10)  #1995 pc 40984
	sw	%x22, 4(%x10)  #1995 pc 40988
	addi	%x9, %x3, 0  #2088 pc 40992
	addi	%x3, %x3, 52  #2088 pc 40996
	addj	%x14, 26764  #2088 trace_diffuse_ray.2946 pc 41000
	sw	%x14, 0(%x9)  #2088 pc 41004
	sw	%x15, 48(%x9)  #2088 pc 41008
	sw	%x19, 44(%x9)  #2088 pc 41012
	sw	%x26, 40(%x9)  #2088 pc 41016
	sw	%x7, 36(%x9)  #2088 pc 41020
	sw	%x16, 32(%x9)  #2088 pc 41024
	sw	%x17, 28(%x9)  #2088 pc 41028
	sw	%x13, 24(%x9)  #2088 pc 41032
	sw	%x12, 20(%x9)  #2088 pc 41036
	sw	%x28, 16(%x9)  #2088 pc 41040
	sw	%x20, 12(%x9)  #2088 pc 41044
	sw	%x23, 8(%x9)  #2088 pc 41048
	lw	%x7, 68(%x2)  #2088 pc 41052
	sw	%x7, 4(%x9)  #2088 pc 41056
	addi	%x12, %x3, 0  #2107 pc 41060
	addi	%x3, %x3, 8  #2107 pc 41064
	addj	%x14, 27260  #2107 iter_trace_diffuse_rays.2949 pc 41068
	sw	%x14, 0(%x12)  #2107 pc 41072
	sw	%x9, 4(%x12)  #2107 pc 41076
	addi	%x9, %x3, 0  #2123 pc 41080
	addi	%x3, %x3, 12  #2123 pc 41084
	addj	%x14, 27580  #2123 trace_diffuse_rays.2954 pc 41088
	sw	%x14, 0(%x9)  #2123 pc 41092
	sw	%x21, 8(%x9)  #2123 pc 41096
	sw	%x12, 4(%x9)  #2123 pc 41100
	addi	%x12, %x3, 0  #2133 pc 41104
	addi	%x3, %x3, 12  #2133 pc 41108
	addj	%x14, 27668  #2133 trace_diffuse_ray_80percent.2958 pc 41112
	sw	%x14, 0(%x12)  #2133 pc 41116
	sw	%x9, 8(%x12)  #2133 pc 41120
	lw	%x14, 116(%x2)  #2133 pc 41124
	sw	%x14, 4(%x12)  #2133 pc 41128
	addi	%x15, %x3, 0  #2159 pc 41132
	addi	%x3, %x3, 16  #2159 pc 41136
	addj	%x17, 28064  #2159 calc_diffuse_using_1point.2962 pc 41140
	sw	%x17, 0(%x15)  #2159 pc 41144
	sw	%x12, 12(%x15)  #2159 pc 41148
	sw	%x24, 8(%x15)  #2159 pc 41152
	sw	%x7, 4(%x15)  #2159 pc 41156
	addi	%x12, %x3, 0  #2178 pc 41160
	addi	%x3, %x3, 12  #2178 pc 41164
	addj	%x17, 28400  #2178 calc_diffuse_using_5points.2965 pc 41168
	sw	%x17, 0(%x12)  #2178 pc 41172
	sw	%x24, 8(%x12)  #2178 pc 41176
	sw	%x7, 4(%x12)  #2178 pc 41180
	addi	%x17, %x3, 0  #2198 pc 41184
	addi	%x3, %x3, 8  #2198 pc 41188
	addj	%x18, 28988  #2198 do_without_neighbors.2971 pc 41192
	sw	%x18, 0(%x17)  #2198 pc 41196
	sw	%x15, 4(%x17)  #2198 pc 41200
	addi	%x15, %x3, 0  #2213 pc 41204
	addi	%x3, %x3, 8  #2213 pc 41208
	addj	%x18, 29208  #2213 neighbors_exist.2974 pc 41212
	sw	%x18, 0(%x15)  #2213 pc 41216
	lw	%x18, 76(%x2)  #2213 pc 41220
	sw	%x18, 4(%x15)  #2213 pc 41224
	addi	%x19, %x3, 0  #2250 pc 41228
	addi	%x3, %x3, 12  #2250 pc 41232
	addj	%x20, 29784  #2250 try_exploit_neighbors.2987 pc 41236
	sw	%x20, 0(%x19)  #2250 pc 41240
	sw	%x17, 8(%x19)  #2250 pc 41244
	sw	%x12, 4(%x19)  #2250 pc 41248
	addi	%x12, %x3, 0  #2277 pc 41252
	addi	%x3, %x3, 8  #2277 pc 41256
	addj	%x20, 30156  #2277 write_ppm_header.2994 pc 41260
	sw	%x20, 0(%x12)  #2277 pc 41264
	sw	%x18, 4(%x12)  #2277 pc 41268
	addi	%x20, %x3, 0  #2303 pc 41272
	addi	%x3, %x3, 8  #2303 pc 41276
	addj	%x21, 30552  #2303 write_rgb.3000 pc 41280
	sw	%x21, 0(%x20)  #2303 pc 41284
	sw	%x24, 4(%x20)  #2303 pc 41288
	addi	%x21, %x3, 0  #2326 pc 41292
	addi	%x3, %x3, 16  #2326 pc 41296
	addj	%x22, 30788  #2326 pretrace_diffuse_rays.3002 pc 41300
	sw	%x22, 0(%x21)  #2326 pc 41304
	sw	%x9, 12(%x21)  #2326 pc 41308
	sw	%x14, 8(%x21)  #2326 pc 41312
	sw	%x7, 4(%x21)  #2326 pc 41316
	addi	%x7, %x3, 0  #2356 pc 41320
	addi	%x3, %x3, 40  #2356 pc 41324
	addj	%x9, 31248  #2356 pretrace_pixels.3005 pc 41328
	sw	%x9, 0(%x7)  #2356 pc 41332
	sw	%x8, 36(%x7)  #2356 pc 41336
	sw	%x10, 32(%x7)  #2356 pc 41340
	sw	%x30, 28(%x7)  #2356 pc 41344
	sw	%x11, 24(%x7)  #2356 pc 41348
	lw	%x8, 84(%x2)  #2356 pc 41352
	sw	%x8, 20(%x7)  #2356 pc 41356
	sw	%x24, 16(%x7)  #2356 pc 41360
	lw	%x9, 108(%x2)  #2356 pc 41364
	sw	%x9, 12(%x7)  #2356 pc 41368
	sw	%x21, 8(%x7)  #2356 pc 41372
	lw	%x9, 80(%x2)  #2356 pc 41376
	sw	%x9, 4(%x7)  #2356 pc 41380
	addi	%x10, %x3, 0  #2381 pc 41384
	addi	%x3, %x3, 28  #2381 pc 41388
	addj	%x11, 31896  #2381 pretrace_line.3012 pc 41392
	sw	%x11, 0(%x10)  #2381 pc 41396
	lw	%x11, 104(%x2)  #2381 pc 41400
	sw	%x11, 24(%x10)  #2381 pc 41404
	lw	%x11, 100(%x2)  #2381 pc 41408
	sw	%x11, 20(%x10)  #2381 pc 41412
	sw	%x8, 16(%x10)  #2381 pc 41416
	sw	%x7, 12(%x10)  #2381 pc 41420
	sw	%x18, 8(%x10)  #2381 pc 41424
	sw	%x9, 4(%x10)  #2381 pc 41428
	addi	%x7, %x3, 0  #2397 pc 41432
	addi	%x3, %x3, 28  #2397 pc 41436
	addj	%x11, 32100  #2397 scan_pixel.3016 pc 41440
	sw	%x11, 0(%x7)  #2397 pc 41444
	sw	%x20, 24(%x7)  #2397 pc 41448
	sw	%x19, 20(%x7)  #2397 pc 41452
	sw	%x24, 16(%x7)  #2397 pc 41456
	sw	%x15, 12(%x7)  #2397 pc 41460
	sw	%x18, 8(%x7)  #2397 pc 41464
	sw	%x17, 4(%x7)  #2397 pc 41468
	addi	%x11, %x3, 0  #2417 pc 41472
	addi	%x3, %x3, 16  #2417 pc 41476
	addj	%x15, 32508  #2417 scan_line.3023 pc 41480
	sw	%x15, 0(%x11)  #2417 pc 41484
	sw	%x7, 12(%x11)  #2417 pc 41488
	sw	%x10, 8(%x11)  #2417 pc 41492
	sw	%x18, 4(%x11)  #2417 pc 41496
	addi	%x7, %x3, 0  #2469 pc 41500
	addi	%x3, %x3, 8  #2469 pc 41504
	addj	%x15, 33412  #2469 create_pixelline.3037 pc 41508
	sw	%x15, 0(%x7)  #2469 pc 41512
	sw	%x18, 4(%x7)  #2469 pc 41516
	addi	%x15, %x3, 0  #2497 pc 41520
	addi	%x3, %x3, 8  #2497 pc 41524
	addj	%x17, 33668  #2497 calc_dirvec.3044 pc 41528
	sw	%x17, 0(%x15)  #2497 pc 41532
	sw	%x14, 4(%x15)  #2497 pc 41536
	addi	%x17, %x3, 0  #2518 pc 41540
	addi	%x3, %x3, 8  #2518 pc 41544
	addj	%x19, 34716  #2518 calc_dirvecs.3052 pc 41548
	sw	%x19, 0(%x17)  #2518 pc 41552
	sw	%x15, 4(%x17)  #2518 pc 41556
	addi	%x15, %x3, 0  #2532 pc 41560
	addi	%x3, %x3, 8  #2532 pc 41564
	addj	%x19, 35028  #2532 calc_dirvec_rows.3057 pc 41568
	sw	%x19, 0(%x15)  #2532 pc 41572
	sw	%x17, 4(%x15)  #2532 pc 41576
	addi	%x17, %x3, 0  #2545 pc 41580
	addi	%x3, %x3, 8  #2545 pc 41584
	addj	%x19, 35224  #2545 create_dirvec.3061 pc 41588
	sw	%x19, 0(%x17)  #2545 pc 41592
	lw	%x19, 0(%x2)  #2545 pc 41596
	sw	%x19, 4(%x17)  #2545 pc 41600
	addi	%x20, %x3, 0  #2551 pc 41604
	addi	%x3, %x3, 8  #2551 pc 41608
	addj	%x21, 35332  #2551 create_dirvec_elements.3063 pc 41612
	sw	%x21, 0(%x20)  #2551 pc 41616
	sw	%x17, 4(%x20)  #2551 pc 41620
	addi	%x21, %x3, 0  #2558 pc 41624
	addi	%x3, %x3, 16  #2558 pc 41628
	addj	%x22, 35440  #2558 create_dirvecs.3066 pc 41632
	sw	%x22, 0(%x21)  #2558 pc 41636
	sw	%x14, 12(%x21)  #2558 pc 41640
	sw	%x20, 8(%x21)  #2558 pc 41644
	sw	%x17, 4(%x21)  #2558 pc 41648
	addi	%x20, %x3, 0  #2570 pc 41652
	addi	%x3, %x3, 8  #2570 pc 41656
	addj	%x22, 35644  #2570 init_dirvec_constants.3068 pc 41660
	sw	%x22, 0(%x20)  #2570 pc 41664
	lw	%x22, 144(%x2)  #2570 pc 41668
	sw	%x22, 4(%x20)  #2570 pc 41672
	addi	%x23, %x3, 0  #2577 pc 41676
	addi	%x3, %x3, 12  #2577 pc 41680
	addj	%x24, 35752  #2577 init_vecset_constants.3071 pc 41684
	sw	%x24, 0(%x23)  #2577 pc 41688
	sw	%x20, 8(%x23)  #2577 pc 41692
	sw	%x14, 4(%x23)  #2577 pc 41696
	addi	%x14, %x3, 0  #2584 pc 41700
	addi	%x3, %x3, 16  #2584 pc 41704
	addj	%x20, 35864  #2584 init_dirvecs.3073 pc 41708
	sw	%x20, 0(%x14)  #2584 pc 41712
	sw	%x23, 12(%x14)  #2584 pc 41716
	sw	%x21, 8(%x14)  #2584 pc 41720
	sw	%x15, 4(%x14)  #2584 pc 41724
	addi	%x15, %x3, 0  #2595 pc 41728
	addi	%x3, %x3, 16  #2595 pc 41732
	addj	%x20, 35980  #2595 add_reflection.3075 pc 41736
	sw	%x20, 0(%x15)  #2595 pc 41740
	sw	%x22, 12(%x15)  #2595 pc 41744
	lw	%x20, 136(%x2)  #2595 pc 41748
	sw	%x20, 8(%x15)  #2595 pc 41752
	sw	%x17, 4(%x15)  #2595 pc 41756
	addi	%x17, %x3, 0  #2604 pc 41760
	addi	%x3, %x3, 16  #2604 pc 41764
	addj	%x20, 36196  #2604 setup_rect_reflection.3082 pc 41768
	sw	%x20, 0(%x17)  #2604 pc 41772
	sw	%x6, 12(%x17)  #2604 pc 41776
	sw	%x13, 8(%x17)  #2604 pc 41780
	sw	%x15, 4(%x17)  #2604 pc 41784
	addi	%x20, %x3, 0  #2618 pc 41788
	addi	%x3, %x3, 16  #2618 pc 41792
	addj	%x21, 36656  #2618 setup_surface_reflection.3085 pc 41796
	sw	%x21, 0(%x20)  #2618 pc 41800
	sw	%x6, 12(%x20)  #2618 pc 41804
	sw	%x13, 8(%x20)  #2618 pc 41808
	sw	%x15, 4(%x20)  #2618 pc 41812
	addi	%x6, %x3, 0  #2633 pc 41816
	addi	%x3, %x3, 16  #2633 pc 41820
	addj	%x15, 37104  #2633 setup_reflections.3088 pc 41824
	sw	%x15, 0(%x6)  #2633 pc 41828
	sw	%x20, 12(%x6)  #2633 pc 41832
	sw	%x17, 8(%x6)  #2633 pc 41836
	sw	%x16, 4(%x6)  #2633 pc 41840
	addi	%x29, %x3, 0  #2655 pc 41844
	addi	%x3, %x3, 60  #2655 pc 41848
	addj	%x15, 37392  #2655 rt.3090 pc 41852
	sw	%x15, 0(%x29)  #2655 pc 41856
	sw	%x12, 56(%x29)  #2655 pc 41860
	sw	%x6, 52(%x29)  #2655 pc 41864
	sw	%x22, 48(%x29)  #2655 pc 41868
	sw	%x8, 44(%x29)  #2655 pc 41872
	sw	%x11, 40(%x29)  #2655 pc 41876
	lw	%x6, 140(%x2)  #2655 pc 41880
	sw	%x6, 36(%x29)  #2655 pc 41884
	sw	%x10, 32(%x29)  #2655 pc 41888
	sw	%x19, 28(%x29)  #2655 pc 41892
	lw	%x6, 128(%x2)  #2655 pc 41896
	sw	%x6, 24(%x29)  #2655 pc 41900
	sw	%x13, 20(%x29)  #2655 pc 41904
	sw	%x14, 16(%x29)  #2655 pc 41908
	sw	%x18, 12(%x29)  #2655 pc 41912
	sw	%x9, 8(%x29)  #2655 pc 41916
	sw	%x7, 4(%x29)  #2655 pc 41920
	addi	%x6, %x0, 512 #256  #0 pc 41924
	addi	%x8, %x0, 3  #0 pc 41928
	addi	%x7, %x6, 0  #0 pc 41932
	sw	%x1, 148(%x2)  #2676 pc 41936
	lw	%x30, 0(%x29)  #2676 pc 41940
	addi	%x2, %x2, 152  #2676 pc 41944
	jalr	%x1, %x30, 0  #2676 pc 41948
	addi	%x2, %x2, -152  #2676 pc 41952
	lw	%x1, 148(%x2)  #2676 pc 41956