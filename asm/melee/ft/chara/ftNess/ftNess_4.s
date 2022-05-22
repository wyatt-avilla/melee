.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240
.global func_8011659C
func_8011659C:
/* 8011659C 0011317C  7C 08 02 A6 */	mflr r0
/* 801165A0 00113180  38 80 00 00 */	li r4, 0
/* 801165A4 00113184  90 01 00 04 */	stw r0, 4(r1)
/* 801165A8 00113188  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801165AC 0011318C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801165B0 00113190  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801165B4 00113194  7C 7E 1B 78 */	mr r30, r3
/* 801165B8 00113198  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 801165BC 0011319C  88 1F 22 18 */	lbz r0, 0x2218(r31)
/* 801165C0 001131A0  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801165C4 001131A4  98 1F 22 18 */	stb r0, 0x2218(r31)
/* 801165C8 001131A8  90 9F 23 48 */	stw r4, 0x2348(r31)
/* 801165CC 001131AC  4B FF EF 69 */	bl func_80115534
# SPLIT NO LATER THAN HERE
/* 801165D0 001131B0  C0 22 9D 18 */	lfs f1, lbl_804D96F8/*0.0f*/@sda21(r2)
/* 801165D4 001131B4  7F C3 F3 78 */	mr r3, r30
/* 801165D8 001131B8  C0 42 9D 1C */	lfs f2, lbl_804D96FC/*1.0f*/@sda21(r2)
/* 801165DC 001131BC  38 80 01 59 */	li r4, 0x159
/* 801165E0 001131C0  FC 60 08 90 */	fmr f3, f1
/* 801165E4 001131C4  38 A0 00 00 */	li r5, 0
/* 801165E8 001131C8  38 C0 00 00 */	li r6, 0
/* 801165EC 001131CC  4B F5 2D C1 */	bl Fighter_ActionStateChange_800693AC
/* 801165F0 001131D0  7F C3 F3 78 */	mr r3, r30
/* 801165F4 001131D4  4B F5 85 B1 */	bl func_8006EBA4
/* 801165F8 001131D8  88 1F 22 22 */	lbz r0, 0x2222(r31)
/* 801165FC 001131DC  38 60 00 01 */	li r3, 1
/* 80116600 001131E0  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80116604 001131E4  3C 60 80 11 */	lis r3, lbl_80115C74@ha
/* 80116608 001131E8  98 1F 22 22 */	stb r0, 0x2222(r31)
/* 8011660C 001131EC  38 03 5C 74 */	addi r0, r3, lbl_80115C74@l
/* 80116610 001131F0  3C 60 80 11 */	lis r3, lbl_80114EB8@ha
/* 80116614 001131F4  90 1F 21 C0 */	stw r0, 0x21c0(r31)
/* 80116618 001131F8  38 03 4E B8 */	addi r0, r3, lbl_80114EB8@l
/* 8011661C 001131FC  90 1F 21 BC */	stw r0, 0x21bc(r31)
/* 80116620 00113200  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80116624 00113204  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80116628 00113208  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8011662C 0011320C  38 21 00 18 */	addi r1, r1, 0x18
/* 80116630 00113210  7C 08 03 A6 */	mtlr r0
/* 80116634 00113214  4E 80 00 20 */	blr 
.global lbl_80116638
lbl_80116638:
/* 80116638 00113218  7C 08 02 A6 */	mflr r0
/* 8011663C 0011321C  90 01 00 04 */	stw r0, 4(r1)
/* 80116640 00113220  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80116644 00113224  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80116648 00113228  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8011664C 0011322C  7C 7E 1B 78 */	mr r30, r3
/* 80116650 00113230  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 80116654 00113234  80 9F 23 40 */	lwz r4, 0x2340(r31)
/* 80116658 00113238  38 04 00 01 */	addi r0, r4, 1
/* 8011665C 0011323C  90 1F 23 40 */	stw r0, 0x2340(r31)
/* 80116660 00113240  4B FF F1 25 */	bl func_80115784
/* 80116664 00113244  2C 03 00 00 */	cmpwi r3, 0
/* 80116668 00113248  40 82 00 54 */	bne lbl_801166BC
/* 8011666C 0011324C  7F C3 F3 78 */	mr r3, r30
/* 80116670 00113250  4B FF E8 9D */	bl func_80114F0C
/* 80116674 00113254  80 1F 23 40 */	lwz r0, 0x2340(r31)
/* 80116678 00113258  2C 00 00 0D */	cmpwi r0, 0xd
/* 8011667C 0011325C  40 82 00 28 */	bne lbl_801166A4
/* 80116680 00113260  80 1F 23 48 */	lwz r0, 0x2348(r31)
/* 80116684 00113264  2C 00 00 00 */	cmpwi r0, 0
/* 80116688 00113268  40 82 00 1C */	bne lbl_801166A4
/* 8011668C 0011326C  7F C3 F3 78 */	mr r3, r30
/* 80116690 00113270  4B FF ED 75 */	bl func_80115404
/* 80116694 00113274  2C 03 00 00 */	cmpwi r3, 0
/* 80116698 00113278  41 82 00 0C */	beq lbl_801166A4
/* 8011669C 0011327C  7F C3 F3 78 */	mr r3, r30
/* 801166A0 00113280  48 00 02 25 */	bl func_801168C4
lbl_801166A4:
/* 801166A4 00113284  7F C3 F3 78 */	mr r3, r30
/* 801166A8 00113288  4B F5 8B 91 */	bl func_8006F238
/* 801166AC 0011328C  2C 03 00 00 */	cmpwi r3, 0
/* 801166B0 00113290  40 82 00 0C */	bne lbl_801166BC
/* 801166B4 00113294  7F C3 F3 78 */	mr r3, r30
/* 801166B8 00113298  4B F7 3C 05 */	bl func_8008A2BC
lbl_801166BC:
/* 801166BC 0011329C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801166C0 001132A0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801166C4 001132A4  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 801166C8 001132A8  38 21 00 18 */	addi r1, r1, 0x18
/* 801166CC 001132AC  7C 08 03 A6 */	mtlr r0
/* 801166D0 001132B0  4E 80 00 20 */	blr 
.global lbl_801166D4
lbl_801166D4:
/* 801166D4 001132B4  7C 08 02 A6 */	mflr r0
/* 801166D8 001132B8  90 01 00 04 */	stw r0, 4(r1)
/* 801166DC 001132BC  94 21 FF F8 */	stwu r1, -8(r1)
/* 801166E0 001132C0  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 801166E4 001132C4  80 04 06 5C */	lwz r0, 0x65c(r4)
/* 801166E8 001132C8  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 801166EC 001132CC  40 82 00 0C */	bne lbl_801166F8
/* 801166F0 001132D0  38 00 00 01 */	li r0, 1
/* 801166F4 001132D4  90 04 23 48 */	stw r0, 0x2348(r4)
lbl_801166F8:
/* 801166F8 001132D8  88 04 22 18 */	lbz r0, 0x2218(r4)
/* 801166FC 001132DC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80116700 001132E0  41 82 00 08 */	beq lbl_80116708
/* 80116704 001132E4  4B F7 3D D1 */	bl func_8008A4D4
lbl_80116708:
/* 80116708 001132E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8011670C 001132EC  38 21 00 08 */	addi r1, r1, 8
/* 80116710 001132F0  7C 08 03 A6 */	mtlr r0
/* 80116714 001132F4  4E 80 00 20 */	blr 
.global lbl_80116718
lbl_80116718:
/* 80116718 001132F8  7C 08 02 A6 */	mflr r0
/* 8011671C 001132FC  90 01 00 04 */	stw r0, 4(r1)
/* 80116720 00113300  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80116724 00113304  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80116728 00113308  7C 7F 1B 78 */	mr r31, r3
/* 8011672C 0011330C  4B F6 E8 11 */	bl func_80084F3C
/* 80116730 00113310  7F E3 FB 78 */	mr r3, r31
/* 80116734 00113314  4B FF EA B9 */	bl func_801151EC
/* 80116738 00113318  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8011673C 0011331C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80116740 00113320  38 21 00 18 */	addi r1, r1, 0x18
/* 80116744 00113324  7C 08 03 A6 */	mtlr r0
/* 80116748 00113328  4E 80 00 20 */	blr 
.global lbl_8011674C
lbl_8011674C:
/* 8011674C 0011332C  7C 08 02 A6 */	mflr r0
/* 80116750 00113330  90 01 00 04 */	stw r0, 4(r1)
/* 80116754 00113334  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80116758 00113338  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8011675C 0011333C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80116760 00113340  7C 7E 1B 78 */	mr r30, r3
/* 80116764 00113344  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 80116768 00113348  4B F6 D9 9D */	bl func_80084104
/* 8011676C 0011334C  80 1F 00 E0 */	lwz r0, 0xe0(r31)
/* 80116770 00113350  2C 00 00 01 */	cmpwi r0, 1
/* 80116774 00113354  40 82 00 0C */	bne lbl_80116780
/* 80116778 00113358  7F C3 F3 78 */	mr r3, r30
/* 8011677C 0011335C  4B FF F3 7D */	bl func_80115AF8
lbl_80116780:
/* 80116780 00113360  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80116784 00113364  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80116788 00113368  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8011678C 0011336C  38 21 00 18 */	addi r1, r1, 0x18
/* 80116790 00113370  7C 08 03 A6 */	mtlr r0
/* 80116794 00113374  4E 80 00 20 */	blr 
.global lbl_80116798
lbl_80116798:
/* 80116798 00113378  7C 08 02 A6 */	mflr r0
/* 8011679C 0011337C  90 01 00 04 */	stw r0, 4(r1)
/* 801167A0 00113380  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801167A4 00113384  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801167A8 00113388  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801167AC 0011338C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801167B0 00113390  7C 7D 1B 78 */	mr r29, r3
/* 801167B4 00113394  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 801167B8 00113398  80 9F 23 40 */	lwz r4, 0x2340(r31)
/* 801167BC 0011339C  83 DF 02 D4 */	lwz r30, 0x2d4(r31)
/* 801167C0 001133A0  38 04 00 01 */	addi r0, r4, 1
/* 801167C4 001133A4  90 1F 23 40 */	stw r0, 0x2340(r31)
/* 801167C8 001133A8  4B FF F1 D5 */	bl func_8011599C
/* 801167CC 001133AC  7F A3 EB 78 */	mr r3, r29
/* 801167D0 001133B0  4B FF E7 3D */	bl func_80114F0C
/* 801167D4 001133B4  80 7F 23 40 */	lwz r3, 0x2340(r31)
/* 801167D8 001133B8  3C 00 43 30 */	lis r0, 0x4330
/* 801167DC 001133BC  C8 42 9D 20 */	lfd f2, lbl_804D9700/*magic conversion*/@sda21(r2)
/* 801167E0 001133C0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801167E4 001133C4  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 801167E8 001133C8  90 61 00 1C */	stw r3, 0x1c(r1)
/* 801167EC 001133CC  90 01 00 18 */	stw r0, 0x18(r1)
/* 801167F0 001133D0  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 801167F4 001133D4  EC 21 10 28 */	fsubs f1, f1, f2
/* 801167F8 001133D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801167FC 001133DC  4C 41 13 82 */	cror 2, 1, 2
/* 80116800 001133E0  40 82 00 0C */	bne lbl_8011680C
/* 80116804 001133E4  7F A3 EB 78 */	mr r3, r29
/* 80116808 001133E8  48 00 02 E1 */	bl func_80116AE8
lbl_8011680C:
/* 8011680C 001133EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80116810 001133F0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80116814 001133F4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80116818 001133F8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8011681C 001133FC  38 21 00 30 */	addi r1, r1, 0x30
/* 80116820 00113400  7C 08 03 A6 */	mtlr r0
/* 80116824 00113404  4E 80 00 20 */	blr 
.global lbl_80116828
lbl_80116828:
/* 80116828 00113408  7C 08 02 A6 */	mflr r0
/* 8011682C 0011340C  90 01 00 04 */	stw r0, 4(r1)
/* 80116830 00113410  94 21 FF F8 */	stwu r1, -8(r1)
/* 80116834 00113414  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 80116838 00113418  80 04 06 5C */	lwz r0, 0x65c(r4)
/* 8011683C 0011341C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80116840 00113420  40 82 00 08 */	bne lbl_80116848
/* 80116844 00113424  48 00 02 A5 */	bl func_80116AE8
lbl_80116848:
/* 80116848 00113428  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8011684C 0011342C  38 21 00 08 */	addi r1, r1, 8
/* 80116850 00113430  7C 08 03 A6 */	mtlr r0
/* 80116854 00113434  4E 80 00 20 */	blr 
.global lbl_80116858
lbl_80116858:
/* 80116858 00113438  7C 08 02 A6 */	mflr r0
/* 8011685C 0011343C  90 01 00 04 */	stw r0, 4(r1)
/* 80116860 00113440  94 21 FF F8 */	stwu r1, -8(r1)
/* 80116864 00113444  4B F6 E6 D9 */	bl func_80084F3C
/* 80116868 00113448  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8011686C 0011344C  38 21 00 08 */	addi r1, r1, 8
/* 80116870 00113450  7C 08 03 A6 */	mtlr r0
/* 80116874 00113454  4E 80 00 20 */	blr 
.global lbl_80116878
lbl_80116878:
/* 80116878 00113458  7C 08 02 A6 */	mflr r0
/* 8011687C 0011345C  90 01 00 04 */	stw r0, 4(r1)
/* 80116880 00113460  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80116884 00113464  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80116888 00113468  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8011688C 0011346C  7C 7E 1B 78 */	mr r30, r3
/* 80116890 00113470  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 80116894 00113474  4B F6 D8 71 */	bl func_80084104
/* 80116898 00113478  80 1F 00 E0 */	lwz r0, 0xe0(r31)
/* 8011689C 0011347C  2C 00 00 01 */	cmpwi r0, 1
/* 801168A0 00113480  40 82 00 0C */	bne lbl_801168AC
/* 801168A4 00113484  7F C3 F3 78 */	mr r3, r30
/* 801168A8 00113488  4B FF F2 51 */	bl func_80115AF8
lbl_801168AC:
/* 801168AC 0011348C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801168B0 00113490  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801168B4 00113494  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 801168B8 00113498  38 21 00 18 */	addi r1, r1, 0x18
/* 801168BC 0011349C  7C 08 03 A6 */	mtlr r0
/* 801168C0 001134A0  4E 80 00 20 */	blr 

