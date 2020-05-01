.class public abstract Lcom/netflix/mediaclient/service/ServiceAgent;
.super Ljava/lang/Object;
.source "ServiceAgent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_service_ServiceAgent"


# instance fields
.field private agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

.field private initCallback:Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;

.field private initCalled:Z

.field private initErrorResult:Lcom/netflix/mediaclient/android/app/Status;

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->UNKNOWN:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initErrorResult:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/ServiceAgent;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initErrorResult:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/ServiceAgent;)Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initCallback:Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 188
    const-string/jumbo v0, "nf_service_ServiceAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Destroying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 190
    return-void
.end method

.method protected abstract doInit()V
.end method

.method public getApplication()Lcom/netflix/mediaclient/NetflixApplication;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 776
    if-eqz v0, :cond_0

    .line 777
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    .line 779
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 836
    if-eqz v0, :cond_0

    .line 837
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    move-result-object v0

    .line 839
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 800
    if-eqz v0, :cond_0

    .line 801
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    .line 803
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 755
    if-eqz v0, :cond_0

    .line 756
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    .line 758
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 854
    if-eqz v0, :cond_0

    .line 855
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    .line 857
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 863
    if-eqz v0, :cond_0

    .line 864
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    .line 866
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 872
    if-eqz v0, :cond_0

    .line 873
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    move-result-object v0

    .line 875
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getNrdController()Lcom/netflix/mediaclient/service/NrdController;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 812
    if-eqz v0, :cond_0

    .line 813
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    .line 815
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 881
    if-eqz v0, :cond_0

    .line 882
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 884
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPdsAgentForDownload()Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadInterface;
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 890
    if-eqz v0, :cond_0

    .line 891
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getPdsAgentForDownload()Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadInterface;

    move-result-object v0

    .line 893
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPdsAgentForPlay()Lcom/netflix/mediaclient/service/pdslogging/PdsPlayInterface;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 899
    if-eqz v0, :cond_0

    .line 900
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getPdsAgentForPlay()Lcom/netflix/mediaclient/service/pdslogging/PdsPlayInterface;

    move-result-object v0

    .line 902
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreAppAgent()Lcom/netflix/mediaclient/service/ServiceAgent$PreAppAgentInterface;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 845
    if-eqz v0, :cond_0

    .line 846
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getPreAppAgent()Lcom/netflix/mediaclient/service/ServiceAgent$PreAppAgentInterface;

    move-result-object v0

    .line 848
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 824
    if-eqz v0, :cond_0

    .line 825
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v0

    .line 827
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getService()Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 764
    if-eqz v0, :cond_0

    .line 765
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    .line 767
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 788
    if-eqz v0, :cond_0

    .line 789
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v0

    .line 791
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized init(Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V
    .locals 5

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/perf/AgentPerfHelper;->startSession(Lcom/netflix/mediaclient/service/ServiceAgent;)V

    .line 112
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 114
    const-string/jumbo v0, "nf_service_ServiceAgent"

    const-string/jumbo v1, "Request to init %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 116
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initCalled:Z

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " init already called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    if-nez p1, :cond_1

    .line 126
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "AgentContext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 128
    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initCalled:Z

    .line 130
    iput-object p2, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initCallback:Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->mainHandler:Landroid/os/Handler;

    .line 133
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/service/ServiceAgent$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/ServiceAgent$1;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected final declared-synchronized initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/perf/AgentPerfHelper;->endSession(Lcom/netflix/mediaclient/service/ServiceAgent;)V

    .line 151
    iput-object p1, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initErrorResult:Lcom/netflix/mediaclient/android/app/Status;

    .line 152
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string/jumbo v0, "nf_service_ServiceAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "InitComplete with errorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initErrorResult:Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initCallback:Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/ServiceAgent$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/ServiceAgent$2;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_1
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInitCalled()Z
    .locals 1

    .prologue
    .line 907
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initCalled:Z

    return v0
.end method

.method public declared-synchronized isReady()Z
    .locals 1

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initErrorResult:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTrimMemory(I)V
    .locals 3

    .prologue
    .line 197
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const-string/jumbo v0, "nf_service_ServiceAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrimMemory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    return-void
.end method

.method public reportHandledException(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 911
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/Throwable;)V

    .line 912
    return-void
.end method
