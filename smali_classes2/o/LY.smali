.class public Lo/LY;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""

# interfaces
.implements Lo/CY;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/LY$ActionBar;
    }
.end annotation


# instance fields
.field private b:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/Button;

.field private n:Landroid/view/ViewGroup;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ImageView;

.field private q:Lo/Bc;

.field private r:Lo/AS;

.field private s:Landroid/view/ViewGroup;

.field private t:Landroid/view/ViewGroup;

.field private final v:Landroid/content/BroadcastReceiver;

.field private x:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 331
    new-instance v0, Lo/LY$9;

    invoke-direct {v0, p0}, Lo/LY$9;-><init>(Lo/LY;)V

    iput-object v0, p0, Lo/LY;->v:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private A()V
    .locals 7

    .line 248
    iget-object v0, p0, Lo/LY;->r:Lo/AS;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lo/LY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v0, p0, Lo/LY;->r:Lo/AS;

    invoke-interface {v0}, Lo/AS;->bb()Lo/AK;

    move-result-object v2

    iget-object v0, p0, Lo/LY;->r:Lo/AS;

    invoke-interface {v0}, Lo/AS;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->k:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lo/Mb;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;IZ)Z

    .line 250
    invoke-virtual {p0}, Lo/LY;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/LP;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private B()V
    .locals 3

    .line 224
    iget-object v0, p0, Lo/LY;->n:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 225
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lo/LY;->s:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 227
    invoke-virtual {p0}, Lo/LY;->getActivity()Lo/Serializable;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.netflix.mediaclient.service.ACTION_EXPAND_CAST_PLAYER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/Serializable;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private C()V
    .locals 2

    .line 241
    invoke-virtual {p0}, Lo/LY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lo/Am;->l()Lo/zN;

    move-result-object v1

    instance-of v1, v1, Lo/ko;

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v0}, Lo/Am;->l()Lo/zN;

    move-result-object v0

    check-cast v0, Lo/ko;

    invoke-virtual {v0}, Lo/ko;->q()V

    :cond_0
    return-void
.end method

.method private D()V
    .locals 0

    .line 254
    invoke-direct {p0}, Lo/LY;->g()V

    .line 255
    invoke-direct {p0}, Lo/LY;->x()V

    .line 256
    invoke-direct {p0}, Lo/LY;->E()V

    .line 257
    invoke-direct {p0}, Lo/LY;->z()V

    return-void
.end method