.global func_801168C4
func_801168C4:
/* 801168C4 001134A4  7C 08 02 A6 */	mflr r0
/* 801168C8 001134A8  38 80 01 5A */	li r4, 0x15a
/* 801168CC 001134AC  90 01 00 04 */	stw r0, 4(r1)
/* 801168D0 001134B0  3C A0 00 04 */	lis r5, 4
/* 801168D4 001134B4  38 C0 00 00 */	li r6, 0
/* 801168D8 001134B8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801168DC 001134BC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801168E0 001134C0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801168E4 001134C4  7C 7E 1B 78 */	mr r30, r3
/* 801168E8 001134C8  C0 22 9D 28 */	lfs f1, lbl_804D9708/*12.0f*/@sda21(r2)
/* 801168EC 001134CC  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 801168F0 001134D0  C0 42 9D 1C */	lfs f2, lbl_804D96FC/*1.0f*/@sda21(r2)
/* 801168F4 001134D4  C0 62 9D 18 */	lfs f3, lbl_804D96F8/*0.0f*/@sda21(r2)
/* 801168F8 001134D8  4B F5 2A B5 */	bl Fighter_ActionStateChange_800693AC
/* 801168FC 001134DC  7F C3 F3 78 */	mr r3, r30
/* 80116900 001134E0  4B F5 82 A5 */	bl func_8006EBA4
/* 80116904 001134E4  7F C3 F3 78 */	mr r3, r30
/* 80116908 001134E8  C0 22 9D 18 */	lfs f1, lbl_804D96F8/*0.0f*/@sda21(r2)
/* 8011690C 001134EC  4B F5 88 85 */	bl ftAnim_SetAnimRate
/* 80116910 001134F0  7F C3 F3 78 */	mr r3, r30
/* 80116914 001134F4  4B FF EC 59 */	bl func_8011556C
/* 80116918 001134F8  88 1F 22 22 */	lbz r0, 0x2222(r31)
/* 8011691C 001134FC  38 60 00 01 */	li r3, 1
/* 80116920 00113500  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80116924 00113504  3C 60 80 11 */	lis r3, lbl_80115C74@ha
/* 80116928 00113508  98 1F 22 22 */	stb r0, 0x2222(r31)
/* 8011692C 0011350C  38 03 5C 74 */	addi r0, r3, lbl_80115C74@l
/* 80116930 00113510  3C 60 80 11 */	lis r3, lbl_80114EB8@ha
/* 80116934 00113514  90 1F 21 C0 */	stw r0, 0x21c0(r31)
/* 80116938 00113518  38 03 4E B8 */	addi r0, r3, lbl_80114EB8@l
/* 8011693C 0011351C  90 1F 21 BC */	stw r0, 0x21bc(r31)
/* 80116940 00113520  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80116944 00113524  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80116948 00113528  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8011694C 0011352C  38 21 00 18 */	addi r1, r1, 0x18
/* 80116950 00113530  7C 08 03 A6 */	mtlr r0
/* 80116954 00113534  4E 80 00 20 */	blr 
.global lbl_80116958
lbl_80116958:
/* 80116958 00113538  7C 08 02 A6 */	mflr r0
/* 8011695C 0011353C  90 01 00 04 */	stw r0, 4(r1)
/* 80116960 00113540  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80116964 00113544  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80116968 00113548  7C 7F 1B 78 */	mr r31, r3
/* 8011696C 0011354C  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 80116970 00113550  80 85 23 40 */	lwz r4, 0x2340(r5)
/* 80116974 00113554  38 04 00 01 */	addi r0, r4, 1
/* 80116978 00113558  90 05 23 40 */	stw r0, 0x2340(r5)
/* 8011697C 0011355C  4B FF EE 09 */	bl func_80115784
/* 80116980 00113560  2C 03 00 00 */	cmpwi r3, 0
/* 80116984 00113564  40 82 00 24 */	bne lbl_801169A8
/* 80116988 00113568  7F E3 FB 78 */	mr r3, r31
/* 8011698C 0011356C  4B FF E5 81 */	bl func_80114F0C
/* 80116990 00113570  7F E3 FB 78 */	mr r3, r31
/* 80116994 00113574  4B F5 88 A5 */	bl func_8006F238
/* 80116998 00113578  2C 03 00 00 */	cmpwi r3, 0
/* 8011699C 0011357C  40 82 00 0C */	bne lbl_801169A8
/* 801169A0 00113580  7F E3 FB 78 */	mr r3, r31
/* 801169A4 00113584  4B F7 39 19 */	bl func_8008A2BC
lbl_801169A8:
/* 801169A8 00113588  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801169AC 0011358C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801169B0 00113590  38 21 00 20 */	addi r1, r1, 0x20
/* 801169B4 00113594  7C 08 03 A6 */	mtlr r0
/* 801169B8 00113598  4E 80 00 20 */	blr 
.global lbl_801169BC
lbl_801169BC:
/* 801169BC 0011359C  7C 08 02 A6 */	mflr r0
/* 801169C0 001135A0  90 01 00 04 */	stw r0, 4(r1)
/* 801169C4 001135A4  94 21 FF F8 */	stwu r1, -8(r1)
/* 801169C8 001135A8  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 801169CC 001135AC  88 04 22 18 */	lbz r0, 0x2218(r4)
/* 801169D0 001135B0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801169D4 001135B4  41 82 00 08 */	beq lbl_801169DC
/* 801169D8 001135B8  4B F7 3A FD */	bl func_8008A4D4
lbl_801169DC:
/* 801169DC 001135BC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801169E0 001135C0  38 21 00 08 */	addi r1, r1, 8
/* 801169E4 001135C4  7C 08 03 A6 */	mtlr r0
/* 801169E8 001135C8  4E 80 00 20 */	blr 
.global lbl_801169EC
lbl_801169EC:
/* 801169EC 001135CC  7C 08 02 A6 */	mflr r0
/* 801169F0 001135D0  90 01 00 04 */	stw r0, 4(r1)
/* 801169F4 001135D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801169F8 001135D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801169FC 001135DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80116A00 001135E0  7C 7E 1B 78 */	mr r30, r3
/* 80116A04 001135E4  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 80116A08 001135E8  4B F6 E5 35 */	bl func_80084F3C
/* 80116A0C 001135EC  80 1F 23 40 */	lwz r0, 0x2340(r31)
/* 80116A10 001135F0  2C 00 00 13 */	cmpwi r0, 0x13
/* 80116A14 001135F4  40 80 00 68 */	bge lbl_80116A7C
/* 80116A18 001135F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80116A1C 001135FC  C8 62 9D 20 */	lfd f3, lbl_804D9700/*magic conversion*/@sda21(r2)
/* 80116A20 00113600  90 01 00 14 */	stw r0, 0x14(r1)
/* 80116A24 00113604  3C 00 43 30 */	lis r0, 0x4330
/* 80116A28 00113608  C0 22 9D 30 */	lfs f1, lbl_804D9710/*14.0f*/@sda21(r2)
/* 80116A2C 0011360C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80116A30 00113610  C0 82 9D 2C */	lfs f4, lbl_804D970C/*0.20000000298023224f*/@sda21(r2)
/* 80116A34 00113614  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 80116A38 00113618  C0 02 9D 1C */	lfs f0, lbl_804D96FC/*1.0f*/@sda21(r2)
/* 80116A3C 0011361C  EC 42 18 28 */	fsubs f2, f2, f3
/* 80116A40 00113620  EC 22 08 28 */	fsubs f1, f2, f1
/* 80116A44 00113624  EC 24 00 72 */	fmuls f1, f4, f1
/* 80116A48 00113628  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80116A4C 0011362C  4C 41 13 82 */	cror 2, 1, 2
/* 80116A50 00113630  40 82 00 0C */	bne lbl_80116A5C
/* 80116A54 00113634  FC 20 00 90 */	fmr f1, f0
/* 80116A58 00113638  48 00 00 18 */	b lbl_80116A70
lbl_80116A5C:
/* 80116A5C 0011363C  C0 02 9D 18 */	lfs f0, lbl_804D96F8/*0.0f*/@sda21(r2)
/* 80116A60 00113640  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80116A64 00113644  4C 40 13 82 */	cror 2, 0, 2
/* 80116A68 00113648  40 82 00 08 */	bne lbl_80116A70
/* 80116A6C 0011364C  FC 20 00 90 */	fmr f1, f0
lbl_80116A70:
/* 80116A70 00113650  7F C3 F3 78 */	mr r3, r30
/* 80116A74 00113654  4B FF E8 5D */	bl func_801152D0
/* 80116A78 00113658  48 00 00 0C */	b lbl_80116A84
lbl_80116A7C:
/* 80116A7C 0011365C  7F C3 F3 78 */	mr r3, r30
/* 80116A80 00113660  4B FF E7 6D */	bl func_801151EC
lbl_80116A84:
/* 80116A84 00113664  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80116A88 00113668  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80116A8C 0011366C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80116A90 00113670  38 21 00 20 */	addi r1, r1, 0x20
/* 80116A94 00113674  7C 08 03 A6 */	mtlr r0
/* 80116A98 00113678  4E 80 00 20 */	blr 
.global lbl_80116A9C
lbl_80116A9C:
/* 80116A9C 0011367C  7C 08 02 A6 */	mflr r0
/* 80116AA0 00113680  90 01 00 04 */	stw r0, 4(r1)
/* 80116AA4 00113684  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80116AA8 00113688  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80116AAC 0011368C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80116AB0 00113690  7C 7E 1B 78 */	mr r30, r3
/* 80116AB4 00113694  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 80116AB8 00113698  4B F6 D6 4D */	bl func_80084104
/* 80116ABC 0011369C  80 1F 00 E0 */	lwz r0, 0xe0(r31)
/* 80116AC0 001136A0  2C 00 00 01 */	cmpwi r0, 1
/* 80116AC4 001136A4  40 82 00 0C */	bne lbl_80116AD0
/* 80116AC8 001136A8  7F C3 F3 78 */	mr r3, r30
/* 80116ACC 001136AC  4B FF F0 2D */	bl func_80115AF8
lbl_80116AD0:
/* 80116AD0 001136B0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80116AD4 001136B4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80116AD8 001136B8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80116ADC 001136BC  38 21 00 18 */	addi r1, r1, 0x18
/* 80116AE0 001136C0  7C 08 03 A6 */	mtlr r0
/* 80116AE4 001136C4  4E 80 00 20 */	blr 

