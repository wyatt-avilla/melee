#ifndef _ftemblem_h_
#define _ftemblem_h_

#include <melee/ft/fighter.h>
#include <sysdolphin/baselib/gobj.h>

void ftRoy_OnDeath(HSD_GObj*);
void ftRoy_OnItemPickup(HSD_GObj*, bool);
void ftRoy_OnItemInvisible(HSD_GObj*);
void ftRoy_OnItemVisible(HSD_GObj*);
void ftRoy_OnItemDrop(HSD_GObj*, bool);
void ftRoy_OnLoad(HSD_GObj*);
void ftRoy_LoadSpecialAttrs(HSD_GObj*);
void ftRoy_OnKnockbackEnter(HSD_GObj*);
void ftRoy_OnKnockbackExit(HSD_GObj*);

#endif
