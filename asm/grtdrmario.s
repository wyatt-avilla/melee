.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global func_8022050C
func_8022050C:
/* 8022050C 0021D0EC  4E 80 00 20 */	blr 
/* 80220510 0021D0F0  7C 08 02 A6 */	mflr r0
/* 80220514 0021D0F4  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80220518 0021D0F8  90 01 00 04 */	stw r0, 4(r1)
/* 8022051C 0021D0FC  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80220520 0021D100  38 A3 00 8C */	addi r5, r3, 0x8c
/* 80220524 0021D104  94 21 FF F8 */	stwu r1, -8(r1)
/* 80220528 0021D108  38 80 00 01 */	li r4, 1
/* 8022052C 0021D10C  88 03 00 8C */	lbz r0, 0x8c(r3)
/* 80220530 0021D110  38 60 00 00 */	li r3, 0
/* 80220534 0021D114  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 80220538 0021D118  98 05 00 00 */	stb r0, 0(r5)
/* 8022053C 0021D11C  38 60 00 00 */	li r3, 0
/* 80220540 0021D120  88 05 00 00 */	lbz r0, 0(r5)
/* 80220544 0021D124  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 80220548 0021D128  98 05 00 00 */	stb r0, 0(r5)
/* 8022054C 0021D12C  48 00 00 65 */	bl func_802205B0
/* 80220550 0021D130  38 60 00 01 */	li r3, 1
/* 80220554 0021D134  48 00 00 5D */	bl func_802205B0
/* 80220558 0021D138  38 60 00 02 */	li r3, 2
/* 8022055C 0021D13C  48 00 00 55 */	bl func_802205B0
/* 80220560 0021D140  4B FA 34 61 */	bl func_801C39C0
/* 80220564 0021D144  4B FA 36 51 */	bl func_801C3BB4
/* 80220568 0021D148  4B FA 3C A9 */	bl func_801C4210
/* 8022056C 0021D14C  4B FA 3D 41 */	bl func_801C42AC
/* 80220570 0021D150  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80220574 0021D154  38 21 00 08 */	addi r1, r1, 8
/* 80220578 0021D158  7C 08 03 A6 */	mtlr r0
/* 8022057C 0021D15C  4E 80 00 20 */	blr 
/* 80220580 0021D160  4E 80 00 20 */	blr 
/* 80220584 0021D164  7C 08 02 A6 */	mflr r0
/* 80220588 0021D168  38 60 00 00 */	li r3, 0
/* 8022058C 0021D16C  90 01 00 04 */	stw r0, 4(r1)
/* 80220590 0021D170  94 21 FF F8 */	stwu r1, -8(r1)
/* 80220594 0021D174  4B FA A8 71 */	bl func_801CAE04
/* 80220598 0021D178  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8022059C 0021D17C  38 21 00 08 */	addi r1, r1, 8
/* 802205A0 0021D180  7C 08 03 A6 */	mtlr r0
/* 802205A4 0021D184  4E 80 00 20 */	blr 
/* 802205A8 0021D188  38 60 00 00 */	li r3, 0
/* 802205AC 0021D18C  4E 80 00 20 */	blr 

