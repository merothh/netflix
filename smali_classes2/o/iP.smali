.class public Lo/iP;
.super Lo/iH;
.source ""

# interfaces
.implements Lcom/netflix/cl/EventSender;
.implements Lo/iB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/iP$ActionBar;
    }
.end annotation


# instance fields
.field private final l:Lo/iP$ActionBar;

.field protected final n:Lo/ja;

.field private q:Landroid/os/Handler;

.field private r:Landroid/os/HandlerThread;

.field private final s:Ljava/lang/Runnable;

.field private t:Lo/SmartSelectSprite;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/jb;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lo/SmartSelectSprite;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lo/iH;-><init>(Landroid/content/Context;Lo/jb;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;)V

    .line 64
    new-instance p2, Lo/iP$ActionBar;

    invoke-direct {p2, p0}, Lo/iP$ActionBar;-><init>(Lo/iP;)V

    iput-object p2, p0, Lo/iP;->l:Lo/iP$ActionBar;

    .line 73
    new-instance p2, Lo/ja;

    invoke-direct {p2}, Lo/ja;-><init>()V

    iput-object p2, p0, Lo/iP;->n:Lo/ja;

    .line 321
    sget-object p2, Lo/iQ;->c:Lo/iQ;

    iput-object p2, p0, Lo/iP;->s:Ljava/lang/Runnable;

    .line 77
    iget-object p2, p0, Lo/iP;->n:Lo/ja;

    invoke-virtual {p2, p1}, Lo/ja;->a(Landroid/content/Context;)V

    .line 78
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "CLv2Sender"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/iP;->r:Landroid/os/HandlerThread;

    .line 79
    iget-object p1, p0, Lo/iP;->r:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 80
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lo/iP;->r:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/iP;->q:Landroid/os/Handler;

    .line 81
    iput-object p5, p0, Lo/iP;->t:Lo/SmartSelectSprite;

    return-void
.end method