.global func_80116AE8
func_80116AE8:
/* 80116AE8 001136C8  7C 08 02 A6 */	mflr r0
/* 80116AEC 001136CC  38 80 01 5B */	li r4, 0x15b
/* 80116AF0 001136D0  90 01 00 04 */	stw r0, 4(r1)
/* 80116AF4 001136D4  3C A0 00 04 */	lis r5, 4
/* 80116AF8 001136D8  38 C0 00 00 */	li r6, 0
/* 80116AFC 001136DC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80116B00 001136E0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80116B04 001136E4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80116B08 001136E8  7C 7E 1B 78 */	mr r30, r3
/* 80116B0C 001136EC  C0 22 9D 34 */	lfs f1, lbl_804D9714/*13.0f*/@sda21(r2)
/* 80116B10 001136F0  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 80116B14 001136F4  C0 42 9D 1C */	lfs f2, lbl_804D96FC/*1.0f*/@sda21(r2)
/* 80116B18 001136F8  C0 62 9D 18 */	lfs f3, lbl_804D96F8/*0.0f*/@sda21(r2)
# SPLIT NO EARLIER THAN HERE
/* 80116B1C 001136FC  4B F5 28 91 */	bl Fighter_ActionStateChange_800693AC
/* 80116B20 00113700  7F C3 F3 78 */	mr r3, r30
/* 80116B24 00113704  4B F5 80 81 */	bl func_8006EBA4
/* 80116B28 00113708  7F C3 F3 78 */	mr r3, r30
/* 80116B2C 0011370C  4B FF EB 55 */	bl func_80115680
/* 80116B30 00113710  88 1F 22 22 */	lbz r0, 0x2222(r31)
/* 80116B34 00113714  38 60 00 01 */	li r3, 1
/* 80116B38 00113718  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80116B3C 0011371C  3C 60 80 11 */	lis r3, lbl_80115C74@ha
/* 80116B40 00113720  98 1F 22 22 */	stb r0, 0x2222(r31)
/* 80116B44 00113724  38 03 5C 74 */	addi r0, r3, lbl_80115C74@l
/* 80116B48 00113728  3C 60 80 11 */	lis r3, lbl_80114EB8@ha
/* 80116B4C 0011372C  90 1F 21 C0 */	stw r0, 0x21c0(r31)
/* 80116B50 00113730  38 03 4E B8 */	addi r0, r3, lbl_80114EB8@l
/* 80116B54 00113734  90 1F 21 BC */	stw r0, 0x21bc(r31)
/* 80116B58 00113738  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80116B5C 0011373C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80116B60 00113740  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80116B64 00113744  38 21 00 18 */	addi r1, r1, 0x18
/* 80116B68 00113748  7C 08 03 A6 */	mtlr r0
/* 80116B6C 0011374C  4E 80 00 20 */	blr 
.section .sdata2
    .balign 8
.global lbl_804D96F8/*0.0f*/
lbl_804D96F8/*0.0f*/:
	.4byte 0x00000000
.global lbl_804D96FC/*1.0f*/
lbl_804D96FC/*1.0f*/:
	.4byte 0x3F800000
.global lbl_804D9700/*magic conversion*/
lbl_804D9700/*magic conversion*/:
	.4byte 0x43300000
	.4byte 0x80000000
.global lbl_804D9708/*12.0f*/
lbl_804D9708/*12.0f*/:
	.4byte 0x41400000
.global lbl_804D970C/*0.20000000298023224f*/
lbl_804D970C/*0.20000000298023224f*/:
	.4byte 0x3E4CCCCD
.global lbl_804D9710/*14.0f*/
lbl_804D9710/*14.0f*/:
	.4byte 0x41600000
.global lbl_804D9714/*13.0f*/
lbl_804D9714/*13.0f*/:
	.4byte 0x41500000