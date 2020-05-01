.class public Lcom/netflix/mediaclient/service/msl/MSLAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "MSLAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IMSLClient;


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "nf_msl"


# instance fields
.field private mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

.field private mEnabled:Z

.field private mNetworkRequestInspectorManager:Lcom/netflix/mediaclient/service/msl/MSLAgent$NetworkRequestInspectorManager;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 57
    sget-boolean v0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/netflix/mediaclient/service/msl/MSLAgent$NetworkRequestInspectorManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/msl/MSLAgent$NetworkRequestInspectorManager;-><init>(Lcom/netflix/mediaclient/service/msl/MSLAgent$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mNetworkRequestInspectorManager:Lcom/netflix/mediaclient/service/msl/MSLAgent$NetworkRequestInspectorManager;

    .line 60
    :cond_0
    return-void
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/service/msl/MSLAgent;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/msl/MSLAgent;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->initializeMsl()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/msl/MSLAgent;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/msl/MSLAgent;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->doExecuteAppBoot()V

    return-void
.end method

.method private doExecuteAppBoot()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v0, v1, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->defaultAppbootRequest(Ljava/lang/Long;Ljava/lang/Long;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->appbootRequest(Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    .line 207
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const-string/jumbo v1, "nf_msl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MSLAgent::initOk: Response on APP_BOOT_REQUEST: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    return-void
.end method

.method private executeAppBoot()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->shouldExecuteAppBotSynchronously()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "Execute AppBoot synchronously, first app launch..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->doExecuteAppBoot()V

    .line 200
    :goto_0
    return-void

    .line 186
    :cond_0
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "Execute AppBoot asynchronously, regular app launch..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    .line 189
    new-instance v1, Lcom/netflix/mediaclient/service/msl/MSLAgent$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent$2;-><init>(Lcom/netflix/mediaclient/service/msl/MSLAgent;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private initializeMsl()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 104
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    .line 106
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDataRequestThreadPoolSize()I

    move-result v0

    .line 108
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v2, "Creating MSL Volley RequestQueue with threadPoolsize of %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    new-instance v1, Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/android/volley/toolbox/NoCache;

    invoke-direct {v2}, Lcom/android/volley/toolbox/NoCache;-><init>()V

    new-instance v3, Lcom/android/volley/toolbox/BasicNetwork;

    new-instance v4, Lcom/netflix/mediaclient/service/msl/volley/MSLSimplelUrlStack;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDataRequestTimeout()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/netflix/mediaclient/service/msl/volley/MSLSimplelUrlStack;-><init>(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;I)V

    invoke-direct {v3, v4}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    invoke-direct {v1, v2, v3, v0}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    .line 116
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->executeAppBoot()V
    :try_end_0
    .catch Lcom/netflix/mediaclient/service/msl/client/MslErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    :cond_1
    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 135
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "MSLAgent::doInit done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 120
    iput-boolean v7, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mEnabled:Z

    .line 121
    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v2, "MSLAgent::doInit appboot failed!"

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->inspectMslError(Lcom/netflix/msl/msg/ErrorHeader;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->MSL_FAILED_TO_CREATE_CLIENT:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 125
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "MSLAgent::doInit failed."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    :catch_1
    move-exception v0

    .line 129
    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v2, "MSLAgent::doInit failed!"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 130
    iput-boolean v7, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mEnabled:Z

    goto :goto_0
.end method

.method private inspectMslError(Lcom/netflix/msl/msg/ErrorHeader;)Z
    .locals 3

    .prologue
    .line 147
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string/jumbo v0, "nf_msl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string/jumbo v0, "nf_msl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getErrorCode()Lcom/netflix/msl/MslConstants$ResponseCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string/jumbo v0, "nf_msl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error recipient: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getRecipient()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string/jumbo v0, "nf_msl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error user message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getUserMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string/jumbo v0, "nf_msl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error internal code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getInternalCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getErrorCode()Lcom/netflix/msl/MslConstants$ResponseCode;

    move-result-object v0

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->TRANSIENT_FAILURE:Lcom/netflix/msl/MslConstants$ResponseCode;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getInternalCode()I

    move-result v0

    const v1, 0x1a9c8

    if-ne v0, v1, :cond_1

    .line 156
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "Our device is one of black listed, we need to default to legacy crypto and offline is NOT supported!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mEnabled:Z

    .line 160
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addNetworkRequestInspector(Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;[Ljava/lang/Class;)V
    .locals 2

    .prologue
    .line 261
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "Trying to add NetworkRequestInspector in release build!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized addRequest(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 215
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mEnabled:Z

    if-nez v1, :cond_0

    .line 216
    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v2, "MSL is disabled, and somebody is trying to connect to BR!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :goto_0
    monitor-exit p0

    return v0

    .line 220
    :cond_0
    if-nez p1, :cond_1

    .line 221
    :try_start_1
    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v2, "Request is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 225
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    const-string/jumbo v0, "nf_msl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Adding MSL request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to queue..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->setMSLClient(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;)V

    .line 230
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->setConfig(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    .line 231
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->setUserAgent(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    .line 232
    invoke-virtual {p1, p0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->setMSLAgent(Lcom/netflix/mediaclient/servicemgr/IMSLClient;)V

    .line 233
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->setErrorLogger(Lcom/netflix/mediaclient/servicemgr/ErrorLogging;)V

    .line 235
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDataRequestTimeout()I

    move-result v0

    .line 236
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->setTimeout(I)V

    .line 238
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v0

    if-nez v0, :cond_4

    .line 239
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->setMSLUserCredentialRegistry(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;)V

    .line 250
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 252
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 241
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    const-string/jumbo v0, "nf_msl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is using its own MSLUserCredentialRegistry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 167
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "Stopping MSL Volley RequestQueue"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 171
    :cond_0
    return-void
.end method

.method protected doInit()V
    .locals 3

    .prologue
    .line 65
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "MSLAgent::doInit start "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "Initiate crypto, if Widevine is supported!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/service/msl/MSLAgent$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent$1;-><init>(Lcom/netflix/mediaclient/service/msl/MSLAgent;)V

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->createCryptoInstance(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/INetflixService;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v2, "Failed to create MSL, disable it!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enabled()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mEnabled:Z

    return v0
.end method

.method public isUserKnown(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent;->mClient:Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->removeUserData()V

    .line 269
    return-void
.end method
