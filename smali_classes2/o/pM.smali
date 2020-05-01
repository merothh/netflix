.class public Lo/pM;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerPrefetchResponseHandler;
.source ""

# interfaces
.implements Lo/pP;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/pM$TaskDescription;
    }
.end annotation


# static fields
.field public static c:Ljava/lang/String; = "nf_bladerunner"

.field public static e:Ljava/lang/String; = "nf_nq"


# instance fields
.field private a:Lo/pZ;

.field private d:Lo/SmartSelectSprite;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lo/SmartSelectSprite;Lo/pZ;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerPrefetchResponseHandler;-><init>()V

    .line 68
    iput-object p1, p0, Lo/pM;->d:Lo/SmartSelectSprite;

    .line 69
    iput-object p2, p0, Lo/pM;->a:Lo/pZ;

    return-void
.end method

.method public static a(Lo/sx;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 502
    new-instance v0, Lo/pR;

    invoke-direct {v0}, Lo/pR;-><init>()V

    .line 504
    invoke-virtual {v0, p0}, Lo/pR;->a(Lo/sx;)Lo/pR;

    move-result-object p0

    const-string v0, "xid"

    .line 505
    invoke-virtual {p0, v0, p1}, Lo/pR;->e(Ljava/lang/String;Ljava/lang/String;)Lo/pR;

    move-result-object p0

    .line 506
    invoke-virtual {p0}, Lo/pR;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lo/pM;)Lo/SmartSelectSprite;
    .locals 0

    .line 60
    iget-object p0, p0, Lo/pM;->d:Lo/SmartSelectSprite;

    return-object p0
.end method

