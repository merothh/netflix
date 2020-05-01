.class public abstract Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;
.super Lo/ParcelFormatException;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$Payload;,
        Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/ParcelFormatException$Activity;",
        "O::",
        "Lo/AR;",
        ">",
        "Lo/ParcelFormatException<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Z

.field protected b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private c:Lo/Ky;

.field private d:Z

.field private final f:Lo/Am;

.field private final g:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

.field private final h:Lo/KN;

.field private i:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$TaskDescription;

.field private j:Ljava/lang/Integer;

.field private k:Landroid/content/BroadcastReceiver;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TO;>;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:I

.field private o:Z

.field private final q:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 1

    .line 163
    invoke-direct {p0, p1, p4, p5}, Lo/ParcelFormatException;-><init>(Landroid/content/Context;Lo/PooledStringWriter;I)V

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->d:Z

    .line 102
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->a:Z

    const/4 p4, 0x0

    .line 114
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->i:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$TaskDescription;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->l:Ljava/util/List;

    .line 132
    iput p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->n:I

    .line 134
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->o:Z

    .line 136
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->m:Z

    .line 138
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->k:Landroid/content/BroadcastReceiver;

    .line 141
    new-instance p1, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$3;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$3;-><init>(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->q:Landroid/content/BroadcastReceiver;

    .line 164
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->g:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    .line 165
    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->g()Lo/Am;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f:Lo/Am;

    .line 166
    invoke-static {}, Lo/Ky;->g()Lo/Ky$TaskDescription;

    move-result-object p1

    .line 167
    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->h()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lo/Ky$TaskDescription;->a(Ljava/lang/String;)Lo/Ky$TaskDescription;

    move-result-object p1

    .line 168
    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->f()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lo/Ky$TaskDescription;->d(Ljava/lang/String;)Lo/Ky$TaskDescription;

    move-result-object p1

    .line 169
    invoke-virtual {p1, p2}, Lo/Ky$TaskDescription;->d(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Lo/Ky$TaskDescription;

    move-result-object p1

    .line 170
    invoke-virtual {p1, p5}, Lo/Ky$TaskDescription;->d(I)Lo/Ky$TaskDescription;

    move-result-object p1

    invoke-virtual {p1}, Lo/Ky$TaskDescription;->e()Lo/Ky;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c:Lo/Ky;

    .line 171
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getNumVideos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->j:Ljava/lang/Integer;

    .line 172
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->g:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->a(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$TaskDescription;)V

    const/4 p1, 0x1

    .line 173
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->setHasStableIds(Z)V

    .line 174
    iput-object p6, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->h:Lo/KN;

    .line 175
    invoke-virtual {p7, p2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d(Lo/Bv;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;Lo/Am;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1, p5, p6}, Lo/ParcelFormatException;-><init>(Landroid/content/Context;Lo/PooledStringWriter;I)V

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->d:Z

    .line 102
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->a:Z

    const/4 p5, 0x0

    .line 114
    iput-object p5, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->i:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$TaskDescription;

    .line 129
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->l:Ljava/util/List;

    .line 132
    iput p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->n:I

    .line 134
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->o:Z

    .line 136
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->m:Z

    .line 138
    iput-object p5, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->k:Landroid/content/BroadcastReceiver;

    .line 141
    new-instance p6, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$3;

    invoke-direct {p6, p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$3;-><init>(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;)V

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->q:Landroid/content/BroadcastReceiver;

    .line 191
    iput-object p5, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->g:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    .line 192
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f:Lo/Am;

    .line 193
    invoke-static {}, Lo/Ky;->g()Lo/Ky$TaskDescription;

    move-result-object p4

    .line 194
    invoke-virtual {p4, p2}, Lo/Ky$TaskDescription;->d(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Lo/Ky$TaskDescription;

    move-result-object p4

    .line 195
    invoke-virtual {p4, p1}, Lo/Ky$TaskDescription;->d(I)Lo/Ky$TaskDescription;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 198
    invoke-virtual {p1, p3}, Lo/Ky$TaskDescription;->a(Ljava/lang/String;)Lo/Ky$TaskDescription;

    .line 200
    :cond_0
    invoke-virtual {p1}, Lo/Ky$TaskDescription;->e()Lo/Ky;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c:Lo/Ky;

    .line 201
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getNumVideos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->j:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 202
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->setHasStableIds(Z)V

    .line 203
    iput-object p7, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->h:Lo/KN;

    .line 204
    invoke-virtual {p8, p2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d(Lo/Bv;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;)I
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c()I

    move-result p0

    return p0
.end method

.method private synthetic a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;)V
    .locals 0

    .line 672
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->a(Landroid/content/Context;Lo/Am;)Z

    return-void
.end method

.method private a(Landroid/content/Context;Lo/Am;)Z
    .locals 7

    .line 552
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 553
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->d(Z)V

    .line 555
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->h:Lo/KN;

    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->g()Lo/Ky;

    move-result-object v0

    invoke-virtual {v0}, Lo/Ky;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c()I

    move-result v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c()I

    move-result v5

    new-instance v6, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$4;

    const-string v0, "BaseListAdapter"

    invoke-direct {v6, p0, v0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$4;-><init>(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;Ljava/lang/String;Landroid/content/Context;Lo/Am;)V

    invoke-interface/range {v1 .. v6}, Lo/KN;->a(Lo/zG;Ljava/lang/String;IILo/zU;)Z

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->i()Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;Landroid/content/Context;Lo/Am;IILo/zU;)V
    .locals 0

    .line 54
    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->e(Landroid/content/Context;Lo/Am;IILo/zU;)V

    return-void
.end method

.method static synthetic c(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;)Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$TaskDescription;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->i:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$TaskDescription;

    return-object p0
.end method

.method private c(JLandroid/content/Context;ZIIZ)Lo/zU;
    .locals 7

    .line 457
    new-instance p3, Lo/zB;

    new-instance v2, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$2;

    invoke-direct {v2, p0, p1, p2, p4}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$2;-><init>(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;JZ)V

    .line 488
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->j()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getListContext()Ljava/lang/String;

    move-result-object v3

    const-string v1, "BaseListAdapter.FetchVideosHandler"

    move-object v0, p3

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lo/zB;-><init>(Ljava/lang/String;Lo/zB$Activity;Ljava/lang/String;IIZ)V

    return-object p3
.end method

.method private c(Landroid/content/Context;Lo/Am;)V
    .locals 11

    .line 541
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->i()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 542
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/4 v0, 0x1

    .line 543
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->d(Z)V

    .line 544
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->h()I

    move-result v9

    .line 545
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->h()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->a(Landroid/content/Context;I)I

    move-result v10

    if-nez v9, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    move v6, v9

    move v7, v10

    .line 547
    invoke-direct/range {v1 .. v8}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c(JLandroid/content/Context;ZIIZ)Lo/zU;

    move-result-object v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, v9

    move v8, v10

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->e(Landroid/content/Context;Lo/Am;IILo/zU;)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;)I
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c()I

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;JLandroid/content/Context;ZIIZ)Lo/zU;
    .locals 0

    .line 54
    invoke-direct/range {p0 .. p7}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c(JLandroid/content/Context;ZIIZ)Lo/zU;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;)V

    return-void
.end method

.method static synthetic e(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;)Lo/Ky;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c:Lo/Ky;

    return-object p0
.end method

.method private e(I)V
    .locals 0

    .line 279
    iput p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->n:I

    return-void
.end method

.method private e(Landroid/content/Context;Lo/Am;IILo/zU;)V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->i:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$TaskDescription;

    if-eqz v0, :cond_0

    .line 423
    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$TaskDescription;->b(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;)V

    .line 425
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->d(Landroid/content/Context;Lo/Am;IILo/zU;)V

    return-void
.end method

.method private p()Ljava/lang/String;
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->g:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private q()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 367
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->j()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "BaseListAdapter"

    const-string v2, "Sending prefetch details request for %s videos in \'%s\' row"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 368
    invoke-static {}, Lo/ep;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f:Lo/Am;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->b()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v2, v3}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1, v2}, Lo/DA;->e(Lo/Am;Ljava/util/List;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f:Lo/Am;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lo/DA;->a(Lo/Am;Ljava/util/List;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;I)I
    .locals 1

    .line 379
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->m:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {p1, v0}, Lo/Lq;->b(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result p1

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    return p2
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .line 599
    invoke-super {p0, p1}, Lo/ParcelFormatException;->a(Landroid/content/Context;)V

    .line 601
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->d()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->o()V

    .line 605
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->k()Landroid/content/IntentFilter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 606
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->k:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    const-string v1, "BaseListAdapter"

    const-string v2, "Register receiver in onResume..."

    .line 607
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 609
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->q:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->k:Landroid/content/BroadcastReceiver;

    .line 617
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->m()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->j()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->isVolatile()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 618
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->b(Z)V

    :cond_2
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 0

    .line 624
    invoke-super {p0, p1, p2}, Lo/ParcelFormatException;->a(Landroid/content/Context;Z)V

    if-nez p2, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->d()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 626
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->o()V

    :cond_0
    return-void
.end method

.method public a(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$TaskDescription;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->i:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$TaskDescription;

    return-void
.end method

.method public a(Lo/Ky;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c:Lo/Ky;

    return-void
.end method

.method protected abstract a(Lo/ParcelFormatException$Activity;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IZ)V"
        }
    .end annotation
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->k:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    const-string v0, "BaseListAdapter"

    const-string v1, "Unregister receiver..."

    .line 634
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 636
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->k:Landroid/content/BroadcastReceiver;

    .line 638
    :cond_0
    invoke-super {p0, p1}, Lo/ParcelFormatException;->b(Landroid/content/Context;)V

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;)V
    .locals 1

    .line 324
    invoke-super {p0, p1, p2}, Lo/ParcelFormatException;->b(Landroidx/recyclerview/widget/RecyclerView;Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;)V

    .line 325
    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->m:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 326
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f:Lo/Am;

    if-eqz p1, :cond_0

    .line 328
    iget-object p2, p2, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c(Landroid/content/Context;Lo/Am;)V

    .line 329
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->m:Z

    .line 332
    :cond_0
    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->a:Z

    if-nez p1, :cond_2

    .line 333
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 335
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->q()V

    goto :goto_0

    .line 337
    :cond_1
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->d:Z

    .line 339
    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->a:Z

    .line 342
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->o()V

    return-void
.end method

.method public b(Lo/ParcelFormatException$Activity;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->e()Lo/PooledStringWriter;

    move-result-object v0

    invoke-virtual {v0}, Lo/PooledStringWriter;->a()I

    move-result v0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 395
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 396
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AR;

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->e(Lo/ParcelFormatException$Activity;Lo/AR;IZ)V

    goto :goto_1

    .line 398
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->a(Lo/ParcelFormatException$Activity;IZ)V

    .line 400
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f:Lo/Am;

    if-eqz p2, :cond_2

    .line 402
    iget-object p1, p1, Lo/ParcelFormatException$Activity;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c(Landroid/content/Context;Lo/Am;)V

    goto :goto_1

    .line 404
    :cond_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "serviceManager should not be null while binding new data"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected b(Z)V
    .locals 1

    .line 668
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->b()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_0

    .line 669
    invoke-static {p1}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 672
    new-instance v0, Lo/JP;

    invoke-direct {v0, p0, p1}, Lo/JP;-><init>(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f:Lo/Am;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 314
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->e(I)V

    .line 315
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->notifyDataSetChanged()V

    .line 316
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "List retry clicked for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->g()Lo/Ky;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c(Landroid/content/Context;Lo/Am;)V

    :cond_0
    return-void
.end method

.method protected c(Lcom/netflix/model/leafs/ListOfMoviesSummary;)V
    .locals 0

    return-void
.end method

.method protected c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TO;>;)V"
        }
    .end annotation

    return-void
.end method

.method public c(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TO;>;Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 495
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 500
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz p2, :cond_1

    .line 504
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 506
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c(Ljava/util/List;)V

    .line 507
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->d(Ljava/util/List;)V

    .line 508
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 510
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadData."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->j()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".notifyDataSetChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->s()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->g()Lo/Ky;

    move-result-object p1

    invoke-virtual {p1}, Lo/Ky;->d()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getNumVideos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->j:Ljava/lang/Integer;

    .line 514
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->notifyDataSetChanged()V

    .line 515
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->e(I)V

    .line 516
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->i:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$TaskDescription;

    if-eqz p1, :cond_2

    .line 517
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c()I

    move-result p2

    invoke-interface {p1, p0, p2}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$TaskDescription;->c(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;I)V

    .line 519
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->g:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    if-eqz p1, :cond_6

    .line 520
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_6

    .line 524
    :cond_4
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->g:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_5
    const-string p1, "BaseListAdapter"

    const-string p2, "Ignoring callback, activity finished"

    .line 528
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return-void
.end method

.method public d(Lo/AR;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)J"
        }
    .end annotation

    .line 223
    invoke-interface {p1}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v3, v0

    :goto_0
    const-wide/32 v5, 0xf4243

    xor-long/2addr v3, v5

    mul-long v3, v3, v5

    .line 225
    invoke-interface {p1}, Lo/AR;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-wide v7, v1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lo/AR;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v7, v0

    :goto_1
    xor-long/2addr v3, v7

    mul-long v3, v3, v5

    .line 227
    invoke-interface {p1}, Lo/AR;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-wide v7, v1

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Lo/AR;->getBoxshotUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v7, p1

    :goto_2
    xor-long/2addr v3, v7

    mul-long v3, v3, v5

    .line 231
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->j()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    move-wide v7, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->j()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v7, p1

    :goto_3
    xor-long/2addr v3, v7

    mul-long v3, v3, v5

    .line 233
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->j()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getRequestId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->j()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v1, p1

    :goto_4
    xor-long v0, v3, v1

    mul-long v0, v0, v5

    .line 235
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->j()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTrackId()I

    move-result p1

    int-to-long v2, p1

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method protected d(Landroid/content/Context;Lo/Am;IILo/zU;)V
    .locals 8

    .line 439
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->h:Lo/KN;

    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->j()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v2

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v6

    const/4 v5, 0x0

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lo/KN;->d(Lo/zG;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/zU;)Z

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TO;>;)V"
        }
    .end annotation

    .line 292
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 294
    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->d:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 295
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->d:Z

    .line 296
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->q()V

    goto :goto_0

    .line 298
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c:Lo/Ky;

    invoke-virtual {p1}, Lo/Ky;->d()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->isVolatile()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 302
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object v0, Lcom/netflix/cl/model/AppView;->noRow:Lcom/netflix/cl/model/AppView;

    invoke-static {p1, v0}, Lo/Yh;->a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/cl/model/AppView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method final d(Z)V
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->o:Z

    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 3

    .line 588
    invoke-super {p0, p1}, Lo/ParcelFormatException;->e(Landroid/content/Context;)V

    .line 589
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->k()Landroid/content/IntentFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "BaseListAdapter"

    const-string v2, "Register receiver in onCreate..."

    .line 591
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 593
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->q:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->k:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public final e(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 411
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 412
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AR;

    .line 413
    invoke-interface {v1}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    sget-object v1, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$Payload;->c:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$Payload;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected abstract e(Lo/ParcelFormatException$Activity;Lo/AR;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TO;IZ)V"
        }
    .end annotation
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TO;>;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->l:Ljava/util/List;

    return-object v0