.global func_802205B0
func_802205B0:
/* 802205B0 0021D190  7C 08 02 A6 */	mflr r0
/* 802205B4 0021D194  90 01 00 04 */	stw r0, 4(r1)
/* 802205B8 0021D198  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802205BC 0021D19C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802205C0 0021D1A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802205C4 0021D1A4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802205C8 0021D1A8  93 81 00 10 */	stw r28, 0x10(r1)
/* 802205CC 0021D1AC  3B 83 00 00 */	addi r28, r3, 0
/* 802205D0 0021D1B0  1C 1C 00 14 */	mulli r0, r28, 0x14
/* 802205D4 0021D1B4  3C 60 80 3F */	lis r3, lbl_803E8850@ha
/* 802205D8 0021D1B8  3B E3 88 50 */	addi r31, r3, lbl_803E8850@l
/* 802205DC 0021D1BC  38 7C 00 00 */	addi r3, r28, 0
/* 802205E0 0021D1C0  7F BF 02 14 */	add r29, r31, r0
/* 802205E4 0021D1C4  4B FA 0E ED */	bl func_801C14D0
/* 802205E8 0021D1C8  7C 7E 1B 79 */	or. r30, r3, r3
/* 802205EC 0021D1CC  41 82 00 70 */	beq lbl_8022065C
/* 802205F0 0021D1D0  83 FE 00 2C */	lwz r31, 0x2c(r30)
/* 802205F4 0021D1D4  38 00 00 00 */	li r0, 0
/* 802205F8 0021D1D8  3C 60 80 1C */	lis r3, func_801C5DB0@ha
/* 802205FC 0021D1DC  90 1F 00 08 */	stw r0, 8(r31)
/* 80220600 0021D1E0  38 83 5D B0 */	addi r4, r3, func_801C5DB0@l
/* 80220604 0021D1E4  38 7E 00 00 */	addi r3, r30, 0
/* 80220608 0021D1E8  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8022060C 0021D1EC  38 A0 00 03 */	li r5, 3
/* 80220610 0021D1F0  38 C0 00 00 */	li r6, 0
/* 80220614 0021D1F4  48 17 00 89 */	bl func_8039069C
/* 80220618 0021D1F8  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8022061C 0021D1FC  28 00 00 00 */	cmplwi r0, 0
/* 80220620 0021D200  41 82 00 08 */	beq lbl_80220628
/* 80220624 0021D204  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_80220628:
/* 80220628 0021D208  81 9D 00 00 */	lwz r12, 0(r29)
/* 8022062C 0021D20C  28 0C 00 00 */	cmplwi r12, 0
/* 80220630 0021D210  41 82 00 10 */	beq lbl_80220640
/* 80220634 0021D214  7D 88 03 A6 */	mtlr r12
/* 80220638 0021D218  38 7E 00 00 */	addi r3, r30, 0
/* 8022063C 0021D21C  4E 80 00 21 */	blrl 
lbl_80220640:
/* 80220640 0021D220  80 9D 00 08 */	lwz r4, 8(r29)
/* 80220644 0021D224  28 04 00 00 */	cmplwi r4, 0
/* 80220648 0021D228  41 82 00 2C */	beq lbl_80220674
/* 8022064C 0021D22C  38 7E 00 00 */	addi r3, r30, 0
/* 80220650 0021D230  38 A0 00 04 */	li r5, 4
/* 80220654 0021D234  48 16 F7 01 */	bl func_8038FD54
/* 80220658 0021D238  48 00 00 1C */	b lbl_80220674
lbl_8022065C:
/* 8022065C 0021D23C  38 DC 00 00 */	addi r6, r28, 0
/* 80220660 0021D240  4C C6 31 82 */	crclr 6
/* 80220664 0021D244  38 7F 00 90 */	addi r3, r31, 0x90
/* 80220668 0021D248  38 9F 00 B4 */	addi r4, r31, 0xb4
/* 8022066C 0021D24C  38 A0 00 CC */	li r5, 0xcc
/* 80220670 0021D250  48 12 50 39 */	bl OSReport
lbl_80220674:
/* 80220674 0021D254  7F C3 F3 78 */	mr r3, r30
/* 80220678 0021D258  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8022067C 0021D25C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80220680 0021D260  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80220684 0021D264  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80220688 0021D268  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8022068C 0021D26C  38 21 00 20 */	addi r1, r1, 0x20
/* 80220690 0021D270  7C 08 03 A6 */	mtlr r0
/* 80220694 0021D274  4E 80 00 20 */	blr 
/* 80220698 0021D278  7C 08 02 A6 */	mflr r0
/* 8022069C 0021D27C  38 A0 00 00 */	li r5, 0
/* 802206A0 0021D280  90 01 00 04 */	stw r0, 4(r1)
/* 802206A4 0021D284  94 21 FF F8 */	stwu r1, -8(r1)
/* 802206A8 0021D288  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802206AC 0021D28C  80 84 00 14 */	lwz r4, 0x14(r4)
/* 802206B0 0021D290  4B FA 7A 89 */	bl func_801C8138
/* 802206B4 0021D294  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802206B8 0021D298  38 21 00 08 */	addi r1, r1, 8
/* 802206BC 0021D29C  7C 08 03 A6 */	mtlr r0
/* 802206C0 0021D2A0  4E 80 00 20 */	blr 
/* 802206C4 0021D2A4  38 60 00 00 */	li r3, 0
/* 802206C8 0021D2A8  4E 80 00 20 */	blr 
/* 802206CC 0021D2AC  4E 80 00 20 */	blr 
/* 802206D0 0021D2B0  4E 80 00 20 */	blr 
/* 802206D4 0021D2B4  7C 08 02 A6 */	mflr r0
/* 802206D8 0021D2B8  90 01 00 04 */	stw r0, 4(r1)
/* 802206DC 0021D2BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802206E0 0021D2C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802206E4 0021D2C4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802206E8 0021D2C8  7C 7E 1B 78 */	mr r30, r3
/* 802206EC 0021D2CC  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802206F0 0021D2D0  80 63 00 28 */	lwz r3, 0x28(r3)
/* 802206F4 0021D2D4  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 802206F8 0021D2D8  4B FA 27 D9 */	bl func_801C2ED0
/* 802206FC 0021D2DC  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80220700 0021D2E0  38 7E 00 00 */	addi r3, r30, 0
/* 80220704 0021D2E4  38 A0 00 00 */	li r5, 0
/* 80220708 0021D2E8  4B FA 7A 31 */	bl func_801C8138
/* 8022070C 0021D2EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80220710 0021D2F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80220714 0021D2F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80220718 0021D2F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8022071C 0021D2FC  7C 08 03 A6 */	mtlr r0
/* 80220720 0021D300  4E 80 00 20 */	blr 
/* 80220724 0021D304  38 60 00 00 */	li r3, 0
/* 80220728 0021D308  4E 80 00 20 */	blr 
/* 8022072C 0021D30C  7C 08 02 A6 */	mflr r0
/* 80220730 0021D310  90 01 00 04 */	stw r0, 4(r1)
/* 80220734 0021D314  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80220738 0021D318  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8022073C 0021D31C  7C 7F 1B 78 */	mr r31, r3
/* 80220740 0021D320  4B DF 0E B5 */	bl func_800115F4
/* 80220744 0021D324  7F E3 FB 78 */	mr r3, r31
/* 80220748 0021D328  4B FA 28 99 */	bl func_801C2FE0
/* 8022074C 0021D32C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80220750 0021D330  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80220754 0021D334  38 21 00 18 */	addi r1, r1, 0x18
/* 80220758 0021D338  7C 08 03 A6 */	mtlr r0
/* 8022075C 0021D33C  4E 80 00 20 */	blr 
/* 80220760 0021D340  4E 80 00 20 */	blr 
/* 80220764 0021D344  7C 08 02 A6 */	mflr r0
/* 80220768 0021D348  90 01 00 04 */	stw r0, 4(r1)
/* 8022076C 0021D34C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80220770 0021D350  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80220774 0021D354  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80220778 0021D358  7C 7E 1B 78 */	mr r30, r3
/* 8022077C 0021D35C  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 80220780 0021D360  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80220784 0021D364  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80220788 0021D368  4B FA 27 49 */	bl func_801C2ED0
/* 8022078C 0021D36C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80220790 0021D370  38 7E 00 00 */	addi r3, r30, 0
/* 80220794 0021D374  38 A0 00 00 */	li r5, 0
/* 80220798 0021D378  4B FA 79 A1 */	bl func_801C8138
/* 8022079C 0021D37C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802207A0 0021D380  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802207A4 0021D384  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802207A8 0021D388  38 21 00 20 */	addi r1, r1, 0x20
/* 802207AC 0021D38C  7C 08 03 A6 */	mtlr r0
/* 802207B0 0021D390  4E 80 00 20 */	blr 
/* 802207B4 0021D394  38 60 00 00 */	li r3, 0
/* 802207B8 0021D398  4E 80 00 20 */	blr 
/* 802207BC 0021D39C  7C 08 02 A6 */	mflr r0
/* 802207C0 0021D3A0  90 01 00 04 */	stw r0, 4(r1)
/* 802207C4 0021D3A4  94 21 FF F8 */	stwu r1, -8(r1)
/* 802207C8 0021D3A8  4B FA 28 19 */	bl func_801C2FE0
/* 802207CC 0021D3AC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802207D0 0021D3B0  38 21 00 08 */	addi r1, r1, 8
/* 802207D4 0021D3B4  7C 08 03 A6 */	mtlr r0
/* 802207D8 0021D3B8  4E 80 00 20 */	blr 
/* 802207DC 0021D3BC  4E 80 00 20 */	blr 
/* 802207E0 0021D3C0  38 60 00 00 */	li r3, 0
/* 802207E4 0021D3C4  4E 80 00 20 */	blr 
/* 802207E8 0021D3C8  38 60 00 01 */	li r3, 1
/* 802207EC 0021D3CC  4E 80 00 20 */	blr 
