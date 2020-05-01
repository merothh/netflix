.class public Lo/rb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;
.implements Lo/sD$ActionBar;


# instance fields
.field protected a:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

.field protected b:I

.field protected c:Lo/rk;

.field protected d:I

.field protected e:Landroid/os/Handler;

.field protected f:Z

.field protected g:Lo/iU;

.field protected h:I

.field protected i:Z

.field protected j:Z

.field private k:Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;

.field protected l:Lo/ds;

.field protected m:Lo/rp;

.field private n:[B

.field protected o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lo/rp;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroid/os/Looper;Lo/rk;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 81
    iput v0, p0, Lo/rb;->d:I

    const/4 v0, 0x5

    .line 91
    iput v0, p0, Lo/rb;->h:I

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lo/rb;->o:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/rb;->p:Ljava/util/List;

    .line 101
    iput-object p3, p0, Lo/rb;->c:Lo/rk;

    .line 102
    iput p1, p0, Lo/rb;->b:I

    .line 103
    iget-object p1, p0, Lo/rb;->c:Lo/rk;

    invoke-virtual {p1}, Lo/rk;->i()Lo/pM;

    move-result-object p1

    invoke-virtual {p1}, Lo/pM;->a()Lo/ds;

    move-result-object p1

    iput-object p1, p0, Lo/rb;->l:Lo/ds;

    .line 104
    iget-object p1, p0, Lo/rb;->c:Lo/rk;

    invoke-virtual {p1}, Lo/rk;->f()Lo/iU;

    move-result-object p1

    iput-object p1, p0, Lo/rb;->g:Lo/iU;

    .line 105
    invoke-direct {p0, p2}, Lo/rb;->c(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lo/rb;->e:Landroid/os/Handler;

    .line 106
    iget-object p1, p0, Lo/rb;->g:Lo/iU;

    iget-object p2, p0, Lo/rb;->e:Landroid/os/Handler;

    invoke-interface {p1, p2}, Lo/iU;->e(Landroid/os/Handler;)V

    .line 107
    iget-object p1, p0, Lo/rb;->c:Lo/rk;

    invoke-virtual {p1}, Lo/rk;->h()Z

    move-result p1

    invoke-direct {p0, p1}, Lo/rb;->b(Z)V

    .line 108
    invoke-direct {p0}, Lo/rb;->c()V

    return-void
.end method

.method private a(Ljava/lang/Long;Z)Lo/qc;
    .locals 1

    .line 410
    new-instance v0, Lo/rb$4;

    invoke-direct {v0, p0, p1, p2}, Lo/rb$4;-><init>(Lo/rb;Ljava/lang/Long;Z)V

    return-object v0
.end method

.method private a(Ljava/lang/Long;)V
    .locals 1

    .line 591
    iget-object v0, p0, Lo/rb;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/rp;

    if-eqz p1, :cond_0

    .line 593
    invoke-interface {p1}, Lo/rp;->b()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lo/rb;Ljava/lang/Long;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lo/rb;->a(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic a(Lo/rb;[B)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lo/rb;->e([B)V

    return-void
.end method

.method static synthetic b(Lo/rb;)Ljava/util/List;
    .locals 0

    .line 62
    iget-object p0, p0, Lo/rb;->p:Ljava/util/List;

    return-object p0
.end method

.method private b(Ljava/lang/Long;)V
    .locals 1

    .line 542
    iget-object v0, p0, Lo/rb;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lo/rb;Ljava/lang/Long;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lo/rb;->e(Ljava/lang/Long;)V

    return-void
.end method

.method private b(Z)V
    .locals 5

    .line 320
    invoke-direct {p0}, Lo/rb;->j()V

    .line 321
    iget-object v0, p0, Lo/rb;->a:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-interface {v0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getMaxSessionCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-nez p1, :cond_1

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 324
    :goto_1
    iput-boolean v4, p0, Lo/rb;->f:Z

    const-string v4, "NfDrmManager_MediaDrmController"

    if-eqz p1, :cond_2

    const-string p1, "license prefetch is disabled by config"

    .line 326
    invoke-static {v4, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 327
    :cond_2
    iget-boolean p1, p0, Lo/rb;->f:Z

    if-eqz p1, :cond_3

    const-string p1, "license prefetch is disabled due to insufficient session"

    .line 328
    invoke-static {v4, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x3

    const/16 p1, 0x14

    .line 331
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lo/rb;->h:I

    .line 332
    invoke-static {}, Lo/eR;->j()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 334
    iget p1, p0, Lo/rb;->h:I

    sub-int/2addr p1, v3

    iput p1, p0, Lo/rb;->h:I

    .line 336
    :cond_4
    iget p1, p0, Lo/rb;->h:I

    if-gt p1, v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lo/rb;->j:Z

    .line 337
    iget-object p1, p0, Lo/rb;->a:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-static {p1}, Lo/adU;->c(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;)V

    return-void
.end method

.method private c(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    .line 167
    new-instance v0, Lo/rb$2;

    invoke-direct {v0, p0, p1}, Lo/rb$2;-><init>(Lo/rb;Landroid/os/Looper;)V

    return-object v0
.end method

.method static synthetic c(Lo/rb;Ljava/lang/Long;Z)Lo/qc;
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lo/rb;->a(Ljava/lang/Long;Z)Lo/qc;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 6

    .line 120
    sget-boolean v0, Lo/pB;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/rb;->a:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    if-eqz v0, :cond_0

    iget v0, p0, Lo/rb;->b:I

    if-nez v0, :cond_0

    invoke-static {}, Lo/ee;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 122
    :try_start_0
    iget-object v3, p0, Lo/rb;->a:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    sget-object v4, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->STREAMING:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    invoke-interface {v3, v4}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->openSession(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 123
    :try_start_1
    new-instance v4, Landroid/media/MediaCrypto;

    sget-object v5, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->WIDEVINE_SCHEME:Ljava/util/UUID;

    invoke-direct {v4, v5, v3}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    .line 124
    new-instance v5, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;

    invoke-direct {v5, v4, v0}, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;-><init>(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    :try_start_2
    iget v1, p0, Lo/rb;->h:I

    sub-int/2addr v1, v2

    iput v1, p0, Lo/rb;->h:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v5

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v5

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v0

    const-string v0, "NfDrmManager_MediaDrmController"

    const-string v4, "Can\'t create a proxy drm session %s"

    .line 127
    invoke-static {v0, v4, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_0
    move-object v3, v1

    .line 130
    :goto_1
    iput-object v1, p0, Lo/rb;->k:Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;

    .line 131
    iput-object v3, p0, Lo/rb;->n:[B

    return-void
.end method

.method private c(I)V
    .locals 7

    .line 572
    iget-object v0, p0, Lo/rb;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 573
    iget-object v1, p0, Lo/rb;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "NfDrmManager_MediaDrmController"

    const-string v4, "purgeCachedSessions has  %d, target is %d"

    invoke-static {v1, v4, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 574
    iget-object v0, p0, Lo/rb;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 576
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lo/rb;->o:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 577
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 578
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/rp;

    .line 579
    invoke-interface {v5}, Lo/rp;->d()Z

    move-result v6

    if-nez v6, :cond_0

    if-le v0, p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 581
    invoke-interface {v5}, Lo/rp;->t()Ljava/lang/Long;

    move-result-object v5

    .line 582
    invoke-direct {p0, v5}, Lo/rb;->a(Ljava/lang/Long;)V

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v5, v6, v2

    const-string v5, "purgeCachedSessions remove a cached session %d"

    .line 583
    invoke-static {v1, v5, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;)V
    .locals 1

    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Lo/rb;->i:Z

    .line 280
    new-instance v0, Lo/rb$3;

    invoke-direct {v0, p0}, Lo/rb$3;-><init>(Lo/rb;)V

    invoke-static {p1, v0}, Lo/dn;->d(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;Lo/dl;)Lo/dh;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 295
    invoke-virtual {p1, v0}, Lo/dh;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private c(Ljava/lang/Long;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lo/rb;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/rp;

    if-eqz p1, :cond_0

    .line 154
    invoke-interface {p1}, Lo/rp;->g()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lo/rb;Ljava/lang/Long;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lo/rb;->c(Ljava/lang/Long;)V

    return-void
.end method

.method private synthetic d([B)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 304
    :try_start_0
    iget-object v1, p0, Lo/rb;->a:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-interface {v1, p1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->provideProvisionResponse([B)V

    .line 305
    iput-boolean v0, p0, Lo/rb;->i:Z

    .line 306
    invoke-direct {p0}, Lo/rb;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 308
    iput-boolean v0, p0, Lo/rb;->i:Z

    const-string v0, "NfDrmManager_MediaDrmController"

    const-string v1, "provision failed %s"

    .line 309
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 312
    :cond_0
    iput-boolean v0, p0, Lo/rb;->i:Z

    .line 313
    invoke-direct {p0}, Lo/rb;->f()V

    :goto_0
    return-void
.end method

.method private e()V
    .locals 8

    .line 546
    iget-object v0, p0, Lo/rb;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 547
    iget-object v0, p0, Lo/rb;->o:Ljava/util/Map;

    monitor-enter v0

    .line 548
    :try_start_0
    iget-object v1, p0, Lo/rb;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 549
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 550
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 551
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/rp;

    .line 553
    invoke-interface {v2}, Lo/rp;->l()J

    move-result-wide v3

    const-wide/32 v5, 0xdbba0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    invoke-interface {v2}, Lo/rp;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 554
    :cond_1
    invoke-interface {v2}, Lo/rp;->m()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 555
    :cond_2
    invoke-interface {v2}, Lo/rp;->b()V

    .line 556
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 561
    :cond_3
    invoke-interface {v2}, Lo/rp;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 562
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 568
    :cond_4
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_5
    :goto_1
    return-void
.end method

.method private e(Ljava/lang/Long;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lo/rb;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/rp;

    if-eqz p1, :cond_0

    .line 161
    sget-object v0, Lo/LegacyErrorStrings;->u:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lo/rp;->e(Lcom/netflix/mediaclient/android/app/Status;Z)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lo/rb;Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lo/rb;->c(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;)V

    return-void
.end method

.method static synthetic e(Lo/rb;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/rb;->f(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic e(Lo/rb;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lo/rb;->d([B)V

    return-void
.end method

.method private e([B)V
    .locals 2

    .line 300
    iget-object v0, p0, Lo/rb;->e:Landroid/os/Handler;

    new-instance v1, Lo/rd;

    invoke-direct {v1, p0, p1}, Lo/rd;-><init>(Lo/rb;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private f()V
    .locals 5

    .line 693
    iget-object v0, p0, Lo/rb;->o:Ljava/util/Map;

    monitor-enter v0

    .line 694
    :try_start_0
    iget-object v1, p0, Lo/rb;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/rp;

    if-eqz v2, :cond_0

    .line 696
    sget-object v3, Lo/LegacyErrorStrings;->u:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lo/rp;->e(Lcom/netflix/mediaclient/android/app/Status;Z)V

    goto :goto_0

    .line 699
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic f(Ljava/lang/Long;)V
    .locals 0

    .line 538
    invoke-direct {p0, p1}, Lo/rb;->b(Ljava/lang/Long;)V

    return-void
.end method

.method private h()V
    .locals 3

    .line 683
    iget-object v0, p0, Lo/rb;->o:Ljava/util/Map;

    monitor-enter v0

    .line 684
    :try_start_0
    iget-object v1, p0, Lo/rb;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/rp;

    if-eqz v2, :cond_0

    .line 686
    invoke-interface {v2}, Lo/rp;->s()V

    goto :goto_0

    .line 689
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized j()V
    .locals 4

    monitor-enter p0

    .line 643
    :try_start_0
    iget v0, p0, Lo/rb;->b:I

    iget-object v1, p0, Lo/rb;->l:Lo/ds;

    invoke-static {v0, p0, v1}, Lo/adU;->d(ILcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;Lo/ds;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    move-result-object v0

    iput-object v0, p0, Lo/rb;->a:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    .line 644
    iget-object v0, p0, Lo/rb;->a:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    const-string v1, "sessionSharing"

    const-string v2, "enable"

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    :try_start_1
    const-string v1, "NfDrmManager_MediaDrmController"

    const-string v2, "fail to instantiate MediaDrm"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 646
    invoke-static {v1, v0, v2, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;
    .locals 3

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lo/rb;->n:[B

    if-eqz v0, :cond_0

    sget-object v0, Lo/adU;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 138
    :try_start_1
    iget-object v1, p0, Lo/rb;->a:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    iget-object v2, p0, Lo/rb;->n:[B

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->closeSession([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :try_start_2
    iput-object v0, p0, Lo/rb;->n:[B

    .line 143
    iput-object v0, p0, Lo/rb;->k:Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;

    .line 144
    iget v0, p0, Lo/rb;->h:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/rb;->h:I

    goto :goto_1

    .line 142
    :catchall_0
    iput-object v0, p0, Lo/rb;->n:[B

    .line 143
    iput-object v0, p0, Lo/rb;->k:Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;

    .line 144
    iget v0, p0, Lo/rb;->h:I

    goto :goto_0

    .line 146
    :goto_1
    invoke-direct {p0}, Lo/rb;->c()V

    .line 148
    :cond_0
    iget-object v0, p0, Lo/rb;->k:Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a([B)Lo/rp;
    .locals 4

    .line 627
    iget-object v0, p0, Lo/rb;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 628
    iget-object v0, p0, Lo/rb;->o:Ljava/util/Map;

    monitor-enter v0

    .line 629
    :try_start_0
    iget-object v1, p0, Lo/rb;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 630
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 631
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/rp;

    .line 632
    invoke-interface {v2}, Lo/rp;->h()[B

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 633
    monitor-exit v0

    return-object v2

    .line 636
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method a(Lo/Ae;)V
    .locals 2

    .line 652
    iget-boolean v0, p0, Lo/rb;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 660
    :cond_0
    iget-object v0, p0, Lo/rb;->e:Landroid/os/Handler;

    new-instance v1, Lo/rb$9;

    invoke-direct {v1, p0, p1}, Lo/rb$9;-><init>(Lo/rb;Lo/Ae;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 341
    iget-object v0, p0, Lo/rb;->a:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    if-eqz v0, :cond_1

    .line 342
    iget-object v1, p0, Lo/rb;->n:[B

    if-eqz v1, :cond_0

    .line 343
    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->closeSession([B)V

    .line 345
    :cond_0
    iget-object v0, p0, Lo/rb;->a:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-interface {v0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->close()V

    :cond_1
    return-void
.end method

.method protected c(JLjava/lang/Exception;)V
    .locals 5

    .line 249
    iget-object v0, p0, Lo/rb;->a:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    instance-of v0, v0, Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 255
    :cond_1
    invoke-static {}, Lo/adk;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p3, Landroid/media/MediaDrmResetException;

    goto :goto_0

    :cond_2
    iget v0, p0, Lo/rb;->d:I

    if-lez v0, :cond_0

    instance-of v0, p3, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x2

    const-string v4, "NfDrmManager_MediaDrmController"

    if-eqz v0, :cond_3

    .line 260
    iget v0, p0, Lo/rb;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lo/rb;->d:I

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p3, v0, v2

    .line 261
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Attempt to recover from Exception %s with session %d ..."

    invoke-static {v4, p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 266
    :try_start_0
    iget-object p1, p0, Lo/rb;->a:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-interface {p1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :catchall_0
    iget-object p1, p0, Lo/rb;->o:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    const/4 p1, 0x0

    .line 271
    iput-object p1, p0, Lo/rb;->m:Lo/rp;

    .line 272
    invoke-direct {p0}, Lo/rb;->j()V

    goto :goto_1

    :cond_3
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p3, v0, v2

    .line 274
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "DrmSession reported Exception %s with session %d"

    invoke-static {v4, p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    return-void
.end method

.method public c(Ljava/lang/Long;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method c(Z)V
    .locals 2

    .line 601
    iget-object v0, p0, Lo/rb;->e:Landroid/os/Handler;

    new-instance v1, Lo/rb$6;

    invoke-direct {v1, p0, p1}, Lo/rb$6;-><init>(Lo/rb;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized d()Lo/re;
    .locals 13

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 515
    :try_start_0
    iget-object v2, p0, Lo/rb;->m:Lo/rp;

    if-eqz v2, :cond_0

    .line 516
    invoke-static {}, Lo/eR;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lo/rb;->m:Lo/rp;

    invoke-interface {v2}, Lo/rp;->l()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 517
    iget-object v2, p0, Lo/rb;->m:Lo/rp;

    invoke-interface {v2}, Lo/rp;->b()V

    .line 518
    iput-object v0, p0, Lo/rb;->m:Lo/rp;

    .line 521
    :cond_0
    iget-object v2, p0, Lo/rb;->m:Lo/rp;

    if-nez v2, :cond_1

    .line 523
    iget v2, p0, Lo/rb;->h:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Lo/rb;->c(I)V

    const/16 v2, 0x14

    new-array v6, v2, [B

    const/16 v2, 0x8

    aput-byte v2, v6, v1

    aput-byte v3, v6, v3

    const/4 v3, 0x2

    const/16 v4, 0x12

    aput-byte v4, v6, v3

    const/4 v3, 0x3

    const/16 v5, 0x10

    aput-byte v5, v6, v3

    const/4 v3, 0x4

    aput-byte v1, v6, v3

    const/4 v3, 0x5

    aput-byte v1, v6, v3

    const/4 v7, 0x6

    aput-byte v1, v6, v7

    const/4 v7, 0x7

    aput-byte v1, v6, v7

    aput-byte v3, v6, v2

    const/16 v2, 0x9

    const/16 v3, -0x7c

    aput-byte v3, v6, v2

    const/16 v2, 0xa

    const/16 v3, -0x4d

    aput-byte v3, v6, v2

    const/16 v2, 0xb

    const/16 v3, 0x6a

    aput-byte v3, v6, v2

    const/16 v2, 0xc

    aput-byte v1, v6, v2

    const/16 v2, 0xd

    aput-byte v1, v6, v2

    const/16 v2, 0xe

    aput-byte v1, v6, v2

    const/16 v2, 0xf

    aput-byte v1, v6, v2

    aput-byte v1, v6, v5

    const/16 v2, 0x11

    aput-byte v1, v6, v2

    aput-byte v1, v6, v4

    const/16 v2, 0x13

    aput-byte v1, v6, v2

    .line 526
    new-instance v2, Lo/rc;

    const-string v5, ""

    const-string v7, ""

    const-string v8, ""

    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lo/rc;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;)V

    .line 527
    sget-object v3, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-virtual {v2, v3}, Lo/rc;->e(Lcom/netflix/mediaclient/service/player/drm/LicenseType;)V

    .line 528
    iget-object v3, p0, Lo/rb;->e:Landroid/os/Handler;

    iget-object v4, p0, Lo/rb;->a:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4, v5, v2, v0}, Lo/rl;->b(Landroid/os/Handler;Lcom/netflix/mediaclient/drm/NetflixMediaDrm;Ljava/lang/Long;Lo/rf;Lo/rn$StateListAnimator;)Lo/rl;

    move-result-object v2

    iput-object v2, p0, Lo/rb;->m:Lo/rp;

    .line 530
    :cond_1
    new-instance v2, Lo/re;

    iget-object v3, p0, Lo/rb;->m:Lo/rp;

    invoke-interface {v3}, Lo/rp;->c()Lo/rf;

    move-result-object v3

    invoke-interface {v3}, Lo/rf;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lo/rb;->m:Lo/rp;

    invoke-interface {v4}, Lo/rp;->c()Lo/rf;

    move-result-object v4

    invoke-interface {v4}, Lo/rf;->j()J

    move-result-wide v4

    iget-object v6, p0, Lo/rb;->m:Lo/rp;

    invoke-interface {v6}, Lo/rp;->h()[B

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lo/re;-><init>(Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "NfDrmManager_MediaDrmController"

    const-string v4, "unable to get manifest key request"

    new-array v1, v1, [Ljava/lang/Object;

    .line 532
    invoke-static {v3, v2, v4, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/Long;Lo/rf;Lo/rn$StateListAnimator;)Lo/rp;
    .locals 8

    monitor-enter p0

    .line 452
    :try_start_0
    invoke-direct {p0}, Lo/rb;->e()V

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 455
    iget-object v1, p0, Lo/rb;->o:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/rp;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 456
    invoke-interface {v1}, Lo/rp;->c()Lo/rf;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Lo/rp;->k()Z

    move-result v4

    if-nez v4, :cond_1

    .line 458
    invoke-interface {v1, p2}, Lo/rp;->c(Lo/rf;)V

    .line 463
    invoke-interface {p2}, Lo/rf;->g()Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    move-result-object p2

    sget-object p3, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->b:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-virtual {p2, p3}, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {v1}, Lo/rp;->c()Lo/rf;

    move-result-object p2

    invoke-interface {p2}, Lo/rf;->n()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "NfDrmManager_MediaDrmController"

    const-string p3, "%d has pending LDL session, promote pending request."

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 465
    invoke-static {p2, p3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 466
    iget-object p2, p0, Lo/rb;->c:Lo/rk;

    invoke-virtual {p2}, Lo/rk;->i()Lo/pM;

    move-result-object p2

    invoke-interface {v1}, Lo/rp;->c()Lo/rf;

    move-result-object p3

    invoke-direct {p0, p1, v2}, Lo/rb;->a(Ljava/lang/Long;Z)Lo/qc;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lo/pM;->b(Lo/rf;Lo/pS;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    :cond_0
    monitor-exit p0

    return-object v1

    .line 473
    :cond_1
    :try_start_1
    move-object v4, p2

    check-cast v4, Lo/rc;

    if-nez v1, :cond_2

    .line 474
    invoke-virtual {v4}, Lo/rc;->l()Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lo/rb;->m:Lo/rp;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lo/rc;->l()Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;->drmSessionId()I

    move-result v5

    iget-object v6, p0, Lo/rb;->m:Lo/rp;

    invoke-interface {v6}, Lo/rp;->h()[B

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 475
    iget-object p1, p0, Lo/rb;->m:Lo/rp;

    .line 477
    iput-object v0, p0, Lo/rb;->m:Lo/rp;

    .line 478
    iget-object p3, p0, Lo/rb;->o:Ljava/util/Map;

    invoke-virtual {v4}, Lo/rc;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    invoke-interface {p1, p2}, Lo/rp;->c(Lo/rf;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    monitor-exit p0

    return-object p1

    :cond_2
    if-eqz v1, :cond_6

    :try_start_2
    const-string v4, "NfDrmManager_MediaDrmController"

    const-string v5, "%d has cached drm session %s this manifest %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    .line 489
    invoke-interface {v1}, Lo/rp;->c()Lo/rf;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "for"

    goto :goto_0

    :cond_3
    const-string v2, "not for"

    :goto_0
    aput-object v2, v6, v3

    const/4 v2, 0x2

    .line 490
    invoke-interface {v1}, Lo/rp;->o()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v1, ", already closed."

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Lo/rp;->m()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ", has error."

    goto :goto_1

    :cond_5
    const-string v1, "."

    :goto_1
    aput-object v1, v6, v2

    .line 488
    invoke-static {v4, v5, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 491
    invoke-direct {p0, p1}, Lo/rb;->a(Ljava/lang/Long;)V

    .line 495
    :cond_6
    iget v1, p0, Lo/rb;->h:I

    sub-int/2addr v1, v3

    invoke-direct {p0, v1}, Lo/rb;->c(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 498
    :try_start_3
    iget-object v1, p0, Lo/rb;->e:Landroid/os/Handler;

    iget-object v2, p0, Lo/rb;->a:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3, p2, p3}, Lo/rl;->b(Landroid/os/Handler;Lcom/netflix/mediaclient/drm/NetflixMediaDrm;Ljava/lang/Long;Lo/rf;Lo/rn$StateListAnimator;)Lo/rl;

    move-result-object p2

    .line 499
    iget-object p3, p0, Lo/rb;->o:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v0, p2

    .line 502
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3, v0}, Lo/rb;->c(JLjava/lang/Exception;)V

    .line 505
    :cond_7
    :goto_2
    iget-object p2, p0, Lo/rb;->o:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/rp;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_8

    .line 507
    monitor-exit p0

    return-object p1

    .line 509
    :cond_8
    :try_start_5
    new-instance p1, Lcom/netflix/mediaclient/service/player/drm/NfDrmException;

    iget-object p2, p0, Lo/rb;->o:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    iget p3, p0, Lo/rb;->h:I

    invoke-direct {p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmException;-><init>(IILjava/lang/Throwable;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method d(Ljava/lang/Long;)V
    .locals 2

    .line 538
    iget-object v0, p0, Lo/rb;->e:Landroid/os/Handler;

    new-instance v1, Lo/rg;

    invoke-direct {v1, p0, p1}, Lo/rg;-><init>(Lo/rb;Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Lo/sE;Z)V
    .locals 13

    .line 707
    invoke-interface {p1}, Lo/sE;->s()Ljava/lang/Long;

    move-result-object p2

    .line 708
    iget-object v0, p0, Lo/rb;->o:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p2, p1, v1

    const-string p2, "NfDrmManager_MediaDrmController"

    const-string v0, "onManifestAvailable, however there is already a session %d"

    .line 709
    invoke-static {p2, v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 713
    :cond_0
    invoke-interface {p1}, Lo/sE;->w()Z

    move-result v0

    xor-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 716
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 717
    new-instance v12, Lo/rc;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lo/sE;->x()[B

    move-result-object v7

    invoke-interface {p1}, Lo/sE;->V()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1}, Lo/sE;->T()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1}, Lo/sE;->s()Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lo/rc;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;)V

    .line 718
    sget-object p1, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->a:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-virtual {v12, p1}, Lo/rc;->e(Lcom/netflix/mediaclient/service/player/drm/LicenseType;)V

    .line 720
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v12, v3}, Lo/rb;->d(Ljava/lang/Long;Lo/rf;Lo/rn$StateListAnimator;)Lo/rp;
    :try_end_0
    .catch Lcom/netflix/mediaclient/service/player/drm/NfDrmException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    new-array p1, v2, [Ljava/lang/Object;

    aput-object p2, p1, v1

    const-string v1, "NfDrmManager_MediaDrmController"

    const-string v2, "can\'t create drm session for %d"

    .line 723
    invoke-static {v1, v2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 727
    iget-object p1, p0, Lo/rb;->p:Ljava/util/List;

    monitor-enter p1

    .line 728
    :try_start_1
    iget-object v0, p0, Lo/rb;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 729
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2, p2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 730
    iget-object p2, p0, Lo/rb;->p:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 737
    :cond_3
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_4
    :goto_1
    return-void
.end method

.method public onEvent(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;[BII[B)V
    .locals 0

    .line 351
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onEvent ["

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "]"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "NfDrmManager_MediaDrmController"

    invoke-static {p4, p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[B)V

    const/4 p1, 0x3

    if-ne p3, p1, :cond_0

    const-string p1, "EVENT_KEY_EXPIRED - error"

    .line 354
    invoke-static {p4, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p3, p1, :cond_1

    const-string p1, "EVENT_KEY_REQUIRED - to renew"

    .line 358
    invoke-static {p4, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object p1, p0, Lo/rb;->e:Landroid/os/Handler;

    new-instance p3, Lo/rb$5;

    invoke-direct {p3, p0, p2}, Lo/rb$5;-><init>(Lo/rb;[B)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    if-ne p3, p1, :cond_2

    const-string p1, "EVENT_SESSION_RECLAIMED."

    .line 385
    invoke-static {p4, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object p1, p0, Lo/rb;->e:Landroid/os/Handler;

    new-instance p3, Lo/rb$1;

    invoke-direct {p3, p0, p2}, Lo/rb$1;-><init>(Lo/rb;[B)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    if-ne p3, p1, :cond_3

    const-string p1, "EVENT_VENDOR_DEFINED"

    .line 398
    invoke-static {p4, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    if-ne p3, p1, :cond_4

    const-string p1, "EVENT_PROVISION_REQUIRED -  shouldn\'t happen, will handle later."

    .line 401
    invoke-static {p4, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p1, "EVENT_UNKNOWN"

    .line 404
    invoke-static {p4, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
