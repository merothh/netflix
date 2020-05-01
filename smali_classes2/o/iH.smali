.class abstract Lo/iH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/JavascriptInterface;
.implements Lo/iI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/iH$Application;
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected b:Lo/aeL;

.field protected final c:Lo/cz;

.field protected final d:Lo/jb;

.field protected e:Ljava/util/concurrent/ScheduledExecutorService;

.field protected final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected g:Lo/Plugin;

.field protected final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final i:Lcom/netflix/mediaclient/service/user/UserAgent;

.field protected j:Lo/iW;

.field protected k:Lo/jz;

.field private l:Ljava/lang/Runnable;

.field protected m:J

.field protected final o:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/jb;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;)V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/iH;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/iH;->h:Ljava/util/List;

    .line 231
    new-instance v0, Lo/iE;

    invoke-direct {v0, p0}, Lo/iE;-><init>(Lo/iH;)V

    iput-object v0, p0, Lo/iH;->l:Ljava/lang/Runnable;

    .line 583
    new-instance v0, Lo/iH$2;

    invoke-direct {v0, p0}, Lo/iH$2;-><init>(Lo/iH;)V

    iput-object v0, p0, Lo/iH;->o:Landroid/content/BroadcastReceiver;

    .line 120
    iput-object p2, p0, Lo/iH;->d:Lo/jb;

    .line 121
    iput-object p3, p0, Lo/iH;->i:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 122
    new-instance p2, Lo/iW;

    invoke-direct {p2, p4}, Lo/iW;-><init>(Lo/cz;)V

    iput-object p2, p0, Lo/iH;->j:Lo/iW;

    .line 123
    iput-object p1, p0, Lo/iH;->a:Landroid/content/Context;

    .line 124
    iput-object p4, p0, Lo/iH;->c:Lo/cz;

    .line 125
    new-instance p1, Lo/jz;

    iget-object p2, p0, Lo/iH;->c:Lo/cz;

    invoke-direct {p1, p2, p3}, Lo/jz;-><init>(Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;)V

    iput-object p1, p0, Lo/iH;->k:Lo/jz;

    .line 126
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object p1

    const-string p2, "preference_retry_attempted_for_cl_in_ms"

    const-wide/16 p3, 0x0

    invoke-static {p1, p2, p3, p4}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lo/iH;->m:J

    return-void
.end method

