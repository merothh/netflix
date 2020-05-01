.class public Lo/iT;
.super Lo/iA;
.source ""

# interfaces
.implements Lo/iB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/iT$StateListAnimator;,
        Lo/iT$TaskDescription;,
        Lo/iT$ActionBar;
    }
.end annotation


# instance fields
.field private a:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private final b:Landroid/content/Context;

.field private final c:Lo/cz;

.field private final d:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field protected e:J

.field private f:Lo/iT$StateListAnimator;

.field private g:Lo/aeL;

.field private h:Lo/SmartSelectSprite;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/concurrent/ScheduledExecutorService;

.field private final k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lcom/netflix/mediaclient/service/user/UserAgent;Landroid/content/Context;Lo/cz;Lo/SmartSelectSprite;)V
    .locals 1

    .line 129
    invoke-direct {p0}, Lo/iA;-><init>()V

    .line 113
    new-instance v0, Lo/iT$StateListAnimator;

    invoke-direct {v0, p0}, Lo/iT$StateListAnimator;-><init>(Lo/iT;)V

    iput-object v0, p0, Lo/iT;->f:Lo/iT$StateListAnimator;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/iT;->i:Ljava/util/List;

    .line 221
    new-instance v0, Lo/iT$2;

    invoke-direct {v0, p0}, Lo/iT$2;-><init>(Lo/iT;)V

    iput-object v0, p0, Lo/iT;->l:Ljava/lang/Runnable;

    .line 559
    sget-object v0, Lo/iV;->b:Lo/iV;

    iput-object v0, p0, Lo/iT;->k:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 137
    iput-object p1, p0, Lo/iT;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 138
    iput-object p2, p0, Lo/iT;->a:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 139
    iput-object p3, p0, Lo/iT;->b:Landroid/content/Context;

    .line 140
    iput-object p4, p0, Lo/iT;->c:Lo/cz;

    .line 141
    iput-object p5, p0, Lo/iT;->h:Lo/SmartSelectSprite;

    return-void

    .line 135
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "UserAgent is null?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Owner is null?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lo/iT;)Lo/aeL;
    .locals 0

    .line 57
    iget-object p0, p0, Lo/iT;->g:Lo/aeL;

    return-object p0
.end method

