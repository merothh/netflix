.class public Lo/nC;
.super Lo/bV;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/nC$ActionBar;,
        Lo/nC$Activity;,
        Lo/nC$Application;
    }
.end annotation


# static fields
.field private static final a:J

.field private static final b:J

.field private static final c:J


# instance fields
.field private d:I

.field private e:Landroid/os/Handler;

.field private f:Lo/JavascriptInterface;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/nA;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

.field private j:Lo/ny$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/nC;->c:J

    .line 64
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/nC;->a:J

    .line 70
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/nC;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Lo/bV;-><init>()V

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/nC;->g:Ljava/util/Map;

    .line 435
    new-instance v0, Lo/nC$5;

    invoke-direct {v0, p0}, Lo/nC$5;-><init>(Lo/nC;)V

    iput-object v0, p0, Lo/nC;->f:Lo/JavascriptInterface;

    .line 446
    new-instance v0, Lo/nC$2;

    invoke-direct {v0, p0}, Lo/nC$2;-><init>(Lo/nC;)V

    iput-object v0, p0, Lo/nC;->j:Lo/ny$StateListAnimator;

    return-void
.end method

.method static synthetic a()J
    .locals 2

    .line 51
    sget-wide v0, Lo/nC;->a:J

    return-wide v0
.end method

