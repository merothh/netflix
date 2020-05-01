.class public final Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;
.super Ljava/lang/Object;
.source "AdvertiserIdLoggingManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging;


# static fields
.field private static final DAY_IN_MS:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "nf_adv_id"


# instance fields
.field private mAdIdReported:Ljava/lang/String;

.field private mAdIdReportedOptedIn:Ljava/lang/Boolean;

.field private mAdIdReportedTimestamp:J

.field private mAdvertisingIdProvider:Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;

.field private mContext:Landroid/content/Context;

.field private mLoggingWebClient:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingWebClient;

.field private mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

.field private mPostponedEvent:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$3;-><init>(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 77
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->initProvider()V

    .line 78
    return-void
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdIdReported:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;J)J
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdIdReportedTimestamp:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdIdReportedOptedIn:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;)Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdvertisingIdProvider:Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mPostponedEvent:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    return-object v0
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;)Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mPostponedEvent:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    return-object p1
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->onLogin()V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->onLogout()V

    return-void
.end method

.method private doSendAdvertiserId(Ljava/lang/String;Ljava/lang/Boolean;Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;)V
    .locals 3

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/logging/ads/model/AdvertiserIdRequest;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v1, p1, v2, p3, v0}, Lcom/netflix/mediaclient/service/logging/ads/model/AdvertiserIdRequest;-><init>(Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;Ljava/lang/String;)V

    .line 185
    new-instance v0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$2;-><init>(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 207
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mLoggingWebClient:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingWebClient;

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mLoggingWebClient:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingWebClient;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/ads/model/AdvertiserIdRequest;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingWebClient;->sendLoggingEvent(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;)V

    .line 210
    :cond_1
    return-void
.end method

.method private initProvider()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    .line 86
    new-instance v1, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$1;-><init>(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method private isAlreadySentInLastPeriod()Z
    .locals 6

    .prologue
    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 214
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdIdReportedTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const-wide/32 v2, 0x5265c00

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdIdReportedTimestamp:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onLogin()V
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->sign_in:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->sendAdvertiserId(Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;)V

    .line 246
    return-void
.end method

.method private onLogout()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 254
    const-string/jumbo v0, "nf_adv_id"

    const-string/jumbo v1, "Register receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_ONLOGIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 256
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_ONLOGOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.ONSIGNUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PUSH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 259
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 260
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    const-string/jumbo v1, "nf_adv_id"

    const-string/jumbo v2, "Failed to register "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 3

    .prologue
    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    const-string/jumbo v1, "nf_adv_id"

    const-string/jumbo v2, "Failed to unregister "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 281
    const-string/jumbo v0, "nf_adv_id"

    const-string/jumbo v1, "Destroy and unregister receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->unregisterReceiver()V

    .line 283
    return-void
.end method

.method public getAdverisingTrackingPreference()Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$AdverisingATrackingPreference;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdvertisingIdProvider:Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$AdverisingATrackingPreference;->OPT_OUT:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$AdverisingATrackingPreference;

    .line 314
    :goto_0
    return-object v0

    .line 312
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$AdverisingATrackingPreference;->OPT_IN:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$AdverisingATrackingPreference;

    goto :goto_0

    .line 314
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdvertiserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdvertisingIdProvider:Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;->getId()Ljava/lang/String;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 116
    const-string/jumbo v0, "nf_adv_id"

    const-string/jumbo v1, "AdvertiserIdLoggingManager::init web client start "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getApiNextWebClient()Lcom/netflix/mediaclient/service/webclient/WebClient;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingWebClientFactory;->create(Lcom/netflix/mediaclient/service/webclient/WebClient;)Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingWebClient;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mLoggingWebClient:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingWebClient;

    .line 118
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->registerReceiver()V

    .line 119
    const-string/jumbo v0, "nf_adv_id"

    const-string/jumbo v1, "AdvertiserIdLoggingManager::init web client done "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdvertisingIdProvider:Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized sendAdvertiserId(Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;)V
    .locals 5

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdvertisingIdProvider:Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;

    if-nez v0, :cond_0

    .line 130
    const-string/jumbo v0, "nf_adv_id"

    const-string/jumbo v1, "User is logged in, but ADV ID provider is not readu, postpone sending ID"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mPostponedEvent:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mPostponedEvent:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    .line 136
    const-string/jumbo v0, "nf_adv_id"

    const-string/jumbo v1, "Ad ID provider is ready and request to send AD ID exist, execute."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdvertisingIdProvider:Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;->getId()Ljava/lang/String;

    move-result-object v1

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdvertisingIdProvider:Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 141
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    const-string/jumbo v2, "nf_adv_id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ad ID provider exist, if we need to send ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", opted in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    if-nez v1, :cond_3

    .line 146
    const-string/jumbo v0, "nf_adv_id"

    const-string/jumbo v1, "Ad id can not be null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 139
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 150
    :cond_3
    :try_start_2
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->check_in:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    if-eq p1, v2, :cond_4

    .line 151
    const-string/jumbo v2, "nf_adv_id"

    const-string/jumbo v3, "Not check in, execute"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, v0, p1}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->doSendAdvertiserId(Ljava/lang/String;Ljava/lang/Boolean;Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;)V

    goto :goto_0

    .line 155
    :cond_4
    const-string/jumbo v2, "nf_adv_id"

    const-string/jumbo v3, "Check in, validate"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdIdReported:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdIdReported:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdvertisingIdProvider:Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 160
    :cond_5
    const-string/jumbo v2, "nf_adv_id"

    const-string/jumbo v3, "Ad ID changed, execute"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, v0, p1}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->doSendAdvertiserId(Ljava/lang/String;Ljava/lang/Boolean;Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;)V

    goto/16 :goto_0

    .line 162
    :cond_6
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdIdReportedOptedIn:Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->mAdIdReportedOptedIn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v0, v2, :cond_8

    .line 163
    :cond_7
    const-string/jumbo v2, "nf_adv_id"

    const-string/jumbo v3, "opt in status changed, execute"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, v0, p1}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->doSendAdvertiserId(Ljava/lang/String;Ljava/lang/Boolean;Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;)V

    goto/16 :goto_0

    .line 166
    :cond_8
    const-string/jumbo v2, "nf_adv_id"

    const-string/jumbo v3, "Adverising ID is not changed, check when it was last time sent."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->isAlreadySentInLastPeriod()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 168
    const-string/jumbo v0, "nf_adv_id"

    const-string/jumbo v1, "Ad id and opt in status already sent in last 24 hours, do not send again"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 171
    :cond_9
    const-string/jumbo v2, "nf_adv_id"

    const-string/jumbo v3, "Ad id and opt in status were NOT sent in last 24 hours, execute"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, v0, p1}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->doSendAdvertiserId(Ljava/lang/String;Ljava/lang/Boolean;Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