.method private E()V
    .locals 2

    .line 326
    iget-object v0, p0, Lo/LY;->v:Landroid/content/BroadcastReceiver;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_PLAYER_POST_PLAY_ACTION_TITLE_END"

    invoke-virtual {p0, v0, v1}, Lo/LY;->a(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lo/LY;->v:Landroid/content/BroadcastReceiver;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_PLAYER_POST_PLAY_ACTION_TITLE_NEXT"

    invoke-virtual {p0, v0, v1}, Lo/LY;->a(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lo/LY;->v:Landroid/content/BroadcastReceiver;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_PLAYER_POST_PLAY_ACTION_HIDE"

    invoke-virtual {p0, v0, v1}, Lo/LY;->a(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lo/LY;)Landroid/widget/ImageView;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/LY;->x:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic a(Lo/LY;Lo/AS;)Lo/AS;
    .locals 0

    .line 51
    iput-object p1, p0, Lo/LY;->r:Lo/AS;

    return-object p1
.end method

.method private a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Bc;ILandroid/view/View;I)V
    .locals 13

    move-object v6, p0

    move-object v0, p2

    .line 287
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/action/SetThumbRating;

    invoke-static/range {p5 .. p5}, Lo/ShellCallback;->d(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/cl/model/event/session/action/SetThumbRating;-><init>(Ljava/lang/Long;)V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v3

    .line 289
    iget-object v1, v6, Lo/LY;->p:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 290
    iget-object v1, v6, Lo/LY;->x:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 294
    instance-of v1, v0, Lo/AS;

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    check-cast v0, Lo/AS;

    invoke-interface {v0}, Lo/AS;->q()Ljava/lang/String;

    move-result-object v0

    .line 297
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-object v8, v0

    move-object v9, v1

    goto :goto_0

    .line 299
    :cond_0
    invoke-interface {p2}, Lo/Bc;->getId()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-interface {p2}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    move-object v9, v0

    move-object v8, v1

    .line 303
    :goto_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v7

    new-instance v12, Lo/LY$10;

    const-string v2, "CastPlayerPostPlayFrag"

    move-object v0, v12

    move-object v1, p0

    move-object v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lo/LY$10;-><init>(Lo/LY;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;)V

    move/from16 v10, p5

    move/from16 v11, p3

    invoke-interface/range {v7 .. v12}, Lo/zG;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILo/zU;)Z

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .line 87
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nT:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/LY;->b:Landroid/widget/TextView;

    .line 88
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nW:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/LY;->f:Landroid/widget/TextView;

    .line 89
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ob:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/LY;->h:Landroid/widget/TextView;

    .line 90
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ns:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/LY;->i:Landroid/widget/TextView;

    .line 91
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nK:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/LY;->j:Landroid/widget/TextView;

    .line 93
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nZ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lo/LY;->m:Landroid/widget/Button;

    .line 94
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->oe:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/LY;->l:Landroid/widget/ImageView;

    .line 95
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nQ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/LY;->k:Landroid/widget/ImageView;

    .line 96
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nP:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/LY;->o:Landroid/widget/TextView;

    .line 98
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->oi:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lo/LY;->s:Landroid/view/ViewGroup;

    .line 99
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nV:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lo/LY;->n:Landroid/view/ViewGroup;

    .line 100
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->oa:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lo/LY;->t:Landroid/view/ViewGroup;

    .line 101
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->od:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/LY;->p:Landroid/widget/ImageView;

    .line 102
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->oc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lo/LY;->x:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic b(Lo/LY;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lo/LY;->y()V

    return-void
.end method

.method static synthetic b(Lo/LY;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Bc;ILandroid/view/View;I)V
    .locals 0

    .line 51
    invoke-direct/range {p0 .. p5}, Lo/LY;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Bc;ILandroid/view/View;I)V

    return-void
.end method

.method private c(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 232
    invoke-virtual {p0}, Lo/LY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    .line 233
    invoke-static {v0}, Lo/acE;->b(Lo/Am;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {p0}, Lo/LY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v0}, Lo/Am;->l()Lo/zN;

    move-result-object v0

    invoke-interface {v0}, Lo/zN;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lo/Mb;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic c(Lo/LY;)Lo/Bc;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/LY;->q:Lo/Bc;

    return-object p0
.end method

.method private c(Lo/Bc;)V
    .locals 3

    .line 390
    iget-object v0, p0, Lo/LY;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 391
    instance-of v1, p1, Lo/AS;

    if-eqz v1, :cond_0

    .line 392
    move-object v1, p1

    check-cast v1, Lo/AS;

    .line 393
    invoke-interface {v1}, Lo/AS;->bb()Lo/AK;

    move-result-object v1

    invoke-interface {v1}, Lo/AK;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 395
    :cond_0
    invoke-interface {p1}, Lo/Bc;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    :cond_1
    :goto_0
    invoke-interface {p1}, Lo/Bc;->getUserThumbRating()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    goto :goto_1

    .line 401
    :cond_2
    iget-object p1, p0, Lo/LY;->p:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 402
    iget-object p1, p0, Lo/LY;->x:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    .line 405
    :cond_3
    iget-object p1, p0, Lo/LY;->p:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 406
    iget-object p1, p0, Lo/LY;->x:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    .line 409
    :cond_4
    iget-object p1, p0, Lo/LY;->p:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 410
    iget-object p1, p0, Lo/LY;->x:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_1
    return-void
.end method

.method static synthetic c(Lo/LY;Lo/Bc;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lo/LY;->c(Lo/Bc;)V

    return-void
.end method

.method static synthetic d(Lo/LY;)Landroid/widget/ImageView;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/LY;->p:Landroid/widget/ImageView;

    return-object p0
.end method

.method private d(Lo/AS;)V
    .locals 6

    .line 371
    iget-object v0, p0, Lo/LY;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 373
    invoke-interface {p1}, Lo/AS;->ai()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lo/LY;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->gA:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lo/LY;->r:Lo/AS;

    invoke-interface {v4}, Lo/AS;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {p0}, Lo/LY;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->gE:I

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lo/LY;->r:Lo/AS;

    invoke-interface {v5}, Lo/AS;->ag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v2, p0, Lo/LY;->r:Lo/AS;

    .line 377
    invoke-interface {v2}, Lo/AS;->V()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lo/LY;->r:Lo/AS;

    invoke-interface {v2}, Lo/AS;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 376
    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 379
    :goto_0
    iget-object v1, p0, Lo/LY;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    :cond_1
    iget-object v0, p0, Lo/LY;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 383
    invoke-interface {p1}, Lo/AS;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    :cond_2
    invoke-direct {p0}, Lo/LY;->g()V

    return-void
.end method

.method static synthetic e(Lo/LY;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lo/LY;->A()V

    return-void
.end method

.method static synthetic e(Lo/LY;Lo/AS;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lo/LY;->d(Lo/AS;)V

    return-void
.end method

.method static synthetic g(Lo/LY;)Landroid/widget/TextView;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/LY;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method private g()V
    .locals 5

    .line 106
    iget-object v0, p0, Lo/LY;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lo/LY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {v0}, Lo/acE;->b(Lo/Am;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-static {v0}, Lo/acE;->c(Lo/Am;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    iget-object v1, p0, Lo/LY;->h:Landroid/widget/TextView;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->jb:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lo/LY;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lo/LY;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lo/LY;->B()V

    return-void
.end method

.method static synthetic j(Lo/LY;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lo/LY;->v()V

    return-void
.end method

.method private v()V
    .locals 2

    .line 182
    iget-object v0, p0, Lo/LY;->s:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 186
    :cond_0
    iget-object v0, p0, Lo/LY;->n:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private x()V
    .locals 2

    .line 118
    iget-object v0, p0, Lo/LY;->m:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 119
    new-instance v1, Lo/LY$4;

    invoke-direct {v1, p0}, Lo/LY$4;-><init>(Lo/LY;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lo/LY;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 128
    new-instance v1, Lo/LY$1;

    invoke-direct {v1, p0}, Lo/LY$1;-><init>(Lo/LY;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    :cond_1
    iget-object v0, p0, Lo/LY;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 137
    new-instance v1, Lo/LY$3;

    invoke-direct {v1, p0}, Lo/LY$3;-><init>(Lo/LY;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :cond_2
    iget-object v0, p0, Lo/LY;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 146
    new-instance v1, Lo/LY$2;

    invoke-direct {v1, p0}, Lo/LY$2;-><init>(Lo/LY;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method private y()V
    .locals 2

    .line 192
    iget-object v0, p0, Lo/LY;->s:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 196
    :cond_0
    iget-object v0, p0, Lo/LY;->n:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 197
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private z()V
    .locals 2

    .line 261
    new-instance v0, Lo/LY$5;

    invoke-direct {v0, p0}, Lo/LY$5;-><init>(Lo/LY;)V

    .line 281
    iget-object v1, p0, Lo/LY;->p:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v1, p0, Lo/LY;->x:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lo/LY;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()V
    .locals 2

    .line 169
    invoke-virtual {p0}, Lo/LY;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lo/LY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lo/LY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lo/LY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-static {v0}, Lo/acE;->b(Lo/Am;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lo/LY;->C()V

    .line 175
    invoke-virtual {p0}, Lo/LY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_STOP"

    invoke-direct {p0, v1}, Lo/LY;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendIntentToNetflixService(Landroid/content/Intent;)V

    .line 176
    invoke-direct {p0}, Lo/LY;->v()V

    .line 177
    iget-object v0, p0, Lo/LY;->h:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public e(Lo/Bc;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lo/LY;->q:Lo/Bc;

    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 1

    .line 422
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->j:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p2, "CastPlayerPostPlayFrag"

    const-string p3, "Creating new frag view..."

    .line 79
    invoke-static {p2, p3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->t:I

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 81
    invoke-direct {p0, p1}, Lo/LY;->b(Landroid/view/View;)V

    .line 82
    invoke-direct {p0}, Lo/LY;->D()V

    return-object p1
.end method
