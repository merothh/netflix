.class public Lo/DY;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""

# interfaces
.implements Lo/DT;
.implements Lo/Se$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DY$Activity;
    }
.end annotation


# instance fields
.field private A:Lo/Bc;

.field private final B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lo/Ba;

.field private D:I

.field private E:I

.field private F:I

.field private G:Ljava/lang/String;

.field private H:I

.field private I:J

.field private J:I

.field private K:Lo/Bc;

.field private L:Z

.field private M:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field private N:I

.field private P:Lo/BeamShareData;

.field private final Q:Landroid/content/BroadcastReceiver;

.field private R:Lcom/netflix/mediaclient/ui/details/VideoInfo;

.field protected b:Z

.field protected f:I

.field protected h:Ljava/lang/String;

.field protected i:Landroid/os/Parcelable;

.field protected j:I

.field protected k:Lo/UpdateEngine;

.field protected l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

.field protected n:Ljava/lang/String;

.field protected final o:Lo/FI;

.field protected p:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

.field protected q:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

.field protected r:Lo/FO;

.field protected s:Lo/PS;

.field protected t:Landroid/widget/FrameLayout;

.field private u:Lo/DR;

.field private v:Lo/DD;

.field protected w:Z

.field protected x:Lo/Oc;

.field protected y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 119
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lo/DY;->b:Z

    const/4 v1, 0x0

    .line 136
    iput v1, p0, Lo/DY;->j:I

    .line 142
    iput v0, p0, Lo/DY;->f:I

    .line 164
    iput-boolean v1, p0, Lo/DY;->z:Z

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/DY;->B:Ljava/util/List;

    const/4 v0, -0x1

    .line 172
    iput v0, p0, Lo/DY;->D:I

    .line 174
    iput v0, p0, Lo/DY;->E:I

    .line 176
    iput v0, p0, Lo/DY;->F:I

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lo/DY;->G:Ljava/lang/String;

    .line 188
    invoke-static {p0}, Lo/UpdateEngine;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    iput-object v0, p0, Lo/DY;->k:Lo/UpdateEngine;

    .line 190
    new-instance v0, Lo/FI;

    iget-object v2, p0, Lo/DY;->k:Lo/UpdateEngine;

    .line 191
    invoke-virtual {v2}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v2

    invoke-direct {v0, v2}, Lo/FI;-><init>(Lio/reactivex/Observable;)V

    iput-object v0, p0, Lo/DY;->o:Lo/FI;

    .line 206
    sget-object v0, Lcom/netflix/cl/model/AppView;->UNKNOWN:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v0}, Lcom/netflix/cl/model/AppView;->ordinal()I

    move-result v0

    iput v0, p0, Lo/DY;->N:I

    .line 208
    iput v1, p0, Lo/DY;->J:I

    .line 222
    iput-boolean v1, p0, Lo/DY;->w:Z

    .line 229
    iput-boolean v1, p0, Lo/DY;->y:Z

    .line 1560
    new-instance v0, Lo/DY$4;

    invoke-direct {v0, p0}, Lo/DY$4;-><init>(Lo/DY;)V

    iput-object v0, p0, Lo/DY;->Q:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private X()V
    .locals 2

    .line 603
    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 608
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 613
    :cond_1
    invoke-static {}, Lo/adq;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lo/DY;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 615
    :cond_2
    iget-object v0, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v0}, Lo/FO;->m()Lo/DE;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 616
    iget-object v0, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v0}, Lo/FO;->m()Lo/DE;

    move-result-object v0

    new-instance v1, Lo/Ed;

    invoke-direct {v1, p0}, Lo/Ed;-><init>(Lo/DY;)V

    invoke-virtual {v0, v1}, Lo/DE;->c(Lo/DE$Activity;)V

    .line 621
    :cond_3
    invoke-virtual {p0}, Lo/DY;->ad_()Z

    return-void
.end method

.method private Y()V
    .locals 3

    .line 1475
    invoke-virtual {p0}, Lo/DY;->U_()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1477
    invoke-virtual {p0}, Lo/DY;->J()V

    .line 1480
    invoke-virtual {p0}, Lo/DY;->z()Lo/Bc;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1481
    invoke-virtual {p0}, Lo/DY;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lo/DY;->z()Lo/Bc;

    move-result-object v2

    invoke-interface {v2}, Lo/Bc;->aW()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lo/Am;->b(Ljava/lang/String;Z)V

    :cond_0
    const-string v0, "Adtiya"

    const-string v1, "playContext being set"

    .line 1489
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    invoke-virtual {p0}, Lo/DY;->getActivity()Lo/Serializable;

    move-result-object v0

    instance-of v0, v0, Lo/CY;

    if-eqz v0, :cond_1

    .line 1491
    invoke-virtual {p0}, Lo/DY;->getActivity()Lo/Serializable;

    move-result-object v0

    check-cast v0, Lo/CY;

    invoke-interface {v0}, Lo/CY;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    iput-object v0, p0, Lo/DY;->M:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    :cond_1
    return-void
.end method

.method private Z()V
    .locals 3

    .line 1164
    iget-boolean v0, p0, Lo/DY;->z:Z

    if-eqz v0, :cond_5

    const-string v0, "VideoDetailsFragment"

    const-string v1, "Show is \'Day After Broadcast\' (DAB), invalidating episode cache"

    .line 1165
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    invoke-virtual {p0}, Lo/DY;->U_()Lo/Am;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1167
    invoke-virtual {v1}, Lo/Am;->c()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1172
    :cond_0
    iget-object v2, p0, Lo/DY;->C:Lo/Ba;

    if-nez v2, :cond_1

    const-string v1, "No season details yet"

    .line 1173
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1177
    :cond_1
    invoke-interface {v2}, Lo/Ba;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1182
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1183
    invoke-virtual {v1}, Lo/Am;->p()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-virtual {p0}, Lo/DY;->y()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/DY;->C:Lo/Ba;

    invoke-static {v0, v1, v2}, Lo/adS;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging;Ljava/lang/String;Lo/Ba;)V

    return-void

    .line 1187
    :cond_2
    invoke-virtual {v1}, Lo/Am;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    .line 1194
    :cond_3
    invoke-virtual {v1}, Lo/Am;->w()Lo/zG;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-interface {v1, v0, v2}, Lo/zG;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string v1, "Manager is not ready"

    .line 1168
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method private a(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1085
    :goto_0
    iget-object v2, p0, Lo/DY;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1086
    iget-object v2, p0, Lo/DY;->B:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Ba;

    invoke-interface {v2}, Lo/Ba;->X()I

    move-result v2

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1091
    :cond_1
    iget-object p1, p0, Lo/DY;->B:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method static synthetic a(Lo/DY;)Lo/DD;
    .locals 0

    .line 119
    iget-object p0, p0, Lo/DY;->v:Lo/DD;

    return-object p0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lo/DY;
    .locals 3

    .line 235
    new-instance v0, Lo/DY;

    invoke-direct {v0}, Lo/DY;-><init>()V

    .line 236
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_video_id"

    .line 238
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "extra_episode_id"

    .line 239
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "extra_model_view_id"

    .line 241
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "extra_video_type_string_value"

    .line 242
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, v1}, Lo/DY;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 10

    .line 417
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jY:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MenuInflater;

    .line 418
    new-instance v1, Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 419
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->vo:I

    invoke-virtual {v1, p1}, Landroid/widget/ScrollView;->setId(I)V

    const/4 p1, 0x0

    .line 420
    invoke-virtual {v1, p1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 422
    iget-object v2, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    check-cast v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;

    .line 423
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->u()Landroid/widget/LinearLayout;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 430
    :cond_0
    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v3

    invoke-virtual {v2, p1, v3, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 431
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->fn:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 432
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_1

    .line 433
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 434
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v4, v5, p1, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 435
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 437
    :cond_1
    iget-object v3, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v3}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, p1, p1, p1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    const/16 v3, 0xa

    .line 438
    invoke-virtual {v1, p1, p1, v3, p1}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 441
    iget-object v3, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v3, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->removeView(Landroid/view/View;)V

    .line 444
    iget-object v3, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 445
    invoke-virtual {v0, v1}, Lo/MenuInflater;->addView(Landroid/view/View;)V

    .line 446
    invoke-virtual {v0, v2}, Lo/MenuInflater;->addView(Landroid/view/View;)V

    .line 449
    new-instance v3, Lo/Factory2;

    invoke-direct {v3}, Lo/Factory2;-><init>()V

    .line 450
    invoke-virtual {v3, v0}, Lo/Factory2;->d(Lo/MenuInflater;)V

    .line 452
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5, p1, v5}, Lo/Factory2;->e(IIII)V

    .line 453
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result v4

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v6, p1, v6}, Lo/Factory2;->e(IIII)V

    .line 454
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result v4

    const/4 v7, 0x4

    invoke-virtual {v3, v4, v7, p1, v7}, Lo/Factory2;->e(IIII)V

    .line 455
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {v3, v4, v9, v8, v5}, Lo/Factory2;->e(IIII)V

    .line 457
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Lo/Factory2;->a(II)V

    .line 458
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Lo/Factory2;->c(II)V

    .line 461
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result v8

    invoke-virtual {v3, v4, v5, v8, v9}, Lo/Factory2;->e(IIII)V

    .line 462
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v9, p1, v9}, Lo/Factory2;->e(IIII)V

    .line 463
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v6, p1, v6}, Lo/Factory2;->e(IIII)V

    .line 464
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    iget-object v8, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v8}, Lo/FO;->a()I

    move-result v8

    invoke-virtual {v3, v4, v7, v8, v6}, Lo/Factory2;->e(IIII)V

    .line 466
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Lo/Factory2;->a(II)V

    .line 467
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    const/4 v8, -0x2

    invoke-virtual {v3, v4, v8}, Lo/Factory2;->c(II)V

    .line 469
    iget-object v4, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v4}, Lo/FO;->a()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result v8

    invoke-virtual {v3, v4, v5, v8, v9}, Lo/Factory2;->e(IIII)V

    .line 470
    iget-object v4, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v4}, Lo/FO;->a()I

    move-result v4

    invoke-virtual {v3, v4, v9, p1, v9}, Lo/Factory2;->e(IIII)V

    .line 471
    iget-object v4, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v4}, Lo/FO;->a()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v6, v5, v7}, Lo/Factory2;->e(IIII)V

    .line 472
    iget-object v4, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v4}, Lo/FO;->a()I

    move-result v4

    invoke-virtual {v3, v4, v7, p1, v7}, Lo/Factory2;->e(IIII)V

    .line 474
    iget-object v4, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v4}, Lo/FO;->a()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Lo/Factory2;->a(II)V

    .line 475
    iget-object v4, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v4}, Lo/FO;->a()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Lo/Factory2;->c(II)V

    .line 477
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Lo/Factory2;->g(II)V

    .line 478
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Lo/Factory2;->i(II)V

    .line 480
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result p1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v3, p1, v1}, Lo/Factory2;->e(IF)V

    .line 481
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result p1

    invoke-virtual {v3, p1, v1}, Lo/Factory2;->e(IF)V

    .line 482
    iget-object p1, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {p1}, Lo/FO;->a()I

    move-result p1

    invoke-virtual {v3, p1, v1}, Lo/Factory2;->e(IF)V

    .line 484
    invoke-virtual {v3, v0}, Lo/Factory2;->a(Lo/MenuInflater;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lo/DY;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AS;",
            ">;)V"
        }
    .end annotation

    .line 1349
    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1353
    iput-object v0, p0, Lo/DY;->K:Lo/Bc;

    if-eqz p1, :cond_2

    .line 1355
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Bc;

    .line 1357
    invoke-interface {v0}, Lo/Bc;->bb()Lo/AK;

    move-result-object v1

    invoke-interface {v1}, Lo/AK;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1358
    iput-object v0, p0, Lo/DY;->K:Lo/Bc;

    .line 1359
    invoke-virtual {p0}, Lo/DY;->af_()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1360
    invoke-virtual {p0}, Lo/DY;->ae_()V

    :cond_2
    return-void
