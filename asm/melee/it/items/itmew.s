.include "macros.inc"

.section .text

.global it_802D3B18
it_802D3B18:
/* 802D3B18 002D06F8  7C 08 02 A6 */	mflr r0
/* 802D3B1C 002D06FC  90 01 00 04 */	stw r0, 4(r1)
/* 802D3B20 002D0700  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D3B24 002D0704  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D3B28 002D0708  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802D3B2C 002D070C  7C 7E 1B 78 */	mr r30, r3
/* 802D3B30 002D0710  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 802D3B34 002D0714  C0 02 DA D8 */	lfs f0, it_804DD4B8@sda21(r2)
/* 802D3B38 002D0718  80 85 00 C4 */	lwz r4, 0xc4(r5)
/* 802D3B3C 002D071C  83 E4 00 04 */	lwz r31, 4(r4)
/* 802D3B40 002D0720  D0 05 00 2C */	stfs f0, 0x2c(r5)
/* 802D3B44 002D0724  48 00 02 51 */	bl it_802D3D94
/* 802D3B48 002D0728  7F C3 F3 78 */	mr r3, r30
/* 802D3B4C 002D072C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 802D3B50 002D0730  4B FA 61 8D */	bl it_80279CDC
/* 802D3B54 002D0734  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D3B58 002D0738  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D3B5C 002D073C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802D3B60 002D0740  38 21 00 18 */	addi r1, r1, 0x18
/* 802D3B64 002D0744  7C 08 03 A6 */	mtlr r0
/* 802D3B68 002D0748  4E 80 00 20 */	blr

.global it_802D3B6C
it_802D3B6C:
/* 802D3B6C 002D074C  7C 08 02 A6 */	mflr r0
/* 802D3B70 002D0750  90 01 00 04 */	stw r0, 4(r1)
/* 802D3B74 002D0754  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D3B78 002D0758  4B F9 7D 1D */	bl it_8026B894
/* 802D3B7C 002D075C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D3B80 002D0760  38 21 00 08 */	addi r1, r1, 8
/* 802D3B84 002D0764  7C 08 03 A6 */	mtlr r0
/* 802D3B88 002D0768  4E 80 00 20 */	blr

.global it_802D3B8C
it_802D3B8C:
/* 802D3B8C 002D076C  7C 08 02 A6 */	mflr r0
/* 802D3B90 002D0770  90 01 00 04 */	stw r0, 4(r1)
/* 802D3B94 002D0774  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D3B98 002D0778  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D3B9C 002D077C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802D3BA0 002D0780  7C 7E 1B 78 */	mr r30, r3
/* 802D3BA4 002D0784  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D3BA8 002D0788  4B F9 F8 AD */	bl it_80273454
/* 802D3BAC 002D078C  7F C3 F3 78 */	mr r3, r30
/* 802D3BB0 002D0790  48 00 00 31 */	bl it_802D3BE0
/* 802D3BB4 002D0794  38 7F 00 00 */	addi r3, r31, 0
/* 802D3BB8 002D0798  38 80 27 29 */	li r4, 0x2729
/* 802D3BBC 002D079C  38 A0 00 7F */	li r5, 0x7f
/* 802D3BC0 002D07A0  38 C0 00 40 */	li r6, 0x40
/* 802D3BC4 002D07A4  4B F9 72 C1 */	bl Item_8026AE84
/* 802D3BC8 002D07A8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D3BCC 002D07AC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D3BD0 002D07B0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802D3BD4 002D07B4  38 21 00 18 */	addi r1, r1, 0x18
/* 802D3BD8 002D07B8  7C 08 03 A6 */	mtlr r0
/* 802D3BDC 002D07BC  4E 80 00 20 */	blr

