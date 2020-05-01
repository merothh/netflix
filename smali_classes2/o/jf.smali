.class public Lo/jf;
.super Lo/iG;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/jf$TaskDescription;,
        Lo/jf$StateListAnimator;,
        Lo/jf$Application;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private d:Lo/jf$TaskDescription;

.field private e:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private f:Ljava/util/concurrent/ScheduledExecutorService;

.field private h:Lo/aeL;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lcom/netflix/mediaclient/service/user/UserAgent;Landroid/content/Context;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Lo/iG;-><init>()V

    .line 75
    new-instance v0, Lo/jf$TaskDescription;

    invoke-direct {v0, p0}, Lo/jf$TaskDescription;-><init>(Lo/jf;)V

    iput-object v0, p0, Lo/jf;->d:Lo/jf$TaskDescription;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/jf;->i:Ljava/util/List;

    .line 131
    new-instance v0, Lo/jf$3;

    invoke-direct {v0, p0}, Lo/jf$3;-><init>(Lo/jf;)V

    iput-object v0, p0, Lo/jf;->j:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 97
    iput-object p1, p0, Lo/jf;->e:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 98
    iput-object p2, p0, Lo/jf;->c:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 99
    iput-object p3, p0, Lo/jf;->a:Landroid/content/Context;

    return-void

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "UserAgent is null?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Owner is null?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lo/jf;)Lo/jf$TaskDescription;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/jf;->d:Lo/jf$TaskDescription;

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 268
    :try_start_0
    iget-object v0, p0, Lo/jf;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 269
    iget-object v0, p0, Lo/jf;->h:Lo/aeL;

    invoke-interface {v0, p1}, Lo/aeL;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nf_releaseLicense"

    if-eqz p1, :cond_3

    .line 278
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 283
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 286
    :try_start_0
    invoke-direct {p0, v1}, Lo/jf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-direct {p0}, Lo/jf;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    iget-object v3, p0, Lo/jf;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v3, Lo/jf$StateListAnimator;

    invoke-direct {v3, p0, v2}, Lo/jf$StateListAnimator;-><init>(Lo/jf;Ljava/lang/String;)V

    .line 293
    new-instance v2, Lo/kl;

    iget-object v4, p0, Lo/jf;->a:Landroid/content/Context;

    invoke-direct {v2, v4, v1, v3}, Lo/kl;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/jf$Application;)V

    .line 294
    iget-object v1, p0, Lo/jf;->e:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "Failed to create JSON object for logging request"

    .line 300
    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Failed to allocate memory for logging request, dumping log events..."

    .line 297
    invoke-static {v0, v1, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 298
    invoke-static {v1}, Lo/adS;->b(Ljava/lang/OutOfMemoryError;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p1, "no events to send"

    .line 279
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lo/jf;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lo/jf;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lo/jf;Ljava/util/List;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lo/jf;->a(Ljava/util/List;)V

    return-void
.end method

.method private a([Lo/aeL$StateListAnimator;Z)V
    .locals 7

    if-eqz p1, :cond_4

    .line 158
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 168
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 170
    invoke-interface {v2}, Lo/aeL$StateListAnimator;->a()Ljava/lang/String;

    move-result-object v2

    .line 172
    iget-object v3, p0, Lo/jf;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 178
    :cond_1
    iget-object v3, p0, Lo/jf;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    .line 181
    iget-object v3, p0, Lo/jf;->f:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lo/jf$4;

    invoke-direct {v4, p0, v2}, Lo/jf$4;-><init>(Lo/jf;Ljava/lang/String;)V

    iget-object v2, p0, Lo/jf;->e:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 186
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->g()J

    move-result-wide v5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 181
    invoke-interface {v3, v4, v5, v6, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    .line 188
    :cond_2
    iget-object v3, p0, Lo/jf;->f:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lo/jf$5;

    invoke-direct {v4, p0, v2}, Lo/jf$5;-><init>(Lo/jf;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_2
    const-string p1, "nf_releaseLicense"

    const-string p2, "No saved events found"

    .line 159
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic b(Lo/jf;)Lcom/netflix/mediaclient/service/user/UserAgent;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/jf;->c:Lcom/netflix/mediaclient/service/user/UserAgent;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 250
    :try_start_0
    iget-object v0, p0, Lo/jf;->h:Lo/aeL;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v2, p0, Lo/jf;->c:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lo/aeL;->e(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic b(Lo/jf;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lo/jf;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lo/jf;Ljava/lang/String;Ljava/lang/String;Lo/jf$Application;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lo/jf;->c(Ljava/lang/String;Ljava/lang/String;Lo/jf$Application;)V

    return-void
.end method

.method private b(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 340
    invoke-direct {p0}, Lo/jf;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x6

    .line 347
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p2

    .line 349
    iget-object v1, p0, Lo/jf;->b:Landroid/os/Handler;

    .line 350
    invoke-virtual {v1, v0, p2, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 351
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic c(Lo/jf;)Ljava/lang/Runnable;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/jf;->j:Ljava/lang/Runnable;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lo/jf;->f:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lo/je;

    invoke-direct {v1, p0, p1}, Lo/je;-><init>(Lo/jf;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Lo/jf$Application;)V
    .locals 2

    if-nez p2, :cond_0

    const-string p1, "nf_releaseLicense"

    const-string p2, "Nothing to send, payload is null. sendSavedReleaseLicenseEvents done."

    .line 233
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 234
    sget-object p2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p3, p1, p2}, Lo/jf$Application;->a(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 238
    :cond_0
    new-instance v0, Lo/kl;

    iget-object v1, p0, Lo/jf;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p3}, Lo/kl;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/jf$Application;)V

    .line 239
    iget-object p2, p0, Lo/jf;->e:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    iget-object p3, p0, Lo/jf;->c:Lcom/netflix/mediaclient/service/user/UserAgent;

    const/4 v1, 0x1

    invoke-static {p3, p1, v0, v1}, Lo/adT;->b(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Lo/np;Z)Lo/np;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method static synthetic d(Lo/jf;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/jf;->f:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private d()V
    .locals 5

    .line 120
    iget-object v0, p0, Lo/jf;->d:Lo/jf$TaskDescription;

    invoke-virtual {v0}, Lo/jf$TaskDescription;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lo/jf;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/jf;->c:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lo/jf;->f:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lo/jf;->j:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 121
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/jf;->f:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lo/jf;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :goto_1
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lo/jf;->h:Lo/aeL;

    new-instance v1, Lo/jf$2;

    invoke-direct {v1, p0, p1}, Lo/jf$2;-><init>(Lo/jf;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lo/aeL;->a(Ljava/lang/String;Lo/aeL$Application;)V

    return-void
.end method

.method static synthetic d(Lo/jf;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/jf;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lo/jf;Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lo/jf;->b(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private e()V
    .locals 3

    .line 113
    iget-object v0, p0, Lo/jf;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/io/File;

    const-string v2, "streamingReleaseLicense"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 116
    new-instance v0, Lo/aeO;

    invoke-direct {v0, v1}, Lo/aeO;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lo/jf;->h:Lo/aeL;

    return-void
.end method

.method static synthetic e(Lo/jf;[Lo/aeL$StateListAnimator;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lo/jf;->a([Lo/aeL$StateListAnimator;Z)V

    return-void
.end method

.method static synthetic e(Lo/jf;)Z
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/jf;->i()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lo/jf;)Lo/aeL;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/jf;->h:Lo/aeL;

    return-object p0
.end method

.method private synthetic g(Ljava/lang/String;)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lo/jf;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lo/jf;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/jf;->i:Ljava/util/List;

    return-object p0
.end method

.method private i()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lo/jf;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method a()V
    .locals 5

    .line 381
    iget-object v0, p0, Lo/jf;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lo/jf;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/jf;->c:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "nf_releaseLicense"

    const-string v1, "Device is connected, lets see if we need to deliver cached events..."

    .line 382
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v1, p0, Lo/jf;->h:Lo/aeL;

    invoke-interface {v1}, Lo/aeL;->d()[Lo/aeL$StateListAnimator;

    move-result-object v1

    if-nez v1, :cond_0

    .line 385
    array-length v2, v1

    if-lez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 386
    array-length v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "We found %d cached log entries, network is connected, lets try to deliver them"

    invoke-static {v0, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 387
    invoke-direct {p0, v1, v4}, Lo/jf;->a([Lo/aeL$StateListAnimator;Z)V

    :cond_1
    return-void
.end method

.method b()V
    .locals 2

    .line 53
    iget-object v0, p0, Lo/jf;->d:Lo/jf$TaskDescription;

    invoke-virtual {v0}, Lo/jf$TaskDescription;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nf_releaseLicense"

    const-string v1, "releaseLicense events were sent recently. We reached timeout, force send"

    .line 54
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method b(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lo/jf;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 109
    invoke-direct {p0}, Lo/jf;->e()V

    return-void
.end method

.method c()V
    .locals 1

    .line 374
    iget-object v0, p0, Lo/jf;->d:Lo/jf$TaskDescription;

    invoke-virtual {v0}, Lo/jf$TaskDescription;->a()V

    .line 375
    invoke-direct {p0}, Lo/jf;->d()V

    return-void
.end method

.method public e(Landroid/os/Handler;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lo/jf;->b:Landroid/os/Handler;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 307
    iget-object v0, p0, Lo/jf;->d:Lo/jf$TaskDescription;

    invoke-virtual {v0, p1}, Lo/jf$TaskDescription;->e(Ljava/lang/Object;)Z

    return-void
.end method
