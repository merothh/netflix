.class public Lo/jd;
.super Lo/iF;
.source ""

# interfaces
.implements Lo/iB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/jd$TaskDescription;,
        Lo/jd$Activity;,
        Lo/jd$StateListAnimator;
    }
.end annotation


# instance fields
.field private a:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private final b:Landroid/content/Context;

.field private c:Lo/cz;

.field protected d:J

.field private e:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private f:Lo/aeL;

.field private g:Lo/jd$TaskDescription;

.field private h:Lo/SmartSelectSprite;

.field private i:Ljava/util/concurrent/ScheduledExecutorService;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Landroid/content/Context;Lo/SmartSelectSprite;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Lo/iF;-><init>()V

    .line 99
    new-instance v0, Lo/jd$TaskDescription;

    invoke-direct {v0, p0}, Lo/jd$TaskDescription;-><init>(Lo/jd;)V

    iput-object v0, p0, Lo/jd;->g:Lo/jd$TaskDescription;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/jd;->j:Ljava/util/List;

    .line 203
    new-instance v0, Lo/jd$3;

    invoke-direct {v0, p0}, Lo/jd$3;-><init>(Lo/jd;)V

    iput-object v0, p0, Lo/jd;->l:Ljava/lang/Runnable;

    .line 558
    sget-object v0, Lo/jg;->d:Lo/jg;

    iput-object v0, p0, Lo/jd;->k:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 128
    iput-object p1, p0, Lo/jd;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 129
    iput-object p2, p0, Lo/jd;->e:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 130
    iput-object p3, p0, Lo/jd;->c:Lo/cz;

    .line 131
    iput-object p4, p0, Lo/jd;->b:Landroid/content/Context;

    .line 132
    iput-object p5, p0, Lo/jd;->h:Lo/SmartSelectSprite;

    return-void

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "UserAgent is null?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Owner is null?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lo/jd;)Lcom/netflix/mediaclient/service/user/UserAgent;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/jd;->e:Lcom/netflix/mediaclient/service/user/UserAgent;

    return-object p0
.end method