.global it_802D3BE0
it_802D3BE0:
/* 802D3BE0 002D07C0  7C 08 02 A6 */	mflr r0
/* 802D3BE4 002D07C4  90 01 00 04 */	stw r0, 4(r1)
/* 802D3BE8 002D07C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D3BEC 002D07CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D3BF0 002D07D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D3BF4 002D07D4  7C 7E 1B 78 */	mr r30, r3
/* 802D3BF8 002D07D8  7F C4 F3 78 */	mr r4, r30
/* 802D3BFC 002D07DC  C0 22 DA DC */	lfs f1, it_804DD4BC@sda21(r2)
/* 802D3C00 002D07E0  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 802D3C04 002D07E4  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D3C08 002D07E8  38 60 04 6B */	li r3, 0x46b
/* 802D3C0C 002D07EC  4B FA 71 E1 */	bl it_8027ADEC
/* 802D3C10 002D07F0  38 7E 00 00 */	addi r3, r30, 0
/* 802D3C14 002D07F4  38 80 00 01 */	li r4, 1
/* 802D3C18 002D07F8  38 A0 00 02 */	li r5, 2
/* 802D3C1C 002D07FC  4B F9 52 41 */	bl Item_80268E5C
/* 802D3C20 002D0800  3C 60 80 06 */	lis r3, efLib_PauseAll@ha
/* 802D3C24 002D0804  38 03 BA 40 */	addi r0, r3, efLib_PauseAll@l
/* 802D3C28 002D0808  3C 60 80 06 */	lis r3, efLib_ResumeAll@ha
/* 802D3C2C 002D080C  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 802D3C30 002D0810  38 03 BA C4 */	addi r0, r3, efLib_ResumeAll@l
/* 802D3C34 002D0814  90 1F 0D 2C */	stw r0, 0xd2c(r31)
/* 802D3C38 002D0818  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D3C3C 002D081C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D3C40 002D0820  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D3C44 002D0824  38 21 00 20 */	addi r1, r1, 0x20
/* 802D3C48 002D0828  7C 08 03 A6 */	mtlr r0
/* 802D3C4C 002D082C  4E 80 00 20 */	blr

.global it_802D3C50
it_802D3C50:
/* 802D3C50 002D0830  7C 08 02 A6 */	mflr r0
/* 802D3C54 002D0834  90 01 00 04 */	stw r0, 4(r1)
/* 802D3C58 002D0838  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D3C5C 002D083C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D3C60 002D0840  7C 7F 1B 78 */	mr r31, r3
/* 802D3C64 002D0844  4B F9 F0 09 */	bl it_80272C6C
/* 802D3C68 002D0848  2C 03 00 00 */	cmpwi r3, 0
/* 802D3C6C 002D084C  40 82 00 0C */	bne .L_802D3C78
/* 802D3C70 002D0850  7F E3 FB 78 */	mr r3, r31
/* 802D3C74 002D0854  48 00 00 29 */	bl it_802D3C9C
.L_802D3C78:
/* 802D3C78 002D0858  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D3C7C 002D085C  38 60 00 00 */	li r3, 0
/* 802D3C80 002D0860  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D3C84 002D0864  38 21 00 18 */	addi r1, r1, 0x18
/* 802D3C88 002D0868  7C 08 03 A6 */	mtlr r0
/* 802D3C8C 002D086C  4E 80 00 20 */	blr

.global it_802D3C90
it_802D3C90:
/* 802D3C90 002D0870  4E 80 00 20 */	blr

.global it_802D3C94
it_802D3C94:
/* 802D3C94 002D0874  38 60 00 00 */	li r3, 0
/* 802D3C98 002D0878  4E 80 00 20 */	blr

