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

    .prologue
    .line 157
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/service/NetflixService;->fetchErrorsEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    .line 200
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    .line 204
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitComplete:Z

    .line 209
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->UNKNOWN:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitCallbacks:Ljava/util/ArrayList;

    .line 216
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    .line 218
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPostedNotificationSet:Ljava/util/Set;

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserFlowTag:Ljava/lang/String;

    .line 1217
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$4;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 1305
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$LocalBinder;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mBinder:Landroid/os/IBinder;

    .line 1526
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$5;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->initTimeoutRunnable:Ljava/lang/Runnable;

    .line 1571
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$6;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxReceiver:Landroid/content/BroadcastReceiver;

    .line 1658
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$7;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxShowPlayerIntent:Landroid/content/BroadcastReceiver;

    .line 1680
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$8;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static TEST_ONLY_setJobExecutionMonitor(Lcom/netflix/mediaclient/service/NetflixService$JobExecutionMonitor;)V
    .locals 0

    .prologue
    .line 1875
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/NetflixService;Landroid/content/Intent;II)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/NetflixService;->doStartCommand(Landroid/content/Intent;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/error/ErrorAgent;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mErrorAgent:Lcom/netflix/mediaclient/service/error/ErrorAgent;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/preapp/PreAppAgent;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPreAppAgent:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflinePlayerAgent:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPdsAgent:Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mVoipAgent:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->initCompleted()V

    return-void
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/msl/MSLAgent;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService;->enableMdxAgentAndInit(Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NrdController;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNrdController:Lcom/netflix/mediaclient/service/NrdController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/service/NetflixService;ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService;->notifyServiceReady(ILcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->initTimeout()V

    return-void
.end method

.method static synthetic access$2400(Lcom/netflix/mediaclient/service/NetflixService;J)V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelfInMs(J)V

    return-void
.end method

.method static synthetic access$2500(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->cancelPendingSelfStop()V

    return-void
.end method

.method static synthetic access$2700(Lcom/netflix/mediaclient/service/NetflixService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/logging/LoggingAgent;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/falkor/FalkorAgent;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/user/UserAgent;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/player/PlayerAgent;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPushAgent:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mDiagnosisAgent:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    return-object v0
.end method

.method public static areFetchErrorsEnabled()Z
    .locals 1

    .prologue
    .line 706
    const/4 v0, 0x0

    return v0
.end method

.method private cancelPendingSelfStop()V
    .locals 3

    .prologue
    .line 1506
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1507
    if-nez v0, :cond_0

    .line 1508
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Can\'t access alarm manager to cancel shutdown alarm"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :goto_0
    return-void

    .line 1510
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1511
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Canceling service shutdown alarm"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->createShutdownServiceAlarmPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static createShowMdxPlayerBroadcastIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1751
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.service.ACTION_SHOW_MDX_PLAYER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private createShutdownServiceAlarmPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 1518
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.service.ACTION_SHUTDOWN_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/netflix/mediaclient/service/NetflixService;

    .line 1520
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x8000000

    .line 1518
    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createWidgetContentRefreshPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 1893
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.service.ACTION_REFRESH_WIDGET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/netflix/mediaclient/service/NetflixService;

    .line 1895
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x8000000

    .line 1893
    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private doStartCommand(Landroid/content/Intent;II)V
    .locals 3

    .prologue
    .line 298
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Received start command intent "

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 300
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    const-string/jumbo v1, "com.netflix.mediaclient.service.ACTION_SHUTDOWN_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Stopping service via shutdown intent..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/service/NetflixService;->isCreated:Z

    .line 308
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelf()V

    goto :goto_0

    .line 312
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->cancelPendingSelfStop()V

    .line 314
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.offline"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 315
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Offline command intent "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isReady()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 317
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getCommandHandler()Lcom/netflix/mediaclient/service/IntentCommandHandler;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/netflix/mediaclient/service/IntentCommandHandler;->handleCommand(Landroid/content/Intent;)V

    .line 323
    :cond_3
    :goto_1
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    if-eqz v1, :cond_4

    .line 324
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "MDX command intent "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->handleCommand(Landroid/content/Intent;)Z

    .line 328
    :cond_4
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PUSH"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPushAgent:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    .line 329
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->isSupported()Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "swiped_notification_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 330
    :cond_5
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Push notification command intent "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPushAgent:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->handleCommand(Landroid/content/Intent;)Z

    .line 333
    :cond_6
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 334
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Client logging command intent "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->handleCommand(Landroid/content/Intent;)Z

    .line 337
    :cond_7
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.USER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 338
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "User agent command intent "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->handleCommand(Landroid/content/Intent;)Z

    .line 341
    :cond_8
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.CATEGORY_FROM_PREAPP_PSERVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 342
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Preapp service command intent "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPreAppAgent:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->handleCommand(Landroid/content/Intent;)Z

    .line 346
    :cond_9
    const-string/jumbo v1, "com.netflix.mediaclient.service.ACTION_REFRESH_WIDGET_CONTENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "handling widget content refresh alarm expiry..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isWidgetInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const-wide/32 v0, 0xa4cb800

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->updateWidgetContentAlarm(J)V

    .line 350
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 351
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->informMemberUpdated(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 319
    :cond_a
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "received a command while offline agent is not ready"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 353
    :cond_b
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->informNonMemberVideosUpdated(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private enableMdxAgentAndInit(Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V
    .locals 2

    .prologue
    .line 1637
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    .line 1638
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isDisableMdx()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    .line 1640
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    if-eqz v0, :cond_0

    .line 1641
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    .line 1644
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->registerMdxReceiver()V

    .line 1645
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->init(Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V

    .line 1648
    :cond_0
    return-void

    .line 1638
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized init()V
    .locals 6

    .prologue
    .line 385
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$1;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    .line 500
    new-instance v1, Lcom/netflix/mediaclient/service/NetflixService$2;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$2;-><init>(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V

    .line 536
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v2, "NetflixService initing..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    invoke-virtual {v0, v2, v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->init(Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V

    .line 541
    const-wide/32 v0, 0x15f90

    .line 542
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

    .line 543
    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/NetflixService;->initTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    monitor-exit p0

    return-void

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initCompleted()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 566
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 567
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->initTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 569
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->postApplicationStartedEvent()V

    .line 571
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Invoking InitCallbacks..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
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

    .line 573
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/NetflixService$InitCallback;->onInitComplete()V

    goto :goto_0

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 576
    iput-boolean v3, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitComplete:Z

    .line 580
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 582
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxShowPlayerIntent:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.netflix.mediaclient.service.ACTION_SHOW_MDX_PLAYER"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 584
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNrdController:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->setNetworkInterfaces()V

    .line 586
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Send local intent that Netflix service is ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NETFLIX_SERVICE_INIT_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    const-string/jumbo v1, "status_code"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 589
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.NETFLIX_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 591
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "user_flow_aim_low"

    :goto_1
    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserFlowTag:Ljava/lang/String;

    .line 592
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserFlowTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 593
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "begin user flow %s"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserFlowTag:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 594
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserFlowTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->beginUserflow(Ljava/lang/String;)V

    .line 598
    :cond_1
    const v0, 0xea60

    .line 599
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

    .line 600
    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelfInMs(J)V

    .line 602
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isWidgetInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 603
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 604
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "start alarm to wake up in WIDGET_CONTENT_REFRESH_DELAY_MS to refresh content "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_2
    const-wide/32 v0, 0xa4cb800

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->updateWidgetContentAlarm(J)V

    .line 608
    :cond_3
    return-void

    .line 591
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

    .prologue
    .line 611
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Service init has timed out"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INIT_SERVICE_TIMEOUT:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    .line 613
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->initCompleted()V

    .line 614
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelf()V

    .line 615
    return-void
.end method

.method public static isInstanceCreated()Z
    .locals 1

    .prologue
    .line 231
    sget-boolean v0, Lcom/netflix/mediaclient/service/NetflixService;->isCreated:Z

    return v0
.end method

.method private notifyMdxAgentUiComingToForeground()V
    .locals 1

    .prologue
    .line 1759
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->hasActiveSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1760
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->uiComingToForeground()V

    .line 1762
    :cond_0
    return-void
.end method

.method private notifyServiceReady(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1387
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

    .line 1389
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 1390
    if-eqz v0, :cond_0

    .line 1391
    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onServiceReady(ILcom/netflix/mediaclient/android/app/Status;)V

    .line 1396
    :cond_0
    return-void
.end method

.method private postApplicationStartedEvent()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    if-nez v0, :cond_0

    .line 549
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Unable to post application started event. Logging agent is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :goto_0
    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    if-nez v0, :cond_1

    .line 554
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Unable to post application started event. APM manager is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 558
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->isUserLoggedIn()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->reportStoredLogEvents(Landroid/content/Context;Z)V

    .line 560
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->didCrashOnLastLoad()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startApplicationSession(Z)V

    .line 561
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->appStart:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;)V

    .line 562
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->handleConnectivityChange(Landroid/content/Context;)V

    goto :goto_0

    .line 560
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private registerMdxReceiver()V
    .locals 2

    .prologue
    .line 1629
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKEND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1630
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKSTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1631
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1632
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1633
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/NetflixService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1634
    return-void
.end method

.method private safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1698
    if-nez p1, :cond_0

    .line 1699
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Unable to unregister, receiver is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :goto_0
    return-void

    .line 1704
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1705
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

    .line 1707
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/NetflixService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1708
    :catch_0
    move-exception v0

    .line 1709
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

    .prologue
    .line 1484
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1485
    if-nez v0, :cond_0

    .line 1486
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Can\'t access alarm manager to set shutdown alarm"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :goto_0
    return-void

    .line 1488
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1489
    add-long v4, v2, p1

    .line 1490
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1491
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

    .line 1498
    :cond_1
    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->createShutdownServiceAlarmPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1499
    :catch_0
    move-exception v0

    .line 1500
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

    .prologue
    .line 713
    sget-boolean v0, Lcom/netflix/mediaclient/service/NetflixService;->fetchErrorsEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/netflix/mediaclient/service/NetflixService;->fetchErrorsEnabled:Z

    .line 714
    return-void

    .line 713
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWidgetContentAlarm(J)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    .line 1878
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1879
    if-nez v0, :cond_0

    .line 1880
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Can\'t access alarm manager to set widget content refresh alarm"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    :goto_0
    return-void

    .line 1882
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1883
    add-long v4, v2, p1

    .line 1884
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1885
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

    .line 1888
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->createWidgetContentRefreshPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v10, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public addNetworkRequestInspector(Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;[Ljava/lang/Class;)V
    .locals 2

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    if-nez v0, :cond_0

    .line 1860
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "MSLAgent unavailable. Unable to add a network request inspector"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    :goto_0
    return-void

    .line 1863
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->addNetworkRequestInspector(Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;[Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public addProfile(Ljava/lang/String;ZLjava/lang/String;II)V
    .locals 2

    .prologue
    .line 929
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p4, p5}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 930
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->addWebUserProfile(Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    .line 931
    return-void
.end method

.method public consumeUmaAlert()V
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->consumeUmaAlert()V

    .line 872
    return-void
.end method

.method public createAutoLoginToken(JII)V
    .locals 3

    .prologue
    .line 1140
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p3, p4}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 1141
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->createAutoLoginToken(JLcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    .line 1142
    return-void
.end method

.method public deleteLocalResource(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->deleteLocalResource(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public doOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility$Action;II)V
    .locals 2

    .prologue
    .line 1102
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 1103
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->doOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility$Action;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    .line 1104
    return-void
.end method

.method public editProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V
    .locals 6

    .prologue
    .line 935
    new-instance v5, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v5, p0, p5, p6}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 936
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/user/UserAgent;->editWebUserProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    .line 937
    return-void
.end method

.method public fetchAndCacheResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;II)V
    .locals 2

    .prologue
    .line 757
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;

    invoke-direct {v0, p0, p3, p4}, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 758
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-virtual {v1, p1, p2, v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchAndCacheResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    .line 759
    return-void
.end method

.method public fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;II)V
    .locals 2

    .prologue
    .line 729
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;

    invoke-direct {v0, p0, p3, p4}, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 730
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-virtual {v1, p1, p2, v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    .line 731
    return-void
.end method

.method public fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;JJII)V
    .locals 11

    .prologue
    .line 745
    new-instance v10, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-direct {v10, p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 746
    iget-object v3, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v3 .. v10}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;JJLcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    .line 747
    return-void
.end method

.method public fetchSurvey(II)V
    .locals 2

    .prologue
    .line 1091
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 1092
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->fetchSurvey(Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    .line 1093
    return-void
.end method

.method public getAccountOwnerToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 886
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

    .prologue
    .line 919
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getAllProfiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableAvatarsList(II)V
    .locals 2

    .prologue
    .line 947
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 948
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->fetchAvailableAvatarsList(Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    .line 949
    return-void
.end method

.method public getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;
    .locals 1

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAccess:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    return-object v0
.end method

.method public getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;
    .locals 1

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    return-object v0
.end method

.method public getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;
    .locals 1

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    return-object v0
.end method

.method public getCurrentAppLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRaw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProfileEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfileEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProfileFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfileFirstName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProfileLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfileLastName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProfileToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfileToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    return-object v0
.end method

.method public getDiagnosis()Lcom/netflix/mediaclient/servicemgr/IDiagnosis;
    .locals 1

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mDiagnosisAgent:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    return-object v0
.end method

.method public getESN()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
    .locals 1

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    return-object v0
.end method

.method public getEndOfGrandfatheringAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    return-object v0
.end method

.method public getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;
    .locals 1

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mErrorAgent:Lcom/netflix/mediaclient/service/error/ErrorAgent;

    return-object v0
.end method

.method public getFalkorAgent()Lcom/netflix/mediaclient/service/falkor/FalkorAccess;
    .locals 1

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAccess:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public getJobScheduler()Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;
    .locals 1

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    return-object v0
.end method

.method public getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;
    .locals 1

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    return-object v0
.end method

.method public getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;
    .locals 1

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    return-object v0
.end method

.method public getNetflixPowerManager()Lcom/netflix/mediaclient/service/NetflixPowerManager;
    .locals 1

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    return-object v0
.end method

.method public getNflxPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;
    .locals 1

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    return-object v0
.end method

.method public getNrdDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getNrdDeviceModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNrdpComponentVersion(Lcom/netflix/mediaclient/servicemgr/NrdpComponent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1172
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;->NrdLib:Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    if-ne p1, v0, :cond_0

    .line 1173
    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getNrdLibVersion()Ljava/lang/String;

    move-result-object v0

    .line 1179
    :goto_0
    return-object v0

    .line 1174
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;->NrdApp:Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    if-ne p1, v0, :cond_1

    .line 1175
    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getNrdAppVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1176
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;->MdxLib:Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    if-ne p1, v0, :cond_2

    .line 1177
    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getMdxLibVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1179
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 1

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    return-object v0
.end method

.method public getOfflinePlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;
    .locals 1

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflinePlayerAgent:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;

    return-object v0
.end method

.method public getPushNotification()Lcom/netflix/mediaclient/servicemgr/IPushNotification;
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPushAgent:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    return-object v0
.end method

.method public getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;
    .locals 1

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    return-object v0
.end method

.method public getSignUpParams()Lcom/netflix/mediaclient/servicemgr/SignUpParams;
    .locals 1

    .prologue
    .line 1194
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$3;-><init>(Lcom/netflix/mediaclient/service/NetflixService;)V

    .line 1210
    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartedTimeInMs()J
    .locals 2

    .prologue
    .line 1921
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mServiceStartedTimeInMs:J

    return-wide v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    return-object v0
.end method

.method public getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;
    .locals 1

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mVoipAgent:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    return-object v0
.end method

.method public isCurrentProfileIQEnabled()Z
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isCurrentProfileIQEnabled()Z

    move-result v0

    return v0
.end method

.method public isDeviceHd()Z
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isDeviceHd()Z

    move-result v0

    return v0
.end method

.method public isNonMemberPlayback()Z
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isNonMemberPlayback()Z

    move-result v0

    return v0
.end method

.method public isProfileSwitchingDisabled()Z
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isProfileSwitchingDisabled()Z

    move-result v0

    return v0
.end method

.method public isTablet()Z
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->isTablet()Z

    move-result v0

    return v0
.end method

.method public isUserAgeVerified()Z
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isAgeVerified()Z

    move-result v0

    return v0
.end method

.method public isUserLoggedIn()Z
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isUserLoggedIn()Z

    move-result v0

    return v0
.end method

.method public loginUser(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 1115
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p3, p4}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 1116
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->loginUser(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    .line 1117
    return-void
.end method

.method public loginUserByTokens(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;II)V
    .locals 2

    .prologue
    .line 1150
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 1151
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->tokenActivate(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    .line 1152
    return-void
.end method

.method public logoutUser(II)V
    .locals 2

    .prologue
    .line 1126
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 1127
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->logoutUser(Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    .line 1128
    return-void
.end method

.method public markSurveysAsRead()V
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->markSurveysAsRead()V

    .line 1098
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 1309
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "NetflixService is onBind"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->cancelPendingSelfStop()V

    .line 1312
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 243
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "NetflixService.onCreate."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->NETFLIX_SERVICE_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Ljava/lang/String;

    .line 245
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 246
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/service/NetflixService;->isCreated:Z

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mServiceStartedTimeInMs:J

    .line 249
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->handler:Landroid/os/Handler;

    .line 250
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->updateAppUpgradedPrefs(Landroid/content/Context;)V

    .line 251
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerSelector;->createNetflixJobScheduler(Landroid/content/Context;)Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    .line 254
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    .line 255
    new-instance v0, Lcom/netflix/mediaclient/service/msl/MSLAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    .line 256
    new-instance v0, Lcom/netflix/mediaclient/service/NrdController;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/NrdController;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNrdController:Lcom/netflix/mediaclient/service/NrdController;

    .line 257
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 258
    new-instance v0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    .line 259
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    .line 261
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPushAgent:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    .line 262
    new-instance v0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 263
    new-instance v0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mDiagnosisAgent:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    .line 265
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    .line 266
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAccess:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    .line 268
    new-instance v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPreAppAgent:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    .line 269
    new-instance v0, Lcom/netflix/mediaclient/service/error/ErrorAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/error/ErrorAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mErrorAgent:Lcom/netflix/mediaclient/service/error/ErrorAgent;

    .line 270
    new-instance v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mVoipAgent:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    .line 271
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/service/user/UserAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    .line 272
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflinePlayerAgent:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;

    .line 274
    new-instance v0, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;-><init>(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPdsAgent:Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;

    .line 275
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixPowerManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/NetflixPowerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    .line 276
    invoke-static {}, Lcom/netflix/mediaclient/media/BookmarkStore;->getInstance()Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/media/BookmarkStore;->init(Landroid/content/Context;)V

    .line 278
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->init()V

    .line 280
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 619
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 620
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "NetflixService.onDestroy."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->cancelPendingSelfStop()V

    .line 624
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Send local intent that Netflix service is destroyed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NETFLIX_SERVICE_DESTROYED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 626
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.NETFLIX_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 629
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "MDX receiver"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "network receiver"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxShowPlayerIntent:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "mdx show player receiver"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->clear()V

    .line 638
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->destroy()V

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    if-eqz v0, :cond_2

    .line 642
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->destroy()V

    .line 645
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    if-eqz v0, :cond_3

    .line 646
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->destroy()V

    .line 648
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    if-eqz v0, :cond_4

    .line 649
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->destroy()V

    .line 651
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNrdController:Lcom/netflix/mediaclient/service/NrdController;

    if-eqz v0, :cond_5

    .line 652
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNrdController:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->destroy()V

    .line 654
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    if-eqz v0, :cond_6

    .line 655
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->destroy()V

    .line 657
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    if-eqz v0, :cond_7

    .line 658
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->destroy()V

    .line 660
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    if-eqz v0, :cond_8

    .line 661
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientLoggingAgent:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->destroy()V

    .line 663
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mDiagnosisAgent:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    if-eqz v0, :cond_9

    .line 664
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mDiagnosisAgent:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->destroy()V

    .line 667
    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mVoipAgent:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    if-eqz v0, :cond_a

    .line 668
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mVoipAgent:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->destroy()V

    .line 671
    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    if-eqz v0, :cond_b

    .line 672
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->destroy()V

    .line 675
    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    if-eqz v0, :cond_c

    .line 676
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMslAgent:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->destroy()V

    .line 679
    :cond_c
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    if-eqz v0, :cond_d

    .line 680
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixPowerManager;->forceReleasePartialWakeLock()V

    .line 682
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    .line 683
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 684
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/service/NetflixService;->isCreated:Z

    .line 689
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 690
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

    .line 691
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 694
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

    .line 695
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    .line 284
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Events;->NETFLIX_SERVICE_STARTED_COMMAND:Lcom/netflix/mediaclient/service/logging/perf/Events;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->logEvent(Lcom/netflix/mediaclient/service/logging/perf/Events;Ljava/util/Map;)V

    .line 286
    if-eqz p1, :cond_0

    .line 287
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitComplete:Z

    if-eqz v0, :cond_1

    .line 288
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/NetflixService;->doStartCommand(Landroid/content/Intent;II)V

    .line 293
    :cond_0
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/netflix/mediaclient/service/NetflixService$StartCommandInitCallback;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/NetflixService$StartCommandInitCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;Landroid/content/Intent;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1439
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 1440
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1441
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "onTaskRemoved: Invoked on NetflixService"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitComplete:Z

    if-eqz v0, :cond_1

    .line 1445
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->serializeFalcorCache()V

    .line 1447
    :cond_1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    .prologue
    .line 1901
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    .line 1902
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    .line 1903
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitComplete:Z

    if-eqz v0, :cond_1

    .line 1904
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1905
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

    .line 1907
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mFalkorAgent:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->serializeFalkorMetadataAsync()V

    .line 1909
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->onTrimMemory(I)V

    .line 1912
    :cond_1
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1317
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "NetflixService is onUnbind"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->size()I

    move-result v0

    .line 1320
    if-lez v0, :cond_0

    .line 1321
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

    .line 1343
    :goto_0
    return v4

    .line 1325
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mMdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->hasActiveSession()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1326
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "has active mdx session"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1328
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->NO_CONNECTIVITY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    if-ne v0, v1, :cond_2

    .line 1330
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Service init failed due to no connectivity - calling stopSelf()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelf()V

    goto :goto_0

    .line 1333
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1334
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No callbacks left - stopping service after delay of: 28800 seconds"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :cond_3
    const-wide/32 v0, 0x1b77400

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelfInMs(J)V

    goto :goto_0
.end method

.method public recordPlanSelection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent;->recordPlanSelection(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method public recordUserMessageImpression(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent;->recordUmsImpression(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    return-void
.end method

.method public refreshCurrentUserMessageArea()V
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->refreshUserMessage()V

    .line 862
    return-void
.end method

.method public refreshProfileSwitchingStatus()V
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->refreshProfileSwitchingStatus()V

    .line 959
    return-void
.end method

.method public registerCallback(Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;)V
    .locals 4

    .prologue
    .line 1362
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 1363
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->cancelPendingSelfStop()V

    .line 1365
    if-nez p1, :cond_0

    .line 1366
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, " registerCallback - cb is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1369
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->put(Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;)I

    move-result v0

    .line 1370
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

    .line 1371
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitComplete:Z

    if-eqz v1, :cond_2

    .line 1372
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->notifyServiceReady(ILcom/netflix/mediaclient/android/app/Status;)V

    .line 1373
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1374
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "UI started, notify MDX"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->notifyMdxAgentUiComingToForeground()V

    .line 1380
    :cond_1
    :goto_0
    return-void

    .line 1378
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mInitCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/netflix/mediaclient/service/NetflixService$NotifyServiceReadyInitCallback;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$NotifyServiceReadyInitCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public registerJobExecutor(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;)V
    .locals 2

    .prologue
    .line 1797
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    monitor-enter v1

    .line 1798
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    monitor-exit v1

    .line 1800
    return-void

    .line 1799
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeProfile(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 941
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 942
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->removeWebUserProfile(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    .line 943
    return-void
.end method

.method public requestBackgroundForNotification(IZ)V
    .locals 3

    .prologue
    .line 1848
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 1849
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPostedNotificationSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1850
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPostedNotificationSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1851
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1852
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

    .line 1854
    :cond_0
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/service/NetflixService;->stopForeground(Z)V

    .line 1856
    :cond_1
    return-void
.end method

.method public requestForegroundForNotification(ILandroid/app/Notification;)V
    .locals 3

    .prologue
    .line 1836
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 1837
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPostedNotificationSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1838
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mPostedNotificationSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1839
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1840
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

    .line 1842
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService;->startForeground(ILandroid/app/Notification;)V

    .line 1844
    :cond_1
    return-void
.end method

.method public requestServiceShutdownAfterDelay(J)V
    .locals 1

    .prologue
    .line 1480
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelfInMs(J)V

    .line 1481
    return-void
.end method

.method public selectProfile(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->selectProfile(Ljava/lang/String;)V

    .line 925
    return-void
.end method

.method public setCurrentAppLocale(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->setCurrentAppLocale(Ljava/lang/String;)V

    .line 815
    return-void
.end method

.method public setNonMemberPlayback(Z)V
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->setNonMemberPlayback(Z)V

    .line 821
    return-void
.end method

.method public startJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 2

    .prologue
    .line 1805
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    monitor-enter v1

    .line 1806
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;

    .line 1807
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1808
    if-eqz v0, :cond_0

    .line 1809
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;->onNetflixStartJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 1816
    :cond_0
    return-void

    .line 1807
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

    .prologue
    .line 1821
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    monitor-enter v1

    .line 1822
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mNetflixJobMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;

    .line 1823
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1824
    if-eqz v0, :cond_0

    .line 1825
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;->onNetflixStopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 1832
    :cond_0
    return-void

    .line 1823
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

    .prologue
    .line 1766
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "UI coming from background, notify MDX"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService;->notifyMdxAgentUiComingToForeground()V

    .line 1768
    return-void
.end method

.method public unregisterCallback(Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;)V
    .locals 4

    .prologue
    .line 1426
    if-nez p1, :cond_0

    .line 1435
    :goto_0
    return-void

    .line 1429
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService;->mClientCallbacks:Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->remove(Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;)Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    move-result-object v0

    .line 1430
    if-nez v0, :cond_1

    .line 1431
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Client callback was either not-registered/removed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1433
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

    .prologue
    .line 1085
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 1086
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->verifyAge(Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    .line 1087
    return-void
.end method

.method public verifyPin(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 1079
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;-><init>(Lcom/netflix/mediaclient/service/NetflixService;II)V

    .line 1080
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->verifyPin(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    .line 1081
    return-void
.end method
