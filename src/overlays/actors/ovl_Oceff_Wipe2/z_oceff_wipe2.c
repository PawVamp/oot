/*
 * File: z_oceff_wipe2.c
 * Overlay: ovl_Oceff_Wipe2
 * Description: Epona's Song Effect
 */

#include "z_oceff_wipe2.h"
#include <vt.h>

#define FLAGS 0x02000010

#define THIS ((OceffWipe2*)thisx)

void OceffWipe2_Init(Actor* thisx, GlobalContext* globalCtx);
void OceffWipe2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void OceffWipe2_Update(Actor* thisx, GlobalContext* globalCtx);
void OceffWipe2_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Oceff_Wipe2_InitVars = {
    ACTOR_OCEFF_WIPE2,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(OceffWipe2),
    (ActorFunc)OceffWipe2_Init,
    (ActorFunc)OceffWipe2_Destroy,
    (ActorFunc)OceffWipe2_Update,
    (ActorFunc)OceffWipe2_Draw,
};

#include "z_oceff_wipe2_gfx.c"

void OceffWipe2_Init(Actor* thisx, GlobalContext* globalCtx) {
    OceffWipe2* this = THIS;
    Actor_SetScale(&this->actor, 0.1f);
    this->counter = 0;
    this->actor.posRot.pos = ACTIVE_CAM->eye;
    osSyncPrintf(VT_FGCOL(CYAN) " WIPE2 arg_data = %d\n" VT_RST, this->actor.params);
}

void OceffWipe2_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    OceffWipe2* this = THIS;
    Player* player = PLAYER;

    func_800876C8(globalCtx);
    if (gSaveContext.nayrusLoveTimer) {
        player->unk_692 |= 0x40;
    }
}

void OceffWipe2_Update(Actor* thisx, GlobalContext* globalCtx) {
    OceffWipe2* this = THIS;
    this->actor.posRot.pos = ACTIVE_CAM->eye;
    if (this->counter < 100) {
        this->counter++;
    } else {
        Actor_Kill(&this->actor);
    }
}

void OceffWipe2_Draw(Actor* thisx, GlobalContext* globalCtx) {
    u32 scroll;
    OceffWipe2* this;
    f32 z;
    GraphicsContext* gfxCtx;
    u8 alpha;
    u32 pad1;
    Vec3f eye;
    Vtx* vtxPtr;
    Vec3f vec;
    Gfx* dispRefs[5];
    this = THIS;
    scroll = globalCtx->state.frames & 0xFF;

    eye = ACTIVE_CAM->eye;
    func_8005AFB4(&vec, ACTIVE_CAM);
    if (this->counter < 32) {
        z = Math_Sins(this->counter << 9) * 1330;
    } else {
        z = 1330;
    }

    vtxPtr = vertices;
    if (this->counter >= 80) {
        alpha = 12 * (100 - this->counter);
    } else {
        alpha = 0xFF;
    }

    vtxPtr[1].v.cn[3] = vtxPtr[3].v.cn[3] = vtxPtr[5].v.cn[3] = vtxPtr[7].v.cn[3] = vtxPtr[9].v.cn[3] = vtxPtr[11].v.cn[3] =
        vtxPtr[13].v.cn[3] = vtxPtr[15].v.cn[3] = vtxPtr[16].v.cn[3] = vtxPtr[18].v.cn[3] = vtxPtr[20].v.cn[3] = alpha;

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_oceff_wipe2.c", 390);

    func_80093D84(globalCtx->state.gfxCtx);

    Matrix_Translate(eye.x + vec.x, eye.y + vec.y, eye.z + vec.z, MTXMODE_NEW);
    Matrix_Scale(0.1f, 0.1f, 0.1f, MTXMODE_APPLY);
    func_800D1FD4(&globalCtx->mf_11DA0);
    Matrix_Translate(0.0f, 0.0f, -z, MTXMODE_APPLY);

    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_oceff_wipe2.c", 400),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0x00, 0x00, 0xFF, 0xFF, 0xAA, 0xFF);
    gDPSetEnvColor(gfxCtx->polyXlu.p++, 0xFF, 0x64, 0x00, 0x80);
    gSPDisplayList(gfxCtx->polyXlu.p++, textureDl);
    gSPDisplayList(gfxCtx->polyXlu.p++, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, scroll * 6, scroll * (-6), 64, 64,
                                                         1, scroll * (-6), 0, 64, 64));
    gSPDisplayList(gfxCtx->polyXlu.p++, frustrumDl);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_oceff_wipe2.c", 417);
}