.global it_802D3C9C
it_802D3C9C:
/* 802D3C9C 002D087C  7C 08 02 A6 */	mflr r0
/* 802D3CA0 002D0880  38 80 00 02 */	li r4, 2
/* 802D3CA4 002D0884  90 01 00 04 */	stw r0, 4(r1)
/* 802D3CA8 002D0888  38 A0 00 02 */	li r5, 2
/* 802D3CAC 002D088C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D3CB0 002D0890  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D3CB4 002D0894  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802D3CB8 002D0898  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D3CBC 002D089C  80 DF 00 C4 */	lwz r6, 0xc4(r31)
/* 802D3CC0 002D08A0  83 C6 00 04 */	lwz r30, 4(r6)
/* 802D3CC4 002D08A4  4B F9 51 99 */	bl Item_80268E5C
/* 802D3CC8 002D08A8  3C 60 80 06 */	lis r3, efLib_PauseAll@ha
/* 802D3CCC 002D08AC  38 03 BA 40 */	addi r0, r3, efLib_PauseAll@l
/* 802D3CD0 002D08B0  3C 60 80 06 */	lis r3, efLib_ResumeAll@ha
/* 802D3CD4 002D08B4  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 802D3CD8 002D08B8  38 03 BA C4 */	addi r0, r3, efLib_ResumeAll@l
/* 802D3CDC 002D08BC  90 1F 0D 2C */	stw r0, 0xd2c(r31)
/* 802D3CE0 002D08C0  38 60 00 02 */	li r3, 2
/* 802D3CE4 002D08C4  48 0A C8 9D */	bl HSD_Randi
/* 802D3CE8 002D08C8  2C 03 00 00 */	cmpwi r3, 0
/* 802D3CEC 002D08CC  41 82 00 10 */	beq .L_802D3CFC
/* 802D3CF0 002D08D0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 802D3CF4 002D08D4  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 802D3CF8 002D08D8  48 00 00 10 */	b .L_802D3D08
.L_802D3CFC:
/* 802D3CFC 002D08DC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 802D3D00 002D08E0  FC 00 00 50 */	fneg f0, f0
/* 802D3D04 002D08E4  D0 1F 00 40 */	stfs f0, 0x40(r31)
.L_802D3D08:
/* 802D3D08 002D08E8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 802D3D0C 002D08EC  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 802D3D10 002D08F0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D3D14 002D08F4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D3D18 002D08F8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802D3D1C 002D08FC  38 21 00 18 */	addi r1, r1, 0x18
/* 802D3D20 002D0900  7C 08 03 A6 */	mtlr r0
/* 802D3D24 002D0904  4E 80 00 20 */	blr

.global it_802D3D28
it_802D3D28:
/* 802D3D28 002D0908  7C 08 02 A6 */	mflr r0
/* 802D3D2C 002D090C  90 01 00 04 */	stw r0, 4(r1)
/* 802D3D30 002D0910  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D3D34 002D0914  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D3D38 002D0918  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D3D3C 002D091C  4B F5 0E 2D */	bl Stage_GetBlastZoneTopOffset
/* 802D3D40 002D0920  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 802D3D44 002D0924  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802D3D48 002D0928  40 81 00 0C */	ble .L_802D3D54
/* 802D3D4C 002D092C  38 60 00 01 */	li r3, 1
/* 802D3D50 002D0930  48 00 00 08 */	b .L_802D3D58
.L_802D3D54:
/* 802D3D54 002D0934  38 60 00 00 */	li r3, 0
.L_802D3D58:
/* 802D3D58 002D0938  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D3D5C 002D093C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D3D60 002D0940  38 21 00 18 */	addi r1, r1, 0x18
/* 802D3D64 002D0944  7C 08 03 A6 */	mtlr r0
/* 802D3D68 002D0948  4E 80 00 20 */	blr

.global it_802D3D6C
it_802D3D6C:
/* 802D3D6C 002D094C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802D3D70 002D0950  80 64 00 C4 */	lwz r3, 0xc4(r4)
/* 802D3D74 002D0954  C0 24 00 44 */	lfs f1, 0x44(r4)
/* 802D3D78 002D0958  80 63 00 04 */	lwz r3, 4(r3)
/* 802D3D7C 002D095C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 802D3D80 002D0960  EC 01 00 2A */	fadds f0, f1, f0
/* 802D3D84 002D0964  D0 04 00 44 */	stfs f0, 0x44(r4)
/* 802D3D88 002D0968  4E 80 00 20 */	blr

.global it_802D3D8C
it_802D3D8C:
/* 802D3D8C 002D096C  38 60 00 00 */	li r3, 0
/* 802D3D90 002D0970  4E 80 00 20 */	blr