.method private synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 363
    invoke-direct {p0, p1}, Lo/iT;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/Logblob;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "nf_logblob"

    if-eqz p1, :cond_3

    .line 382
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 388
    :try_start_0
    invoke-static {p1}, Lo/jG;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    .line 396
    invoke-direct {p0, v2}, Lo/iT;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 398
    iget-object v2, p0, Lo/iT;->i:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_1
    new-instance v3, Lo/iT$TaskDescription;

    invoke-direct {v3, p0, p2}, Lo/iT$TaskDescription;-><init>(Lo/iT;Ljava/lang/String;)V

    .line 403
    :cond_2
    new-instance p2, Lo/jM;

    iget-object v2, p0, Lo/iT;->b:Landroid/content/Context;

    invoke-direct {p0}, Lo/iT;->m()Lcom/netflix/mediaclient/servicemgr/Logblob$ActionBar;

    move-result-object v4

    invoke-direct {p2, v2, p1, v4, v3}, Lo/jM;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/Logblob$ActionBar;Lo/iT$ActionBar;)V

    .line 404
    iget-object p1, p0, Lo/iT;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v1, "Failed to create JSON object for logging request"

    .line 411
    invoke-static {v0, p1, v1, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catch_0
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v1, "Failed to allocate memory for logging request, dumping log events..."

    .line 407
    invoke-static {v0, p1, v1, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 408
    invoke-static {p1}, Lo/adS;->b(Ljava/lang/OutOfMemoryError;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p1, "dropping bad logblob"

    .line 383
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a([Lo/aeL$StateListAnimator;Z)V
    .locals 13

    const-string v0, "nf_logblob"

    if-eqz p1, :cond_6

    .line 242
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-wide/32 v3, 0x36ee80

    .line 251
    invoke-static {}, Lo/gZ;->a()I

    move-result v1

    int-to-long v5, v1

    mul-long v5, v5, v3

    .line 252
    invoke-static {}, Lo/gZ;->g()Z

    move-result v1

    .line 254
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_5

    aget-object v8, p1, v7

    .line 255
    invoke-interface {v8}, Lo/aeL$StateListAnimator;->a()Ljava/lang/String;

    move-result-object v9

    if-eqz v1, :cond_1

    const-string v8, "Retry is disabled, remove saved payload."

    .line 258
    invoke-static {v0, v8}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-direct {p0, v9}, Lo/iT;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v10, "Retry is enabled, process saved payload for retry..."

    .line 262
    invoke-static {v0, v10}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v10, p0, Lo/iT;->i:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v9, v8, v4

    const-string v9, "We are already trying to deliver %s deliveryRequestId, skip"

    .line 266
    invoke-static {v0, v9, v8}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 270
    :cond_2
    invoke-static {v8, v5, v6}, Lo/adS;->a(Lo/aeL$StateListAnimator;J)Z

    move-result v8

    if-eqz v8, :cond_3

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v9, v8, v4

    const-string v10, "Drop too old %s deliveryRequestId"

    .line 271
    invoke-static {v0, v10, v8}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 272
    invoke-direct {p0, v9}, Lo/iT;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 275
    :cond_3
    iget-object v8, p0, Lo/iT;->i:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_4

    .line 278
    iget-object v8, p0, Lo/iT;->j:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v10, Lo/iT$1;

    invoke-direct {v10, p0, v9}, Lo/iT$1;-><init>(Lo/iT;Ljava/lang/String;)V

    iget-object v9, p0, Lo/iT;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 283
    invoke-interface {v9}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->g()J

    move-result-wide v11

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 278
    invoke-interface {v8, v10, v11, v12, v9}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    .line 285
    :cond_4
    iget-object v8, p0, Lo/iT;->j:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v10, Lo/iT$4;

    invoke-direct {v10, p0, v9}, Lo/iT$4;-><init>(Lo/iT;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 293
    :cond_5
    invoke-direct {p0}, Lo/iT;->i()V

    return-void

    :cond_6
    :goto_2
    const-string p1, "No saved events found"

    .line 243
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 368
    :try_start_0
    iget-object v0, p0, Lo/iT;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 369
    iget-object v0, p0, Lo/iT;->g:Lo/aeL;

    invoke-interface {v0, p1}, Lo/aeL;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "nf_logblob"

    const-string v1, "Failed to remove payload from repository"

    .line 371
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lo/iT$ActionBar;)V
    .locals 5

    const-string v0, "nf_logblob"

    const-string v1, "sendLogblobs starts..."

    .line 328
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {p2}, Lo/jG;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 331
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 338
    :cond_0
    :try_start_0
    new-instance v1, Lo/jM;

    iget-object v3, p0, Lo/iT;->b:Landroid/content/Context;

    invoke-direct {p0}, Lo/iT;->m()Lcom/netflix/mediaclient/servicemgr/Logblob$ActionBar;

    move-result-object v4

    invoke-direct {v1, v3, p2, v4, p3}, Lo/jM;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/Logblob$ActionBar;Lo/iT$ActionBar;)V

    .line 339
    iget-object p2, p0, Lo/iT;->a:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {p2, p1, v1, v2}, Lo/adT;->b(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Lo/np;Z)Lo/np;

    move-result-object p1

    .line 340
    iget-object p2, p0, Lo/iT;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {p2, p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    const-string p1, "sendLogblobs done."

    .line 341
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Failed to add common parameters to JSON logbob?!"

    .line 343
    invoke-static {v0, p1, p3, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void

    :cond_1
    :goto_1
    const-string p1, "Nothing to sent, array is null. SendLogblobs done."

    .line 332
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p3, p1}, Lo/iT$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic b(Lo/iT;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/iT;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lo/iT;Ljava/lang/String;Ljava/lang/String;Lo/iT$ActionBar;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lo/iT;->b(Ljava/lang/String;Ljava/lang/String;Lo/iT$ActionBar;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 301
    iget-object v0, p0, Lo/iT;->g:Lo/aeL;

    new-instance v1, Lo/iT$3;

    invoke-direct {v1, p0, p1}, Lo/iT$3;-><init>(Lo/iT;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lo/aeL;->a(Ljava/lang/String;Lo/aeL$Application;)V

    return-void
.end method

.method static synthetic c(Lo/iT;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lo/iT;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lo/iT;Ljava/util/List;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lo/iT;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic d(Lo/iT;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lo/iT;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d()V
    .locals 0

    invoke-static {}, Lo/iT;->l()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .line 360
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lo/iT;->j:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lo/iX;

    invoke-direct {v1, p0, p1}, Lo/iX;-><init>(Lo/iT;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lo/iT;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lo/iT;->d(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 350
    :try_start_0
    iget-object v0, p0, Lo/iT;->a:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->g()Ljava/lang/String;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lo/iT;->g:Lo/aeL;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-interface {v1, v2, p1, v0}, Lo/aeL;->e(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "nf_logblob"

    const-string v1, "Failed to save payload to repository"

    .line 353
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic e(Lo/iT;[Lo/aeL$StateListAnimator;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lo/iT;->a([Lo/aeL$StateListAnimator;Z)V

    return-void
.end method

.method private f()Z
    .locals 11

    .line 203
    iget-wide v0, p0, Lo/iT;->e:J

    .line 204
    invoke-static {}, Lo/gZ;->c()I

    move-result v2

    const v3, 0x36ee80

    mul-int v2, v2, v3

    int-to-long v2, v2

    .line 205
    iget-wide v4, p0, Lo/iT;->e:J

    const/4 v6, 0x1

    const-string v7, "nf_logblob"

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-gtz v10, :cond_0

    const-string v0, "We never tried to re-deliver saved events, do it now."

    .line 206
    invoke-static {v7, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 209
    :cond_0
    invoke-static {v2, v3, v0, v1}, Lo/aeC;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
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

    const-string v0, "nf_logblob"

    const-string v1, "::init data repository started "

    .line 177
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lo/iT;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 180
    new-instance v2, Ljava/io/File;

    const-string v3, "logblobs"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 182
    new-instance v1, Lo/aeO;

    invoke-direct {v1, v2}, Lo/aeO;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lo/iT;->g:Lo/aeL;

    const-string v1, "::init data repository done "

    .line 184
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private h()V
    .locals 5

    .line 189
    invoke-direct {p0}, Lo/iT;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nf_logblob"

    const-string v1, "Leave re-try to next trigger..."

    .line 190
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lo/iT;->f:Lo/iT$StateListAnimator;

    invoke-virtual {v0}, Lo/iT$StateListAnimator;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lo/iT;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lo/iT;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lo/iT;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lo/iT;->l:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private declared-synchronized i()V
    .locals 4

    monitor-enter p0

    .line 78
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 79
    iput-wide v0, p0, Lo/iT;->e:J

    .line 80
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v2

    const-string v3, "preference_retry_attempted_for_logblobs_in_ms"

    invoke-static {v2, v3, v0, v1}, Lo/aer;->d(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()V
    .locals 3

    .line 157
    invoke-static {}, Lo/gZ;->b()Z

    move-result v0

    const-string v1, "nf_logblob"

    if-nez v0, :cond_0

    const-string v0, "Retry policy is preventing us to use scheduler for retries to deliver saved events"

    .line 158
    invoke-static {v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Retry policy requires us to use scheduler for retries to deliver saved events"

    .line 161
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lo/iT;->h:Lo/SmartSelectSprite;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->o:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {v0, v1, p0}, Lo/SmartSelectSprite;->d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Lo/iB;)V

    .line 164
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->h()Lo/iy;

    move-result-object v0

    .line 165
    invoke-static {}, Lo/gZ;->c()I

    move-result v1

    const v2, 0x36ee80

    mul-int v1, v1, v2

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/job/NetflixJob;->c(J)Lcom/netflix/mediaclient/service/job/NetflixJob;

    move-result-object v1

    .line 166
    invoke-interface {v0, v1}, Lo/iy;->a(Lcom/netflix/mediaclient/service/job/NetflixJob;)V

    :goto_0
    return-void
.end method

.method private static synthetic l()V
    .locals 3

    .line 560
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->h()Lo/iy;

    move-result-object v0

    .line 561
    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->o:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lo/iy;->d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    return-void
.end method

.method private m()Lcom/netflix/mediaclient/servicemgr/Logblob$ActionBar;
    .locals 5

    .line 417
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/Logblob$ActionBar;

    iget-object v1, p0, Lo/iT;->c:Lo/cz;

    invoke-interface {v1}, Lo/cz;->e()Lo/ds;

    move-result-object v1

    invoke-interface {v1}, Lo/ds;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/iT;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 418
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->m()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/iT;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 419
    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->o()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lo/iT;->c:Lo/cz;

    .line 420
    invoke-interface {v4}, Lo/cz;->e()Lo/ds;

    move-result-object v4

    invoke-interface {v4}, Lo/ds;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/Logblob$ActionBar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 0

    return-void
.end method

.method b()V
    .locals 1

    .line 489
    iget-object v0, p0, Lo/iT;->f:Lo/iT$StateListAnimator;

    invoke-virtual {v0}, Lo/iT$StateListAnimator;->a()V

    .line 490
    invoke-direct {p0}, Lo/iT;->h()V

    return-void
.end method

.method c()V
    .locals 5

    .line 533
    iget-object v0, p0, Lo/iT;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "nf_logblob"

    const-string v1, "Device is connected, lets see if we need to deliver cached events..."

    .line 534
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v1, p0, Lo/iT;->g:Lo/aeL;

    invoke-interface {v1}, Lo/aeL;->d()[Lo/aeL$StateListAnimator;

    move-result-object v1

    if-nez v1, :cond_0

    .line 537
    array-length v2, v1

    if-lez v2, :cond_2

    .line 539
    :cond_0
    invoke-static {}, Lo/gZ;->d()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    new-array v2, v3, [Ljava/lang/Object;

    .line 540
    array-length v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "We found %d cached log entries, network is connected, lets try to deliver them"

    invoke-static {v0, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 541
    invoke-direct {p0, v1, v4}, Lo/iT;->a([Lo/aeL$StateListAnimator;Z)V

    goto :goto_0

    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    .line 543
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    const-string v1, "We found %d cached log entries, network is connected, but policy forbid attempt to delive saved payloads. Do nothing."

    invoke-static {v0, v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    :goto_0
    return-void
.end method

.method e()V
    .locals 2

    .line 90
    iget-object v0, p0, Lo/iT;->f:Lo/iT$StateListAnimator;

    invoke-virtual {v0}, Lo/iT$StateListAnimator;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nf_logblob"

    const-string v1, "LogBlog events were sent recently. We reached timeout, force send"

    .line 91
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    .locals 9

    .line 428
    iget-object v0, p0, Lo/iT;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->m()Ljava/lang/String;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lo/iT;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->o()Ljava/lang/String;

    move-result-object v1

    .line 431
    iget-object v2, p0, Lo/iT;->c:Lo/cz;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "nf_logblob"

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lo/cz;->p()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/Logblob;->d()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    .line 432
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/Logblob;->d()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "dropping suppressed logblob %s"

    invoke-static {v5, p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 436
    :cond_0
    instance-of v2, p1, Lo/zv;

    const-string v6, "Failed to populate JSON"

    if-eqz v2, :cond_1

    .line 438
    :try_start_0
    move-object v2, p1

    check-cast v2, Lo/zv;

    iget-object v7, p0, Lo/iT;->b:Landroid/content/Context;

    iget-object v8, p0, Lo/iT;->c:Lo/cz;

    invoke-virtual {v2, v7, v8, v0, v1}, Lo/zv;->c(Landroid/content/Context;Lo/cz;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 440
    invoke-static {v5, v0, v6, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 442
    :cond_1
    instance-of v2, p1, Lo/jC;

    if-eqz v2, :cond_2

    .line 444
    :try_start_1
    move-object v2, p1

    check-cast v2, Lo/jC;

    iget-object v7, p0, Lo/iT;->b:Landroid/content/Context;

    iget-object v8, p0, Lo/iT;->c:Lo/cz;

    invoke-virtual {v2, v7, v8, v0, v1}, Lo/jC;->c(Landroid/content/Context;Lo/cz;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 446
    invoke-static {v5, v0, v6, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    new-array v0, v3, [Ljava/lang/Object;

    .line 450
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Unable to set common data by framework, logblob does not implement BaseLogblob %s "

    invoke-static {v5, v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_3
    const-string v0, "Message is null!"

    .line 452
    invoke-static {v5, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :goto_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/Logblob;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/iT;->f:Lo/iT$StateListAnimator;

    invoke-virtual {v0}, Lo/iT$StateListAnimator;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 460
    :try_start_2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lo/jG;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-direct {p0, v0}, Lo/iT;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "unable to persist logblob"

    .line 464
    invoke-static {v5, v0, v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 468
    :cond_4
    iget-object v0, p0, Lo/iT;->f:Lo/iT$StateListAnimator;

    invoke-virtual {v0, p1}, Lo/iT$StateListAnimator;->e(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 469
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/Logblob;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 470
    iget-object p1, p0, Lo/iT;->f:Lo/iT$StateListAnimator;

    invoke-static {}, Lo/gZ;->g()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lo/iT$StateListAnimator;->a(Z)V

    :cond_5
    return-void
.end method

.method e(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lo/iT;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 151
    invoke-direct {p0}, Lo/iT;->g()V

    .line 152
    invoke-direct {p0}, Lo/iT;->j()V

    return-void
.end method

.method public onNetflixStartJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 552
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_logblob"

    const-string v2, "onNetflixStartJob jobId=%s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 553
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->o:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    if-ne v0, p1, :cond_0

    .line 554
    invoke-direct {p0}, Lo/iT;->h()V

    .line 555
    iget-object p1, p0, Lo/iT;->k:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-static {p1, v0, v1}, Lo/adX;->b(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onNetflixStopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 2

    .line 566
    iget-object v0, p0, Lo/iT;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lo/adX;->c(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 567
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "nf_logblob"

    const-string v1, "onNetflixStopJob jobId=%s"

    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
