.class public final Lcom/netflix/mediaclient/service/NetflixService;
.super Landroid/app/Service;
.source "NetflixService.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/INetflixService;


# static fields
.field public static final ACTION_CLOSE_MDX_MINI_PLAYER_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.service.ACTION_CLOSE_MINI_PLAYER"

.field public static final ACTION_EXPAND_HOME_MDX_MINI_PLAYER_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.service.ACTION_EXPAND_HOME_MDX_MINI_PLAYER"

.field public static final ACTION_EXPAND_MDX_MINI_PLAYER_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.service.ACTION_EXPAND_MDX_MINI_PLAYER"

.field private static final ACTION_REFRESH_WIDGET_CONTENT_ALARM_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.service.ACTION_REFRESH_WIDGET_CONTENT"

.field private static final ACTION_SHOW_MDX_PLAYER_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.service.ACTION_SHOW_MDX_PLAYER"

.field private static final ACTION_SHUTDOWN_SERVICE_PENDING_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.service.ACTION_SHUTDOWN_SERVICE"

.field public static final INTENT_EXTRA_ALREADY_RUNNING:Ljava/lang/String; = "isRunning"

.field private static final SERVICE_INIT_TIMEOUT_MS:J = 0x15f90L

.field private static final SERVICE_KILL_DELAY_MS:J = 0x1b77400L

.field private static final TAG:Ljava/lang/String; = "NetflixService"

.field private static final TEST_DELAY_INIT_BY_5_SECONDS:Z = false

.field private static final WIDGET_CONTENT_REFRESH_DELAY_MS:J = 0xa4cb800L

.field private static fetchErrorsEnabled:Z

.field private static isCreated:Z

.field private static sJobExecutionMonitor:Lcom/netflix/mediaclient/service/NetflixService$JobExecutionMonitor;


# instance fields
.field private final agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

.field private handler:Landroid/os/Handler;

.field hasLoggedAgent:Z

.field private final initTimeoutRunnable:Ljava/lang/Runnable;

.field private final mBinder:Landroid/os/IBinder;

.field private final mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

.field private mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

.field private mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

.field private mDiagnosisAgent:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

.field private mErrorAgent:Lcom/netflix/mediaclient/service/error/ErrorAgent;

.field private mFalkorAccess:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

.field private mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

.field private final mInitCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/service/NetflixService$InitCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInitComplete:Z

.field private mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

.field private mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

.field private mMdxEnabled:Z

.field private final mMdxReceiver:Landroid/content/BroadcastReceiver;

.field private final mMdxShowPlayerIntent:Landroid/content/BroadcastReceiver;

.field private mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

.field private final mNetflixJobMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;",
            "Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

.field private mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

.field private final mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mNrdController:Lcom/netflix/mediaclient/service/NrdController;

.field private mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

.field private mOfflinePlayerAgent:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;

.field private mPdsAgent:Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;

.field private mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

.field private final mPostedNotificationSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreAppAgent:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

.field private mPushAgent:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

.field private mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

.field private mServiceStartedTimeInMs:J

.field private mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private mUserFlowTag:Ljava/lang/String;