.global it_802D3D94
it_802D3D94:
/* 802D3D94 002D0974  7C 08 02 A6 */	mflr r0
/* 802D3D98 002D0978  90 01 00 04 */	stw r0, 4(r1)
/* 802D3D9C 002D097C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D3DA0 002D0980  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D3DA4 002D0984  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802D3DA8 002D0988  7C 7E 1B 78 */	mr r30, r3
/* 802D3DAC 002D098C  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D3DB0 002D0990  7F E3 FB 78 */	mr r3, r31
/* 802D3DB4 002D0994  4B FA 25 09 */	bl it_802762BC
/* 802D3DB8 002D0998  38 7E 00 00 */	addi r3, r30, 0
/* 802D3DBC 002D099C  38 80 00 00 */	li r4, 0
/* 802D3DC0 002D09A0  38 A0 00 02 */	li r5, 2
/* 802D3DC4 002D09A4  4B F9 50 99 */	bl Item_80268E5C
/* 802D3DC8 002D09A8  3C 60 80 06 */	lis r3, efLib_PauseAll@ha
/* 802D3DCC 002D09AC  38 03 BA 40 */	addi r0, r3, efLib_PauseAll@l
/* 802D3DD0 002D09B0  3C 60 80 06 */	lis r3, efLib_ResumeAll@ha
/* 802D3DD4 002D09B4  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 802D3DD8 002D09B8  38 03 BA C4 */	addi r0, r3, efLib_ResumeAll@l
/* 802D3DDC 002D09BC  90 1F 0D 2C */	stw r0, 0xd2c(r31)
/* 802D3DE0 002D09C0  38 7E 00 00 */	addi r3, r30, 0
/* 802D3DE4 002D09C4  38 80 00 00 */	li r4, 0
/* 802D3DE8 002D09C8  C0 22 DA D8 */	lfs f1, it_804DD4B8@sda21(r2)
/* 802D3DEC 002D09CC  4B F9 F8 85 */	bl it_80273670
/* 802D3DF0 002D09D0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D3DF4 002D09D4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D3DF8 002D09D8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802D3DFC 002D09DC  38 21 00 18 */	addi r1, r1, 0x18
/* 802D3E00 002D09E0  7C 08 03 A6 */	mtlr r0
/* 802D3E04 002D09E4  4E 80 00 20 */	blr

.global it_802D3E08
it_802D3E08:
/* 802D3E08 002D09E8  7C 08 02 A6 */	mflr r0
/* 802D3E0C 002D09EC  90 01 00 04 */	stw r0, 4(r1)
/* 802D3E10 002D09F0  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D3E14 002D09F4  4B FA 61 E5 */	bl it_80279FF8
/* 802D3E18 002D09F8  38 60 00 00 */	li r3, 0
/* 802D3E1C 002D09FC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D3E20 002D0A00  38 21 00 08 */	addi r1, r1, 8
/* 802D3E24 002D0A04  7C 08 03 A6 */	mtlr r0
/* 802D3E28 002D0A08  4E 80 00 20 */	blr

