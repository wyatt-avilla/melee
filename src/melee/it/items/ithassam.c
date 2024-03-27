#include <platform.h>
#include "ft/forward.h"
#include "it/forward.h"

#include "ithassam.h"

#include "cm/camera.h"
#include "ef/eflib.h"
#include "ft/ftlib.h"
#include "ft/inlines.h"
#include "gm/gm_1601.h"
#include "it/inlines.h"
#include "it/it_266F.h"
#include "it/it_26B1.h"
#include "it/it_2725.h"
#include "it/item.h"
#include "it/types.h"
#include "lb/lbrefract.h"
#include "lb/lbvector.h"

#include <placeholder.h>
#include <baselib/gobj.h>
#include <baselib/jobj.h>

bool it_802CE0C4(Item_GObj*); /* static */
void it_802CE400(Item_GObj*); /* static */
void it_802CE640(Item_GObj*); /* static */
void it_802CDCB4(Item_GObj*); /* static */
bool it_802CDD24(Item_GObj*); /* static */
void it_802CE008(Item_GObj*); /* static */

void it_802CDBE0(Item_GObj* gobj)
{
    Item* ip = GET_ITEM(gobj);
    Article* ap = ip->xC4_article_data;
    HassamVars* attr = ap->x4_specialAttributes;

    PAD_STACK(12);

    it_80279C48(gobj, ap);
    ip->xDAC_itcmd_var0 = 0;
    ip->xDB0_itcmd_var1 = 0;
    it_80279CDC(gobj, attr->x0);
    it_802CE640(gobj);
    Item_8026AE84(ip, 0x2721, 0x7F, 0x40);
}

void it_802CDC5C(Item_GObj* gobj) {}

void it_802CDC60(Item_GObj* gobj, Item_GObj* ref)
{
    it_8026B894(gobj, ref);
}

void it_802CDC80(Item_GObj* gobj)
{
    PAD_STACK(12);

    it_80273454(gobj);
    it_802CDCB4(gobj);
}

void it_802CDCB4(Item_GObj* gobj)
{
    Item* ip = GET_ITEM(gobj);

    Item_80268E5C(gobj, 0, ITEM_ANIM_UPDATE);
    ip->entered_hitlag = efLib_PauseAll;
    ip->exited_hitlag = efLib_ResumeAll;
    it_8027A13C(gobj);
    it_8027A160(ip->xBBC_dynamicBoneTable->bones[2], ip);
}

bool it_802CDD24(Item_GObj* gobj)
{
    Item* ip = GET_ITEM(gobj);

    it_8027A160(ip->xBBC_dynamicBoneTable->bones[2], ip);
    if (it_80272C6C(gobj) == false) {
        it_802CE008(gobj);
    }
    return false;
}

void it_802CDD78(Item_GObj* gobj)
{
    ItemAttr* temp_r4;
    Item* ip = GET_ITEM(gobj);

    it_8027A344(gobj);
    if (ip->ground_or_air == GA_Air) {
        temp_r4 = ip->xCC_item_attr;
        it_80272860(gobj, temp_r4->x10_fall_speed,
                    temp_r4->x14_fall_speed_max);
    }
}

bool it_802CDDD0(Item_GObj* gobj)
{
    Item* ip = GET_ITEM(gobj);

    if (ip->ground_or_air == GA_Air) {
        it_8026E15C(gobj, it_802CDC5C);
    } else {
        it_8026D62C(gobj, it_802CDC5C);
    }
    return false;
}

Item_GObj* it_802CDE1C(Vec3* vec, Item_GObj* gobj)
{
    Vec3 sp20;
    Item_GObj* var_r28;
    Fighter_GObj* cur;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f4;
    f32 var_f31;
    Fighter* fp;
    Item* ip;

    PAD_STACK(8);

    var_f31 = F32_MAX;
    if (gobj != NULL) {
        ip = GET_ITEM(gobj);
    } else {
        ip = NULL;
    }
    var_r28 = NULL;
    for (cur = HSD_GObj_Entities->fighters; cur != NULL; cur = cur->next) {
        if (ftLib_80086FD4(gobj, cur) == 0) {
            fp = GET_FIGHTER(cur);
            if ((fp->x221F_b3 == false) &&
                ((gm_8016B168() == 0) || (ip == NULL) ||
                 (fp->x61B_team != ip->x5D4_hitboxes[0].hit.x46[1])))
            {
                ftLib_800866DC(cur, &sp20);
                temp_f2 = vec->y;
                temp_f4 = temp_f2 - sp20.y;
                temp_f1 = vec->x - sp20.x;
                temp_f0 = (temp_f1 * temp_f1) + (temp_f4 * temp_f4);
                if ((temp_f0 < var_f31) && (sp20.y > temp_f2)) {
                    var_f31 = temp_f0;
                    var_r28 = cur;
                }
            }
        }
    }
    if (var_r28 == NULL) {
        var_r28 = ftLib_8008627C(vec, gobj);
    }
    return var_r28;
}