.field private mVoipAgent:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/service/NetflixService;->fetchErrorsEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitComplete:Z

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->UNKNOWN:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitCallbacks:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPostedNotificationSet:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserFlowTag:Ljava/lang/String;

    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$4;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$LocalBinder;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mBinder:Landroid/os/IBinder;

    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$5;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->initTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$6;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$7;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxShowPlayerIntent:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$8;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static TEST_ONLY_setJobExecutionMonitor(Lcom/netflix/mediaclient/service/NetflixService$JobExecutionMonitor;)V
    .locals 0

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/NetflixService;Landroid/content/Intent;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/NetflixService;->doStartCommand(Landroid/content/Intent;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/error/ErrorAgent;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mErrorAgent:Lcom/netflix/mediaclient/service/error/ErrorAgent;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/preapp/PreAppAgent;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPreAppAgent:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflinePlayerAgent:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPdsAgent:Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mVoipAgent:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->initCompleted()V

    return-void
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/msl/MSLAgent;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService;->enableMdxAgentAndInit(Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NrdController;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNrdController:Lcom/netflix/mediaclient/service/NrdController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/service/NetflixService;ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService;->notifyServiceReady(ILcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->initTimeout()V

    return-void
.end method

.method static synthetic access$2400(Lcom/netflix/mediaclient/service/NetflixService;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelfInMs(J)V

    return-void
.end method

.method static synthetic access$2500(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->cancelPendingSelfStop()V

    return-void
.end method

.method static synthetic access$2700(Lcom/netflix/mediaclient/service/NetflixService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/logging/LoggingAgent;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/falkor/FalkorAgent;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/user/UserAgent;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/player/PlayerAgent;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPushAgent:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mDiagnosisAgent:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    return-object v0
.end method

.method public static areFetchErrorsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private cancelPendingSelfStop()V
    .locals 3

    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Can\'t access alarm manager to cancel shutdown alarm"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Canceling service shutdown alarm"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->createShutdownServiceAlarmPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static createShowMdxPlayerBroadcastIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.service.ACTION_SHOW_MDX_PLAYER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private createShutdownServiceAlarmPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.service.ACTION_SHUTDOWN_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createWidgetContentRefreshPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.service.ACTION_REFRESH_WIDGET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private doStartCommand(Landroid/content/Intent;II)V
    .locals 3

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Received start command intent "

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "com.netflix.mediaclient.service.ACTION_SHUTDOWN_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Stopping service via shutdown intent..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/service/NetflixService;->isCreated:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelf()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->cancelPendingSelfStop()V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.offline"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Offline command intent "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isReady()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getCommandHandler()Lcom/netflix/mediaclient/service/IntentCommandHandler;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/netflix/mediaclient/service/IntentCommandHandler;->handleCommand(Landroid/content/Intent;)V

    :cond_3
    :goto_1
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "MDX command intent "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->handleCommand(Landroid/content/Intent;)Z

    :cond_4
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PUSH"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPushAgent:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->isSupported()Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "swiped_notification_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Push notification command intent "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPushAgent:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->handleCommand(Landroid/content/Intent;)Z

    :cond_6
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Client logging command intent "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->handleCommand(Landroid/content/Intent;)Z

    :cond_7
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.USER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "User agent command intent "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->handleCommand(Landroid/content/Intent;)Z

    :cond_8
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.CATEGORY_FROM_PREAPP_PSERVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Preapp service command intent "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPreAppAgent:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->handleCommand(Landroid/content/Intent;)Z

    :cond_9
    const-string/jumbo v1, "com.netflix.mediaclient.service.ACTION_REFRESH_WIDGET_CONTENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "handling widget content refresh alarm expiry..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isWidgetInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xa4cb800

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->updateWidgetContentAlarm(J)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->informMemberUpdated(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "received a command while offline agent is not ready"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->informNonMemberVideosUpdated(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private enableMdxAgentAndInit(Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isDisableMdx()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->registerMdxReceiver()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->init(Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized init()V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$1;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    new-instance v1, Lcom/netflix/mediaclient/service/NetflixService$2;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$2;-><init>(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v2, "NetflixService initing..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    invoke-virtual {v0, v2, v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->init(Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V

    const-wide/32 v0, 0x15f90

    const-string/jumbo v2, "NetflixService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Service has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " seconds to init or else we fail..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/NetflixService;->initTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initCompleted()V
    .locals 5

    const/4 v3, 0x1

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->initTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->postApplicationStartedEvent()V

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Invoking InitCallbacks..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/NetflixService$InitCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/NetflixService$InitCallback;->onInitComplete()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v3, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitComplete:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxShowPlayerIntent:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.netflix.mediaclient.service.ACTION_SHOW_MDX_PLAYER"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNrdController:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->setNetworkInterfaces()V

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Send local intent that Netflix service is ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NETFLIX_SERVICE_INIT_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "status_code"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.NETFLIX_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "user_flow_aim_low"

    :goto_1
    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserFlowTag:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserFlowTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "begin user flow %s"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserFlowTag:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserFlowTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->beginUserflow(Ljava/lang/String;)V

    :cond_1
    const v0, 0xea60

    const-string/jumbo v1, "NetflixService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "StopService runnable posted - service will die in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " seconds unless bound to or started..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelfInMs(J)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isWidgetInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "start alarm to wake up in WIDGET_CONTENT_REFRESH_DELAY_MS to refresh content "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-wide/32 v0, 0xa4cb800

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->updateWidgetContentAlarm(J)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "user_flow_offline"

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private initTimeout()V
    .locals 2

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Service init has timed out"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INIT_SERVICE_TIMEOUT:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->initCompleted()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelf()V

    return-void
.end method

.method public static isInstanceCreated()Z
    .locals 1

    sget-boolean v0, Lcom/netflix/mediaclient/service/NetflixService;->isCreated:Z

    return v0
.end method

.method private notifyMdxAgentUiComingToForeground()V
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->hasActiveSession()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->uiComingToForeground()V

    :cond_0
    return-void
.end method

.method private notifyServiceReady(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const-string/jumbo v0, "NetflixService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Notifying client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " that service is ready, status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onServiceReady(ILcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method private postApplicationStartedEvent()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    if-nez v0, :cond_0

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Unable to post application started event. Logging agent is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Unable to post application started event. APM manager is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->isUserLoggedIn()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->reportStoredLogEvents(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->didCrashOnLastLoad()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startApplicationSession(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->appStart:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->handleConnectivityChange(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private registerMdxReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKEND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKSTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/NetflixService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Unable to unregister, receiver is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NetflixService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unregister "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/NetflixService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NetflixService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unregister "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stopSelfInMs(J)V
    .locals 9

    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Can\'t access alarm manager to set shutdown alarm"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v4, v2, p1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "NetflixService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Setting service shutdown alarm, current time (ms): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", kill delay (ms): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", alarm set for (ms): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->createShutdownServiceAlarmPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SPY-8729 - Exception trying to schedule an AlarmManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toggleFetchErrorsEnabled()V
    .locals 1

    sget-boolean v0, Lcom/netflix/mediaclient/service/NetflixService;->fetchErrorsEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/netflix/mediaclient/service/NetflixService;->fetchErrorsEnabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWidgetContentAlarm(J)V
    .locals 11

    const/4 v10, 0x2

    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Can\'t access alarm manager to set widget content refresh alarm"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v4, v2, p1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v6, "updating widget refresh alarm - fireIn %d ms, time sinceBoot %d (ms), widgetRefreshMs: %d ms"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->createWidgetContentRefreshPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v10, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public addNetworkRequestInspector(Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;[Ljava/lang/Class;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    if-nez v0, :cond_0

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "MSLAgent unavailable. Unable to add a network request inspector"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->addNetworkRequestInspector(Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;[Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public addProfile(Ljava/lang/String;ZLjava/lang/String;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p4, p5}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addWebUserProfile(Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    return-void
.end method

.method public consumeUmaAlert()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->consumeUmaAlert()V

    return-void
.end method

.method public createAutoLoginToken(JII)V
    .locals 3

    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p3, p4}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->createAutoLoginToken(JLcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    return-void
.end method

.method public deleteLocalResource(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->deleteLocalResource(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public doOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility$Action;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->doOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility$Action;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    return-void
.end method

.method public editProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V
    .locals 6

    new-instance v5, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v5, p0, p5, p6}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/user/UserAgent;->editWebUserProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    return-void
.end method

.method public fetchAndCacheResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;

    invoke-direct {v0, p0, p3, p4}, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-virtual {v1, p1, p2, v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchAndCacheResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    return-void
.end method

.method public fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;

    invoke-direct {v0, p0, p3, p4}, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-virtual {v1, p1, p2, v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    return-void
.end method

.method public fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;JJII)V
    .locals 11

    new-instance v10, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-direct {v10, p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    iget-object v3, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v3 .. v10}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;JJLcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    return-void
.end method

.method public fetchSurvey(II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->fetchSurvey(Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    return-void
.end method

.method public getAccountOwnerToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getAccountOwnerToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getAllProfiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableAvatarsList(II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->fetchAvailableAvatarsList(Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    return-void
.end method

.method public getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAccess:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    return-object v0
.end method

.method public getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    return-object v0
.end method

.method public getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    return-object v0
.end method

.method public getCurrentAppLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRaw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProfileEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfileEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProfileFirstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfileFirstName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProfileLastName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfileLastName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProfileToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfileToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    return-object v0
.end method

.method public getDiagnosis()Lcom/netflix/mediaclient/servicemgr/IDiagnosis;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mDiagnosisAgent:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    return-object v0
.end method

.method public getESN()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    return-object v0
.end method

.method public getEndOfGrandfatheringAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    return-object v0
.end method

.method public getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mErrorAgent:Lcom/netflix/mediaclient/service/error/ErrorAgent;

    return-object v0
.end method

.method public getFalkorAgent()Lcom/netflix/mediaclient/service/falkor/FalkorAccess;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAccess:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public getJobScheduler()Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    return-object v0
.end method

.method public getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    return-object v0
.end method

.method public getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    return-object v0
.end method

.method public getNetflixPowerManager()Lcom/netflix/mediaclient/service/NetflixPowerManager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    return-object v0
.end method

.method public getNflxPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    return-object v0
.end method

.method public getNrdDeviceModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getNrdDeviceModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNrdpComponentVersion(Lcom/netflix/mediaclient/servicemgr/NrdpComponent;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;->NrdLib:Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getNrdLibVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;->NrdApp:Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getNrdAppVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;->MdxLib:Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getMdxLibVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    return-object v0
.end method

.method public getOfflinePlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflinePlayerAgent:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;

    return-object v0
.end method

.method public getPushNotification()Lcom/netflix/mediaclient/servicemgr/IPushNotification;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPushAgent:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    return-object v0
.end method

.method public getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    return-object v0
.end method

.method public getSignUpParams()Lcom/netflix/mediaclient/servicemgr/SignUpParams;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$3;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartedTimeInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mServiceStartedTimeInMs:J

    return-wide v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    return-object v0
.end method

.method public getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mVoipAgent:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    return-object v0
.end method

.method public isCurrentProfileIQEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isCurrentProfileIQEnabled()Z

    move-result v0

    return v0
.end method

.method public isDeviceHd()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isDeviceHd()Z

    move-result v0

    return v0
.end method

.method public isNonMemberPlayback()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isNonMemberPlayback()Z

    move-result v0

    return v0
.end method

.method public isProfileSwitchingDisabled()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isProfileSwitchingDisabled()Z

    move-result v0

    return v0
.end method

.method public isTablet()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isTablet()Z

    move-result v0

    return v0
.end method

.method public isUserAgeVerified()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isAgeVerified()Z

    move-result v0

    return v0
.end method

.method public isUserLoggedIn()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isUserLoggedIn()Z

    move-result v0

    return v0
.end method

.method public loginUser(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p3, p4}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->loginUser(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    return-void
.end method

.method public loginUserByTokens(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->tokenActivate(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    return-void
.end method

.method public logoutUser(II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->logoutUser(Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    return-void
.end method

.method public markSurveysAsRead()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->markSurveysAsRead()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "NetflixService is onBind"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->cancelPendingSelfStop()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "NetflixService.onCreate."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->NETFLIX_SERVICE_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Ljava/lang/String;

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/service/NetflixService;->isCreated:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mServiceStartedTimeInMs:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->handler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->updateAppUpgradedPrefs(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerSelector;->createNetflixJobScheduler(Landroid/content/Context;)Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    new-instance v0, Lcom/netflix/mediaclient/service/msl/MSLAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    new-instance v0, Lcom/netflix/mediaclient/service/NrdController;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/NrdController;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNrdController:Lcom/netflix/mediaclient/service/NrdController;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    new-instance v0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPushAgent:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    new-instance v0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    new-instance v0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mDiagnosisAgent:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAccess:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    new-instance v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPreAppAgent:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    new-instance v0, Lcom/netflix/mediaclient/service/error/ErrorAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/error/ErrorAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mErrorAgent:Lcom/netflix/mediaclient/service/error/ErrorAgent;

    new-instance v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mVoipAgent:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/service/user/UserAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflinePlayerAgent:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;

    new-instance v0, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;-><init>(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPdsAgent:Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;

    new-instance v0, Lcom/netflix/mediaclient/service/NetflixPowerManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/NetflixPowerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    invoke-static {}, Lcom/netflix/mediaclient/media/BookmarkStore;->getInstance()Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/media/BookmarkStore;->init(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->init()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "NetflixService.onDestroy."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->cancelPendingSelfStop()V

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Send local intent that Netflix service is destroyed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NETFLIX_SERVICE_DESTROYED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.NETFLIX_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "MDX receiver"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "network receiver"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxShowPlayerIntent:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "mdx show player receiver"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->clear()V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->destroy()V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->destroy()V

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->destroy()V

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNrdController:Lcom/netflix/mediaclient/service/NrdController;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNrdController:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->destroy()V

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->destroy()V

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->destroy()V

    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->destroy()V

    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mDiagnosisAgent:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mDiagnosisAgent:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->destroy()V

    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mVoipAgent:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mVoipAgent:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->destroy()V

    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->destroy()V

    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->destroy()V

    :cond_c
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixPowerManager;->forceReleasePartialWakeLock()V

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/service/NetflixService;->isCreated:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string/jumbo v1, "NetflixService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Destroying app process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const-string/jumbo v1, "NetflixService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Destroying app process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " done."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Events;->NETFLIX_SERVICE_STARTED_COMMAND:Lcom/netflix/mediaclient/service/logging/perf/Events;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->logEvent(Lcom/netflix/mediaclient/service/logging/perf/Events;Ljava/util/Map;)V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitComplete:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/NetflixService;->doStartCommand(Landroid/content/Intent;II)V

    :cond_0
    :goto_0
    const/4 v0, 0x2

    return v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/netflix/mediaclient/service/NetflixService$StartCommandInitCallback;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/NetflixService$StartCommandInitCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;Landroid/content/Intent;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "onTaskRemoved: Invoked on NetflixService"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitComplete:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->serializeFalcorCache()V

    :cond_1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitComplete:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrimMemory: level - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->serializeFalkorMetadataAsync()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->onTrimMemory(I)V

    :cond_1
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "NetflixService is onUnbind"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v1, "NetflixService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "We still have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " callbacks - not stopping service"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->hasActiveSession()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "has active mdx session"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->NO_CONNECTIVITY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Service init failed due to no connectivity - calling stopSelf()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelf()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No callbacks left - stopping service after delay of: 28800 seconds"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-wide/32 v0, 0x1b77400

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelfInMs(J)V

    goto :goto_0
.end method

.method public recordPlanSelection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent;->recordPlanSelection(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordUserMessageImpression(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent;->recordUmsImpression(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public refreshCurrentUserMessageArea()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->refreshUserMessage()V

    return-void
.end method

.method public refreshProfileSwitchingStatus()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->refreshProfileSwitchingStatus()V

    return-void
.end method

.method public registerCallback(Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;)V
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->cancelPendingSelfStop()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, " registerCallback - cb is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->put(Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;)I

    move-result v0

    const-string/jumbo v1, "NetflixService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerCallback, client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitComplete:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->notifyServiceReady(ILcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "UI started, notify MDX"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->notifyMdxAgentUiComingToForeground()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/netflix/mediaclient/service/NetflixService$NotifyServiceReadyInitCallback;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$NotifyServiceReadyInitCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public registerJobExecutor(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;)V
    .locals 2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeProfile(Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->removeWebUserProfile(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    return-void
.end method

.method public requestBackgroundForNotification(IZ)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPostedNotificationSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPostedNotificationSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopForeground removeNotification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/service/NetflixService;->stopForeground(Z)V

    :cond_1
    return-void
.end method

.method public requestForegroundForNotification(ILandroid/app/Notification;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPostedNotificationSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPostedNotificationSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startForeground notificationId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService;->startForeground(ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method public requestServiceShutdownAfterDelay(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelfInMs(J)V

    return-void
.end method

.method public selectProfile(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->selectProfile(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentAppLocale(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->setCurrentAppLocale(Ljava/lang/String;)V

    return-void
.end method

.method public setNonMemberPlayback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->setNonMemberPlayback(Z)V

    return-void
.end method

.method public startJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;->onNetflixStartJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;->onNetflixStopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public uiComingFromBackground()V
    .locals 2

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "UI coming from background, notify MDX"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->notifyMdxAgentUiComingToForeground()V

    return-void
.end method

.method public unregisterCallback(Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->remove(Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;)Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Client callback was either not-registered/removed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "NetflixService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterCallback, client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public verifyAge(II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->verifyAge(Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    return-void
.end method

.method public verifyPin(Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->verifyPin(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    return-void
.end method