.end method

.method protected g()Lo/Ky;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c:Lo/Ky;

    return-object v0
.end method

.method public getItemCount()I
    .locals 3

    .line 656
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->s()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 658
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "lomo\'s numVideos should have been set to a non-null value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 213
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AR;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->d(Lo/AR;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 385
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected h()I
    .locals 1

    .line 275
    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->n:I

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->o:Z

    return v0
.end method

.method protected j()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->c:Lo/Ky;

    invoke-virtual {v0}, Lo/Ky;->d()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v0

    return-object v0
.end method

.method protected k()Landroid/content/IntentFilter;
    .locals 2

    .line 447
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->j()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->isVolatile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.netflix.mediaclient.intent.action.BA_LIST_REFRESH"

    .line 449
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->j()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getListContext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected m()Z
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f:Lo/Am;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->j()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected n()V
    .locals 5

    .line 352
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f:Lo/Am;

    if-eqz v0, :cond_1

    .line 353
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->h:Lo/KN;

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->l()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->p()Ljava/lang/String;

    move-result-object v2

    .line 354
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->j()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getListContext()Ljava/lang/String;

    move-result-object v4

    .line 353
    invoke-interface {v1, v0, v2, v4, v3}, Lo/KN;->d(Lo/zG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected o()V
    .locals 1

    .line 346
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->n()V

    :cond_0
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 241
    invoke-super {p0, p1}, Lo/ParcelFormatException;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 246
    invoke-super {p0, p1}, Lo/ParcelFormatException;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method protected s()I
    .locals 2

    .line 649
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->e()Lo/PooledStringWriter;

    move-result-object v0

    invoke-virtual {v0}, Lo/PooledStringWriter;->a()I

    move-result v0

    const/4 v1, 0x3

    .line 648
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