.global it_802D3E2C
it_802D3E2C:
/* 802D3E2C 002D0A0C  7C 08 02 A6 */	mflr r0
/* 802D3E30 002D0A10  90 01 00 04 */	stw r0, 4(r1)
/* 802D3E34 002D0A14  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 802D3E38 002D0A18  93 E1 00 24 */	stw r31, 0x24(r1)
/* 802D3E3C 002D0A1C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 802D3E40 002D0A20  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 802D3E44 002D0A24  7C 7D 1B 78 */	mr r29, r3
/* 802D3E48 002D0A28  4B FA 62 55 */	bl it_8027A09C
/* 802D3E4C 002D0A2C  2C 03 00 00 */	cmpwi r3, 0
/* 802D3E50 002D0A30  41 82 00 64 */	beq .L_802D3EB4
/* 802D3E54 002D0A34  83 FD 00 2C */	lwz r31, 0x2c(r29)
/* 802D3E58 002D0A38  7F A3 EB 78 */	mr r3, r29
/* 802D3E5C 002D0A3C  4B F9 F5 F9 */	bl it_80273454
/* 802D3E60 002D0A40  80 BD 00 28 */	lwz r5, 0x28(r29)
/* 802D3E64 002D0A44  7F A4 EB 78 */	mr r4, r29
/* 802D3E68 002D0A48  83 DD 00 2C */	lwz r30, 0x2c(r29)
/* 802D3E6C 002D0A4C  38 60 04 6B */	li r3, 0x46b
/* 802D3E70 002D0A50  C0 22 DA DC */	lfs f1, it_804DD4BC@sda21(r2)
/* 802D3E74 002D0A54  4B FA 6F 79 */	bl it_8027ADEC
/* 802D3E78 002D0A58  38 7D 00 00 */	addi r3, r29, 0
/* 802D3E7C 002D0A5C  38 80 00 01 */	li r4, 1
/* 802D3E80 002D0A60  38 A0 00 02 */	li r5, 2
/* 802D3E84 002D0A64  4B F9 4F D9 */	bl Item_80268E5C
/* 802D3E88 002D0A68  3C 60 80 06 */	lis r3, efLib_PauseAll@ha
/* 802D3E8C 002D0A6C  38 03 BA 40 */	addi r0, r3, efLib_PauseAll@l
/* 802D3E90 002D0A70  3C 60 80 06 */	lis r3, efLib_ResumeAll@ha
/* 802D3E94 002D0A74  90 1E 0D 28 */	stw r0, 0xd28(r30)
/* 802D3E98 002D0A78  38 03 BA C4 */	addi r0, r3, efLib_ResumeAll@l
/* 802D3E9C 002D0A7C  90 1E 0D 2C */	stw r0, 0xd2c(r30)
/* 802D3EA0 002D0A80  38 7F 00 00 */	addi r3, r31, 0
/* 802D3EA4 002D0A84  38 80 27 29 */	li r4, 0x2729
/* 802D3EA8 002D0A88  38 A0 00 7F */	li r5, 0x7f
/* 802D3EAC 002D0A8C  38 C0 00 40 */	li r6, 0x40
/* 802D3EB0 002D0A90  4B F9 6F D5 */	bl Item_8026AE84
.L_802D3EB4:
/* 802D3EB4 002D0A94  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802D3EB8 002D0A98  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 802D3EBC 002D0A9C  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 802D3EC0 002D0AA0  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 802D3EC4 002D0AA4  38 21 00 28 */	addi r1, r1, 0x28
/* 802D3EC8 002D0AA8  7C 08 03 A6 */	mtlr r0
/* 802D3ECC 002D0AAC  4E 80 00 20 */	blr

.global it_802D3ED0
it_802D3ED0:
/* 802D3ED0 002D0AB0  7C 08 02 A6 */	mflr r0
/* 802D3ED4 002D0AB4  3C 80 80 2D */	lis r4, it_802D3B8C@ha
/* 802D3ED8 002D0AB8  90 01 00 04 */	stw r0, 4(r1)
/* 802D3EDC 002D0ABC  38 84 3B 8C */	addi r4, r4, it_802D3B8C@l
/* 802D3EE0 002D0AC0  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D3EE4 002D0AC4  4B FA 62 35 */	bl it_8027A118
/* 802D3EE8 002D0AC8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D3EEC 002D0ACC  38 21 00 08 */	addi r1, r1, 8
/* 802D3EF0 002D0AD0  7C 08 03 A6 */	mtlr r0
/* 802D3EF4 002D0AD4  4E 80 00 20 */	blr


.section .data
    .balign 8
.global it_803F80C8
it_803F80C8:
    .4byte 0
    .4byte it_802D3E08
    .4byte it_802D3E2C
    .4byte it_802D3ED0
    .4byte 1
    .4byte it_802D3C50
    .4byte it_802D3C90
    .4byte it_802D3C94
    .4byte 2
    .4byte it_802D3D28
    .4byte it_802D3D6C
    .4byte it_802D3D8C


.section .sdata2
    .balign 8
.global it_804DD4B8
it_804DD4B8:
    .4byte 0x00000000
.global it_804DD4BC
it_804DD4BC:
    .4byte 0x40333333