.end method

.method static synthetic a(Lo/DY;Lo/FC;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/DY;->c(Lo/FC;)V

    return-void
.end method

.method private synthetic a(Lo/FJ;)V
    .locals 1

    .line 389
    instance-of v0, p1, Lo/FP$TaskDescription;

    if-eqz v0, :cond_0

    .line 390
    iget-boolean p1, p0, Lo/DY;->L:Z

    if-eqz p1, :cond_1

    .line 391
    invoke-virtual {p0}, Lo/DY;->C()V

    goto :goto_0

    .line 393
    :cond_0
    instance-of v0, p1, Lo/FJ$Activity;

    if-eqz v0, :cond_1

    .line 395
    check-cast p1, Lo/FJ$Activity;

    invoke-virtual {p1}, Lo/FJ$Activity;->b()Lo/AS;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/DY;->c(Lo/AS;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 0

    .line 1199
    iput-boolean p1, p0, Lo/DY;->z:Z

    return-void
.end method

.method private aa()V
    .locals 5

    .line 1073
    iget v0, p0, Lo/DY;->D:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lo/DY;->E()Lo/Bb;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1074
    :goto_0
    iget-object v3, p0, Lo/DY;->B:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1075
    invoke-virtual {p0}, Lo/DY;->E()Lo/Bb;

    move-result-object v3

    invoke-interface {v3}, Lo/Bb;->aA()I

    move-result v3

    iget-object v4, p0, Lo/DY;->B:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/Ba;

    invoke-interface {v4}, Lo/Ba;->X()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1076
    iput v2, p0, Lo/DY;->D:I

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1080
    :cond_1
    iget-object v2, p0, Lo/DY;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lo/DY;->D:I

    :cond_3
    return-void
.end method

.method private ab()V
    .locals 2

    .line 1058
    invoke-direct {p0}, Lo/DY;->aa()V

    .line 1060
    iget v0, p0, Lo/DY;->D:I

    if-gez v0, :cond_0

    const-string v0, "VideoDetailsFragment"

    const-string v1, "No valid season index found"

    .line 1061
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1069
    invoke-direct {p0, v0, v1}, Lo/DY;->c(IZ)V

    return-void
.end method

.method private ac()V
    .locals 5

    .line 1329
    iget v0, p0, Lo/DY;->F:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1330
    iput v0, p0, Lo/DY;->E:I

    .line 1331
    iput v1, p0, Lo/DY;->F:I

    .line 1335
    :cond_0
    iget-object v0, p0, Lo/DY;->G:Ljava/lang/String;

    .line 1336
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lo/DY;->E()Lo/Bb;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1339
    invoke-virtual {p0}, Lo/DY;->E()Lo/Bb;

    move-result-object v0

    invoke-interface {v0}, Lo/Bb;->ax()Ljava/lang/String;

    move-result-object v0

    .line 1342
    :cond_1
    iget-object v1, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v2, Lo/FH;

    new-instance v3, Lo/FH$Application;

    iget v4, p0, Lo/DY;->E:I

    invoke-direct {v3, v4, v0}, Lo/FH$Application;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 735
    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 736
    invoke-static {v0}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 739
    :cond_0
    new-instance v1, Lo/DY$2;

    invoke-direct {v1, p0, p1}, Lo/DY$2;-><init>(Lo/DY;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lo/DY;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic b(Lo/Am;)V
    .locals 0

    .line 1449
    invoke-virtual {p1}, Lo/Am;->r()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1450
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object p1

    invoke-interface {p1}, Lo/Rq;->e()I

    move-result p1

    iput p1, p0, Lo/DY;->J:I

    :cond_0
    return-void
.end method

.method private synthetic b(Lo/DG;)V
    .locals 1

    .line 1109
    instance-of v0, p1, Lo/DG$StateListAnimator;

    if-eqz v0, :cond_0

    .line 1110
    check-cast p1, Lo/DG$StateListAnimator;

    invoke-virtual {p1}, Lo/DG$StateListAnimator;->e()I

    move-result v0

    invoke-virtual {p1}, Lo/DG$StateListAnimator;->b()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lo/DY;->e(IZ)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lo/DY;Lo/FC;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/DY;->d(Lo/FC;)V

    return-void
.end method

.method static synthetic b(Lo/DY;Lo/FJ;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/DY;->a(Lo/FJ;)V

    return-void
.end method

.method static synthetic b(Lo/DY;Lo/ValidationProbeEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/DY;->c(Lo/ValidationProbeEvent;)V

    return-void
.end method

.method static synthetic b(Lo/DY;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lo/DY;->d(Z)V

    return-void
.end method

.method private synthetic b(Lo/FC;)V
    .locals 3

    .line 915
    instance-of v0, p1, Lo/FC$Application;

    if-eqz v0, :cond_4

    .line 916
    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 919
    iput-boolean v0, p0, Lo/DY;->b:Z

    .line 920
    check-cast p1, Lo/FC$Application;

    .line 921
    invoke-virtual {p1}, Lo/FC$Application;->c()Lo/Bc;

    move-result-object p1

    .line 922
    invoke-virtual {p0, p1}, Lo/DY;->b(Lo/Bc;)V

    .line 925
    iget-object v0, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v1, Lo/FH;

    new-instance v2, Lo/FH$Activity;

    invoke-direct {v2, p1}, Lo/FH$Activity;-><init>(Lo/Bc;)V

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 929
    invoke-interface {p1}, Lo/Bc;->isPreRelease()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 930
    invoke-static {}, Lo/adq;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lo/ady;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 935
    :cond_1
    invoke-direct {p0, p1}, Lo/DY;->n(Lo/Bc;)V

    goto :goto_1

    .line 931
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lo/DY;->d(Lo/Bc;)V

    goto :goto_1

    .line 938
    :cond_3
    invoke-virtual {p0, p1}, Lo/DY;->d(Lo/Bc;)V

    goto :goto_1

    .line 940
    :cond_4
    instance-of v0, p1, Lo/FC$AssistContent;

    if-eqz v0, :cond_5

    .line 941
    check-cast p1, Lo/FC$AssistContent;

    invoke-virtual {p1}, Lo/FC$AssistContent;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/DY;->e(Ljava/util/List;)V

    goto :goto_1

    .line 942
    :cond_5
    instance-of v0, p1, Lo/FC$PictureInPictureParams;

    if-eqz v0, :cond_6

    .line 943
    check-cast p1, Lo/FC$PictureInPictureParams;

    invoke-virtual {p1}, Lo/FC$PictureInPictureParams;->d()Lo/Bc;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Bc;

    invoke-virtual {p0, p1}, Lo/DY;->e(Lo/Bc;)V

    goto :goto_1

    .line 944
    :cond_6
    instance-of v0, p1, Lo/FC$TaskStackBuilder;

    if-eqz v0, :cond_7

    .line 945
    check-cast p1, Lo/FC$TaskStackBuilder;

    invoke-virtual {p1}, Lo/FC$TaskStackBuilder;->c()Ljava/util/List;

    move-result-object p1

    .line 946
    invoke-virtual {p0, p1}, Lo/DY;->d(Ljava/util/List;)V

    goto :goto_1

    .line 947
    :cond_7
    instance-of v0, p1, Lo/FC$TaskDescription;

    if-eqz v0, :cond_8

    .line 948
    check-cast p1, Lo/FC$TaskDescription;

    invoke-virtual {p1}, Lo/FC$TaskDescription;->a()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    .line 949
    invoke-virtual {p0, p1}, Lo/DY;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_8
    :goto_1
    return-void
.end method

.method private c(IZ)V
    .locals 2

    .line 1138
    invoke-direct {p0}, Lo/DY;->Z()V

    .line 1140
    iget-object v0, p0, Lo/DY;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lo/DY;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Ba;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lo/DY;->C:Lo/Ba;

    .line 1141
    iput p1, p0, Lo/DY;->D:I

    .line 1143
    iget-object v0, p0, Lo/DY;->C:Lo/Ba;

    .line 1149
    invoke-virtual {p0, p2}, Lo/DY;->e(Z)V

    .line 1151
    invoke-virtual {p0}, Lo/DY;->v()V

    const/4 p2, -0x1

    .line 1154
    iput p2, p0, Lo/DY;->E:I

    .line 1155
    iget-object p2, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v0, Lo/DC;

    new-instance v1, Lo/DC$Dialog;

    invoke-direct {v1, p1}, Lo/DC$Dialog;-><init>(I)V

    invoke-virtual {p2, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method private static synthetic c(Ljava/lang/Throwable;)V
    .locals 1

    .line 1468
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AR;",
            ">;)V"
        }
    .end annotation

    .line 804
    invoke-virtual {p0}, Lo/DY;->U_()Lo/Am;

    move-result-object v0

    invoke-static {v0, p1}, Lo/DA;->c(Lo/Am;Ljava/util/List;)V

    return-void
.end method

.method private c(Lo/AS;)V
    .locals 5

    .line 1541
    invoke-static {}, Lo/fc;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/DY;->y:Z

    if-nez v0, :cond_0

    .line 1543
    iput-boolean v1, p0, Lo/DY;->w:Z

    .line 1545
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v2, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v3, Lcom/netflix/cl/model/AppView;->episodesSelector:Lcom/netflix/cl/model/AppView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance v3, Lcom/netflix/cl/model/event/session/command/PlayCommand;

    invoke-direct {v3, v4}, Lcom/netflix/cl/model/event/session/command/PlayCommand;-><init>(Ljava/lang/Long;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    .line 1546
    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 1547
    invoke-static {v0}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1549
    invoke-virtual {p0}, Lo/DY;->c()Lcom/netflix/mediaclient/ui/details/VideoInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1550
    invoke-virtual {p0}, Lo/DY;->c()Lcom/netflix/mediaclient/ui/details/VideoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/VideoInfo;->b()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v1

    goto :goto_0

    .line 1552
    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v2, -0x17d

    const-string v3, "VideoDetailsFragment"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    .line 1554
    :goto_0
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->a:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V

    .line 1555
    invoke-interface {p1}, Lo/AS;->bb()Lo/AK;

    move-result-object p1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-static {v0, p1, v2, v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    :cond_2
    return-void
.end method

.method private synthetic c(Lo/Am;)V
    .locals 2

    .line 1012
    sget-object v0, Lo/gB;->e:Lo/gB$Application;

    invoke-virtual {v0}, Lo/gB$Application;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1013
    iget-object p1, p0, Lo/DY;->o:Lo/FI;

    iget-object v0, p0, Lo/DY;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/FI;->b(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 1015
    :cond_0
    iget-object v0, p0, Lo/DY;->o:Lo/FI;

    iget-object v1, p0, Lo/DY;->n:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lo/FI;->b(Lo/Am;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1017
    :goto_0
    iget-object v0, p0, Lo/DY;->k:Lo/UpdateEngine;

    .line 1018
    invoke-virtual {v0}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lo/Ee;

    invoke-direct {v0, p0}, Lo/Ee;-><init>(Lo/DY;)V

    sget-object v1, Lo/Ec;->b:Lo/Ec;

    .line 1019
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic c(Lo/DG;)V
    .locals 1

    .line 337
    instance-of v0, p1, Lo/DG$StateListAnimator;

    if-eqz v0, :cond_0

    .line 338
    check-cast p1, Lo/DG$StateListAnimator;

    invoke-virtual {p1}, Lo/DG$StateListAnimator;->e()I

    move-result v0

    invoke-virtual {p1}, Lo/DG$StateListAnimator;->b()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lo/DY;->e(IZ)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lo/DY;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lo/DY;->X()V

    return-void
.end method

.method static synthetic c(Lo/DY;Lo/Am;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/DY;->b(Lo/Am;)V

    return-void
.end method

.method static synthetic c(Lo/DY;Lo/DG;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/DY;->b(Lo/DG;)V

    return-void
.end method

.method private synthetic c(Lo/FC;)V
    .locals 3

    .line 1021
    instance-of v0, p1, Lo/FC$Dialog;

    if-eqz v0, :cond_3

    .line 1022
    check-cast p1, Lo/FC$Dialog;

    .line 1023
    invoke-virtual {p1}, Lo/FC$Dialog;->c()Lo/AS;

    move-result-object v0

    .line 1024
    invoke-virtual {p1}, Lo/FC$Dialog;->d()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    .line 1025
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    .line 1027
    invoke-interface {v0}, Lo/AS;->X()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 1032
    :cond_0
    invoke-interface {v0}, Lo/AS;->X()I

    move-result p1

    invoke-direct {p0, p1}, Lo/DY;->a(I)I

    move-result p1

    iput p1, p0, Lo/DY;->D:I

    .line 1033
    invoke-interface {v0}, Lo/AS;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/DY;->G:Ljava/lang/String;

    .line 1035
    iget p1, p0, Lo/DY;->D:I

    if-gez p1, :cond_1

    .line 1036
    invoke-direct {p0}, Lo/DY;->ab()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1038
    invoke-direct {p0, p1, v0}, Lo/DY;->c(IZ)V

    .line 1039
    iget-object p1, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v0, Lo/DC;

    new-instance v1, Lo/DC$Dialog;

    iget v2, p0, Lo/DY;->D:I

    invoke-direct {v1, v2}, Lo/DC$Dialog;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_1

    .line 1028
    :cond_2
    :goto_0
    invoke-direct {p0}, Lo/DY;->ab()V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic c(Lo/ValidationProbeEvent;)V
    .locals 1

    .line 1457
    instance-of v0, p1, Lo/ValidationProbeEvent$Application;

    if-eqz v0, :cond_0

    .line 1458
    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1459
    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/QU;->e(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1461
    :cond_0
    instance-of p1, p1, Lo/ValidationProbeEvent$TaskDescription;

    if-eqz p1, :cond_1

    .line 1462
    invoke-virtual {p0}, Lo/DY;->D()V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1465
    invoke-virtual {p0, p1, v0}, Lo/DY;->d(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic d(Ljava/lang/Throwable;)V
    .locals 1

    .line 1044
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic d(Lo/DY;Lo/DG;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/DY;->c(Lo/DG;)V

    return-void
.end method

.method private synthetic d(Lo/FC;)V
    .locals 5

    .line 1267
    instance-of v0, p1, Lo/FC$PendingIntent;

    if-eqz v0, :cond_6

    .line 1268
    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1272
    :cond_0
    check-cast p1, Lo/FC$PendingIntent;

    .line 1273
    iget-wide v0, p0, Lo/DY;->I:J

    invoke-virtual {p1}, Lo/FC$PendingIntent;->e()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 1277
    iput-boolean v0, p0, Lo/DY;->L:Z

    const/4 v1, 0x0

    .line 1278
    iput-boolean v1, p0, Lo/DY;->b:Z

    .line 1280
    invoke-virtual {p1}, Lo/FC$PendingIntent;->c()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v2

    .line 1281
    invoke-interface {v2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1282
    iput-boolean v1, p0, Lo/DY;->L:Z

    .line 1283
    iget p1, p0, Lo/DY;->H:I

    invoke-virtual {p0, v2, p1}, Lo/DY;->a(Lcom/netflix/mediaclient/android/app/Status;I)V

    return-void

    .line 1287
    :cond_2
    invoke-virtual {p1}, Lo/FC$PendingIntent;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1288
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 1295
    :cond_3
    invoke-virtual {p1}, Lo/FC$PendingIntent;->d()I

    move-result v3

    .line 1296
    invoke-virtual {p1}, Lo/FC$PendingIntent;->b()I

    move-result p1

    sub-int/2addr p1, v3

    add-int/2addr p1, v0

    .line 1300
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_4

    .line 1301
    iput-boolean v1, p0, Lo/DY;->L:Z

    .line 1304
    :cond_4
    iget-object p1, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v0, Lo/FH;

    new-instance v1, Lo/FH$FragmentManager;

    invoke-direct {v1, v2, v3}, Lo/FH$FragmentManager;-><init>(Ljava/util/List;I)V

    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 1305
    iget p1, p0, Lo/DY;->H:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lo/DY;->H:I

    .line 1307
    invoke-direct {p0}, Lo/DY;->ac()V

    .line 1309
    iget-object p1, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v0, Lo/ApduList;

    sget-object v1, Lo/ApduList$StateListAnimator;->e:Lo/ApduList$StateListAnimator;

    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 1311
    invoke-direct {p0, v2}, Lo/DY;->a(Ljava/util/List;)V

    .line 1315
    invoke-static {v2}, Lo/Dj;->b(Ljava/util/List;)Z

    move-result p1

    invoke-direct {p0, p1}, Lo/DY;->a(Z)V

    .line 1318
    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, p1}, Lo/DY;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_1

    .line 1289
    :cond_5
    :goto_0
    iput-boolean v1, p0, Lo/DY;->L:Z

    .line 1290
    sget-object p1, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iget v0, p0, Lo/DY;->H:I

    invoke-virtual {p0, p1, v0}, Lo/DY;->a(Lcom/netflix/mediaclient/android/app/Status;I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private synthetic d(Z)V
    .locals 3

    .line 617
    iget-object v0, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v1, Lo/DC;

    new-instance v2, Lo/DC$ActionBar;

    invoke-direct {v2, p1}, Lo/DC$ActionBar;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 9

    .line 491
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jY:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MenuInflater;

    .line 496
    new-instance v1, Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 497
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->vo:I

    invoke-virtual {v1, p1}, Landroid/widget/ScrollView;->setId(I)V

    const/4 p1, 0x0

    .line 498
    invoke-virtual {v1, p1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 501
    iget-object v2, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 502
    invoke-virtual {v0, v1}, Lo/MenuInflater;->addView(Landroid/view/View;)V

    .line 507
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->vi:I

    invoke-virtual {v0, v2}, Lo/MenuInflater;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 509
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x0

    .line 510
    :goto_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 511
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 512
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    .line 513
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 514
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 518
    :cond_0
    new-instance v2, Lo/Factory2;

    invoke-direct {v2}, Lo/Factory2;-><init>()V

    .line 519
    invoke-virtual {v2, v0}, Lo/Factory2;->d(Lo/MenuInflater;)V

    .line 521
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result v4

    invoke-virtual {v2, v4, v3, p1, v3}, Lo/Factory2;->e(IIII)V

    .line 522
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5, p1, v5}, Lo/Factory2;->e(IIII)V

    .line 523
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result v4

    const/4 v6, 0x4

    invoke-virtual {v2, v4, v6, p1, v6}, Lo/Factory2;->e(IIII)V

    .line 524
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result v4

    iget-object v7, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v7}, Lo/FO;->a()I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v2, v4, v8, v7, v3}, Lo/Factory2;->e(IIII)V

    .line 526
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result v4

    invoke-virtual {v2, v4, p1}, Lo/Factory2;->a(II)V

    .line 527
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result v4

    invoke-virtual {v2, v4, p1}, Lo/Factory2;->c(II)V

    .line 530
    iget-object v4, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v4}, Lo/FO;->a()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result v7

    invoke-virtual {v2, v4, v3, v7, v8}, Lo/Factory2;->e(IIII)V

    .line 531
    iget-object v3, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v3}, Lo/FO;->a()I

    move-result v3

    invoke-virtual {v2, v3, v8, p1, v8}, Lo/Factory2;->e(IIII)V

    .line 532
    iget-object v3, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v3}, Lo/FO;->a()I

    move-result v3

    invoke-virtual {v2, v3, v5, p1, v5}, Lo/Factory2;->e(IIII)V

    .line 533
    iget-object v3, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v3}, Lo/FO;->a()I

    move-result v3

    invoke-virtual {v2, v3, v6, p1, v6}, Lo/Factory2;->e(IIII)V

    .line 535
    iget-object v3, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v3}, Lo/FO;->a()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lo/Factory2;->a(II)V

    .line 536
    iget-object v3, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v3}, Lo/FO;->a()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lo/Factory2;->c(II)V

    .line 538
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lo/Factory2;->g(II)V

    .line 539
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result p1

    const v1, 0x3f266666    # 0.65f

    invoke-virtual {v2, p1, v1}, Lo/Factory2;->e(IF)V

    .line 540
    iget-object p1, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {p1}, Lo/FO;->a()I

    move-result p1

    const v1, 0x3eb33333    # 0.35f

    invoke-virtual {v2, p1, v1}, Lo/Factory2;->e(IF)V

    .line 542
    invoke-virtual {v2, v0}, Lo/Factory2;->a(Lo/MenuInflater;)V

    return-void
.end method

.method static synthetic e(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lo/DY;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic e(Lo/DY;Lo/Am;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/DY;->c(Lo/Am;)V

    return-void
.end method

.method static synthetic e(Lo/DY;Lo/FC;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/DY;->b(Lo/FC;)V

    return-void
.end method

.method private static synthetic f(Ljava/lang/Throwable;)V
    .locals 1

    .line 953
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private l(Lo/Bc;)V
    .locals 3

    .line 717
    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 720
    invoke-virtual {p0}, Lo/DY;->T()V

    .line 722
    invoke-virtual {p0, p1}, Lo/DY;->f(Lo/Bc;)V

    .line 723
    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_0

    .line 724
    invoke-virtual {p0, p1}, Lo/DY;->j(Lo/Bc;)V

    .line 726
    :cond_0
    invoke-virtual {p0}, Lo/DY;->M()V

    .line 727
    invoke-virtual {p0, p1}, Lo/DY;->h(Lo/Bc;)V

    .line 729
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->supportInvalidateOptionsMenu()V

    :cond_1
    return-void
.end method

.method private n(Lo/Bc;)V
    .locals 2

    .line 699
    invoke-virtual {p0}, Lo/DY;->N()V

    .line 700
    invoke-interface {p1}, Lo/Bc;->aV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    invoke-interface {p1}, Lo/Bc;->aR()Ljava/lang/String;

    move-result-object v0

    .line 702
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 703
    invoke-direct {p0, v0}, Lo/DY;->b(Ljava/lang/String;)V

    .line 707
    :cond_0
    invoke-direct {p0, p1}, Lo/DY;->l(Lo/Bc;)V

    .line 710
    iget-object p1, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v0, Lo/ApduList;

    sget-object v1, Lo/ApduList$StateListAnimator;->e:Lo/ApduList$StateListAnimator;

    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 713
    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, p1}, Lo/DY;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method


# virtual methods
.method public A()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
    .locals 1

    .line 1497
    iget-object v0, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    return-object v0
.end method

.method protected B()V
    .locals 2

    .line 1428
    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1429
    iget-object v1, p0, Lo/DY;->s:Lo/PS;

    if-eqz v1, :cond_0

    .line 1430
    invoke-interface {v0, v1}, Lo/nS;->d(Lo/nV;)V

    const/4 v0, 0x0

    .line 1431
    iput-object v0, p0, Lo/DY;->s:Lo/PS;

    :cond_0
    return-void
.end method

.method protected C()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1215
    invoke-virtual {p0}, Lo/DY;->U_()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1216
    invoke-virtual {p0}, Lo/DY;->U_()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/DY;->C:Lo/Ba;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1221
    :cond_0
    invoke-virtual {p0}, Lo/DY;->U_()Lo/Am;

    move-result-object v2

    .line 1223
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/DY;->I:J

    .line 1224
    iget v0, p0, Lo/DY;->H:I

    iget-object v1, p0, Lo/DY;->C:Lo/Ba;

    invoke-interface {v1}, Lo/Ba;->as()I

    move-result v1

    if-lt v0, v1, :cond_1

    const-string v0, "VideoDetailsFragment"

    const-string v1, "nothing more to fetch"

    .line 1225
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1226
    iput-boolean v0, p0, Lo/DY;->L:Z

    return-void

    .line 1230
    :cond_1
    iget v0, p0, Lo/DY;->H:I

    add-int/lit8 v0, v0, 0x28

    add-int/lit8 v0, v0, -0x1

    .line 1231
    iget-object v1, p0, Lo/DY;->C:Lo/Ba;

    invoke-interface {v1}, Lo/Ba;->as()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 1232
    iget-object v0, p0, Lo/DY;->C:Lo/Ba;

    invoke-interface {v0}, Lo/Ba;->as()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_2
    move v8, v0

    .line 1235
    iget-object v0, p0, Lo/DY;->C:Lo/Ba;

    invoke-interface {v0}, Lo/Ba;->getId()Ljava/lang/String;

    move-result-object v4

    .line 1240
    invoke-static {v4}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1241
    invoke-virtual {v2}, Lo/Am;->p()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-virtual {p0}, Lo/DY;->y()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/DY;->C:Lo/Ba;

    invoke-static {v0, v1, v2}, Lo/adS;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging;Ljava/lang/String;Lo/Ba;)V

    return-void

    .line 1246
    :cond_3
    sget-object v0, Lo/gB;->e:Lo/gB$Application;

    invoke-virtual {v0}, Lo/gB$Application;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1247
    iget-object v3, p0, Lo/DY;->o:Lo/FI;

    iget-wide v5, p0, Lo/DY;->I:J

    iget v7, p0, Lo/DY;->H:I

    invoke-virtual/range {v3 .. v8}, Lo/FI;->e(Ljava/lang/String;JII)Lio/reactivex/Observable;

    move-result-object v0

    goto :goto_0

    .line 1254
    :cond_4
    iget-object v1, p0, Lo/DY;->o:Lo/FI;

    iget-wide v5, p0, Lo/DY;->I:J

    iget v0, p0, Lo/DY;->H:I

    move-object v3, v4

    move-wide v4, v5

    move v6, v0

    move v7, v8

    invoke-virtual/range {v1 .. v7}, Lo/FI;->b(Lo/Am;Ljava/lang/String;JII)Lio/reactivex/Observable;

    move-result-object v0

    .line 1263
    :goto_0
    iget-object v1, p0, Lo/DY;->k:Lo/UpdateEngine;

    .line 1264
    invoke-virtual {v1}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lo/Ef;

    invoke-direct {v1, p0}, Lo/Ef;-><init>(Lo/DY;)V

    .line 1265
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_5
    :goto_1
    return-void
.end method

.method protected D()V
    .locals 4

    .line 1404
    iget-object v0, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v1, Lo/ApduList;

    new-instance v2, Lo/ApduList$TaskDescription;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/ApduList$TaskDescription;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 1405
    iget-object v0, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v1, Lo/DC;

    new-instance v2, Lo/DC$PendingIntent;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lo/DC$PendingIntent;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method protected E()Lo/Bb;
    .locals 3

    .line 1511
    invoke-virtual {p0}, Lo/DY;->z()Lo/Bc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1512
    invoke-interface {v0}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_0

    .line 1513
    check-cast v0, Lo/Bb;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected F()Landroid/view/ViewTreeObserver;
    .locals 1

    .line 1629
    iget-object v0, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    return-object v0
.end method

.method protected G()V
    .locals 1

    .line 1571
    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/DY;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1578
    invoke-virtual {p0, v0, v0}, Lo/DY;->d(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected H()Z
    .locals 1

    .line 1624
    iget-object v0, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected I()V
    .locals 0

    return-void
.end method

.method protected J()V
    .locals 1

    .line 1658
    iget-object v0, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    if-eqz v0, :cond_0

    .line 1659
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->y()V

    :cond_0
    return-void
.end method

.method protected K()Landroid/view/View;
    .locals 1

    .line 1654
    iget-object v0, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->m()Lo/BaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected L()Lcom/netflix/mediaclient/ui/offline/DownloadButton;
    .locals 1

    .line 1744
    invoke-virtual {p0}, Lo/DY;->A()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->s()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v0

    return-object v0
.end method

.method protected M()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult",
            "AutoDispose"
        }
    .end annotation

    .line 1697
    iget-object v0, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 1705
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->p()Lo/ListView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1709
    :cond_1
    iget-object v0, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setMyListVisibility(I)V

    .line 1710
    new-instance v0, Lo/Oc;

    .line 1711
    invoke-virtual {p0}, Lo/DY;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v2, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 1712
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->p()Lo/ListView;

    move-result-object v2

    invoke-static {v2}, Lo/Oh;->b(Landroid/widget/CompoundButton;)Lo/Od;

    move-result-object v2

    iget-object v3, p0, Lo/DY;->k:Lo/UpdateEngine;

    .line 1713
    invoke-virtual {v3}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lo/Oc;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Od;Lio/reactivex/Observable;Lcom/netflix/cl/model/AppView;)V

    iput-object v0, p0, Lo/DY;->x:Lo/Oc;

    .line 1716
    iget-object v0, p0, Lo/DY;->x:Lo/Oc;

    .line 1717
    invoke-virtual {p0}, Lo/DY;->c()Lcom/netflix/mediaclient/ui/details/VideoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/VideoInfo;->c()Ljava/lang/String;

    move-result-object v1

    .line 1718
    invoke-virtual {p0}, Lo/DY;->c()Lcom/netflix/mediaclient/ui/details/VideoInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/details/VideoInfo;->e()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    .line 1719
    invoke-virtual {p0}, Lo/DY;->c()Lcom/netflix/mediaclient/ui/details/VideoInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/details/VideoInfo;->b()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v3

    .line 1716
    invoke-virtual {v0, v1, v2, v3, v4}, Lo/Oc;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/cl/model/TrackingInfo;)V

    return-void
.end method

.method protected N()V
    .locals 1

    .line 1731
    invoke-virtual {p0}, Lo/DY;->A()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1732
    invoke-virtual {p0}, Lo/DY;->A()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->w()V

    :cond_0
    return-void
.end method

.method protected O()V
    .locals 1

    .line 1760
    iget-object v0, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->q()V

    return-void
.end method

.method protected P()V
    .locals 1

    .line 1764
    iget-object v0, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    if-eqz v0, :cond_0

    .line 1765
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->v()V

    :cond_0
    return-void
.end method

.method protected Q()Landroid/view/ViewGroup;
    .locals 1

    .line 1771
    iget-object v0, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->l()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method protected R()Z
    .locals 1

    .line 1775
    iget-object v0, p0, Lo/DY;->p:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected S()V
    .locals 1

    .line 1756
    iget-object v0, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->t()V

    return-void
.end method

.method protected T()V
    .locals 4

    .line 1792
    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 1793
    invoke-virtual {p0}, Lo/DY;->z()Lo/Bc;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 1794
    iget-object v2, p0, Lo/DY;->M:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 1797
    invoke-interface {v1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1798
    invoke-interface {v1}, Lo/Bc;->isPreRelease()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1802
    iget v2, p0, Lo/DY;->N:I

    sget-object v3, Lcom/netflix/cl/model/AppView;->search:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v3}, Lcom/netflix/cl/model/AppView;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1803
    invoke-interface {v1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->b:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    iget-object v3, p0, Lo/DY;->M:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->playerPrepare(Lo/AK;Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    goto :goto_0

    .line 1804
    :cond_0
    invoke-static {}, Lo/eJ;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1805
    invoke-virtual {p0}, Lo/DY;->U_()Lo/Am;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1806
    invoke-virtual {v2}, Lo/Am;->h()Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1807
    invoke-virtual {v2}, Lo/Am;->h()Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/servicemgr/PrepareManager;->d(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V

    .line 1809
    :cond_1
    invoke-interface {v1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    iget-object v3, p0, Lo/DY;->M:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->playerPrepare(Lo/AK;Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected U()Lo/DD;
    .locals 1

    .line 1816
    iget-object v0, p0, Lo/DY;->v:Lo/DD;

    return-object v0
.end method

.method protected V()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 1

    .line 1788
    iget-object v0, p0, Lo/DY;->M:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-object v0
.end method

.method protected W()V
    .locals 4

    .line 1779
    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 1780
    invoke-virtual {p0}, Lo/DY;->z()Lo/Bc;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1782
    sget-object v2, Lo/CellularBatteryStats;->e:Lo/CellularBatteryStats;

    const-class v3, Lo/DY$Activity;

    invoke-virtual {v2, v0, v3}, Lo/CellularBatteryStats;->b(Landroid/app/Activity;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DY$Activity;

    invoke-interface {v0}, Lo/DY$Activity;->d()Lo/WebViewProvider;

    move-result-object v0

    invoke-interface {v0, v1}, Lo/WebViewProvider;->a(Lo/Bc;)V

    :cond_0
    return-void
.end method

.method protected a(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1417
    invoke-virtual {p0}, Lo/DY;->B()V

    .line 1419
    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1421
    new-instance v1, Lo/PS;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lo/PS;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lo/DY;->s:Lo/PS;

    .line 1422
    iget-object p1, p0, Lo/DY;->s:Lo/PS;

    invoke-interface {v0, p1}, Lo/nS;->e(Lo/nV;)V

    :cond_0
    return-void
.end method

.method protected a(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1

    .line 1633
    iget-object v0, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/ViewUtils;->c(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1380
    iget-object v0, p0, Lo/DY;->v:Lo/DD;

    if-eqz v0, :cond_0

    .line 1381
    invoke-virtual {v0, p1}, Lo/DD;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1387
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/DY;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1388
    invoke-virtual {p0}, Lo/DY;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lo/DY$1;

    invoke-direct {v1, p0}, Lo/DY$1;-><init>(Lo/DY;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1396
    :cond_0
    iget-object v0, p0, Lo/DY;->u:Lo/DR;

    if-eqz v0, :cond_1

    .line 1397
    invoke-virtual {v0, p1}, Lo/DR;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1400
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected a(Lcom/netflix/mediaclient/android/app/Status;I)V
    .locals 0

    .line 1325
    invoke-virtual {p0, p1}, Lo/DY;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected a(Lo/Bc;)V
    .locals 1

    .line 1664
    iget-object v0, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->e(Lo/Bc;)V

    return-void
.end method

.method public ad_()Z
    .locals 5

    .line 836
    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 838
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 840
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarStateBuilder()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 841
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    const/4 v3, 0x1

    .line 842
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 843
    invoke-virtual {p0, v0}, Lo/DY;->e(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V

    .line 845
    iget-object v4, p0, Lo/DY;->q:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    if-eqz v4, :cond_0

    .line 846
    invoke-interface {v4, v0}, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;->b(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V

    .line 848
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    .line 851
    invoke-virtual {p0, v1}, Lo/DY;->e(I)V

    return v3

    :cond_1
    return v1
.end method

.method public ae_()V
    .locals 4

    .line 758
    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 759
    invoke-virtual {p0}, Lo/DY;->z()Lo/Bc;

    move-result-object v1

    .line 760
    iget-object v2, p0, Lo/DY;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v3, :cond_0

    .line 761
    iget-object v1, p0, Lo/DY;->K:Lo/Bc;

    :cond_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 764
    invoke-static {}, Lo/fc;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo/DY;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v3, :cond_1

    iget v2, p0, Lo/DY;->f:I

    if-eqz v2, :cond_1

    return-void

    .line 772
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getTutorialHelper()Lo/Se;

    move-result-object v0

    iget-object v2, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v2}, Lo/FO;->k()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {p0}, Lo/DY;->U_()Lo/Am;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lo/Se;->a(Lo/Se$StateListAnimator;Lo/Bc;Landroidx/recyclerview/widget/RecyclerView;Lo/Am;)V

    :cond_2
    return-void
.end method

.method public b(Lo/BC;)Lo/HwBlob;
    .locals 3

    .line 810
    iget-object v0, p0, Lo/DY;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 811
    invoke-virtual {p0}, Lo/DY;->L()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 815
    :cond_0
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->fe:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 817
    :cond_1
    iget-object v0, p0, Lo/DY;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_2

    .line 819
    iget-object v0, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v0}, Lo/FO;->k()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->gs:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_3

    return-object v2

    .line 826
    :cond_3
    invoke-virtual {p0}, Lo/DY;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lo/Se;->a(Landroid/view/View;Landroid/app/Activity;Lo/BC;)Lo/HwBlob;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lo/Bc;)V
    .locals 0

    .line 1506
    iput-object p1, p0, Lo/DY;->A:Lo/Bc;

    return-void
.end method

.method public b(Lo/DR;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lo/DY;->u:Lo/DR;

    return-void
.end method

.method public c()Lcom/netflix/mediaclient/ui/details/VideoInfo;
    .locals 5

    .line 253
    iget-object v0, p0, Lo/DY;->R:Lcom/netflix/mediaclient/ui/details/VideoInfo;

    if-eqz v0, :cond_0

    return-object v0

    .line 255
    :cond_0
    invoke-virtual {p0}, Lo/DY;->getActivity()Lo/Serializable;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p0}, Lo/DY;->getActivity()Lo/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->t()Lcom/netflix/mediaclient/ui/details/VideoInfo;

    move-result-object v0

    return-object v0

    .line 258
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoInfo;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNAVAILABLE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    new-instance v2, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v3, -0x17c

    const-string v4, "VideoDetailsFragment"

    invoke-direct {v2, v4, v3}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    const-string v3, ""

    invoke-direct {v0, v3, v1, v2}, Lcom/netflix/mediaclient/ui/details/VideoInfo;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    return-object v0
.end method

.method public c(Landroid/os/Parcelable;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lo/DY;->i:Landroid/os/Parcelable;

    return-void
.end method

.method protected c(Landroid/view/View;)V
    .locals 2

    .line 1590
    invoke-static {}, Lo/adq;->d()Z

    move-result p1

    .line 1592
    invoke-static {}, Lo/ady;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_1

    .line 1597
    new-instance p1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {p0}, Lo/DY;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    goto :goto_0

    .line 1599
    :cond_1
    new-instance p1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;

    invoke-virtual {p0}, Lo/DY;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 1602
    :goto_0
    iget-object p1, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->r()V

    .line 1603
    invoke-virtual {p0}, Lo/DY;->getActivity()Lo/Serializable;

    move-result-object p1

    invoke-static {p1}, Lo/adq;->f(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lo/adq;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1604
    iget-object p1, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0, v1, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method protected c(Landroid/view/ViewGroup;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1437
    new-instance v0, Lo/BeamShareData;

    new-instance v1, Lo/IpUtils;

    invoke-direct {v1, p1}, Lo/IpUtils;-><init>(Landroid/view/ViewGroup;)V

    iget-object v2, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v3, Lo/ApduList;

    .line 1439
    invoke-virtual {v2, v3}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/BeamShareData;-><init>(Lo/NsdServiceInfo;Lio/reactivex/Observable;)V

    iput-object v0, p0, Lo/DY;->P:Lo/BeamShareData;

    .line 1442
    new-instance v0, Lo/WakeupStats;

    invoke-direct {v0, p1}, Lo/WakeupStats;-><init>(Landroid/view/ViewGroup;)V

    .line 1443
    new-instance p1, Lo/WakeupEvent;

    iget-object v1, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v2, Lo/ApduList;

    .line 1445
    invoke-virtual {v1, v2}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lo/WakeupEvent;-><init>(Lo/WimaxManagerConstants;Lio/reactivex/Observable;)V

    .line 1448
    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    new-instance v1, Lo/Ei;

    invoke-direct {v1, p0}, Lo/Ei;-><init>(Lo/DY;)V

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    .line 1454
    invoke-virtual {v0}, Lo/WakeupStats;->w()Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lo/DY;->k:Lo/UpdateEngine;

    .line 1455
    invoke-virtual {v0}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lo/Eg;

    invoke-direct {v0, p0}, Lo/Eg;-><init>(Lo/DY;)V

    sget-object v1, Lo/DZ;->e:Lo/DZ;

    .line 1456
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 1471
    invoke-virtual {p0}, Lo/DY;->D()V

    return-void
.end method

.method protected c(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 1410
    iget-object v0, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v1, Lo/ApduList;

    new-instance v2, Lo/ApduList$Application;

    iget v3, p0, Lo/DY;->J:I

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v2, v3}, Lo/ApduList$Application;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 1411
    invoke-virtual {p0, p1}, Lo/DY;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1412
    iget-object p1, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v0, Lo/DC;

    new-instance v1, Lo/DC$PendingIntent;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/DC$PendingIntent;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 1413
    iget-object p1, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v0, Lo/FH;

    sget-object v1, Lo/FH$TaskDescription;->d:Lo/FH$TaskDescription;

    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/ui/details/VideoInfo;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lo/DY;->R:Lcom/netflix/mediaclient/ui/details/VideoInfo;

    return-void
.end method

.method protected c(Lo/Bc;)V
    .locals 2

    .line 788
    check-cast p1, Lo/Be;

    invoke-interface {p1}, Lo/Be;->aC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 789
    invoke-interface {p1}, Lo/Be;->aC()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/DY;->c(Ljava/util/List;)V

    .line 790
    invoke-static {}, Lo/adq;->d()Z

    move-result p1

    .line 791
    invoke-static {}, Lo/ady;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 795
    :cond_0
    iget-object v0, p0, Lo/DY;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_3

    .line 796
    :cond_1
    invoke-virtual {p0}, Lo/DY;->S()V

    goto :goto_0

    .line 799
    :cond_2
    invoke-virtual {p0}, Lo/DY;->O()V

    :cond_3
    :goto_0
    return-void
.end method

.method public c(Lo/DD;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lo/DY;->v:Lo/DD;

    return-void
.end method

.method public d()Landroid/os/Parcelable;
    .locals 1

    .line 647
    iget-object v0, p0, Lo/DY;->r:Lo/FO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/FO;->o()Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 4

    .line 1520
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lo/DY;->d:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lo/DY;->g:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method protected d(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 965
    :cond_0
    iget-object v0, p0, Lo/DY;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 966
    invoke-virtual {p0, p1}, Lo/DY;->e(Ljava/util/List;)V

    .line 969
    :cond_1
    iget v0, p0, Lo/DY;->D:I

    const-string v1, " for show "

    const-string v2, " with season count="

    const/4 v3, 0x0

    if-gez v0, :cond_2

    .line 971
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SPY-12784: negative currSeasonIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lo/DY;->D:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/DY;->h:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 973
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 974
    invoke-direct {p0, v3, v3}, Lo/DY;->c(IZ)V

    goto :goto_0

    .line 976
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_3

    .line 979
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v3}, Lo/DY;->c(IZ)V

    .line 980
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SPY-12784: currSeasonIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lo/DY;->D:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lo/DY;->h:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 980
    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 986
    :cond_3
    iget v0, p0, Lo/DY;->D:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Ba;

    .line 987
    iget-object v0, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v0}, Lo/FO;->p()I

    move-result v0

    if-eqz p1, :cond_4

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 988
    invoke-interface {p1}, Lo/Ba;->as()I

    move-result p1

    if-eq p1, v0, :cond_4

    .line 989
    invoke-virtual {p0}, Lo/DY;->C()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected d(Lo/Bc;)V
    .locals 4

    .line 659
    iget-object v0, p0, Lo/DY;->i:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 660
    iget-object v1, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v2, Lo/FH;

    new-instance v3, Lo/FH$PictureInPictureParams;

    invoke-direct {v3, v0}, Lo/FH$PictureInPictureParams;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {v1, v2, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    const/4 v0, 0x0

    .line 661
    iput-object v0, p0, Lo/DY;->i:Landroid/os/Parcelable;

    .line 665
    :cond_0
    invoke-virtual {p0, p1}, Lo/DY;->c(Lo/Bc;)V

    .line 667
    invoke-direct {p0, p1}, Lo/DY;->l(Lo/Bc;)V

    .line 670
    invoke-interface {p1}, Lo/Bc;->isPreRelease()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lo/adq;->c()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lo/ady;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 672
    :cond_1
    iget-object p1, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v0, Lo/ApduList;

    sget-object v1, Lo/ApduList$StateListAnimator;->e:Lo/ApduList$StateListAnimator;

    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 675
    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, p1}, Lo/DY;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 680
    :cond_2
    iget-object p1, p0, Lo/DY;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p1, v0, :cond_3

    .line 682
    iget-object p1, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v0, Lo/ApduList;

    sget-object v1, Lo/ApduList$StateListAnimator;->e:Lo/ApduList$StateListAnimator;

    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 685
    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, p1}, Lo/DY;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 687
    invoke-virtual {p0}, Lo/DY;->af_()Z

    move-result p1

    if-nez p1, :cond_3

    .line 688
    invoke-virtual {p0}, Lo/DY;->ae_()V

    .line 692
    :cond_3
    iget-object p1, p0, Lo/DY;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p1, v0, :cond_4

    invoke-static {}, Lo/adq;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 693
    iget-object p1, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v0, Lo/FH;

    sget-object v1, Lo/FH$TaskStackBuilder;->b:Lo/FH$TaskStackBuilder;

    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    :cond_4
    return-void
.end method

.method protected d(ZZ)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult",
            "AutoDispose"
        }
    .end annotation

    .line 903
    invoke-virtual {p0}, Lo/DY;->U_()Lo/Am;

    move-result-object v1

    const-string p2, "VideoDetailsFragment"

    if-eqz v1, :cond_1

    .line 904
    invoke-virtual {v1}, Lo/Am;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 908
    iput-boolean v0, p0, Lo/DY;->b:Z

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 909
    iget-object v4, p0, Lo/DY;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v4, v2, v3

    iget-object v3, p0, Lo/DY;->h:Ljava/lang/String;

    aput-object v3, v2, v0

    const-string v0, "Fetching data for %s ID: %s"

    invoke-static {p2, v0, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 911
    iget-object v0, p0, Lo/DY;->o:Lo/FI;

    iget-object v2, p0, Lo/DY;->h:Ljava/lang/String;

    iget-object v3, p0, Lo/DY;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v4, p0, Lo/DY;->n:Ljava/lang/String;

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lo/FI;->d(Lo/Am;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lo/DY;->k:Lo/UpdateEngine;

    .line 912
    invoke-virtual {p2}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lo/Eb;

    invoke-direct {p2, p0}, Lo/Eb;-><init>(Lo/DY;)V

    sget-object v0, Lo/Ea;->b:Lo/Ea;

    .line 913
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void

    :cond_1
    :goto_0
    const-string p1, "Manager is null/notReady - can\'t reload data"

    .line 905
    invoke-static {p2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected e(ZZ)Landroid/view/View;
    .locals 1

    .line 1638
    iget-object v0, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    if-eqz p1, :cond_0

    .line 1641
    iget-object v0, p0, Lo/DY;->t:Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1642
    invoke-static {}, Lo/ady;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1646
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lo/DY;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected e(I)V
    .locals 0

    return-void
.end method

.method protected e(IZ)V
    .locals 3

    const/4 v0, 0x1

    .line 1529
    invoke-direct {p0, p1, v0}, Lo/DY;->c(IZ)V

    .line 1533
    invoke-virtual {p0}, Lo/DY;->Q()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1535
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p2, p1

    mul-int/lit8 p2, p2, -0x1

    .line 1536
    iget-object p1, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v0, Lo/FH;

    new-instance v1, Lo/FH$ClipData;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Lo/FH$ClipData;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    :cond_0
    return-void
.end method

.method protected e(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V
    .locals 1

    .line 1610
    iget-object v0, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v0}, Lo/FO;->m()Lo/DE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1611
    iget-object v0, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v0}, Lo/FO;->m()Lo/DE;

    move-result-object v0

    invoke-virtual {v0}, Lo/DE;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Landroid/graphics/drawable/Drawable;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    :cond_0
    return-void
.end method

.method protected e(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;)V"
        }
    .end annotation

    .line 995
    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 996
    invoke-static {v0}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1000
    :cond_0
    iget-object v1, p0, Lo/DY;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1001
    iget-object v1, p0, Lo/DY;->B:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1002
    iget-object v1, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v2, Lo/DC;

    new-instance v3, Lo/DC$PendingIntent;

    invoke-direct {v3, p1}, Lo/DC$PendingIntent;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 1004
    iget-object p1, p0, Lo/DY;->n:Ljava/lang/String;

    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1005
    invoke-virtual {p0}, Lo/DY;->E()Lo/Bb;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/DY;->n:Ljava/lang/String;

    .line 1006
    invoke-virtual {p0}, Lo/DY;->E()Lo/Bb;

    move-result-object v1

    invoke-interface {v1}, Lo/Bb;->ax()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1010
    new-instance p1, Lo/Ej;

    invoke-direct {p1, p0}, Lo/Ej;-><init>(Lo/DY;)V

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    goto :goto_0

    .line 1049
    :cond_1
    invoke-direct {p0}, Lo/DY;->ab()V

    :goto_0
    return-void
.end method

.method protected e(Lo/Bc;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 780
    invoke-interface {p1}, Lo/Bc;->getUserThumbRating()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1}, Lo/Bc;->aW()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "VideoDetailsFragment"

    const-string v2, "Volatile data update rating: %d, inQ: %b"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 782
    invoke-virtual {p0, p1}, Lo/DY;->i(Lo/Bc;)V

    .line 783
    invoke-virtual {p0, p1}, Lo/DY;->k(Lo/Bc;)V

    .line 784
    invoke-direct {p0}, Lo/DY;->Y()V

    return-void
.end method

.method protected e(Z)V
    .locals 3

    .line 1159
    iget-object p1, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v0, Lo/ApduList;

    new-instance v1, Lo/ApduList$TaskDescription;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lo/ApduList$TaskDescription;-><init>(Z)V

    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method protected f(Lo/Bc;)V
    .locals 2

    .line 1668
    iget-object v0, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    if-eqz v0, :cond_1

    .line 1669
    invoke-static {}, Lo/fc;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1671
    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_0

    .line 1672
    invoke-interface {p1}, Lo/Bc;->aT()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/DY;->y:Z

    if-nez v0, :cond_0

    .line 1675
    iget-object v0, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    new-instance v1, Lo/DY$3;

    invoke-direct {v1, p0}, Lo/DY$3;-><init>(Lo/DY;)V

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->e:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Application;

    goto :goto_0

    .line 1682
    :cond_0
    iget-object v0, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->e:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Application;

    .line 1685
    :goto_0
    iget-object v0, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->d(Lo/Bc;)V

    :cond_1
    return-void
.end method

.method protected g()I
    .locals 1

    .line 355
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->gk:I

    return v0
.end method

.method protected g(Lo/Bc;)V
    .locals 1

    .line 1737
    invoke-virtual {p0}, Lo/DY;->A()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1738
    invoke-virtual {p0}, Lo/DY;->A()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setupAndShowPreReleaseTrailerButton(Lo/Bc;)V

    :cond_0
    return-void
.end method

.method protected h(Lo/Bc;)V
    .locals 1

    .line 1725
    iget-object v0, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    if-eqz v0, :cond_0

    .line 1726
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setupDownloadButton(Lo/Bc;)V

    :cond_0
    return-void
.end method

.method protected i(Lo/Bc;)V
    .locals 1

    .line 1748
    iget-object v0, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->c(Lo/Bc;)V

    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    .line 831
    iget-boolean v0, p0, Lo/DY;->b:Z

    return v0
.end method

.method protected j(Lo/Bc;)V
    .locals 1

    .line 1690
    iget-object v0, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    if-eqz v0, :cond_0

    .line 1691
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setCopyright(Lo/Bc;)V

    :cond_0
    return-void
.end method

.method protected k(Lo/Bc;)V
    .locals 1

    .line 1752
    iget-object v0, p0, Lo/DY;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->i(Lo/Bc;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 272
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 274
    invoke-virtual {p0, v0}, Lo/DY;->setHasOptionsMenu(Z)V

    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "VideoInfoExtra"

    .line 278
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/VideoInfo;

    iput-object v0, p0, Lo/DY;->R:Lcom/netflix/mediaclient/ui/details/VideoInfo;

    const-string v0, "extra_season_index"

    .line 280
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/DY;->D:I

    const-string v0, "extra_episode_index"

    .line 281
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lo/DY;->F:I

    .line 284
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SPY-18272: Executing onCreate() in VideoDetailsFragment"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lo/DY;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 286
    invoke-virtual {p0}, Lo/DY;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_video_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/DY;->h:Ljava/lang/String;

    .line 287
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPY-18272: VideoDetailsFragment: videoId passed in the args is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/DY;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lo/DY;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_video_type_string_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    iput-object p1, p0, Lo/DY;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 291
    iget-object p1, p0, Lo/DY;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lo/DY;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq p1, v0, :cond_1

    .line 292
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside VideoDetailsFragment: Unsupported videoType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/DY;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 295
    :cond_1
    invoke-virtual {p0}, Lo/DY;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_episode_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/DY;->n:Ljava/lang/String;

    .line 297
    invoke-virtual {p0}, Lo/DY;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/netflix/cl/model/AppView;->UNKNOWN:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v0}, Lcom/netflix/cl/model/AppView;->ordinal()I

    move-result v0

    const-string v1, "extra_model_view_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lo/DY;->N:I

    goto :goto_0

    .line 299
    :cond_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SPY-18272: VideoDetailsFragment: No args received in onCreate() method"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 303
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    iget-object v0, p0, Lo/DY;->Q:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.netflix.mediaclient.intent.action.DETAIL_PAGE_REFRESH"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 547
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 549
    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 551
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lo/ady;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 552
    invoke-virtual {p0}, Lo/DY;->z()Lo/Bc;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 553
    invoke-interface {v0}, Lo/Bc;->bb()Lo/AK;

    move-result-object v0

    invoke-interface {v0}, Lo/AK;->aa()Z

    move-result v0

    if-nez v0, :cond_1

    .line 554
    invoke-static {p2}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    invoke-interface {v0}, Lo/BC;->isKidsProfile()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "VideoDetailsFragment"

    const-string v1, "Not a kids profile - show share icon"

    .line 556
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Adding share icon"

    .line 558
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rY:I

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->pS:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 561
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bf:I

    invoke-static {p2, v0}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 562
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Lo/DY;->g()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 312
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lo/DY;->c(Landroid/view/ViewGroup;)V

    .line 313
    invoke-virtual {p0, p1}, Lo/DY;->c(Landroid/view/View;)V

    if-eqz p3, :cond_0

    const-string v0, "layout_manager_state"

    .line 316
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 318
    invoke-virtual {p0, p3}, Lo/DY;->c(Landroid/os/Parcelable;)V

    .line 322
    :cond_0
    invoke-virtual {p0}, Lo/DY;->F()Landroid/view/ViewTreeObserver;

    move-result-object p3

    new-instance v0, Lo/DY$5;

    invoke-direct {v0, p0}, Lo/DY$5;-><init>(Lo/DY;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 331
    iget-object p3, p0, Lo/DY;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p3, v0, :cond_1

    .line 333
    invoke-virtual {p0}, Lo/DY;->x()V

    .line 335
    invoke-static {p0}, Lo/UpdateEngine;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object p3

    const-class v0, Lo/DG;

    invoke-virtual {p3, v0}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance v0, Lo/DX;

    invoke-direct {v0, p0}, Lo/DX;-><init>(Lo/DY;)V

    .line 336
    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 343
    new-instance p3, Lo/FD;

    iget-object v0, p0, Lo/DY;->k:Lo/UpdateEngine;

    sget-object v1, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;->e:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    invoke-direct {p3, p2, v0, v1}, Lo/FD;-><init>(Landroid/view/ViewGroup;Lo/UpdateEngine;Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;)V

    iput-object p3, p0, Lo/DY;->q:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    .line 344
    new-instance v2, Lo/EO;

    iget-object v3, p0, Lo/DY;->q:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    iget-object p2, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class p3, Lo/DC;

    .line 346
    invoke-virtual {p2, p3}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v4

    iget-object p2, p0, Lo/DY;->k:Lo/UpdateEngine;

    .line 347
    invoke-virtual {p2}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lo/EO;-><init>(Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/ES;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 880
    iget-object v0, p0, Lo/DY;->u:Lo/DR;

    if-eqz v0, :cond_0

    .line 881
    invoke-virtual {v0}, Lo/DR;->b()V

    .line 883
    :cond_0
    invoke-virtual {p0}, Lo/DY;->P()V

    .line 888
    invoke-direct {p0}, Lo/DY;->Z()V

    .line 891
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lo/DY;->Q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    .line 893
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 870
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroyView()V

    .line 871
    iget-object v0, p0, Lo/DY;->u:Lo/DR;

    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {v0}, Lo/DR;->b()V

    .line 874
    :cond_0
    invoke-virtual {p0}, Lo/DY;->B()V

    return-void
.end method

.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 626
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    const/4 p1, 0x0

    .line 627
    invoke-virtual {p0, p1, p1}, Lo/DY;->d(ZZ)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 571
    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 573
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rY:I

    if-ne p1, v0, :cond_0

    .line 574
    invoke-virtual {p0}, Lo/DY;->W()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 3

    .line 632
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    .line 634
    iget-object v0, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v1, Lo/FH;

    sget-object v2, Lo/FH$Fragment;->d:Lo/FH$Fragment;

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 635
    invoke-direct {p0}, Lo/DY;->Y()V

    .line 636
    invoke-virtual {p0}, Lo/DY;->z()Lo/Bc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/DY;->a(Lo/Bc;)V

    .line 641
    iget-object v0, p0, Lo/DY;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_0

    .line 642
    iget-object v0, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v1, Lo/FH;

    sget-object v2, Lo/FH$Dialog;->c:Lo/FH$Dialog;

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 583
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 585
    iget-object v0, p0, Lo/DY;->R:Lcom/netflix/mediaclient/ui/details/VideoInfo;

    const-string v1, "VideoInfoExtra"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 587
    invoke-virtual {p0}, Lo/DY;->d()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {p0}, Lo/DY;->d()Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "layout_manager_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 591
    :cond_0
    invoke-virtual {p0}, Lo/DY;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    iget v0, p0, Lo/DY;->D:I

    const-string v1, "extra_season_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 594
    iget-object v0, p0, Lo/DY;->r:Lo/FO;

    invoke-virtual {v0}, Lo/FO;->l()I

    move-result v0

    const-string v1, "extra_episode_index"

    .line 598
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 862
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onStop()V

    .line 863
    iget-object v0, p0, Lo/DY;->v:Lo/DD;

    if-eqz v0, :cond_0

    .line 864
    invoke-virtual {v0}, Lo/DD;->d()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult",
            "AutoDispose"
        }
    .end annotation

    .line 361
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 362
    invoke-static {}, Lo/adq;->d()Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lo/DY;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lo/adq;->f(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 363
    :goto_0
    iget-object v2, p0, Lo/DY;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v3, :cond_1

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 365
    :goto_1
    invoke-virtual {p0}, Lo/DY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1}, Lo/Lq;->b(Landroid/content/Context;)I

    move-result v1

    .line 367
    invoke-static {}, Lo/ady;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x4

    const/4 v7, 0x4

    goto :goto_2

    :cond_2
    move v7, v1

    .line 371
    :goto_2
    new-instance v1, Lo/FO;

    move-object v8, p1

    check-cast v8, Landroid/view/ViewGroup;

    iget-object v4, p0, Lo/DY;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 374
    invoke-virtual {p0, v0, p2}, Lo/DY;->e(ZZ)Landroid/view/View;

    move-result-object v5

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    .line 375
    :cond_3
    invoke-virtual {p0}, Lo/DY;->K()Landroid/view/View;

    move-result-object v0

    :goto_3
    move-object v6, v0

    move-object v2, v1

    move-object v3, v8

    invoke-direct/range {v2 .. v7}, Lo/FO;-><init>(Landroid/view/ViewGroup;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Landroid/view/View;Landroid/view/View;I)V

    iput-object v1, p0, Lo/DY;->r:Lo/FO;

    .line 378
    new-instance v0, Lo/FM;

    iget-object v1, p0, Lo/DY;->r:Lo/FO;

    iget-object v2, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v3, Lo/FH;

    invoke-virtual {v2, v3}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/FM;-><init>(Lo/FQ;Lio/reactivex/Observable;)V

    .line 381
    invoke-virtual {p0}, Lo/DY;->I()V

    .line 383
    iget-object v0, p0, Lo/DY;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_5

    .line 384
    iget-object v0, p0, Lo/DY;->r:Lo/FO;

    .line 385
    invoke-virtual {v0}, Lo/FO;->w()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lo/DY;->k:Lo/UpdateEngine;

    .line 386
    invoke-virtual {v1}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lo/DV;

    invoke-direct {v1, p0}, Lo/DV;-><init>(Lo/DY;)V

    .line 387
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 400
    invoke-virtual {p0, v8}, Lo/DY;->a(Landroid/view/ViewGroup;)V

    if-eqz p2, :cond_6

    .line 405
    invoke-static {}, Lo/ady;->j()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 406
    invoke-direct {p0, p1}, Lo/DY;->a(Landroid/view/View;)V

    goto :goto_4

    .line 408
    :cond_4
    invoke-direct {p0, p1}, Lo/DY;->e(Landroid/view/View;)V

    goto :goto_4

    :cond_5
    if-eqz p2, :cond_6

    .line 411
    invoke-static {}, Lo/ady;->j()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 413
    invoke-direct {p0, p1}, Lo/DY;->a(Landroid/view/View;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public t()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 1375
    sget-object v0, Lcom/netflix/cl/model/AppView;->movieDetails:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/DY;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected v()V
    .locals 2

    const/4 v0, 0x1

    .line 1203
    iput-boolean v0, p0, Lo/DY;->b:Z

    .line 1205
    iput-boolean v0, p0, Lo/DY;->L:Z

    const-wide/16 v0, -0x1

    .line 1206
    iput-wide v0, p0, Lo/DY;->I:J

    const/4 v0, 0x0

    .line 1207
    iput v0, p0, Lo/DY;->H:I

    .line 1209
    invoke-virtual {p0}, Lo/DY;->C()V

    return-void
.end method

.method protected x()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1096
    invoke-virtual {p0}, Lo/DY;->H()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1100
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lo/DY;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/DY;->t:Landroid/widget/FrameLayout;

    .line 1101
    iget-object v0, p0, Lo/DY;->t:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lo/DY;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->v:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1102
    invoke-virtual {p0}, Lo/DY;->Q()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1104
    iget-object v1, p0, Lo/DY;->t:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1107
    :cond_1
    invoke-static {p0}, Lo/UpdateEngine;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    const-class v1, Lo/DG;

    invoke-virtual {v0, v1}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lo/Eh;

    invoke-direct {v1, p0}, Lo/Eh;-><init>(Lo/DY;)V

    .line 1108
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 1115
    new-instance v0, Lo/FD;

    iget-object v1, p0, Lo/DY;->t:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lo/UpdateEngine;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/FD;-><init>(Landroid/view/ViewGroup;Lo/UpdateEngine;)V

    iput-object v0, p0, Lo/DY;->p:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    .line 1116
    new-instance v3, Lo/EO;

    iget-object v4, p0, Lo/DY;->p:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    iget-object v0, p0, Lo/DY;->k:Lo/UpdateEngine;

    const-class v1, Lo/DC;

    .line 1118
    invoke-virtual {v0, v1}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v5

    iget-object v0, p0, Lo/DY;->k:Lo/UpdateEngine;

    .line 1119
    invoke-virtual {v0}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lo/EO;-><init>(Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/ES;Ljava/lang/String;)V

    return-void
.end method

.method protected y()Ljava/lang/String;
    .locals 1

    .line 655
    iget-object v0, p0, Lo/DY;->h:Ljava/lang/String;

    return-object v0
.end method

.method protected z()Lo/Bc;
    .locals 1

    .line 1502
    iget-object v0, p0, Lo/DY;->A:Lo/Bc;

    return-object v0
.end method
