.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global fwide
fwide:
/* 80326098 00322C78  A0 03 00 04 */	lhz r0, 4(r3)
/* 8032609C 00322C7C  54 00 D7 7F */	rlwinm. r0, r0, 0x1a, 0x1d, 0x1f
/* 803260A0 00322C80  40 82 00 0C */	bne lbl_803260AC
/* 803260A4 00322C84  38 60 00 00 */	li r3, 0
/* 803260A8 00322C88  4E 80 00 20 */	blr 
lbl_803260AC:
/* 803260AC 00322C8C  88 A3 00 05 */	lbz r5, 5(r3)
/* 803260B0 00322C90  54 A0 E7 BE */	rlwinm r0, r5, 0x1c, 0x1e, 0x1f
/* 803260B4 00322C94  2C 00 00 01 */	cmpwi r0, 1
/* 803260B8 00322C98  41 82 00 58 */	beq lbl_80326110
/* 803260BC 00322C9C  40 80 00 10 */	bge lbl_803260CC
/* 803260C0 00322CA0  2C 00 00 00 */	cmpwi r0, 0
/* 803260C4 00322CA4  40 80 00 14 */	bge lbl_803260D8
/* 803260C8 00322CA8  4E 80 00 20 */	blr 
lbl_803260CC:
/* 803260CC 00322CAC  2C 00 00 03 */	cmpwi r0, 3
/* 803260D0 00322CB0  4C 80 00 20 */	bgelr 
/* 803260D4 00322CB4  48 00 00 34 */	b lbl_80326108
lbl_803260D8:
/* 803260D8 00322CB8  2C 04 00 00 */	cmpwi r4, 0
/* 803260DC 00322CBC  40 81 00 14 */	ble lbl_803260F0
/* 803260E0 00322CC0  38 00 00 02 */	li r0, 2
/* 803260E4 00322CC4  50 05 26 B6 */	rlwimi r5, r0, 4, 0x1a, 0x1b
/* 803260E8 00322CC8  98 A3 00 05 */	stb r5, 5(r3)
/* 803260EC 00322CCC  48 00 00 14 */	b lbl_80326100
lbl_803260F0:
/* 803260F0 00322CD0  40 80 00 10 */	bge lbl_80326100
/* 803260F4 00322CD4  38 00 00 01 */	li r0, 1
/* 803260F8 00322CD8  50 05 26 B6 */	rlwimi r5, r0, 4, 0x1a, 0x1b
/* 803260FC 00322CDC  98 A3 00 05 */	stb r5, 5(r3)
lbl_80326100:
/* 80326100 00322CE0  7C 83 23 78 */	mr r3, r4
/* 80326104 00322CE4  4E 80 00 20 */	blr 
lbl_80326108:
/* 80326108 00322CE8  38 60 00 01 */	li r3, 1
/* 8032610C 00322CEC  4E 80 00 20 */	blr 
lbl_80326110:
/* 80326110 00322CF0  38 60 FF FF */	li r3, -1
/* 80326114 00322CF4  4E 80 00 20 */	blr 
