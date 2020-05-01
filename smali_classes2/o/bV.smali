.class public abstract Lo/bV;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/bV$TaskDescription;,
        Lo/bV$Activity;
    }
.end annotation


# static fields
.field public static final CATEGORY_DEBUG:Ljava/lang/String; = "com.netflix.mediaclient.intent.category.DEBUG"

.field private static final TAG:Ljava/lang/String; = "nf_service_ServiceAgent"


# instance fields
.field public agentContext:Lo/bV$TaskDescription;

.field private initCallback:Lo/bV$Activity;

.field private initCalled:Z

.field private initErrorResult:Lcom/netflix/mediaclient/android/app/Status;

.field private mInitStartTime:J

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lo/bV;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lo/bV;J)J
    .locals 0

    .line 47
    iput-wide p1, p0, Lo/bV;->mInitStartTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lo/bV;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 0

    .line 47
    iget-object p0, p0, Lo/bV;->initErrorResult:Lcom/netflix/mediaclient/android/app/Status;

    return-object p0
.end method

.method static synthetic access$200(Lo/bV;)Lo/bV$Activity;
    .locals 0

    .line 47
    iget-object p0, p0, Lo/bV;->initCallback:Lo/bV$Activity;

    return-object p0
.end method


# virtual methods
.method public addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z
    .locals 1

    .line 415
    invoke-virtual {p0}, Lo/bV;->getNetflixPlatform()Lo/SmartSelectSprite;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    invoke-interface {v0, p1}, Lo/SmartSelectSprite;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "nf_service_ServiceAgent"

    const-string v0, "Unable to add data request! Service is null, this should NOT happen!"

    .line 419
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public abstract agentName()Ljava/lang/String;
.end method

.method public destroy()V
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_service_ServiceAgent"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lo/bV;->agentContext:Lo/bV$TaskDescription;

    return-void
.end method

.method protected abstract doInit()V
.end method