.method static synthetic a(Lo/pM;Lcom/netflix/mediaclient/StatusCode;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lo/pM;->e(Lcom/netflix/mediaclient/StatusCode;)V

    return-void
.end method

.method private b(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 519
    const-class v0, Lo/Ck;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Ck;

    invoke-interface {v0, p1, p2, p3}, Lo/Ck;->a(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 520
    sget-object p2, Lo/pM;->c:Ljava/lang/String;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const-string v0, "yearly warning msg: %s"

    invoke-static {p2, v0, p3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object p1
.end method

.method private b(Landroid/content/Context;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lo/pS;)V
    .locals 3

    .line 330
    sget-object v0, Lo/pM;->c:Ljava/lang/String;

    const-string v1, "fetching upsell message for download limit reached error "

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v0, Lo/qp;

    sget-object v1, Lo/qp;->B:Ljava/lang/String;

    new-instance v2, Lo/pM$4;

    invoke-direct {v2, p0, p2, p4, p3}, Lo/pM$4;-><init>(Lo/pM;Lcom/netflix/mediaclient/android/app/Status;Lo/pS;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;)V

    invoke-direct {v0, p1, v1, v2}, Lo/qp;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/pS;)V

    .line 342
    iget-object p1, p0, Lo/pM;->d:Lo/SmartSelectSprite;

    invoke-interface {p1, v0}, Lo/SmartSelectSprite;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lo/sx;Lo/pS;)V
    .locals 7

    .line 463
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v2

    if-eqz p3, :cond_0

    .line 466
    new-instance v6, Lo/pM$10;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/pM$10;-><init>(Lo/pM;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo/pS;)V

    .line 477
    invoke-virtual {p0, p3, v6}, Lo/pM;->a(Lo/sx;Lo/pS;)V

    goto :goto_0

    .line 480
    :cond_0
    new-instance p3, Lo/qm;

    const/4 v4, 0x1

    sget-object v5, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    move-object v0, p3

    move-object v1, v2

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lo/qm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;Lo/pS;)V

    .line 481
    iget-object p1, p0, Lo/pM;->d:Lo/SmartSelectSprite;

    invoke-interface {p1, p3}, Lo/SmartSelectSprite;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    :goto_0
    return-void
.end method

.method static synthetic c(Lo/pM;Landroid/content/Context;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lo/pS;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lo/pM;->b(Landroid/content/Context;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lo/pS;)V

    return-void
.end method

.method static synthetic d(Lo/pM;JLjava/util/Locale;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lo/pM;->e(JLjava/util/Locale;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p0

    return-object p0
.end method

.method private d(Lo/sx;)Z
    .locals 1

    .line 458
    invoke-virtual {p1}, Lo/sx;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "playbackContextId="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private e(JLjava/util/Locale;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .line 511
    invoke-direct {p0, p1, p2, p3}, Lo/pM;->b(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 512
    new-instance p2, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object p3, Lcom/netflix/mediaclient/StatusCode;->da:Lcom/netflix/mediaclient/StatusCode;

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;I)V

    .line 513
    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 514
    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->d(Z)V

    return-object p2
.end method

.method private e(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lo/pM;->a:Lo/pZ;

    iget-object v0, v0, Lo/pZ;->d:Lo/cz;

    invoke-interface {v0, p1}, Lo/cz;->d(Lcom/netflix/mediaclient/StatusCode;)V

    return-void
.end method


# virtual methods
.method public a()Lo/ds;
    .locals 1

    .line 564
    iget-object v0, p0, Lo/pM;->a:Lo/pZ;

    iget-object v0, v0, Lo/pZ;->d:Lo/cz;

    invoke-interface {v0}, Lo/cz;->e()Lo/ds;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;Lo/sx;Lo/sx;Ljava/lang/String;Lo/pS;)V
    .locals 8

    .line 412
    invoke-virtual {p4}, Lo/sx;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "activateAndRefresh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0, p4}, Lo/pM;->d(Lo/sx;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 416
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object p4, v3, v1

    const-string v1, "nf_nq"

    const-string v2, "ROL - shouldUseNq: %s Link: %s"

    invoke-static {v1, v2, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 418
    new-instance v1, Lo/pV;

    iget-object v2, p0, Lo/pM;->a:Lo/pZ;

    iget-object v2, v2, Lo/pZ;->a:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v3, p0, Lo/pM;->a:Lo/pZ;

    iget-object v3, v3, Lo/pZ;->d:Lo/cz;

    invoke-interface {v3}, Lo/cz;->an()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lo/pV;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Z)V

    if-eqz v0, :cond_1

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lo/pV;->b(J)Lo/pV;

    .line 422
    :cond_1
    invoke-virtual {v1, p2}, Lo/pV;->a(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;)Lo/pV;

    .line 423
    invoke-virtual {v1, p4, p5}, Lo/pV;->a(Lo/sx;Ljava/lang/String;)Lo/pV;

    move-result-object p2

    invoke-virtual {p2}, Lo/pV;->e()Ljava/lang/String;

    move-result-object v4

    .line 424
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v2

    .line 426
    new-instance v7, Lo/pM$5;

    invoke-direct {v7, p0, v2, p6}, Lo/pM$5;-><init>(Lo/pM;Landroid/content/Context;Lo/pS;)V

    .line 447
    sget-object p2, Lo/pM;->c:Ljava/lang/String;

    const-string p4, "refreshing offline license"

    invoke-static {p2, p4}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 450
    invoke-direct {p0, p1, v4, p3, v7}, Lo/pM;->b(Ljava/lang/String;Ljava/lang/String;Lo/sx;Lo/pS;)V

    goto :goto_1

    .line 452
    :cond_2
    new-instance p1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;

    sget-object v3, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;->a:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;

    const/4 v5, 0x1

    sget-object v6, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;Ljava/lang/String;ZLcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;Lo/pS;)V

    .line 453
    iget-object p2, p0, Lo/pM;->d:Lo/SmartSelectSprite;

    invoke-interface {p2, p1}, Lo/SmartSelectSprite;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lo/pS;)V
    .locals 0

    .line 175
    invoke-virtual/range {p0 .. p6}, Lo/pM;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lo/pS;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lo/sx;Ljava/lang/String;Lo/pS;)V
    .locals 7

    .line 289
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v1

    .line 291
    new-instance v0, Lo/pV;

    iget-object v2, p0, Lo/pM;->a:Lo/pZ;

    iget-object v2, v2, Lo/pZ;->a:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v3, p0, Lo/pM;->a:Lo/pZ;

    iget-object v3, v3, Lo/pZ;->d:Lo/cz;

    invoke-interface {v3}, Lo/cz;->an()Z

    move-result v3

    invoke-direct {v0, v2, v3}, Lo/pV;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Z)V

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lo/pV;->b(J)Lo/pV;

    .line 293
    invoke-virtual {v0, p2, p3}, Lo/pV;->a(Lo/sx;Ljava/lang/String;)Lo/pV;

    move-result-object p2

    invoke-virtual {p2}, Lo/pV;->e()Ljava/lang/String;

    move-result-object v3

    .line 295
    new-instance v6, Lo/pM$3;

    invoke-direct {v6, p0, v1, p4}, Lo/pM$3;-><init>(Lo/pM;Landroid/content/Context;Lo/pS;)V

    .line 322
    sget-object p2, Lo/pM;->c:Ljava/lang/String;

    const-string p3, "fetching offline license"

    invoke-static {p2, p3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance p2, Lo/qm;

    sget-object v5, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    const/4 v4, 0x0

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lo/qm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;Lo/pS;)V

    .line 325
    iget-object p1, p0, Lo/pM;->d:Lo/SmartSelectSprite;

    invoke-interface {p1, p2}, Lo/SmartSelectSprite;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public a(Lo/rf;Lo/pS;)V
    .locals 9

    .line 233
    new-instance v0, Lo/qb;

    iget-object v1, p0, Lo/pM;->a:Lo/pZ;

    iget-object v1, v1, Lo/pZ;->a:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {v0, v1}, Lo/qb;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    .line 235
    invoke-interface {p1}, Lo/rf;->a()Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/qb;->b(Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;)Lo/qb;

    move-result-object v0

    .line 236
    invoke-virtual {v0, p1}, Lo/qb;->b(Lo/rf;)Lo/qb;

    move-result-object v0

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lo/qb;->e(J)Lo/qb;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lo/qb;->a()Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v2

    .line 243
    new-instance v6, Lo/pM$1;

    invoke-direct {v6, p0, v2, p2}, Lo/pM$1;-><init>(Lo/pM;Landroid/content/Context;Lo/pS;)V

    .line 278
    new-instance p2, Lo/qi;

    .line 279
    invoke-interface {p1}, Lo/rf;->a()Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    move-result-object v5

    invoke-interface {p1}, Lo/rf;->c()Ljava/lang/Long;

    move-result-object v8

    const/4 v4, 0x0

    move-object v1, p2

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lo/qi;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;Lo/pS;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerPrefetchResponseHandler;Ljava/lang/Long;)V

    .line 280
    invoke-interface {p1}, Lo/rf;->a()Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-interface {p1}, Lo/rf;->c()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo/pM;->d(Ljava/lang/Long;Lo/qr;)V

    .line 283
    :cond_0
    iget-object p1, p0, Lo/pM;->d:Lo/SmartSelectSprite;

    invoke-interface {p1, p2}, Lo/SmartSelectSprite;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public a(Lo/sx;Lo/pS;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 371
    invoke-virtual {p1}, Lo/sx;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    .line 375
    sget-object v1, Lo/pM;->c:Ljava/lang/String;

    const-string v2, "activateOfflineLicense"

    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {p0, p1}, Lo/pM;->c(Lo/sx;)Lo/pR;

    move-result-object p1

    .line 377
    new-instance v1, Lo/qg;

    invoke-virtual {p1}, Lo/pR;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lo/pR;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1, p2}, Lo/qg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo/pS;)V

    .line 378
    iget-object p1, p0, Lo/pM;->d:Lo/SmartSelectSprite;

    invoke-interface {p1, v1}, Lo/SmartSelectSprite;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/util/List;Lo/pS;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/sx;",
            ">;",
            "Lo/pS;",
            ")V"
        }
    .end annotation

    .line 487
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    .line 488
    new-instance v1, Lo/pY;

    invoke-direct {v1}, Lo/pY;-><init>()V

    invoke-virtual {v1, p1}, Lo/pY;->a(Ljava/util/List;)Lo/pY;

    move-result-object p1

    .line 489
    new-instance v1, Lo/qw;

    invoke-virtual {p1}, Lo/pY;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lo/pY;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1, p2}, Lo/qw;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo/pS;)V

    .line 490
    iget-object p1, p0, Lo/pM;->d:Lo/SmartSelectSprite;

    invoke-interface {p1, v1}, Lo/SmartSelectSprite;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public b(Lo/rf;Lo/pS;)V
    .locals 5

    .line 526
    invoke-interface {p1}, Lo/rf;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/pM;->a(Ljava/lang/Long;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 528
    sget-object v1, Lo/pM;->c:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lo/rf;->c()Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%d has pending LDL request, may PROMOTE."

    invoke-static {v1, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 529
    monitor-enter v0

    .line 530
    :try_start_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->E()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->r()Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    sget-object v1, Lo/pM;->c:Ljava/lang/String;

    const-string v2, "PROMOTE pending LDL request in the queue."

    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;->l()V

    .line 533
    invoke-virtual {p0, p1, p2}, Lo/pM;->c(Lo/rf;Lo/pS;)V

    .line 535
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lo/sx;)Lo/pR;
    .locals 3

    .line 494
    sget-object v0, Lo/pM;->c:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "building param for link %s"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 495
    new-instance v0, Lo/pR;

    invoke-direct {v0}, Lo/pR;-><init>()V

    invoke-virtual {v0, p1}, Lo/pR;->a(Lo/sx;)Lo/pR;

    move-result-object p1

    return-object p1
.end method

.method public c(Lo/rf;Lo/pS;)V
    .locals 0

    .line 229
    invoke-virtual {p0, p1, p2}, Lo/pM;->a(Lo/rf;Lo/pS;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lo/pS;)V
    .locals 6

    .line 181
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v2

    .line 182
    new-instance v0, Lo/pX;

    iget-object v1, p0, Lo/pM;->a:Lo/pZ;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->n(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lo/pX;-><init>(Landroid/content/Context;Lo/pZ;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V

    .line 183
    invoke-virtual {v0, p5}, Lo/pX;->b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;)Lo/pT;

    move-result-object p5

    .line 184
    invoke-virtual {p5, p2, p3}, Lo/pT;->a(Ljava/lang/String;Ljava/lang/String;)Lo/pT;

    move-result-object p2

    .line 185
    invoke-static {v2}, Lo/adq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lo/pT;->b(Ljava/lang/String;)Lo/pQ;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 p5, 0x0

    aput-object p1, p3, p5

    .line 186
    invoke-virtual {p2, p3}, Lo/pQ;->c([Ljava/lang/String;)Lo/pQ;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Lo/pQ;->g()Ljava/lang/String;

    move-result-object v3

    .line 190
    new-instance v5, Lo/pM$TaskDescription;

    invoke-direct {v5, p0, p6}, Lo/pM$TaskDescription;-><init>(Lo/pM;Lo/pS;)V

    .line 192
    new-instance p1, Lo/qj;

    sget-object v4, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->b:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    move-object v0, p1

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Lo/qj;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;Lo/pS;)V

    .line 193
    iget-object p2, p0, Lo/pM;->d:Lo/SmartSelectSprite;

    invoke-interface {p2, p1}, Lo/SmartSelectSprite;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lo/sE;Lo/pS;)V
    .locals 7

    .line 198
    sget-object v0, Lo/pM;->c:Ljava/lang/String;

    const-string v1, "refreshOfflineManifest"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p7, :cond_2

    .line 200
    invoke-interface {p7}, Lo/sE;->U()Lo/sA;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    invoke-static {p7, p5}, Lo/sK;->a(Lo/sE;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p5

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    .line 207
    iget-object v1, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 208
    iget-object p5, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p5, Lcom/netflix/mediaclient/media/manifest/Stream;

    invoke-virtual {p5}, Lcom/netflix/mediaclient/media/manifest/Stream;->contentProfile()Ljava/lang/String;

    move-result-object v0

    .line 210
    :cond_1
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v2

    .line 212
    new-instance p5, Lo/pX;

    iget-object v1, p0, Lo/pM;->a:Lo/pZ;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->n(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v3

    invoke-direct {p5, v2, v1, v3}, Lo/pX;-><init>(Landroid/content/Context;Lo/pZ;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V

    .line 213
    invoke-virtual {p5, p6}, Lo/pX;->b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;)Lo/pT;

    move-result-object p5

    .line 214
    invoke-virtual {p5, p2, p3}, Lo/pT;->a(Ljava/lang/String;Ljava/lang/String;)Lo/pT;

    move-result-object p2

    .line 215
    invoke-virtual {p2, v0}, Lo/pT;->d(Ljava/lang/String;)Lo/pT;

    move-result-object p2

    .line 216
    invoke-static {v2}, Lo/adq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lo/pT;->b(Ljava/lang/String;)Lo/pQ;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 p5, 0x0

    aput-object p1, p3, p5

    .line 217
    invoke-virtual {p2, p3}, Lo/pQ;->c([Ljava/lang/String;)Lo/pQ;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Lo/pQ;->g()Ljava/lang/String;

    move-result-object v4

    .line 221
    new-instance v6, Lo/pM$TaskDescription;

    invoke-direct {v6, p0, p8}, Lo/pM$TaskDescription;-><init>(Lo/pM;Lo/pS;)V

    .line 223
    new-instance p1, Lo/qx;

    move-object v1, p1

    move-object v3, p4

    move-object v5, p7

    invoke-direct/range {v1 .. v6}, Lo/qx;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo/sE;Lo/pS;)V

    .line 224
    iget-object p2, p0, Lo/pM;->d:Lo/SmartSelectSprite;

    invoke-interface {p2, p1}, Lo/SmartSelectSprite;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void

    :cond_2
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p8

    .line 201
    invoke-virtual/range {v0 .. v6}, Lo/pM;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lo/pS;)V

    return-void
.end method

.method public d(Lo/pW;Lo/pS;)Z
    .locals 12

    .line 541
    iget-wide v0, p1, Lo/pW;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/pM;->b(Ljava/lang/Long;)Lo/qv;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 543
    sget-object v2, Lo/pM;->c:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-wide v5, p1, Lo/pW;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%d has pending manifest prefetch request, may PROMOTE."

    invoke-static {v2, v5, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 544
    monitor-enter v0

    .line 545
    :try_start_0
    invoke-interface {v0}, Lo/qv;->E()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lo/qv;->r()Z

    move-result v2

    if-nez v2, :cond_0

    .line 546
    sget-object v2, Lo/pM;->c:Ljava/lang/String;

    const-string v4, "PROMOTE pending manifest prefetch request in the queue."

    invoke-static {v2, v4}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-interface {v0}, Lo/qv;->l()V

    new-array v6, v3, [Lo/pW;

    aput-object p1, v6, v1

    .line 548
    sget-object v7, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->d:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    invoke-interface {v0}, Lo/qv;->L_()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v5, p0

    move-object v10, p2

    invoke-virtual/range {v5 .. v11}, Lo/pM;->e([Lo/pW;Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;ZLjava/lang/String;Lo/pS;Lo/P;)V

    .line 549
    invoke-interface {v0}, Lo/qv;->K_()V

    .line 550
    monitor-exit v0

    return v3

    .line 552
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return v1
.end method

.method public e(Lo/sx;)V
    .locals 1

    .line 359
    new-instance v0, Lo/pM$2;

    invoke-direct {v0, p0}, Lo/pM$2;-><init>(Lo/pM;)V

    .line 367
    invoke-virtual {p0, p1, v0}, Lo/pM;->a(Lo/sx;Lo/pS;)V

    return-void
.end method

.method public e(Lo/sx;Ljava/lang/String;ZLo/pS;)V
    .locals 1

    .line 351
    new-instance v0, Lo/pO;

    invoke-direct {v0, p3, p2}, Lo/pO;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, p1}, Lo/pO;->a(Lo/sx;)Lo/pR;

    move-result-object p1

    .line 352
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object p2

    .line 353
    new-instance p3, Lo/qu;

    invoke-virtual {p1}, Lo/pR;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lo/pR;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p2, v0, p1, p4}, Lo/qu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo/pS;)V

    .line 354
    iget-object p1, p0, Lo/pM;->d:Lo/SmartSelectSprite;

    invoke-interface {p1, p3}, Lo/SmartSelectSprite;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public e([Lo/pW;Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;ZLjava/lang/String;Lo/pS;Lo/P;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    .line 74
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v1

    .line 75
    new-instance v2, Lo/pU;

    iget-object v3, v7, Lo/pM;->a:Lo/pZ;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->n(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v4

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lo/x;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Lo/pU;-><init>(Landroid/content/Context;Lo/pZ;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;Ljava/lang/String;)V

    .line 76
    array-length v1, v0

    new-array v10, v1, [Ljava/lang/Long;

    .line 77
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 78
    array-length v3, v0

    new-array v3, v3, [Z

    .line 79
    array-length v4, v0

    new-array v4, v4, [Z

    .line 80
    array-length v5, v0

    new-array v5, v5, [Lo/re;

    .line 81
    array-length v6, v0

    new-array v6, v6, [Ljava/lang/String;

    .line 82
    array-length v11, v0

    new-array v11, v11, [Ljava/lang/String;

    .line 83
    array-length v12, v0

    new-array v12, v12, [Ljava/lang/Boolean;

    .line 85
    array-length v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v14, v13, :cond_0

    move/from16 v16, v13

    aget-object v13, v0, v14

    .line 86
    iget-wide v7, v13, Lo/pW;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v10, v15

    .line 87
    iget-wide v7, v13, Lo/pW;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v15

    .line 88
    iget-boolean v7, v13, Lo/pW;->b:Z

    aput-boolean v7, v3, v15

    .line 89
    iget-boolean v7, v13, Lo/pW;->e:Z

    aput-boolean v7, v4, v15

    .line 90
    iget-object v7, v13, Lo/pW;->c:Lo/re;

    aput-object v7, v5, v15

    .line 91
    iget-object v7, v13, Lo/pW;->d:Ljava/lang/String;

    aput-object v7, v6, v15

    .line 92
    iget-object v7, v13, Lo/pW;->i:Ljava/lang/String;

    aput-object v7, v11, v15

    .line 93
    iget-object v7, v13, Lo/pW;->h:Ljava/lang/Boolean;

    aput-object v7, v12, v15

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v13, v16

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v2, v5}, Lo/pU;->b([Lo/re;)Lo/pU;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v3}, Lo/pU;->b([Z)Lo/pU;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v4}, Lo/pU;->c([Z)Lo/pU;

    move-result-object v0

    move-object/from16 v2, p4

    .line 100
    invoke-virtual {v0, v2}, Lo/pU;->d(Ljava/lang/String;)Lo/pU;

    move-result-object v0

    .line 101
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lo/adq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/pU;->b(Ljava/lang/String;)Lo/pQ;

    move-result-object v0

    move-object/from16 v7, p2

    .line 102
    invoke-virtual {v0, v7}, Lo/pQ;->a(Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;)Lo/pQ;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v1}, Lo/pQ;->c([Ljava/lang/String;)Lo/pQ;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v6, v11, v12}, Lo/pQ;->b([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Boolean;)Lo/pQ;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lo/pQ;->g()Ljava/lang/String;

    move-result-object v2

    .line 108
    new-instance v4, Lo/pM$TaskDescription;

    move-object/from16 v8, p0

    move-object/from16 v0, p5

    invoke-direct {v4, v8, v0}, Lo/pM$TaskDescription;-><init>(Lo/pM;Lo/pS;)V

    if-eqz p3, :cond_1

    .line 112
    new-instance v11, Lo/ql;

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v1

    move-object v0, v11

    move-object/from16 v3, p2

    move-object/from16 v5, p0

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lo/ql;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;Lo/pS;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerPrefetchResponseHandler;[Ljava/lang/Long;)V

    goto :goto_1

    .line 114
    :cond_1
    new-instance v11, Lo/qq;

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v1

    move-object v0, v11

    move-object/from16 v3, p2

    move-object/from16 v5, p0

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lo/qq;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;Lo/pS;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerPrefetchResponseHandler;[Ljava/lang/Long;)V

    .line 117
    :goto_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->a:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    if-ne v0, v7, :cond_2

    .line 118
    invoke-virtual {v8, v10, v11}, Lo/pM;->c([Ljava/lang/Long;Lo/qv;)V

    :cond_2
    if-eqz v9, :cond_3

    .line 121
    invoke-interface {v11, v9}, Lo/qv;->c(Ljava/lang/Object;)V

    .line 123
    :cond_3
    sget-object v0, Lo/pM;->c:Ljava/lang/String;

    const-string v1, "sending nq_manifest request"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, v8, Lo/pM;->d:Lo/SmartSelectSprite;

    invoke-interface {v0, v11}, Lo/SmartSelectSprite;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method
