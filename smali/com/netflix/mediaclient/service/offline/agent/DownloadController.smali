.class Lcom/netflix/mediaclient/service/offline/agent/DownloadController;
.super Ljava/lang/Object;
.source "DownloadController.java"


# static fields
.field private static final AttemptToBackOffMilliseconds:[J

.field private static final DL_WINDOW_BACK_OFF_TIMES:[J

.field private static final DOWNLOAD_ONE_ITEM_AT_A_TIME:Z = true

.field private static final MAINTENANCE_JOB_REQUIRES_UNMETERED_NETWORK:Z = false

.field private static final MAX_NETWORK_ERRORS_BEFORE_SELECTING_NEXT_PLAYABLE:I

.field private static final MAX_NETWORK_ERRORS_IN_DL_WINDOW:I

.field private static final MIN_NETWORK_ERRORS_IN_DL_WINDOW:I = 0x2

.field private static final RANDOM_DELAY_TO_BACK_OFF_TIME_PERCENTAGE:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "nf_downloadController"


# instance fields
.field private final FIRST_TIME_NETWORK_CHANGE_RUNNABLE_DELAY:J

.field private final MAINTENANCE_JOB_CANCEL_DELAY:J

.field private final mBackOffRunnable:Ljava/lang/Runnable;

.field private mCancelMtJobRunnable:Ljava/lang/Runnable;

.field private mCancelMtJobRunnableScheduled:Z

.field private final mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private mCompletedCount:I

.field private final mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private mConnectedNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mDownloadContinueReceiver:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

.field private mDownloadMaintenanceJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

.field private mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

.field private mDownloadsAreStoppedByUser:Z

.field private mFirstTimeNetworkChangeReceived:Z

.field private final mFirstTimeNetworkRunnable:Ljava/lang/Runnable;

.field private mInProgressCount:I

.field private mIncompleteItems:I

.field private mIndexOfDlWindowBackOffTime:I

.field private mIndexOfNextPlayable:I

.field private mIsStreaming:Z

.field private final mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

.field private final mNetworkChangeReceiver:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$NetworkChangeReceiver;

.field private final mNetworkChangeRunnable:Ljava/lang/Runnable;

.field private mNumberOfNetworkErrorsInCurrentDLWindow:I

.field private final mOfflinePlayableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlayableNetworkErrorCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/32 v2, 0xea60

    aput-wide v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->AttemptToBackOffMilliseconds:[J

    .line 74
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->AttemptToBackOffMilliseconds:[J

    array-length v0, v0

    sput v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->MAX_NETWORK_ERRORS_BEFORE_SELECTING_NEXT_PLAYABLE:I

    .line 79
    sget v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->MAX_NETWORK_ERRORS_BEFORE_SELECTING_NEXT_PLAYABLE:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->MAX_NETWORK_ERRORS_IN_DL_WINDOW:I

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->DL_WINDOW_BACK_OFF_TIMES:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x36ee80
        0xdbba00
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;Ljava/util/List;Landroid/os/Looper;Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;ZLcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;",
            ">;",
            "Landroid/os/Looper;",
            "Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;",
            "Z",
            "Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;",
            "Lcom/netflix/mediaclient/servicemgr/IClientLogging;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x1e

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v2, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$NetworkChangeReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$NetworkChangeReceiver;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;Lcom/netflix/mediaclient/service/offline/agent/DownloadController$1;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetworkChangeReceiver:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$NetworkChangeReceiver;

    .line 68
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mPlayableNetworkErrorCountMap:Ljava/util/Map;

    .line 115
    iput v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfNextPlayable:I

    .line 118
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mFirstTimeNetworkChangeReceived:Z

    .line 119
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->FIRST_TIME_NETWORK_CHANGE_RUNNABLE_DELAY:J

    .line 120
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->MAINTENANCE_JOB_CANCEL_DELAY:J

    .line 123
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mCancelMtJobRunnableScheduled:Z

    .line 124
    new-instance v2, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$1;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mCancelMtJobRunnable:Ljava/lang/Runnable;

    .line 243
    new-instance v2, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$4;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$4;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mBackOffRunnable:Ljava/lang/Runnable;

    .line 250
    new-instance v2, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$5;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$5;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mFirstTimeNetworkRunnable:Ljava/lang/Runnable;

    .line 262
    new-instance v2, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$6;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$6;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetworkChangeRunnable:Ljava/lang/Runnable;

    .line 317
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    .line 318
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    .line 319
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    .line 320
    iput-object p5, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadContinueReceiver:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

    .line 321
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mOfflinePlayableList:Ljava/util/List;

    .line 322
    iput-object p7, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 323
    iput-object p8, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 324
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->requiresUnmeteredConnectionForDownload()Z

    move-result v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/job/NetflixJob;->buildDownloadResumeJob(Z)Lcom/netflix/mediaclient/service/job/NetflixJob;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    .line 326
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->getMtJobPeriodInMsFromOfflineConfig()J

    move-result-wide v2

    .line 328
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 329
    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/job/NetflixJob;->buildDownloadMaintenanceJob(ZJ)Lcom/netflix/mediaclient/service/job/NetflixJob;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadMaintenanceJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    .line 332
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 341
    :goto_0
    if-eqz v0, :cond_0

    .line 342
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->scheduleMaintenanceJobIfRequired()V

    .line 346
    :goto_1
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDestroyed:Z

    .line 347
    iput-boolean p6, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadsAreStoppedByUser:Z

    .line 348
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetworkChangeReceiver:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$NetworkChangeReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 350
    return-void

    .line 344
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->cancelMaintenanceJobIfScheduled()V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->onCancelMtJobRunnable()V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->handleStopDownloadOnStreamingStarted()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->handleStartDownloadOnStreamingStopped()V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadContinueReceiver:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->resetDownloadResumeJobBackOffTime()V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->handleNetworkChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->onNetworkChangeRunnable()V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetworkChangeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private addRandomDelayToBackOffTime(J)J
    .locals 5

    .prologue
    .line 617
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 618
    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    add-long/2addr v0, p1

    .line 619
    return-wide v0
.end method

.method private cancelDownloadResumeJob()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->isJobScheduled(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->cancelJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 523
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "cancelDownloadResumeJob cancelled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    return-void
.end method

.method private cancelMaintenanceJobIfScheduled()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->DOWNLOAD_MAINTENANCE:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->isJobScheduled(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->DOWNLOAD_MAINTENANCE:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->cancelJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 530
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "DownloadMaintenanceJob cancelled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_0
    return-void
.end method

.method private getSafeNetworkErrorCount(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mPlayableNetworkErrorCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 673
    if-nez v0, :cond_0

    .line 674
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 676
    :cond_0
    return-object v0
.end method

.method private handleNetworkChanged()V
    .locals 2

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->updateConnectedNetworkType()V

    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mConnectedNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->canExecute(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "handleNetworkChanged, retry the download."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadContinueReceiver:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;->continueDownloadOnNetworkChanged()V

    .line 299
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->canExecuteByNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadContinueReceiver:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;->stopDownloadsNotAllowedByNetwork()V

    .line 290
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "handleNetworkChanged, can\'t execute the job, stop downloads."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    :cond_1
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "handleNetworkChanged, this shouldn\'t happen."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadContinueReceiver:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;->stopDownloadsNoNetwork()V

    .line 297
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "mNetworkChangeRunnable, no network."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleStartDownloadOnStreamingStopped()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadContinueReceiver:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;->continueDownloadOnStreamingStopped()V

    .line 169
    return-void
.end method

.method private handleStopDownloadOnStreamingStarted()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadContinueReceiver:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;->stopDownloadOnStreamingStarted()V

    .line 173
    return-void
.end method

.method private handleUserNetworkSettingsChanged()V
    .locals 0

    .prologue
    .line 581
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->handleNetworkChanged()V

    .line 582
    return-void
.end method

.method private incrementNetworkErrorCount(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 665
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->getSafeNetworkErrorCount(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 666
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 667
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mPlayableNetworkErrorCountMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private onCancelMtJobRunnable()V
    .locals 2

    .prologue
    .line 132
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "onCancelMtJobRunnable"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->cancelMaintenanceJobIfScheduled()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mCancelMtJobRunnableScheduled:Z

    .line 135
    return-void
.end method

.method private onNetworkChangeRunnable()V
    .locals 6

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mFirstTimeNetworkChangeReceived:Z

    if-eqz v0, :cond_0

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mFirstTimeNetworkChangeReceived:Z

    .line 272
    const-string/jumbo v0, "nf_downloadController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNetworkChangeRunnable delaying the first network change event by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->FIRST_TIME_NETWORK_CHANGE_RUNNABLE_DELAY:J

    .line 273
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mFirstTimeNetworkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mFirstTimeNetworkRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->FIRST_TIME_NETWORK_CHANGE_RUNNABLE_DELAY:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->handleNetworkChanged()V

    goto :goto_0
.end method

.method private resetDLWindow()V
    .locals 2

    .prologue
    .line 630
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "resetDLWindow"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNumberOfNetworkErrorsInCurrentDLWindow:I

    .line 632
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->resetDownloadResumeJobBackOffTime()V

    .line 633
    return-void
.end method

.method private resetDownloadResumeJobBackOffTime()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 636
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "resetDownloadResumeJobBackOffTime"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iput v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfDlWindowBackOffTime:I

    .line 638
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "download_back_off_window_index"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 639
    return-void
.end method

.method private resetFirstLevelBackOff()V
    .locals 1

    .prologue
    .line 680
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfNextPlayable:I

    .line 681
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->resetPlayableNetworkErrorCounts()V

    .line 682
    return-void
.end method

.method private resetPlayableNetworkErrorCounts()V
    .locals 3

    .prologue
    .line 685
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mPlayableNetworkErrorCountMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 686
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 688
    :cond_0
    return-void
.end method

.method private scheduleBackOffTimer(J)V
    .locals 9

    .prologue
    .line 623
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mBackOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 624
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->addRandomDelayToBackOffTime(J)J

    move-result-wide v0

    .line 625
    const-string/jumbo v2, "nf_downloadController"

    const-string/jumbo v3, "scheduleBackOffTimer for seconds=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 626
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mBackOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 627
    return-void
.end method

.method private scheduleDownloadResumeJob(J)V
    .locals 7

    .prologue
    .line 552
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->isJobScheduled(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->cancelJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/job/NetflixJob;->setMinimumDelay(J)V

    .line 556
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->scheduleJob(Lcom/netflix/mediaclient/service/job/NetflixJob;)V

    .line 557
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "DownloadResumeJob scheduled minimumDelay=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 558
    return-void
.end method

.method private scheduleDownloadResumeJobNoDelay()V
    .locals 2

    .prologue
    .line 548
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->scheduleDownloadResumeJob(J)V

    .line 549
    return-void
.end method

.method private scheduleMaintenanceJobIfRequired()V
    .locals 4

    .prologue
    .line 535
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadMaintenanceJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    if-nez v0, :cond_0

    .line 545
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->DOWNLOAD_MAINTENANCE:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->isJobScheduled(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 539
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "DownloadMaintenanceJob scheduled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadMaintenanceJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->scheduleJob(Lcom/netflix/mediaclient/service/job/NetflixJob;)V

    .line 541
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadMaintenanceJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getRepeatingPeriodInMs()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->setMaintenanceJobPeriodMsToPref(Landroid/content/Context;J)V

    goto :goto_0

    .line 543
    :cond_1
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "DownloadMaintenanceJob already scheduled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scheduleNextDLWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 642
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->resetFirstLevelBackOff()V

    .line 643
    iput v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNumberOfNetworkErrorsInCurrentDLWindow:I

    .line 644
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "download_back_off_window_index"

    invoke-static {v0, v1, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfDlWindowBackOffTime:I

    .line 647
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfDlWindowBackOffTime:I

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->DL_WINDOW_BACK_OFF_TIMES:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 648
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->DL_WINDOW_BACK_OFF_TIMES:[J

    iget v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfDlWindowBackOffTime:I

    aget-wide v0, v0, v1

    .line 649
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->addRandomDelayToBackOffTime(J)J

    move-result-wide v0

    .line 648
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->scheduleDownloadResumeJob(J)V

    .line 651
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfDlWindowBackOffTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfDlWindowBackOffTime:I

    .line 653
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "download_back_off_window_index"

    iget v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfDlWindowBackOffTime:I

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 658
    :goto_0
    return-void

    .line 656
    :cond_0
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "scheduleNextDLWindow exhausted all DL windows mIndexOfDlWindowBackOffTime=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfDlWindowBackOffTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private updateConnectedNetworkType()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCurrentNetType(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mConnectedNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    .line 614
    :goto_0
    return-void

    .line 612
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mConnectedNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    goto :goto_0
.end method

.method private updateItemCounts()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 585
    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mCompletedCount:I

    .line 586
    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mInProgressCount:I

    .line 587
    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIncompleteItems:I

    .line 588
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    .line 589
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v2, v3, :cond_1

    .line 590
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mCompletedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mCompletedCount:I

    goto :goto_0

    .line 591
    :cond_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->InProgress:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v2, :cond_0

    .line 592
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mInProgressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mInProgressCount:I

    goto :goto_0

    .line 595
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mCompletedCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIncompleteItems:I

    .line 596
    return-void
.end method


# virtual methods
.method public canThisPlayableBeResumedByUser(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 354
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Stopped:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v2, v3, :cond_0

    .line 355
    const-string/jumbo v1, "nf_downloadController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "canThisPlayableBeResumedByUser no, state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_0
    return v0

    .line 358
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->updateItemCounts()V

    .line 360
    iget v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mInProgressCount:I

    if-lez v2, :cond_1

    .line 361
    const-string/jumbo v2, "nf_downloadController"

    const-string/jumbo v3, "canThisPlayableBeResumedByUser no, mInProgressCount=%d"

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mInProgressCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 366
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/job/NetflixJob;->canExecute(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 367
    const-string/jumbo v1, "nf_downloadController"

    const-string/jumbo v2, "canThisPlayableBeResumedByUser no, downloadResumeJob says no."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/job/NetflixJob;->canExecuteByNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 369
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NotAllowedOnCurrentNetwork:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 371
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->scheduleDownloadResumeJobNoDelay()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 374
    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetworkChangeReceiver:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$NetworkChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 380
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDestroyed:Z

    .line 383
    :cond_0
    return-void
.end method

.method public getMtJobPeriodInMsFromOfflineConfig()J
    .locals 4

    .prologue
    .line 704
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getOfflineConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->getMaintenanceJobPeriodInHrs()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextPlayableForDownload()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 400
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v2, "getNextPlayableForDownload mIndexOfNextPlayable=%d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfNextPlayable:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 401
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadsAreStoppedByUser:Z

    if-eqz v0, :cond_0

    .line 402
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v2, "getNextPlayableForDownload mDownloadsAreStoppedByUser=true"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 448
    :goto_0
    return-object v0

    .line 405
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIsStreaming:Z

    if-eqz v0, :cond_1

    .line 406
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v2, "getNextPlayableForDownload mIsStreaming=true"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 407
    goto :goto_0

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 410
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v2, "getNextPlayableForDownload all done. mOfflinePlayableList.size=%d"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 411
    goto :goto_0

    .line 414
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->updateItemCounts()V

    .line 415
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mCompletedCount:I

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 416
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v2, "getNextPlayableForDownload all downloaded, mCompletedCount=%d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mCompletedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 417
    goto :goto_0

    .line 421
    :cond_3
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mInProgressCount:I

    if-lez v0, :cond_4

    .line 422
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v2, "getNextPlayableForDownload already downloading, mInProgressCount=%d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mInProgressCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 423
    goto :goto_0

    .line 428
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/job/NetflixJob;->canExecute(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 429
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v2, "getNextPlayableForDownload can\'t execute, downloadResumeJob says no."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->scheduleDownloadResumeJobNoDelay()V

    move-object v0, v1

    .line 431
    goto/16 :goto_0

    .line 435
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    :goto_1
    if-lez v2, :cond_8

    .line 436
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfNextPlayable:I

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_6

    .line 437
    iput v5, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfNextPlayable:I

    .line 440
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mOfflinePlayableList:Ljava/util/List;

    iget v3, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfNextPlayable:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->canStartDownload(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 441
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mOfflinePlayableList:Ljava/util/List;

    iget v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfNextPlayable:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    .line 442
    const-string/jumbo v1, "nf_downloadController"

    const-string/jumbo v2, "getNextPlayableForDownload found with errorCount=%d playableId=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 443
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->getSafeNetworkErrorCount(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 442
    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 446
    :cond_7
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfNextPlayable:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfNextPlayable:I

    .line 435
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_8
    move-object v0, v1

    .line 448
    goto/16 :goto_0
.end method

.method public notifyStreamingStarted()V
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIsStreaming:Z

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$2;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    return-void
.end method

.method public notifyStreamingStopped()V
    .locals 2

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIsStreaming:Z

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$3;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    return-void
.end method

.method public onAllPlayableDeleted()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mPlayableNetworkErrorCountMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 182
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->cancelDownloadResumeJob()V

    .line 183
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->cancelMaintenanceJobIfScheduled()V

    .line 184
    return-void
.end method

.method public onDeleted(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mPlayableNetworkErrorCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 464
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->cancelDownloadResumeJob()V

    .line 465
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->cancelMaintenanceJobIfScheduled()V

    .line 467
    :cond_0
    return-void
.end method

.method public onDownloadResumeJobDone()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getBreadcrumbLogging()Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;

    move-result-object v0

    const-string/jumbo v1, "onDownloadResumeJobDone"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->DOWNLOAD_RESUME:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->onJobFinished(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    .line 219
    return-void
.end method

.method public onDownloadedSuccessfully(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mPlayableNetworkErrorCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->resetFirstLevelBackOff()V

    .line 454
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->resetDLWindow()V

    .line 455
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->cancelDownloadResumeJob()V

    .line 456
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->scheduleMaintenanceJobIfRequired()V

    .line 457
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mBackOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 458
    return-void
.end method

.method public onMaintenanceJobDone()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getMaintenanceJobPeriodMsFromPref(Landroid/content/Context;J)J

    move-result-wide v0

    .line 197
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->getMtJobPeriodInMsFromOfflineConfig()J

    move-result-wide v2

    .line 199
    const-string/jumbo v4, "nf_downloadController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "jobPeriodFromPref="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " jobPeriodFromConfigurationAgent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->cancelMaintenanceJobIfScheduled()V

    .line 214
    :goto_0
    return-void

    .line 204
    :cond_0
    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 205
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->cancelMaintenanceJobIfScheduled()V

    .line 206
    invoke-static {v7, v2, v3}, Lcom/netflix/mediaclient/service/job/NetflixJob;->buildDownloadMaintenanceJob(ZJ)Lcom/netflix/mediaclient/service/job/NetflixJob;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadMaintenanceJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    .line 209
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->scheduleMaintenanceJobIfRequired()V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getBreadcrumbLogging()Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;

    move-result-object v0

    const-string/jumbo v1, "onMaintenanceJobDone"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->DOWNLOAD_MAINTENANCE:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {v0, v1, v7}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->onJobFinished(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    goto :goto_0
.end method

.method public onMaintenanceJobRunningTooEarly()V
    .locals 4

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mCancelMtJobRunnableScheduled:Z

    if-nez v0, :cond_0

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mCancelMtJobRunnableScheduled:Z

    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mCancelMtJobRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->MAINTENANCE_JOB_CANCEL_DELAY:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    :cond_0
    return-void
.end method

.method public onNetworkError(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 477
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->updateConnectedNetworkType()V

    .line 478
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mConnectedNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    if-eqz v1, :cond_3

    .line 479
    iget v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNumberOfNetworkErrorsInCurrentDLWindow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNumberOfNetworkErrorsInCurrentDLWindow:I

    .line 480
    const-string/jumbo v1, "nf_downloadController"

    const-string/jumbo v3, "onNetworkError mNumberOfNetworkErrorsInCurrentDLWindow=%d"

    new-array v4, v2, [Ljava/lang/Object;

    iget v5, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNumberOfNetworkErrorsInCurrentDLWindow:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 482
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->updateItemCounts()V

    .line 484
    iget v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIncompleteItems:I

    sget v3, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->MAX_NETWORK_ERRORS_BEFORE_SELECTING_NEXT_PLAYABLE:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    .line 485
    sget v3, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->MAX_NETWORK_ERRORS_IN_DL_WINDOW:I

    if-le v1, v3, :cond_0

    .line 486
    sget v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->MAX_NETWORK_ERRORS_IN_DL_WINDOW:I

    .line 488
    :cond_0
    if-ge v1, v0, :cond_4

    .line 491
    :goto_0
    const-string/jumbo v1, "nf_downloadController"

    const-string/jumbo v3, "maxErrorsInDlWindow=%d"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 492
    iget v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNumberOfNetworkErrorsInCurrentDLWindow:I

    if-gt v1, v0, :cond_2

    .line 493
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->incrementNetworkErrorCount(Ljava/lang/String;)I

    move-result v0

    .line 494
    sget v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->MAX_NETWORK_ERRORS_BEFORE_SELECTING_NEXT_PLAYABLE:I

    if-le v0, v1, :cond_1

    .line 496
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfNextPlayable:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfNextPlayable:I

    .line 497
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mPlayableNetworkErrorCountMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 501
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->AttemptToBackOffMilliseconds:[J

    add-int/lit8 v0, v0, -0x1

    sget-object v2, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->AttemptToBackOffMilliseconds:[J

    array-length v2, v2

    rem-int/2addr v0, v2

    aget-wide v0, v1, v0

    .line 504
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->scheduleBackOffTimer(J)V

    .line 512
    :goto_1
    return-void

    .line 506
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->scheduleNextDLWindow()V

    goto :goto_1

    .line 509
    :cond_3
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "onNetworkError networkConnected=no, scheduling download resume job"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->scheduleDownloadResumeJobNoDelay()V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public onStorageError()V
    .locals 2

    .prologue
    .line 515
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "onStorageError removing the back-off timer"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mBackOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 518
    return-void
.end method

.method public onThreadException()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->cancelDownloadResumeJob()V

    .line 177
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->cancelMaintenanceJobIfScheduled()V

    .line 178
    return-void
.end method

.method public onUnRecoverableError(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 470
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    const-string/jumbo v0, "nf_downloadController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnRecoverableError playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_0
    return-void
.end method

.method public requiresUnmeteredConnectionForDownload()Z
    .locals 3

    .prologue
    .line 604
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "download_requires_unmetered_network"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setDownloadsAreStoppedByUser(Z)V
    .locals 1

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadsAreStoppedByUser:Z

    .line 140
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadsAreStoppedByUser:Z

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIsStreaming:Z

    .line 143
    :cond_0
    return-void
.end method

.method public setRequiresUnmeteredNetwork(Z)V
    .locals 6

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->requiresUnmeteredConnectionForDownload()Z

    move-result v0

    .line 563
    const-string/jumbo v1, "nf_downloadController"

    const-string/jumbo v2, "setRequiresUnmeteredNetwork oldValue=%b newValue=%b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 564
    if-eq v0, p1, :cond_1

    .line 565
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "download_requires_unmetered_network"

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 569
    invoke-static {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->buildDownloadResumeJob(Z)Lcom/netflix/mediaclient/service/job/NetflixJob;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    .line 572
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->isJobScheduled(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->cancelJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 574
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->scheduleDownloadResumeJobNoDelay()V

    .line 576
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->handleUserNetworkSettingsChanged()V

    .line 578
    :cond_1
    return-void
.end method