.method public getAUIAgent()Lo/cc;
    .locals 1

    .line 318
    iget-object v0, p0, Lo/bV;->agentContext:Lo/bV$TaskDescription;

    if-eqz v0, :cond_0

    .line 320
    invoke-interface {v0}, Lo/bV$TaskDescription;->e()Lo/cc;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAgentLoadEventName()Lcom/netflix/mediaclient/service/logging/perf/Sessions;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConfigurationAgent()Lo/cz;
    .locals 1

    .line 305
    iget-object v0, p0, Lo/bV;->agentContext:Lo/bV$TaskDescription;

    if-eqz v0, :cond_0

    .line 307
    invoke-interface {v0}, Lo/bV$TaskDescription;->b()Lo/cz;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 259
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getErrorHandler()Lo/zF;
    .locals 1

    .line 347
    iget-object v0, p0, Lo/bV;->agentContext:Lo/bV$TaskDescription;

    if-eqz v0, :cond_0

    .line 349
    invoke-interface {v0}, Lo/bV$TaskDescription;->g()Lo/zF;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;
    .locals 1

    .line 281
    iget-object v0, p0, Lo/bV;->agentContext:Lo/bV$TaskDescription;

    if-eqz v0, :cond_0

    .line 283
    invoke-interface {v0}, Lo/bV$TaskDescription;->o()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;
    .locals 1

    .line 356
    iget-object v0, p0, Lo/bV;->agentContext:Lo/bV$TaskDescription;

    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0}, Lo/bV$TaskDescription;->f()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMSLClient()Lo/zE;
    .locals 1

    .line 365
    iget-object v0, p0, Lo/bV;->agentContext:Lo/bV$TaskDescription;

    if-eqz v0, :cond_0

    .line 367
    invoke-interface {v0}, Lo/bV$TaskDescription;->j()Lo/zE;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .line 251
    iget-object v0, p0, Lo/bV;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected getNetflixPlatform()Lo/SmartSelectSprite;
    .locals 1

    .line 263
    iget-object v0, p0, Lo/bV;->agentContext:Lo/bV$TaskDescription;

    if-eqz v0, :cond_0

    .line 265
    invoke-interface {v0}, Lo/bV$TaskDescription;->l()Lo/SmartSelectSprite;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOfflineAgent()Lo/nS;
    .locals 1

    .line 374
    iget-object v0, p0, Lo/bV;->agentContext:Lo/bV$TaskDescription;

    if-eqz v0, :cond_0

    .line 376
    invoke-interface {v0}, Lo/bV$TaskDescription;->i()Lo/nS;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOfflineAgentPlaybackInterface()Lo/pq;
    .locals 1

    .line 382
    iget-object v0, p0, Lo/bV;->agentContext:Lo/bV$TaskDescription;

    if-eqz v0, :cond_0

    .line 384
    invoke-interface {v0}, Lo/bV$TaskDescription;->n()Lo/pq;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreAppAgent()Lo/xR;
    .locals 1

    .line 338
    iget-object v0, p0, Lo/bV;->agentContext:Lo/bV$TaskDescription;

    if-eqz v0, :cond_0

    .line 340
    invoke-interface {v0}, Lo/bV$TaskDescription;->h()Lo/xR;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResourceFetcher()Lo/xZ;
    .locals 1

    .line 329
    iget-object v0, p0, Lo/bV;->agentContext:Lo/bV$TaskDescription;

    if-eqz v0, :cond_0

    .line 331
    invoke-interface {v0}, Lo/bV$TaskDescription;->t()Lo/xZ;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceNotificationHelper()Lo/Ac;
    .locals 1

    .line 272
    iget-object v0, p0, Lo/bV;->agentContext:Lo/bV$TaskDescription;

    if-eqz v0, :cond_0

    .line 274
    invoke-interface {v0}, Lo/bV$TaskDescription;->k()Lo/Ac;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;
    .locals 1

    .line 293
    iget-object v0, p0, Lo/bV;->agentContext:Lo/bV$TaskDescription;

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v0}, Lo/bV$TaskDescription;->a()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserCredentialProvider()Lo/Ar;
    .locals 1

    .line 391
    iget-object v0, p0, Lo/bV;->agentContext:Lo/bV$TaskDescription;

    if-eqz v0, :cond_0

    .line 393
    invoke-interface {v0}, Lo/bV$TaskDescription;->m()Lo/Ar;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleConnectivityChange()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized init(Lo/bV$TaskDescription;Lo/bV$Activity;)V
    .locals 6

    monitor-enter p0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lo/bV;->getAgentLoadEventName()Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    const-class v1, Lo/kg;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/kg;

    invoke-interface {v1, v0}, Lo/kg;->e(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    .line 86
    :cond_0
    invoke-static {}, Lo/aeB;->a()Z

    const-string v0, "nf_service_ServiceAgent"

    const-string v1, "Request to init %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 90
    iget-boolean v0, p0, Lo/bV;->initCalled:Z

    if-eqz v0, :cond_1

    .line 91
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " init already called!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    invoke-interface {p2, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 102
    :try_start_1
    iput-object p1, p0, Lo/bV;->agentContext:Lo/bV$TaskDescription;

    .line 103
    iput-boolean v2, p0, Lo/bV;->initCalled:Z

    .line 104
    iput-object p2, p0, Lo/bV;->initCallback:Lo/bV$Activity;

    .line 106
    new-instance p1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {p1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance p2, Lo/bV$4;

    invoke-direct {p2, p0}, Lo/bV$4;-><init>(Lo/bV;)V

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 100
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "AgentContext can not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    monitor-enter p0

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lo/bV;->getAgentLoadEventName()Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    const-class v1, Lo/kg;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/kg;

    invoke-interface {v1, v0}, Lo/kg;->d(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    .line 127
    :cond_0
    iput-object p1, p0, Lo/bV;->initErrorResult:Lcom/netflix/mediaclient/android/app/Status;

    const-string v0, "nf_service_ServiceAgent"

    const-string v1, "%s InitComplete errorCode=%d took=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lo/bV;->mInitStartTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-static {v0, v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 131
    iget-object p1, p0, Lo/bV;->initCallback:Lo/bV$Activity;

    if-eqz p1, :cond_1

    .line 132
    iget-object p1, p0, Lo/bV;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lo/bV$5;

    invoke-direct {v0, p0}, Lo/bV$5;-><init>(Lo/bV;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isInitCalled()Z
    .locals 1

    .line 400
    iget-boolean v0, p0, Lo/bV;->initCalled:Z

    return v0
.end method

.method public declared-synchronized isReady()Z
    .locals 1

    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lo/bV;->initErrorResult:Lcom/netflix/mediaclient/android/app/Status;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/bV;->initErrorResult:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public reportHandledException(Ljava/lang/Exception;)V
    .locals 1

    .line 404
    invoke-virtual {p0}, Lo/bV;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->a()Lo/zz;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/zz;->e(Ljava/lang/Throwable;)V

    return-void
.end method