.method static synthetic a()V
    .locals 0

    invoke-static {}, Lo/jd;->m()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 279
    iget-object v0, p0, Lo/jd;->f:Lo/aeL;

    new-instance v1, Lo/jd$1;

    invoke-direct {v1, p0, p1}, Lo/jd$1;-><init>(Lo/jd;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lo/aeL;->a(Ljava/lang/String;Lo/aeL$Application;)V

    return-void
.end method

.method static synthetic a(Lo/jd;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/jd;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lo/jd;Ljava/util/List;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lo/jd;->d(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lo/jd;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/jd;->i:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private b(Ljava/util/List;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 401
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    add-int/lit8 v2, v1, 0xb

    .line 405
    invoke-static {p1, v1, v2}, Lo/adQ;->e(Ljava/util/List;II)Ljava/util/List;

    move-result-object v2

    .line 406
    invoke-direct {p0, v2, p2, p3}, Lo/jd;->e(Ljava/util/List;ZZ)V

    .line 407
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v1, v0, :cond_0

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .line 358
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "playbackExperience"

    .line 359
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 360
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private c(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 481
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 482
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 483
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 486
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lo/jd;)Lo/jd$TaskDescription;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/jd;->g:Lo/jd$TaskDescription;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 340
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lo/jd;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lo/jc;

    invoke-direct {v1, p0, p1}, Lo/jc;-><init>(Lo/jd;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lo/jd;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lo/jd;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lo/jd;)Ljava/lang/Runnable;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/jd;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method private d(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 331
    :try_start_0
    iget-object v1, p0, Lo/jd;->f:Lo/aeL;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v3, p0, Lo/jd;->e:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/user/UserAgent;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_0

    const-string p2, "_trailers"

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-interface {v1, v2, p1, v3, p2}, Lo/aeL;->d(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string p2, "nf_pds_logs"

    const-string v1, "Failed to save payload to repository"

    .line 333
    invoke-static {p2, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .line 349
    :try_start_0
    iget-object v0, p0, Lo/jd;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 350
    iget-object v0, p0, Lo/jd;->f:Lo/aeL;

    invoke-interface {v0, p1}, Lo/aeL;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "nf_pds_logs"

    const-string v1, "Failed to remove payload from repository"

    .line 352
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private d(Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 364
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 365
    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 368
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "nf_pds_logs"

    const-string v5, "flushing events in queue (%d) saveIfFailed(%b)"

    invoke-static {v3, v5, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 371
    :try_start_0
    aget-object v1, v0, v4

    invoke-direct {p0, v1}, Lo/jd;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    invoke-direct {p0, p1, p2, v4}, Lo/jd;->b(Ljava/util/List;ZZ)V

    goto :goto_3

    .line 374
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 375
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 377
    array-length v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v8, v0, v6

    .line 378
    invoke-direct {p0, v8}, Lo/jd;->b(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v7, :cond_2

    goto :goto_1

    .line 382
    :cond_2
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 380
    :cond_3
    :goto_1
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 385
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 386
    invoke-direct {p0, p1, p2, v2}, Lo/jd;->b(Ljava/util/List;ZZ)V

    .line 388
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_6

    .line 389
    invoke-direct {p0, v1, p2, v4}, Lo/jd;->b(Ljava/util/List;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string p2, "Failed to create JSON object for logging request"

    .line 393
    invoke-static {v3, p2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    return-void
.end method

.method static synthetic e(Lo/jd;)Lo/aeL;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/jd;->f:Lo/aeL;

    return-object p0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;Lo/jd$StateListAnimator;)V
    .locals 5

    const-string v0, "nf_pds_logs"

    const-string v1, "sendSavedPdsEventBundle start..."

    .line 307
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-direct {p0, p2}, Lo/jd;->h(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 310
    array-length v1, p2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    new-instance v1, Lo/jU;

    iget-object v3, p0, Lo/jd;->b:Landroid/content/Context;

    iget-object v4, p0, Lo/jd;->c:Lo/cz;

    invoke-direct {v1, v3, p2, v4, p3}, Lo/jU;-><init>(Landroid/content/Context;[Ljava/lang/String;Lo/cz;Lo/jd$StateListAnimator;)V

    .line 317
    iget-object p2, p0, Lo/jd;->e:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {p2, p1, v1, v2}, Lo/adT;->b(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Lo/np;Z)Lo/np;

    move-result-object p1

    .line 318
    iget-object p2, p0, Lo/jd;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {p2, p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    const-string p1, "sendSavedPdsEventBundle done."

    .line 320
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    const-string p1, "Nothing to sent, array is null. sendSavedPdsEventBundle done."

    .line 311
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p3, p1}, Lo/jd$StateListAnimator;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private e(Ljava/util/List;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 416
    :try_start_0
    invoke-direct {p0, p1}, Lo/jd;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lo/jd;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 418
    iget-object p3, p0, Lo/jd;->j:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_0
    new-instance p3, Lo/jd$Activity;

    invoke-direct {p3, p0, p2}, Lo/jd$Activity;-><init>(Lo/jd;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 423
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 424
    new-instance p2, Lo/jU;

    iget-object v0, p0, Lo/jd;->b:Landroid/content/Context;

    iget-object v1, p0, Lo/jd;->c:Lo/cz;

    invoke-direct {p2, v0, p1, v1, p3}, Lo/jU;-><init>(Landroid/content/Context;[Ljava/lang/String;Lo/cz;Lo/jd$StateListAnimator;)V

    .line 425
    iget-object p1, p0, Lo/jd;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "nf_pds_logs"

    const-string v0, "Failed to allocate memory for logging request, dumping log events..."

    .line 428
    invoke-static {p3, p1, v0, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 429
    invoke-static {p1}, Lo/adS;->b(Ljava/lang/OutOfMemoryError;)V

    :goto_1
    return-void
.end method

.method static synthetic e(Lo/jd;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lo/jd;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lo/jd;Ljava/lang/String;Ljava/lang/String;Lo/jd$StateListAnimator;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lo/jd;->e(Ljava/lang/String;Ljava/lang/String;Lo/jd$StateListAnimator;)V

    return-void
.end method

.method static synthetic e(Lo/jd;[Lo/aeL$StateListAnimator;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lo/jd;->e([Lo/aeL$StateListAnimator;)V

    return-void
.end method

.method private e([Lo/aeL$StateListAnimator;)V
    .locals 11

    const-string v0, "nf_pds_logs"

    if-eqz p1, :cond_5

    .line 230
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_2

    :cond_0
    const-wide/32 v3, 0x36ee80

    .line 239
    invoke-static {}, Lo/hc;->d()I

    move-result v1

    int-to-long v5, v1

    mul-long v5, v5, v3

    .line 240
    invoke-static {}, Lo/hc;->f()Z

    move-result v1

    .line 242
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_4

    aget-object v8, p1, v7

    .line 244
    invoke-interface {v8}, Lo/aeL$StateListAnimator;->a()Ljava/lang/String;

    move-result-object v9

    if-eqz v1, :cond_1

    const-string v8, "Retry is disabled, remove saved payload."

    .line 247
    invoke-static {v0, v8}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-direct {p0, v9}, Lo/jd;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v10, "Retry is enabled, process saved payload for retry..."

    .line 251
    invoke-static {v0, v10}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v10, p0, Lo/jd;->j:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v9, v8, v4

    const-string v9, "We are already trying to deliver %s deliveryRequestId, skip"

    .line 254
    invoke-static {v0, v9, v8}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 258
    :cond_2
    invoke-static {v8, v5, v6}, Lo/adS;->a(Lo/aeL$StateListAnimator;J)Z

    move-result v8

    if-eqz v8, :cond_3

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v9, v8, v4

    const-string v10, "Drop too old %s deliveryRequestId"

    .line 259
    invoke-static {v0, v10, v8}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 260
    invoke-direct {p0, v9}, Lo/jd;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 263
    :cond_3
    iget-object v8, p0, Lo/jd;->j:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v8, p0, Lo/jd;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v10, Lo/jd$2;

    invoke-direct {v10, p0, v9}, Lo/jd$2;-><init>(Lo/jd;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 271
    :cond_4
    invoke-direct {p0}, Lo/jd;->h()V

    return-void

    :cond_5
    :goto_2
    const-string p1, "No saved events found"

    .line 231
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private f()Z
    .locals 11

    .line 185
    iget-wide v0, p0, Lo/jd;->d:J

    .line 186
    invoke-static {}, Lo/hc;->c()I

    move-result v2

    const v3, 0x36ee80

    add-int/2addr v2, v3

    int-to-long v2, v2

    .line 187
    iget-wide v4, p0, Lo/jd;->d:J

    const/4 v6, 0x1

    const-string v7, "nf_pds_logs"

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-gtz v10, :cond_0

    const-string v0, "We never tried to re-deliver saved events, do it now."

    .line 188
    invoke-static {v7, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 191
    :cond_0
    invoke-static {v2, v3, v0, v1}, Lo/aeC;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last time we tried to re-deliver saved events: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v3, 0x36ee80

    div-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " hours ago. Do it now."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private g()V
    .locals 4

    const-string v0, "nf_pds_logs"

    const-string v1, "::init data repository started "

    .line 163
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lo/jd;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 166
    new-instance v2, Ljava/io/File;

    const-string v3, "pdsevents"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 168
    new-instance v1, Lo/aeO;

    invoke-direct {v1, v2}, Lo/aeO;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lo/jd;->f:Lo/aeL;

    const-string v1, "::init data repository done "

    .line 170
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic g(Ljava/lang/String;)V
    .locals 0

    .line 344
    invoke-direct {p0, p1}, Lo/jd;->d(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized h()V
    .locals 4

    monitor-enter p0

    .line 544
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 545
    iput-wide v0, p0, Lo/jd;->d:J

    .line 546
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v2

    const-string v3, "preference_retry_attempted_for_pds_in_ms"

    invoke-static {v2, v3, v0, v1}, Lo/aer;->d(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 v1, 0x0

    .line 504
    :try_start_0
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 505
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 506
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 507
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 510
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 514
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move-object p1, v1

    goto :goto_0

    :cond_2
    new-array p1, v3, [Ljava/lang/String;

    .line 520
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :catch_0
    move-exception v0

    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create JSON array from payload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "nf_pds_logs"

    invoke-static {v2, p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private i()V
    .locals 3

    .line 148
    invoke-static {}, Lo/hc;->a()Z

    move-result v0

    const-string v1, "nf_pds_logs"

    if-nez v0, :cond_0

    const-string v0, "Retry policy is preventing us to use scheduler for retries to deliver saved events"

    .line 149
    invoke-static {v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Retry policy requires us to use scheduler for retries to deliver saved events"

    .line 152
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lo/jd;->h:Lo/SmartSelectSprite;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->k:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {v0, v1, p0}, Lo/SmartSelectSprite;->d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Lo/iB;)V

    .line 155
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->h()Lo/iy;

    move-result-object v0

    .line 156
    invoke-static {}, Lo/hc;->c()I

    move-result v1

    const v2, 0x36ee80

    mul-int v1, v1, v2

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/job/NetflixJob;->b(J)Lcom/netflix/mediaclient/service/job/NetflixJob;

    move-result-object v1

    .line 157
    invoke-interface {v0, v1}, Lo/iy;->a(Lcom/netflix/mediaclient/service/job/NetflixJob;)V

    :goto_0
    return-void
.end method

.method static synthetic j(Lo/jd;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/jd;->j:Ljava/util/List;

    return-object p0
.end method

.method private j()V
    .locals 5

    .line 175
    invoke-direct {p0}, Lo/jd;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nf_pds_logs"

    const-string v1, "Leave re-try to next trigger..."

    .line 176
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lo/jd;->i:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lo/jd;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private static synthetic m()V
    .locals 3

    .line 559
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->h()Lo/iy;

    move-result-object v0

    .line 560
    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->k:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lo/iy;->d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 2

    .line 77
    iget-object v0, p0, Lo/jd;->g:Lo/jd$TaskDescription;

    invoke-virtual {v0}, Lo/jd$TaskDescription;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nf_pds_logs"

    const-string v1, "flushed Pds events"

    .line 78
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method c()V
    .locals 1

    .line 494
    iget-object v0, p0, Lo/jd;->g:Lo/jd$TaskDescription;

    invoke-virtual {v0}, Lo/jd$TaskDescription;->a()V

    .line 495
    invoke-direct {p0}, Lo/jd;->j()V

    return-void
.end method

.method public d()V
    .locals 2

    .line 440
    iget-object v0, p0, Lo/jd;->g:Lo/jd$TaskDescription;

    invoke-static {}, Lo/hc;->f()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lo/jd$TaskDescription;->a(Z)V

    return-void
.end method

.method d(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lo/jd;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 142
    invoke-direct {p0}, Lo/jd;->g()V

    .line 143
    invoke-direct {p0}, Lo/jd;->i()V

    return-void
.end method

.method e()V
    .locals 5

    .line 527
    iget-object v0, p0, Lo/jd;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/jd;->e:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "nf_pds_logs"

    const-string v1, "Device is connected, lets see if we need to deliver cached events..."

    .line 528
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v1, p0, Lo/jd;->f:Lo/aeL;

    invoke-interface {v1}, Lo/aeL;->d()[Lo/aeL$StateListAnimator;

    move-result-object v1

    if-nez v1, :cond_0

    .line 531
    array-length v2, v1

    if-lez v2, :cond_2

    .line 533
    :cond_0
    invoke-static {}, Lo/hc;->b()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    new-array v2, v4, [Ljava/lang/Object;

    .line 534
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "We found %d cached log entries, network is connected, lets try to deliver them"

    invoke-static {v0, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 535
    invoke-direct {p0, v1}, Lo/jd;->e([Lo/aeL$StateListAnimator;)V

    goto :goto_0

    :cond_1
    new-array v2, v4, [Ljava/lang/Object;

    .line 537
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "We found %d cached log entries, network is connected, but policy forbid attempt to delive saved payloads. Do nothing."

    invoke-static {v0, v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 435
    iget-object v0, p0, Lo/jd;->g:Lo/jd$TaskDescription;

    invoke-virtual {v0, p1}, Lo/jd$TaskDescription;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public onNetflixStartJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 551
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_pds_logs"

    const-string v2, "onNetflixStartJob jobId=%s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 552
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->k:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    if-ne v0, p1, :cond_0

    .line 553
    invoke-direct {p0}, Lo/jd;->j()V

    .line 554
    iget-object p1, p0, Lo/jd;->k:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-static {p1, v0, v1}, Lo/adX;->b(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onNetflixStopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 2

    .line 565
    iget-object v0, p0, Lo/jd;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lo/adX;->c(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 566
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "nf_pds_logs"

    const-string v1, "onNetflixStopJob jobId=%s"

    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