void it_802CDF28(Item_GObj* gobj)
{
    Vec3 sp1C;
    Vec3 sp10;
    Item_GObj* var_r3;
    f32 temp_f1;

    Item* ip = GET_ITEM(gobj);
    HassamVars* attr = ip->xC4_article_data->x4_specialAttributes;

    var_r3 = it_802CDE1C(&ip->pos, ip->owner);
    if (var_r3 == NULL) {
        var_r3 = ip->owner;
    }
    ftLib_800866DC(var_r3, &sp1C);
    sp1C.y += attr->x8;
    lbVector_Diff(&sp1C, &ip->pos, &sp10);
    ip->xDD4_itemVar.hassam.x5C.x = attr->x4;
    ip->xDD4_itemVar.hassam.x5C.y = 0.0F;
    ip->xDD4_itemVar.hassam.x5C.z = 0.0F;
    lbVector_Rotate(&ip->xDD4_itemVar.hassam.x5C, 4, atan2f(sp10.y, sp10.x));
    temp_f1 = ip->xDD4_itemVar.hassam.x5C.y;
    ip->xDD4_itemVar.hassam.x5C.y = temp_f1 + attr->xC;
    ip->x40_vel.x = ip->xDD4_itemVar.hassam.x5C.x;
    ip->x40_vel.y = ip->xDD4_itemVar.hassam.x5C.y;
    ip->x40_vel.z = ip->xDD4_itemVar.hassam.x5C.z;
    it_80272980(gobj, temp_f1);
}

void it_802CE008(Item_GObj* gobj)
{
    Item* ip = GET_ITEM(gobj);
    HassamVars* attr = ip->xC4_article_data->x4_specialAttributes;

    Item_80268E5C(gobj, 1, ITEM_ANIM_UPDATE);
    ip->entered_hitlag = efLib_PauseAll;
    ip->exited_hitlag = efLib_ResumeAll;
    it_8027A160(ip->xBBC_dynamicBoneTable->bones[2], ip);
    ip->xD44_lifeTimer = attr->x18;
    ip->x40_vel.x = attr->x4 * ip->facing_dir;
    ip->xDD4_itemVar.hassam.x5C.x = attr->x4 * ip->facing_dir;
    ip->xDD4_itemVar.hassam.x5C.z = ip->xDD4_itemVar.hassam.x5C.y = 0.0F;
}

bool it_802CE0C4(HSD_GObj* gobj)
{
    Item* ip;
    f32 temp_f1;
    HSD_JObj* jobj;
    HassamVars* attr;

    ip = GET_ITEM(gobj);
    attr = ip->xC4_article_data->x4_specialAttributes;
    if (it_80272C6C(gobj) == 0) {
        Item_80268E5C(gobj, 1, ITEM_ANIM_UPDATE);
        ip->entered_hitlag = efLib_PauseAll;
        ip->exited_hitlag = efLib_ResumeAll;
    }
    it_8027A160(ip->xBBC_dynamicBoneTable->bones[2], ip);
    if (ip->xDB0_itcmd_var1 != 0) {
        jobj = GET_JOBJ(gobj);

        ip->xDD4_itemVar.hassam.x68 = HSD_JObjGetRotationY(jobj);
        ip->xDD4_itemVar.hassam.x68 += 0.017453292F * (0xB4 / attr->x20);
        HSD_JObjSetRotationY(jobj, ip->xDD4_itemVar.hassam.x68);

        if (++ip->xDB0_itcmd_var1 > (u32) attr->x20) {
            ip->xDB0_itcmd_var1 = 0;
        }
    }

    if (--ip->xD44_lifeTimer < 0.0F) {
        if (ip->xDAC_itcmd_var0 != 0) {
            it_802CE400(gobj);
        } else {
            temp_f1 = ip->facing_dir;
            it_802CDF28(gobj);
            if (temp_f1 != ip->facing_dir) {
                ip->xDB0_itcmd_var1 = 1;
            }
            ip->xDAC_itcmd_var0 = 1;
            ip->xD44_lifeTimer = attr->x1C;
            it_802762BC(ip);
        }
    }
    return false;
}