.method private a(Lo/D;)V
    .locals 2

    .line 245
    invoke-interface {p1}, Lo/D;->d()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lo/D;->h()I

    move-result v0

    invoke-static {v0}, Lo/zr;->b(I)I

    move-result v0

    :goto_0
    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 246
    :cond_1
    invoke-interface {p1}, Lo/D;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "nf_probe"

    const-string v1, "received an error fetching probe config"

    .line 247
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v1, Lo/nz;

    invoke-direct {v1, p1}, Lo/nz;-><init>(Lo/D;)V

    .line 249
    invoke-virtual {p0}, Lo/nC;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object p1

    invoke-interface {p1, v1}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 250
    invoke-virtual {v1}, Lo/nz;->G_()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private a(Lo/ny$Application;)V
    .locals 5

    .line 307
    iget-object v0, p0, Lo/nC;->i:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    const-string v1, "nf_probe"

    if-nez v0, :cond_0

    const-string p1, "received http response after test finished"

    .line 308
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lo/nC;->g:Ljava/util/Map;

    iget-object v2, p1, Lo/ny$Application;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lo/nC;->g:Ljava/util/Map;

    iget-object v2, p1, Lo/ny$Application;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/nA;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 313
    invoke-virtual {v0}, Lo/nA;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lo/ny$Application;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "iteration %d: received http response from %s"

    invoke-static {v1, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 314
    iget-object v1, p0, Lo/nC;->g:Ljava/util/Map;

    iget-object v2, p1, Lo/ny$Application;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/nA;

    invoke-virtual {v1, p1}, Lo/nA;->c(Lo/ny$Application;)V

    .line 315
    iget-object p1, p1, Lo/ny$Application;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lo/nC;->e(Ljava/lang/String;Lo/nA;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lo/nC;)Z
    .locals 0

    .line 51
    invoke-direct {p0}, Lo/nC;->b()Z

    move-result p0

    return p0
.end method

.method private b()Z
    .locals 9

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 135
    invoke-virtual {p0}, Lo/nC;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "prefs_last_probe_timestamp"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 136
    invoke-direct {p0}, Lo/nC;->g()Z

    move-result v2

    const/4 v6, 0x1

    if-nez v2, :cond_1

    sget-wide v7, Lo/nC;->c:J

    add-long/2addr v7, v4

    cmp-long v2, v0, v7

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v2, v6, [Ljava/lang/Object;

    .line 140
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v0, v4

    .line 141
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string v0, "nf_probe"

    const-string v3, "probe test disabled for this app session (%d minutes since previous)"

    .line 140
    invoke-static {v0, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    .line 137
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lo/nC;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v0, v1}, Lo/aer;->d(Landroid/content/Context;Ljava/lang/String;J)V

    return v6
.end method

.method private c()V
    .locals 8

    const-string v0, "nf_probe"

    const-string v1, "probing test finished"

    .line 377
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v1, p0, Lo/nC;->e:Landroid/os/Handler;

    const/16 v2, 0x1005

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 383
    iget-object v1, p0, Lo/nC;->i:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/nC;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    new-instance v1, Lo/nB;

    iget-object v2, p0, Lo/nC;->i:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lo/nC;->i:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lo/nC;->i:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    .line 385
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->f()Lcom/google/gson/JsonObject;

    move-result-object v5

    iget-object v2, p0, Lo/nC;->i:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->j()Ljava/util/List;

    move-result-object v6

    iget-object v2, p0, Lo/nC;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lo/nB;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Ljava/util/List;Ljava/util/Collection;)V

    .line 386
    invoke-virtual {p0}, Lo/nC;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v2

    invoke-interface {v2, v1}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 387
    invoke-virtual {v1}, Lo/nB;->G_()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    iget-object v1, p0, Lo/nC;->i:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 392
    iget-object v4, p0, Lo/nC;->i:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "scheduling another probe cycle in %s"

    invoke-static {v0, v3, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 393
    iget-object v0, p0, Lo/nC;->e:Landroid/os/Handler;

    const/16 v1, 0x1000

    iget-object v3, p0, Lo/nC;->i:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->b()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const-string v1, "config instructed us to keep away - disabling future probing"

    .line 395
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lo/nC;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 397
    iput-object v0, p0, Lo/nC;->i:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    .line 398
    invoke-direct {p0}, Lo/nC;->h()V

    .line 401
    :goto_0
    iget v0, p0, Lo/nC;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lo/nC;->d:I

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    .line 290
    iget-object v0, p0, Lo/nC;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/nA;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "nf_probe"

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "probe measurement not found for %s"

    .line 292
    invoke-static {v3, p1, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 295
    invoke-virtual {v0}, Lo/nA;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p1, v4, v1

    const-string v1, "iteration %d: sending probe to %s"

    invoke-static {v3, v1, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 296
    invoke-virtual {v0}, Lo/nA;->d()V

    .line 297
    new-instance v1, Lo/ny;

    iget-object v2, p0, Lo/nC;->i:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->j()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lo/nA;->a()I

    move-result v3

    iget-object v4, p0, Lo/nC;->j:Lo/ny$StateListAnimator;

    invoke-direct {v1, p1, v2, v3, v4}, Lo/ny;-><init>(Ljava/lang/String;Ljava/util/List;ILo/ny$StateListAnimator;)V

    .line 298
    new-instance v2, Lo/nC$Application;

    invoke-direct {v2, p0, p1, v0}, Lo/nC$Application;-><init>(Lo/nC;Ljava/lang/String;Lo/nA;)V

    invoke-virtual {v1, v2}, Lo/ny;->c(Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p0, v1}, Lo/nC;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method static synthetic d(Lo/nC;)Landroid/os/Handler;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/nC;->e:Landroid/os/Handler;

    return-object p0
.end method

.method private d()V
    .locals 6

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lo/nC;->i:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    .line 212
    iget-object v1, p0, Lo/nC;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 213
    invoke-virtual {p0}, Lo/nC;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v1

    const-string v2, "nf_probe"

    if-nez v1, :cond_0

    const-string v0, "user not logged in - disabling FTL probe"

    .line 214
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 217
    :cond_0
    invoke-virtual {p0}, Lo/nC;->getNetflixPlatform()Lo/SmartSelectSprite;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 218
    invoke-interface {v1}, Lo/SmartSelectSprite;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "sending probe config request"

    .line 224
    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v1, Lo/nu;

    invoke-virtual {p0}, Lo/nC;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lo/nC;->d:I

    invoke-direct {p0}, Lo/nC;->g()Z

    move-result v4

    new-instance v5, Lo/nC$3;

    invoke-direct {v5, p0}, Lo/nC$3;-><init>(Lo/nC;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lo/nu;-><init>(Landroid/content/Context;IZLo/nu$Activity;)V

    .line 236
    new-instance v2, Lo/nC$Activity;

    invoke-direct {v2, p0, v0}, Lo/nC$Activity;-><init>(Lo/nC;Lo/nC$3;)V

    invoke-virtual {v1, v2}, Lo/nu;->c(Ljava/lang/Object;)V

    .line 237
    invoke-virtual {p0, v1}, Lo/nC;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void

    :cond_2
    :goto_0
    const-string v0, "delaying probe for playback"

    .line 220
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lo/nC;->e:Landroid/os/Handler;

    const/16 v1, 0x1000

    sget-wide v2, Lo/nC;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private d(Lo/nC$ActionBar;)V
    .locals 7

    .line 324
    iget-object v0, p0, Lo/nC;->i:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    const-string v1, "nf_probe"

    if-nez v0, :cond_0

    const-string p1, "received network response after test finished"

    .line 325
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 328
    :cond_0
    invoke-static {p1}, Lo/nC$ActionBar;->a(Lo/nC$ActionBar;)Lo/nA;

    move-result-object v0

    .line 329
    invoke-static {p1}, Lo/nC$ActionBar;->c(Lo/nC$ActionBar;)Lo/D;

    move-result-object v2

    const/4 v3, 0x0

    .line 331
    invoke-static {p1}, Lo/nC$ActionBar;->e(Lo/nC$ActionBar;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 334
    :try_start_0
    invoke-static {p1}, Lo/nC$ActionBar;->e(Lo/nC$ActionBar;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 340
    invoke-virtual {v0}, Lo/nA;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v2}, Lo/D;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "iteration %d: received probe response from %s"

    invoke-static {v1, v5, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 341
    invoke-virtual {v0, v2, v3}, Lo/nA;->e(Lo/D;Ljava/lang/String;)V

    .line 342
    invoke-static {p1}, Lo/nC$ActionBar;->e(Lo/nC$ActionBar;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lo/nC;->e(Ljava/lang/String;Lo/nA;)V

    :cond_2
    return-void
.end method

.method private e()V
    .locals 2

    const/4 v0, 0x0

    .line 198
    iput v0, p0, Lo/nC;->d:I

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lo/nC;->i:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    .line 200
    iget-object v0, p0, Lo/nC;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 201
    invoke-direct {p0}, Lo/nC;->h()V

    .line 202
    iget-object v0, p0, Lo/nC;->e:Landroid/os/Handler;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private e(Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;)V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 259
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-string v2, "nf_probe"

    const-string v3, "iteration %d: received probe config: %s probes, %s iterations"

    invoke-static {v2, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 260
    iput-object p1, p0, Lo/nC;->i:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    .line 261
    iget-object v0, p0, Lo/nC;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 264
    iget-object v0, p0, Lo/nC;->i:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->c(I)J

    move-result-wide v0

    .line 265
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->e()I

    move-result v2

    if-lez v2, :cond_1

    .line 266
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$ActionBar;

    .line 267
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$ActionBar;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    iget-object v3, p0, Lo/nC;->g:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$ActionBar;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lo/nA;

    invoke-direct {v5, v2}, Lo/nA;-><init>(Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$ActionBar;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v3, p0, Lo/nC;->e:Landroid/os/Handler;

    const/16 v4, 0x1001

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$ActionBar;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 276
    :cond_1
    iget-object p1, p0, Lo/nC;->g:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 278
    iget-object p1, p0, Lo/nC;->e:Landroid/os/Handler;

    const/16 v0, 0x1004

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 281
    :cond_2
    iget-object p1, p0, Lo/nC;->e:Landroid/os/Handler;

    const/16 v0, 0x1005

    sget-wide v1, Lo/nC;->b:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void
.end method

.method private e(Ljava/lang/String;Lo/nA;)V
    .locals 6

    .line 353
    invoke-virtual {p2}, Lo/nA;->b()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lo/nA;->a()I

    move-result v0

    iget-object v3, p0, Lo/nC;->i:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->e()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 354
    iget-object v0, p0, Lo/nC;->i:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    invoke-virtual {p2}, Lo/nA;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->c(I)J

    move-result-wide v3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 355
    invoke-virtual {p2}, Lo/nA;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v2

    const-string p2, "nf_probe"

    const-string v5, "iteration %d: scheduling new probe at %d ms"

    invoke-static {p2, v5, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 356
    iget-object p2, p0, Lo/nC;->e:Landroid/os/Handler;

    const/16 v0, 0x1001

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 360
    :cond_0
    iget-object p1, p0, Lo/nC;->g:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/nA;

    .line 361
    invoke-virtual {p2}, Lo/nA;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lo/nA;->a()I

    move-result p2

    iget-object v0, p0, Lo/nC;->i:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->e()I

    move-result v0

    if-ge p2, v0, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 367
    :cond_3
    :goto_0
    iget-object p1, p0, Lo/nC;->i:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    .line 368
    iget-object p1, p0, Lo/nC;->e:Landroid/os/Handler;

    const/16 p2, 0x1004

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    return-void
.end method

.method static synthetic e(Lo/nC;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lo/nC;->h()V

    return-void
.end method

.method private f()V
    .locals 2

    const-string v0, "nf_probe"

    const-string v1, "FTL probe timeout"

    .line 405
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-direct {p0}, Lo/nC;->h()V

    .line 407
    iget-object v0, p0, Lo/nC;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 408
    iput-object v0, p0, Lo/nC;->i:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    .line 409
    invoke-direct {p0}, Lo/nC;->c()V

    return-void
.end method

.method private g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private h()V
    .locals 2

    .line 413
    iget-object v0, p0, Lo/nC;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x1000

    .line 414
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 415
    iget-object v0, p0, Lo/nC;->e:Landroid/os/Handler;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    iget-object v0, p0, Lo/nC;->e:Landroid/os/Handler;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    iget-object v0, p0, Lo/nC;->e:Landroid/os/Handler;

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 418
    iget-object v0, p0, Lo/nC;->e:Landroid/os/Handler;

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 419
    iget-object v0, p0, Lo/nC;->e:Landroid/os/Handler;

    const/16 v1, 0x1005

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 420
    iget-object v0, p0, Lo/nC;->e:Landroid/os/Handler;

    const/16 v1, 0x1007

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 421
    iget-object v0, p0, Lo/nC;->e:Landroid/os/Handler;

    const/16 v1, 0x1008

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public agentName()Ljava/lang/String;
    .locals 1

    const-string v0, "probeController"

    return-object v0
.end method

.method public destroy()V
    .locals 0

    .line 148
    invoke-direct {p0}, Lo/nC;->h()V

    .line 149
    invoke-super {p0}, Lo/bV;->destroy()V

    return-void
.end method

.method protected doInit()V
    .locals 5

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lo/nC;->e:Landroid/os/Handler;

    .line 119
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->j()Lo/Plugin;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Lo/Plugin;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lo/nC;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lo/nC;->e:Landroid/os/Handler;

    const/16 v2, 0x1008

    sget-wide v3, Lo/nC;->a:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 123
    :cond_0
    iget-object v1, p0, Lo/nC;->f:Lo/JavascriptInterface;

    invoke-interface {v0, v1}, Lo/Plugin;->b(Lo/JavascriptInterface;)Z

    .line 124
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lo/nC;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 155
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 157
    :pswitch_0
    invoke-direct {p0}, Lo/nC;->e()V

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/D;

    invoke-direct {p0, p1}, Lo/nC;->a(Lo/D;)V

    goto :goto_0

    .line 172
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/ny$Application;

    invoke-direct {p0, p1}, Lo/nC;->a(Lo/ny$Application;)V

    goto :goto_0

    .line 178
    :pswitch_3
    invoke-direct {p0}, Lo/nC;->f()V

    goto :goto_0

    .line 175
    :pswitch_4
    invoke-direct {p0}, Lo/nC;->c()V

    goto :goto_0

    .line 169
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/nC$ActionBar;

    invoke-direct {p0, p1}, Lo/nC;->d(Lo/nC$ActionBar;)V

    goto :goto_0

    .line 163
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    invoke-direct {p0, p1}, Lo/nC;->e(Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;)V

    goto :goto_0

    .line 166
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lo/nC;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :pswitch_8
    invoke-direct {p0}, Lo/nC;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 187
    invoke-virtual {p0}, Lo/nC;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->a()Lo/zz;

    move-result-object v0

    const-string v1, "unable to perform ftl probing"

    invoke-interface {v0, v1, p1}, Lo/zz;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    invoke-direct {p0}, Lo/nC;->h()V

    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
