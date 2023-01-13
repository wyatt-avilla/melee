#ifndef MELEE_FT_CHARA_FTLINK_FTLINK_H
#define MELEE_FT_CHARA_FTLINK_FTLINK_H

#include <melee/ft/ftcommon.h>
#include <Runtime/platform.h>
#include <sysdolphin/baselib/gobj.h>

typedef struct _ftLinkAttributes {
    s32 x0;
    s32 x4;
    s32 x8;
    s32 xC;
    s32 x10;
    u8 x14_filler[0x2C - 0x18];
    f32 x28;
    s32 x2C;
    u8 x30_filler[0x48 - 0x30];
    s32 x48;
    s32 x4C;
    s32 x50;
    f32 x54;
    u8 x58_filler[0xBC - 0x58];
    s32 xBC;
    u8 xC0_filler[0xD8 - 0xC0];
    f32 xD8;
} ftLinkAttributes;

void ftLink_OnItemDrop(HSD_GObj* fighter_gobj, bool arg1);
void ftLink_OnItemPickup(HSD_GObj* fighter_gobj, bool bool);
void func_800EC06C(void);
void func_800ECD04(HSD_GObj*);
void func_800ECD58(HSD_GObj*);
void ftLink_OnLoadForCLink(Fighter* fp);
void ftLink_LoadSpecialAttrs(HSD_GObj* fighter_gobj);
void func_800EAF58(HSD_GObj*);

#endif