.method private synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 406
    invoke-virtual {p0, p1}, Lo/iH;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lo/iH;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/iH;->j(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lo/iH;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/iH;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lo/iH;[Lo/aeL$StateListAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/iH;->c([Lo/aeL$StateListAnimator;)V

    return-void
.end method

.method static synthetic c(Lo/iH;[B)Ljava/lang/String;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lo/iH;->c([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c([B)Ljava/lang/String;
    .locals 3

    .line 301
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 303
    invoke-static {}, Lo/gX;->i()Z

    move-result p1

    const-string v1, "nf_log_cl"

    if-nez p1, :cond_0

    const-string p1, "We are not updating envelope send time per CL policy"

    .line 304
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 308
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "clientSendTime"

    .line 309
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    invoke-static {}, Lo/adq;->f()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 311
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "SendTime can not be updated, property not found, not valid enveloper!"

    .line 313
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic c(Lo/iH;)V
    .locals 0

    invoke-direct {p0}, Lo/iH;->q()V

    return-void
.end method

.method private synthetic c([Lo/aeL$StateListAnimator;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 236
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0, p1, v0}, Lo/iH;->c([Lo/aeL$StateListAnimator;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "nf_log_cl"

    const-string v0, "No saved payloads found."

    .line 239
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic e(Lo/iH;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/iH;->g(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic g(Ljava/lang/String;)V
    .locals 0

    .line 348
    invoke-virtual {p0, p1}, Lo/iH;->d(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic j(Ljava/lang/String;)V
    .locals 0

    .line 402
    invoke-virtual {p0, p1}, Lo/iH;->e(Ljava/lang/String;)V

    return-void
.end method

.method private p()V
    .locals 4

    const-string v0, "nf_log_cl"

    const-string v1, "ICLManager::init data repository started "

    .line 188
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lo/iH;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 191
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lo/iH;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 193
    new-instance v1, Lo/aeO;

    invoke-virtual {p0}, Lo/iH;->l()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lo/aeO;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lo/iH;->b:Lo/aeL;

    const-string v1, "ICLManager::init data repository done "

    .line 194
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic q()V
    .locals 2

    const-string v0, "nf_log_cl"

    const-string v1, "Check if we have not delivered events from last time our app was runnung..."

    .line 233
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v0, Lo/iM;

    invoke-direct {v0, p0}, Lo/iM;-><init>(Lo/iH;)V

    .line 242
    iget-object v1, p0, Lo/iH;->b:Lo/aeL;

    invoke-interface {v1, v0}, Lo/aeL;->c(Lo/aeL$ActionBar;)V

    return-void
.end method

.method private s()Z
    .locals 11

    .line 213
    iget-wide v0, p0, Lo/iH;->m:J

    .line 214
    invoke-static {}, Lo/gX;->a()I

    move-result v2

    const v3, 0x36ee80

    mul-int v2, v2, v3

    int-to-long v2, v2

    .line 215
    iget-wide v4, p0, Lo/iH;->m:J

    const/4 v6, 0x1

    const-string v7, "nf_log_cl"

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-gtz v10, :cond_0

    const-string v0, "We never tried to re-deliver saved events, do it now."

    .line 216
    invoke-static {v7, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 219
    :cond_0
    invoke-static {v2, v3, v0, v1}, Lo/aeC;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
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

.method private declared-synchronized t()V
    .locals 4

    monitor-enter p0

    .line 105
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 106
    iput-wide v0, p0, Lo/iH;->m:J

    .line 107
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v2

    const-string v3, "preference_retry_attempted_for_cl_in_ms"

    invoke-static {v2, v3, v0, v1}, Lo/aer;->d(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 173
    iget-object v0, p0, Lo/iH;->g:Lo/Plugin;

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0, p0}, Lo/Plugin;->e(Lo/JavascriptInterface;)Z

    .line 176
    :cond_0
    invoke-virtual {p0}, Lo/iH;->o()V

    return-void
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/jr;)V
.end method

.method public a(Lo/Plugin;)V
    .locals 1

    const-string p1, "nf_log_cl"

    const-string v0, "App ui gone"

    .line 498
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lo/Plugin;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "nf_log_cl"

    const-string p2, "App ui foreground"

    .line 487
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract b()Lo/adx;
.end method

.method protected abstract b(Landroid/content/Intent;)V
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .line 344
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lo/iH;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lo/iD;

    invoke-direct {v1, p0, p1}, Lo/iD;-><init>(Lo/iH;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lo/Plugin;)V
    .locals 1

    const-string p1, "nf_log_cl"

    const-string v0, "App ui background"

    .line 493
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 334
    :try_start_0
    iget-object v0, p0, Lo/iH;->i:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->g()Ljava/lang/String;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lo/iH;->b:Lo/aeL;

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

    const-string v0, "nf_log_cl"

    const-string v1, "Failed to save payload to repository"

    .line 337
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract c()V
.end method

.method public c(Lo/Plugin;)V
    .locals 1

    const-string p1, "nf_log_cl"

    const-string v0, "App ui lost focus"

    .line 472
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected c([Lo/aeL$StateListAnimator;Z)V
    .locals 13

    const-string v0, "nf_log_cl"

    if-eqz p1, :cond_6

    .line 364
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-wide/32 v3, 0x36ee80

    .line 373
    invoke-static {}, Lo/gX;->f()I

    move-result v1

    int-to-long v5, v1

    mul-long v5, v5, v3

    .line 374
    invoke-static {}, Lo/gX;->g()Z

    move-result v1

    .line 377
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_5

    aget-object v8, p1, v7

    .line 378
    invoke-interface {v8}, Lo/aeL$StateListAnimator;->a()Ljava/lang/String;

    move-result-object v9

    if-eqz v1, :cond_1

    const-string v8, "Retry is disabled, remove saved payload."

    .line 381
    invoke-static {v0, v8}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p0, v9}, Lo/iH;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v10, "Retry is enabled, process saved payload for retry..."

    .line 385
    invoke-static {v0, v10}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v10, p0, Lo/iH;->h:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v9, v8, v4

    const-string v9, "We are already trying to deliver %s deliveryRequestId, skip"

    .line 389
    invoke-static {v0, v9, v8}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 393
    :cond_2
    invoke-static {v8, v5, v6}, Lo/adS;->a(Lo/aeL$StateListAnimator;J)Z

    move-result v8

    if-eqz v8, :cond_3

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v9, v8, v4

    const-string v10, "Drop too old %s deliveryRequestId, skip"

    .line 394
    invoke-static {v0, v10, v8}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 395
    invoke-virtual {p0, v9}, Lo/iH;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 398
    :cond_3
    iget-object v8, p0, Lo/iH;->h:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_4

    .line 401
    iget-object v8, p0, Lo/iH;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v10, Lo/iJ;

    invoke-direct {v10, p0, v9}, Lo/iJ;-><init>(Lo/iH;Ljava/lang/String;)V

    iget-object v9, p0, Lo/iH;->d:Lo/jb;

    .line 403
    invoke-virtual {v9}, Lo/jb;->g()J

    move-result-wide v11

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 401
    invoke-interface {v8, v10, v11, v12, v9}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    .line 405
    :cond_4
    iget-object v8, p0, Lo/iH;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v10, Lo/iL;

    invoke-direct {v10, p0, v9}, Lo/iL;-><init>(Lo/iH;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 411
    :cond_5
    invoke-direct {p0}, Lo/iH;->t()V

    return-void

    :cond_6
    :goto_2
    const-string p1, "No saved events found"

    .line 365
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public canSendEvent(Ljava/lang/String;)Z
    .locals 1

    .line 435
    iget-object v0, p0, Lo/iH;->j:Lo/iW;

    invoke-virtual {v0, p1}, Lo/iW;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected d()V
    .locals 5

    .line 199
    invoke-direct {p0}, Lo/iH;->s()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nf_log_cl"

    const-string v1, "Leave re-try to next trigger..."

    .line 200
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Lo/iH;->b()Lo/adx;

    move-result-object v0

    invoke-virtual {v0}, Lo/adx;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lo/iH;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lo/iH;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lo/iH;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lo/iH;->l:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 2

    .line 353
    invoke-static {}, Lo/aeB;->c()Z

    .line 355
    :try_start_0
    iget-object v0, p0, Lo/iH;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 356
    iget-object v0, p0, Lo/iH;->b:Lo/aeL;

    invoke-interface {v0, p1}, Lo/aeL;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "nf_log_cl"

    const-string v1, "Failed to remove payload from repository"

    .line 358
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public d(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    .line 154
    iput-object p1, p0, Lo/iH;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 155
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lo/CarrierIdentifier;->j()Lo/Plugin;

    move-result-object p1

    iput-object p1, p0, Lo/iH;->g:Lo/Plugin;

    .line 157
    invoke-virtual {p0}, Lo/iH;->c()V

    .line 159
    iget-object p1, p0, Lo/iH;->g:Lo/Plugin;

    invoke-interface {p1}, Lo/Plugin;->i()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "nf_log_cl"

    const-string v1, "Add ICL manager as listener on user input..."

    .line 161
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v1, p0, Lo/iH;->g:Lo/Plugin;

    invoke-interface {v1, p0}, Lo/Plugin;->b(Lo/JavascriptInterface;)Z

    const-string v1, "Add ICL manager as listener on user input done."

    .line 163
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lo/iH;->p()V

    .line 166
    invoke-virtual {p0}, Lo/iH;->j()V

    .line 167
    invoke-virtual {p0, p1}, Lo/iH;->b(Landroid/content/Intent;)V

    return-void
.end method

.method public d(Lo/Plugin;)V
    .locals 1

    const-string p1, "nf_log_cl"

    const-string v0, "App ui gains focus"

    .line 477
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method protected e(Ljava/lang/String;)V
    .locals 2

    .line 279
    iget-object v0, p0, Lo/iH;->b:Lo/aeL;

    new-instance v1, Lo/iH$1;

    invoke-direct {v1, p0, p1}, Lo/iH$1;-><init>(Lo/iH;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lo/aeL;->a(Ljava/lang/String;Lo/aeL$Application;)V

    return-void
.end method

.method public e(Lo/Plugin;)V
    .locals 1

    const-string p1, "nf_log_cl"

    const-string v0, "App ui started"

    .line 482
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public f()V
    .locals 1

    .line 320
    invoke-virtual {p0}, Lo/iH;->b()Lo/adx;

    move-result-object v0

    invoke-virtual {v0}, Lo/adx;->a()V

    .line 321
    invoke-virtual {p0}, Lo/iH;->d()V

    return-void
.end method

.method protected g()J
    .locals 4

    .line 421
    iget-object v0, p0, Lo/iH;->c:Lo/cz;

    if-nez v0, :cond_0

    const-wide/32 v0, 0x1b7740

    return-wide v0

    .line 425
    :cond_0
    invoke-interface {v0}, Lo/cz;->v()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public h()V
    .locals 5

    .line 258
    iget-object v0, p0, Lo/iH;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "nf_log_cl"

    const-string v1, "Device is connected, lets see if we need to deliver cached events..."

    .line 259
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Lo/iH;->b:Lo/aeL;

    invoke-interface {v1}, Lo/aeL;->d()[Lo/aeL$StateListAnimator;

    move-result-object v1

    if-nez v1, :cond_0

    .line 262
    array-length v2, v1

    if-lez v2, :cond_2

    .line 264
    :cond_0
    invoke-static {}, Lo/gX;->b()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    new-array v2, v3, [Ljava/lang/Object;

    .line 265
    array-length v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "We found %d cached log entries, network is connected, policy requires attempt to delive saved payloads. Lets try to deliver them"

    invoke-static {v0, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 266
    invoke-virtual {p0, v1, v4}, Lo/iH;->c([Lo/aeL$StateListAnimator;Z)V

    goto :goto_0

    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    .line 268
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

.method protected i()V
    .locals 2

    .line 443
    invoke-virtual {p0}, Lo/iH;->b()Lo/adx;

    move-result-object v0

    invoke-virtual {v0}, Lo/adx;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nf_log_cl"

    const-string v1, "Events were send recently. We reached timeout, force send"

    .line 444
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected j()V
    .locals 4

    const-string v0, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_STARTED"

    const-string v1, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_ENDED"

    .line 503
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lo/iH;->a:Landroid/content/Context;

    iget-object v2, p0, Lo/iH;->o:Landroid/content/BroadcastReceiver;

    const-string v3, "com.netflix.mediaclient.intent.category.PLAYER"

    invoke-static {v1, v2, v3, v0}, Lo/adG;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    return-void
.end method

.method protected abstract k()V
.end method

.method protected o()V
    .locals 2

    .line 512
    iget-object v0, p0, Lo/iH;->a:Landroid/content/Context;

    iget-object v1, p0, Lo/iH;->o:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lo/adG;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    return-void
.end method