.method public static a(J)Lcom/netflix/cl/model/event/session/UserInteractionEnded;
    .locals 2

    .line 151
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-string v1, "UserInteraction"

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->getExclusiveSession(Ljava/lang/String;)Lcom/netflix/cl/model/event/session/Session;

    move-result-object v0

    .line 152
    instance-of v1, v0, Lcom/netflix/cl/model/event/session/UserInteraction;

    if-eqz v1, :cond_0

    .line 153
    new-instance v1, Lcom/netflix/cl/model/event/session/UserInteractionEnded;

    check-cast v0, Lcom/netflix/cl/model/event/session/UserInteraction;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/netflix/cl/model/event/session/UserInteractionEnded;-><init>(Lcom/netflix/cl/model/event/session/UserInteraction;Ljava/lang/Long;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 304
    invoke-static {}, Lo/aeB;->c()Z

    .line 305
    invoke-virtual {p0, p1}, Lo/iP;->e(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic c(Lcom/netflix/cl/model/envelope/LoggingEnvelope;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lo/iP;->d(Lcom/netflix/cl/model/envelope/LoggingEnvelope;)V

    return-void
.end method

.method static synthetic c(Lo/iP;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/iP;->a(Ljava/lang/String;)V

    return-void
.end method

.method private d(Lcom/netflix/cl/model/envelope/LoggingEnvelope;)V
    .locals 5

    const-string v0, "nf_log_clv2"

    .line 178
    invoke-static {}, Lo/aeB;->c()Z

    const/4 v1, 0x0

    .line 185
    :try_start_0
    invoke-interface {p1}, Lcom/netflix/cl/model/envelope/LoggingEnvelope;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {p0, p1}, Lo/iP;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 193
    iget-object v3, p0, Lo/iP;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_0
    iget-object v3, p0, Lo/iP;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Local playback is NOT in progress, sending payload..."

    .line 197
    invoke-static {v0, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v3, p0, Lo/iP;->i:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/user/UserAgent;->g()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lo/iH$Application;

    invoke-direct {v4, p0, p1}, Lo/iH$Application;-><init>(Lo/iH;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, p1, v4}, Lo/iP;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/jr;)V

    goto :goto_0

    :cond_1
    const-string p1, "DO NOT send events during playback! Postponing..."

    .line 200
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to create JSON object for logging request"

    .line 206
    invoke-static {v0, p1, v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to allocate memory for logging request, dumping log events..."

    .line 203
    invoke-static {v0, p1, v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 204
    invoke-static {p1}, Lo/adS;->b(Ljava/lang/OutOfMemoryError;)V

    :goto_0
    return-void
.end method

.method static synthetic e(Lo/iP;Lcom/netflix/cl/model/envelope/LoggingEnvelope;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/iP;->c(Lcom/netflix/cl/model/envelope/LoggingEnvelope;)V

    return-void
.end method

.method static synthetic p()V
    .locals 0

    invoke-static {}, Lo/iP;->s()V

    return-void
.end method

.method private q()V
    .locals 3

    .line 93
    invoke-static {}, Lo/gX;->d()Z

    move-result v0

    const-string v1, "nf_log_clv2"

    if-nez v0, :cond_0

    const-string v0, "Retry policy is preventing us to use scheduler for retries to deliver saved events"

    .line 94
    invoke-static {v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Retry policy requires us to use scheduler for retries to deliver saved events"

    .line 97
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lo/iP;->t:Lo/SmartSelectSprite;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->f:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {v0, v1, p0}, Lo/SmartSelectSprite;->d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Lo/iB;)V

    .line 100
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->h()Lo/iy;

    move-result-object v0

    .line 101
    invoke-static {}, Lo/gX;->a()I

    move-result v1

    const v2, 0x36ee80

    mul-int v1, v1, v2

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/job/NetflixJob;->d(J)Lcom/netflix/mediaclient/service/job/NetflixJob;

    move-result-object v1

    .line 102
    invoke-interface {v0, v1}, Lo/iy;->a(Lcom/netflix/mediaclient/service/job/NetflixJob;)V

    :goto_0
    return-void
.end method

.method private r()V
    .locals 7

    .line 119
    iget-object v0, p0, Lo/iP;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "nf_log_clv2"

    if-eqz v0, :cond_0

    const-string v0, "Local playback is in progress, consider that user just interacted with UI. Exit."

    .line 120
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lo/iP;->g:Lo/Plugin;

    invoke-interface {v0, v1}, Lo/Plugin;->a(Z)V

    return-void

    :cond_0
    const-string v0, "Local playback is NOT in progress, check last user interaction"

    .line 124
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lo/iP;->g:Lo/Plugin;

    invoke-interface {v0}, Lo/Plugin;->d()J

    move-result-wide v3

    .line 132
    invoke-virtual {p0}, Lo/iP;->g()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    .line 133
    sget-object v5, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class v6, Lcom/netflix/cl/model/event/session/UserInteraction;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netflix/cl/Logger;->existExclusiveSession(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "It is more than 30 minutes and user session exist. End user session"

    .line 134
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Lo/iP;->a(J)Lcom/netflix/cl/model/event/session/UserInteractionEnded;

    move-result-object v0

    .line 137
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v2, v0}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    .line 139
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/UserInteraction;

    invoke-direct {v2}, Lcom/netflix/cl/model/event/session/UserInteraction;-><init>()V

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 141
    iget-object v0, p0, Lo/iP;->g:Lo/Plugin;

    invoke-interface {v0, v1}, Lo/Plugin;->a(Z)V

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    .line 143
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class v1, Lcom/netflix/cl/model/event/session/UserInteraction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->existExclusiveSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "It is less than 30 minutes and user session does NOT exist. Start user session"

    .line 145
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/UserInteraction;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/UserInteraction;-><init>()V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    :cond_2
    :goto_0
    return-void
.end method

.method private static synthetic s()V
    .locals 3

    .line 322
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->h()Lo/iy;

    move-result-object v0

    .line 323
    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->f:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lo/iy;->d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()V
    .locals 0

    .line 51
    invoke-super {p0}, Lo/iH;->a()V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/jr;)V
    .locals 2

    const-string v0, "nf_log_clv2"

    const-string v1, "sendLoggingEvents starts..."

    .line 218
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string p2, "Use current profile..."

    .line 221
    invoke-static {v0, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object p2, p0, Lo/iP;->i:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {p2}, Lcom/netflix/mediaclient/service/user/UserAgent;->g()Ljava/lang/String;

    move-result-object p2

    .line 224
    :cond_0
    iget-object v1, p0, Lo/iP;->k:Lo/jz;

    invoke-virtual {v1, p2, p1, p3, p4}, Lo/jz;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/jr;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    .line 227
    iget-object p2, p0, Lo/iP;->d:Lo/jb;

    invoke-virtual {p2, p1}, Lo/jb;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    const-string p1, "sendLoggingEvents done."

    .line 229
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic a(Lo/Plugin;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lo/iH;->a(Lo/Plugin;)V

    return-void
.end method

.method public bridge synthetic a(Lo/Plugin;Landroid/content/Intent;)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2}, Lo/iH;->a(Lo/Plugin;Landroid/content/Intent;)V

    return-void
.end method

.method protected b()Lo/adx;
    .locals 1

    .line 260
    iget-object v0, p0, Lo/iP;->l:Lo/iP$ActionBar;

    return-object v0
.end method

.method protected b(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic b(Lo/Plugin;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lo/iH;->b(Lo/Plugin;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 249
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1}, Lcom/netflix/cl/Logger;->flush()V

    return-void
.end method

.method protected c()V
    .locals 1

    .line 87
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p0}, Lcom/netflix/cl/Logger;->setEventSender(Lcom/netflix/cl/EventSender;)V

    .line 88
    invoke-direct {p0}, Lo/iP;->q()V

    return-void
.end method

.method public bridge synthetic c(Lo/Plugin;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lo/iH;->c(Lo/Plugin;)V

    return-void
.end method

.method public canSendEvent(Ljava/lang/String;)Z
    .locals 1

    .line 279
    iget-object v0, p0, Lo/iP;->j:Lo/iW;

    invoke-virtual {v0, p1}, Lo/iW;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic d(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lo/iH;->d(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method public bridge synthetic d(Lo/Plugin;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lo/iH;->d(Lo/Plugin;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "icleventsv2"

    return-object v0
.end method

.method public bridge synthetic e(Lo/Plugin;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lo/iH;->e(Lo/Plugin;)V

    return-void
.end method

.method public eventAdded(I)V
    .locals 1

    .line 212
    iget-object v0, p0, Lo/iP;->l:Lo/iP$ActionBar;

    invoke-virtual {v0, p1}, Lo/iP$ActionBar;->d(I)Z

    return-void
.end method

.method public bridge synthetic f()V
    .locals 0

    .line 51
    invoke-super {p0}, Lo/iH;->f()V

    return-void
.end method

.method public h()V
    .locals 2

    .line 270
    invoke-super {p0}, Lo/iH;->h()V

    .line 271
    iget-object v0, p0, Lo/iP;->n:Lo/ja;

    iget-object v1, p0, Lo/iP;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/ja;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected k()V
    .locals 5

    const-string v0, "nf_log_clv2"

    const-string v1, "handleLocalPlaybackEnded::"

    .line 294
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lo/iP;->h:Ljava/util/List;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-object v1, p0, Lo/iP;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 297
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    iget-object v2, p0, Lo/iP;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "nf_log_clv2"

    const-string v2, "Local playback is in progress, stop sending pending events..."

    .line 299
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    monitor-exit v0

    return-void

    .line 302
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 303
    iget-object v3, p0, Lo/iP;->q:Landroid/os/Handler;

    new-instance v4, Lo/iO;

    invoke-direct {v4, p0, v2}, Lo/iO;-><init>(Lo/iP;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 309
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

.method public l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m()V
    .locals 0

    .line 112
    invoke-virtual {p0}, Lo/iP;->i()V

    .line 113
    invoke-direct {p0}, Lo/iP;->r()V

    return-void
.end method

.method public n()V
    .locals 1

    .line 255
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {v0}, Lcom/netflix/cl/ExtLogger;->reinitForVppa()V

    return-void
.end method

.method public onNetflixStartJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 314
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_log_clv2"

    const-string v2, "onNetflixStartJob jobId=%s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 315
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->f:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    if-ne v0, p1, :cond_0

    .line 316
    invoke-virtual {p0}, Lo/iP;->d()V

    .line 317
    iget-object p1, p0, Lo/iP;->s:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-static {p1, v0, v1}, Lo/adX;->b(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onNetflixStopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 2

    .line 328
    iget-object v0, p0, Lo/iP;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Lo/adX;->c(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 329
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "nf_log_clv2"

    const-string v1, "onNetflixStopJob jobId=%s"

    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public send(Lcom/netflix/cl/model/envelope/LoggingEnvelope;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lo/iP;->q:Landroid/os/Handler;

    new-instance v1, Lo/iR;

    invoke-direct {v1, p0, p1}, Lo/iR;-><init>(Lo/iP;Lcom/netflix/cl/model/envelope/LoggingEnvelope;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