void it_802CE308(Item_GObj* gobj)
{
    Item* ip = GET_ITEM(gobj);
    HassamVars* attr = ip->xC4_article_data->x4_specialAttributes;

    it_8027A344(gobj);
    if (ip->ground_or_air == GA_Air) {
        ip->xDD4_itemVar.hassam.x5C.y -= attr->x14;
        if (ip->xDD4_itemVar.hassam.x5C.y < -attr->x10) {
            ip->xDD4_itemVar.hassam.x5C.y = attr->x10;
        }
    }
    ip->x40_vel.x += ip->xDD4_itemVar.hassam.x5C.x;
    ip->x40_vel.y += ip->xDD4_itemVar.hassam.x5C.y;
    ip->x40_vel.z += ip->xDD4_itemVar.hassam.x5C.z;
}

bool it_802CE3A8(Item_GObj* gobj)
{
    Item* ip = GET_ITEM(gobj);

    if (ip->xDAC_itcmd_var0 == 0) {
        if (ip->ground_or_air == GA_Air) {
            it_8026E15C(gobj, it_802CDC5C);
        } else {
            it_8026D62C(gobj, it_802CDC5C);
        }
    }
    return false;
}

void it_802CE400(Item_GObj* gobj)
{
    Vec3 sp1C;
    Vec3 sp10;

    Item* ip = GET_ITEM(gobj);
    HSD_JObj* jobj = GET_JOBJ(gobj);
    HassamVars* attr = ip->xC4_article_data->x4_specialAttributes;

    Item_80268E5C(gobj, 2, ITEM_ANIM_UPDATE);
    ip->entered_hitlag = efLib_PauseAll;
    ip->exited_hitlag = efLib_ResumeAll;
    it_8027A160(ip->xBBC_dynamicBoneTable->bones[2], ip);
    Camera_80030788(&sp1C);
    lbVector_Diff(&sp1C, &ip->pos, &sp10);
    lbVector_Normalize(&sp10);
    sp10.x = sp10.x * attr->x4;
    sp10.y = sp10.y * attr->x4;
    sp10.z = sp10.z * attr->x4;

    ip->xDD4_itemVar.hassam.x5C.x = sp10.x;
    ip->xDD4_itemVar.hassam.x5C.y = sp10.y;
    ip->xDD4_itemVar.hassam.x5C.z = sp10.z;
    ip->facing_dir = ip->x40_vel.z = ip->x40_vel.y = ip->x40_vel.x = 0.0F;

    HSD_JObjSetRotationY(jobj, 0.0F);
}

bool it_802CE588(Item_GObj* gobj)
{
    Item* ip = GET_ITEM(gobj);

    it_8027A160(ip->xBBC_dynamicBoneTable->bones[2], ip);
    if (it_80272C6C(gobj) == false) {
        return true;
    }
    return false;
}

void it_802CE5DC(Item_GObj* gobj)
{
    Item* ip = GET_ITEM(gobj);

    it_8027A344(gobj);
    ip->pos.x += ip->xDD4_itemVar.hassam.x5C.x;
    ip->pos.y += ip->xDD4_itemVar.hassam.x5C.y;
    ip->pos.z += ip->xDD4_itemVar.hassam.x5C.z;
}

bool it_802CE638(Item_GObj* gobj)
{
    return false;
}

void it_802CE640(Item_GObj* gobj)
{
    Item* ip = gobj->user_data;

    it_802762BC(ip);
    Item_80268E5C(gobj, 3, ITEM_ANIM_UPDATE);
    ip->entered_hitlag = efLib_PauseAll;
    ip->exited_hitlag = efLib_ResumeAll;
}

bool it_802CE6A4(Item_GObj* gobj)
{
    it_80279FF8(gobj);
    return false;
}

void it_802CE6C8(Item_GObj* gobj)
{
    it_8027A09C(gobj);
}

bool it_802CE6E8(Item_GObj* gobj)
{
    return it_8027A118(gobj, it_802CDC80);
}

ItemStateTable it_803F7CF8[] = {
    { 0, it_802CDD24, it_802CDD78, it_802CDDD0 },
    { 1, it_802CE0C4, it_802CE308, it_802CE3A8 },
    { 2, it_802CE588, it_802CE5DC, it_802CE638 },
    { -1, it_802CE6A4, it_802CE6C8, it_802CE6E8 },
};
