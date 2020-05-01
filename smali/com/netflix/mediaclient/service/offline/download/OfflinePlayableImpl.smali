.class public Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;
.super Ljava/lang/Object;
.source "OfflinePlayableImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadListener;
.implements Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;


# static fields
.field private static final DISK_FREE_SPACE_SAFETY_MARGIN:J = 0x989680L

.field private static final MIN_PERCENTAGE_UPDATE_PERIOD_MS:J = 0x7d0L

.field private static final MSG_CDN_URL_DOWNLOADED_SESSION_END:I = 0x4

.field private static final MSG_CDN_URL_EXPIRED_OR_MOVED:I = 0x3

.field private static final MSG_CDN_URL_GEO_CHECK_ERROR:I = 0x5

.field private static final MSG_NETWORK_ERROR:I = 0x2

.field private static final MSG_URL_DOWNLOAD_DISK_IO_ERROR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "nf_offlinePlayable"


# instance fields
.field private mActiveDownloadableCount:I

.field private mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

.field private final mBackgroundThread:Landroid/os/HandlerThread;

.field private final mCdnUrlDownloaderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private mCompletedDownloadableCount:I

.field private final mContext:Landroid/content/Context;

.field private final mDirPathOfPlayable:Ljava/lang/String;

.field private final mDirPathOfPlayableFileObject:Ljava/io/File;

.field private mLicenseActivating:Z

.field private mLicenseRefreshing:Z

.field private final mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

.field private final mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

.field private final mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

.field private final mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

.field private final mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

.field private final mProgressWatchRunnable:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$ProgressWatchRunnable;

.field private final mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;Ljava/lang/String;Lcom/android/volley/RequestQueue;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;Landroid/os/HandlerThread;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$ProgressWatchRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$ProgressWatchRunnable;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mProgressWatchRunnable:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$ProgressWatchRunnable;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayableFileObject:Ljava/io/File;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mRequestQueue:Lcom/android/volley/RequestQueue;

    iput-object p6, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    iput-object p7, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    iput-object p8, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    invoke-virtual {p9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    iput-object p9, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackgroundThread:Landroid/os/HandlerThread;

    iput-object p10, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->InProgress:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "OfflinePlayableImpl constructor marking item stopped"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Stopped:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getStopReason()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->DownloadLimitRequiresManualResume:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->checkAllDownloadablesExists()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "OfflinePlayableImpl checkAllDownloadablesExists false"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->resetPersistentStatus()V

    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->buildDownloadableProgressInfoMap()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "mOfflineManifestManager or mOfflineLicenseManager can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleFirstTimeLicenseReceived(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleUrlDownloadDiskIOError()V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleNetworkError(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleCdnUrlExpiredOrMoved(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleCdnUrlGeoCheckError(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleCdnUrlDownloadSessionEnd(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->setLicenseActivating(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->refreshLicense(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->fetchFreshLicenseOnRefreshFailure(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleFirstTimeManifestReceived(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleRefreshLicenseResponse(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->hasManifestNetworkChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->refreshManifestFromServerAndContinue()V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleManifestUpdated(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableManifestCallBack;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleManifestForPlayback(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableManifestCallBack;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleManifestRefreshedFromServer(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->onProgressWatchRunnable()V

    return-void
.end method

.method private buildCdnUrlDownloaderAndAddToList(Ljava/util/List;Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;",
            ">;",
            "Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p2, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getDownloadInfo(Ljava/util/List;Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, v0, p4}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->createCdnUrlDownloader(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private buildDownloadableProgressInfoMap()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mAudioDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    sget-object v2, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Audio:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getProgressInfoForDownloadable(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mVideoDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    sget-object v2, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Video:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getProgressInfoForDownloadable(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mSubtitleDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    sget-object v2, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Subtitle:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getProgressInfoForDownloadable(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mTrickPlayDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    sget-object v2, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->TrickPlay:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getProgressInfoForDownloadable(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->updateProgressPercentage()V

    return-void
.end method

.method private buildUrlDownloaderAndPersistentDataAndAddToList(Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;-><init>(Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;)V

    invoke-direct {p0, v0, p1, p4}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->createCdnUrlDownloader(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private canRefreshOrDeleteLicense()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mLicenseRefreshing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mLicenseActivating:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkAllDownloadablesExists()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mAudioDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    iget-object v6, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    sget-object v7, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Audio:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-static {v5, v6, v7}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFileObjectForDownloadable(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    iput-boolean v3, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    move v0, v3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->isIncompleteDownloadableCompletedByFileSize(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "nf_offlinePlayable"

    const-string/jumbo v6, "audio downloadable marking complete."

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mVideoDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    iget-object v6, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    sget-object v7, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Video:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-static {v5, v6, v7}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFileObjectForDownloadable(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    iput-boolean v3, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    move v1, v3

    goto :goto_2

    :cond_4
    invoke-direct {p0, v0, v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->isIncompleteDownloadableCompletedByFileSize(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "nf_offlinePlayable"

    const-string/jumbo v6, "video downloadable marking complete."

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mSubtitleDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    iget-object v6, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    sget-object v7, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Subtitle:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-static {v5, v6, v7}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFileObjectForDownloadable(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_7

    iput-boolean v3, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    move v1, v3

    goto :goto_3

    :cond_7
    invoke-direct {p0, v0, v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->isIncompleteDownloadableCompletedByFileSize(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "nf_offlinePlayable"

    const-string/jumbo v6, "subtitle downloadable marking complete."

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mTrickPlayDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    iget-object v6, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    sget-object v7, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->TrickPlay:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-static {v5, v6, v7}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFileObjectForDownloadable(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_a

    iput-boolean v3, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    move v1, v3

    goto :goto_4

    :cond_a
    invoke-direct {p0, v0, v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->isIncompleteDownloadableCompletedByFileSize(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "nf_offlinePlayable"

    const-string/jumbo v6, "trickplay downloadable marking complete."

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    goto :goto_4

    :cond_b
    return v1
.end method

.method private createCdnUrlDownloader(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;
    .locals 11

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    invoke-interface {p2}, Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;->getDownloadableType()Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFileObjectForDownloadable(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/io/File;

    move-result-object v6

    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-interface {p2}, Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;->getDownloadableType()Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getProgressInfoForDownloadable(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    move-result-object v5

    iget-object v7, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mRequestQueue:Lcom/android/volley/RequestQueue;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-static {v3, p2, p3}, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;->create(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;

    move-result-object v8

    iget-object v9, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-object v3, p1

    move-object v4, p2

    move-object v10, p0

    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;Ljava/io/File;Lcom/android/volley/RequestQueue;Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadListener;)V

    return-object v0
.end method

.method private createCdnUrlDownloadersFromUpdatedManifest(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)Z
    .locals 8

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "createCdnUrlDownloadersFromUpdatedManifest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mAudioDownloadablePersistentList:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getDownloadableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/offline/download/DownloadableSelector;->selectAudioDownloadables(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mVideoDownloadablePersistentList:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getDownloadableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/offline/download/DownloadableSelector;->selectVideoDownloadables(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mSubtitleDownloadablePersistentList:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getDownloadableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/offline/download/DownloadableSelector;->selectSubtitleDownloadables(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mTrickPlayDownloadablePersistentList:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getDownloadableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/offline/download/DownloadableSelector;->selectTrickPlayDownloadables(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->areAllDownloadablesStillFound(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getPlaybackContextId()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mAudioDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    invoke-direct {p0, v1, v0, v7, v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->buildCdnUrlDownloaderAndAddToList(Ljava/util/List;Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mVideoDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    invoke-direct {p0, v2, v0, v6, v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->buildCdnUrlDownloaderAndAddToList(Ljava/util/List;Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mSubtitleDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    invoke-direct {p0, v3, v0, v2, v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->buildCdnUrlDownloaderAndAddToList(Ljava/util/List;Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mTrickPlayDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    invoke-direct {p0, v4, v0, v2, v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->buildCdnUrlDownloaderAndAddToList(Ljava/util/List;Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->buildDownloadableProgressInfoMap()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createFreshCdnUrlDownloadersFromManifest(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 8

    const/4 v3, 0x0

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "createFreshCdnUrlDownloadersFromManifest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v3}, Lcom/netflix/mediaclient/service/offline/download/DownloadableSelector;->selectAudioDownloadables(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v3}, Lcom/netflix/mediaclient/service/offline/download/DownloadableSelector;->selectVideoDownloadables(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v3}, Lcom/netflix/mediaclient/service/offline/download/DownloadableSelector;->selectSubtitleDownloadables(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v3}, Lcom/netflix/mediaclient/service/offline/download/DownloadableSelector;->selectTrickPlayDownloadables(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getPlaybackContextId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v5, v5, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mAudioDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v7, v7, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mAudioDownloadablePersistentList:Ljava/util/List;

    invoke-direct {p0, v0, v6, v7, v4}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->buildUrlDownloaderAndPersistentDataAndAddToList(Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mVideoDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v6, v6, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mVideoDownloadablePersistentList:Ljava/util/List;

    invoke-direct {p0, v0, v5, v6, v4}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->buildUrlDownloaderAndPersistentDataAndAddToList(Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mSubtitleDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v5, v5, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mSubtitleDownloadablePersistentList:Ljava/util/List;

    invoke-direct {p0, v0, v2, v5, v4}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->buildUrlDownloaderAndPersistentDataAndAddToList(Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mTrickPlayDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mTrickPlayDownloadablePersistentList:Ljava/util/List;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->buildUrlDownloaderAndPersistentDataAndAddToList(Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->buildDownloadableProgressInfoMap()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->hasAtLeastOneTrackForDownload()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    return-object v0
.end method

.method private createPlayableDirectoryIfRequired()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/FileUtils;->createDirectoryIfRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static deleteLicense(Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableDeleteCompleteCallBack;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;)V
    .locals 8

    invoke-static {p1}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getKeySetIdOrNull(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v0, v2

    if-nez v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableDeleteCompleteCallBack;->onDeleteCompleted(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayableId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDlStateBeforeDelete()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    iget-object v0, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-object v4, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mLinkDeactivate:Ljava/lang/String;

    iget-object v5, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    iget-object v6, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDxId:Ljava/lang/String;

    new-instance v7, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$12;

    invoke-direct {v7, p2, p1, p3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$12;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableDeleteCompleteCallBack;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;)V

    move-object v0, p0

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;->deleteLicense(Ljava/lang/String;[BZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private doDeleteDownload()Lcom/netflix/mediaclient/android/app/Status;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->doStopDownload()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;->notifyDeletingPlayable(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateDeleted()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->canRefreshOrDeleteLicense()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-static {v0, v1, v3, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->deleteLicense(Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableDeleteCompleteCallBack;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->deletePlayableDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "deletePlayableDirectory failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_CANT_DELETE_PLAYABLE_DIRECTORY:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_0
.end method

.method private doStopDownload()V
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->stopDownload()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private ensureEnoughDiskSpace()Z
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getTotalEstimatedSpace()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getCurrentEstimatedSpace()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x989680

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayableFileObject:Ljava/io/File;

    invoke-static {v4}, Lcom/netflix/mediaclient/util/AndroidUtils;->getFreeSpaceOnFileSystem(Ljava/io/File;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const-string/jumbo v6, "nf_offlinePlayable"

    const-string/jumbo v7, "ensureEnoughDiskSpace freeSpaceNeeded=%d freeSpaceOnFileSystem=%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static {v6, v7, v8}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private fetchFreshLicenseOnRefreshFailure(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V
    .locals 7

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "Fetching fresh license on refresh failure"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getDrmHeader()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getLicenseLinkJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getOxId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getDxId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$11;

    invoke-direct {v6, p0, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$11;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;->requestNewLicense(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;)V

    return-void
.end method

.method private getDownloadInfo(Ljava/util/List;Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;->getDownloadableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getProgressInfoForDownloadable(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;
    .locals 8

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mDownloadableProgressInfoMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;-><init>()V

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    invoke-static {v1, v2, p2}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFileObjectForDownloadable(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mBytesOnTheDisk:J

    iget-boolean v1, p1, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    if-eqz v1, :cond_1

    iget-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mBytesOnTheDisk:J

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mTotalBytesToDownload:J

    :goto_0
    const-string/jumbo v1, "nf_offlinePlayable"

    const-string/jumbo v2, "getProgressInfoForDownloadable complete=%b downloadableId=%s  mBytesOnTheDisk=%d mTotalBytesToDownload=%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v5, p1, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-wide v6, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mBytesOnTheDisk:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v6, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mTotalBytesToDownload:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->mDownloadableProgressInfoMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    iget-wide v2, p1, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mSizeOfDownloadable:J

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mTotalBytesToDownload:J

    goto :goto_0
.end method

.method private handleCdnUrlDownloadSessionEnd(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->updateActiveAndCompleteDownloadableCount()V

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, " completeTrackCount=%d activeTrackCount=%d downloadableId=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCompletedDownloadableCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mActiveDownloadableCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->getDownloadableId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCompletedDownloadableCount:I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "all tracks downloaded"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleDownloadComplete()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateComplete()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->markComplete()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->onDownloadCompletedSuccess(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->requestSaveToRegistry()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->updateLastContactNetflix(Landroid/content/Context;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mActiveDownloadableCount:I

    if-lez v0, :cond_1

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "still waiting for other tracks to download"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "completeTrackCount=%d activeTrackCount=%d"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCompletedDownloadableCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mActiveDownloadableCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private handleCdnUrlExpiredOrMoved(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_offlinePlayable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCdnUrlExpiredOrMoved status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->doStopDownload()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->refreshManifestFromServerAndContinue()V

    return-void
.end method

.method private handleCdnUrlGeoCheckError(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_offlinePlayable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCdnUrlGeoCheckError status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->GeoCheckError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->stopAndSendNetworkError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void
.end method

.method private handleDownloadComplete()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mLinkDownloadAndActivate:Ljava/lang/String;

    new-instance v3, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$8;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$8;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;->downloadCompleteAndActivateLicense(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager$DownloadCompleteAndActivateCallback;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->setLicenseActivating(Z)V

    return-void
.end method

.method private handleFirstTimeClearContent()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->onInitialized(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private handleFirstTimeLicenseReceived(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_offlinePlayable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleFirstTimeLicenseReceived playable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    invoke-virtual {p2, v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->populateLicenseData(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->resetPersistentStatus()V

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-interface {v0, p0, p3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->onInitialized(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setPersistentStatus(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method private handleFirstTimeManifestReceived(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_offlinePlayable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleFirstTimeManifestReceived status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->createFreshCdnUrlDownloadersFromManifest(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->ensureEnoughDiskSpace()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->setManifestNetwork()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->hasDrm()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getDrmHeader()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getLicenseLinkJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getOxId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getOxId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$1;

    invoke-direct {v6, p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$1;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;->requestNewLicense(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleFirstTimeClearContent()V

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_NOT_ENOUGH_FREE_SPACE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p2, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getOxId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getDxId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p2}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->sendNotEnoughSpaceLogBlob(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "handleFirstTimeManifestReceived not enough space"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->doDeleteDownload()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    const-string/jumbo v1, "nf_offlinePlayable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleFirstTimeManifestReceived deleting downloads status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-interface {v0, p0, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->onInitialized(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_offlinePlayable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleFirstTimeManifestReceived failed to create downloaders status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_offlinePlayable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleFirstTimeManifestReceived failed to get initial manifest status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleManifestForPlayback(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableManifestCallBack;)V
    .locals 12

    const/4 v0, 0x0

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getKeySetIdOrNull(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)[B

    move-result-object v4

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mAudioDownloadablePersistentList:Ljava/util/List;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getDownloadableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mVideoDownloadablePersistentList:Ljava/util/List;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getDownloadableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mSubtitleDownloadablePersistentList:Ljava/util/List;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getDownloadableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mTrickPlayDownloadablePersistentList:Ljava/util/List;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getDownloadableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v9, v3, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v10, v3, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDxId:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->createDownloadContext(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    move-result-object v11

    move-object v3, p1

    invoke-direct/range {v0 .. v11}, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;[BLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->getMpd()Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    new-instance p2, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_MANIFEST_DATA_MISSING:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p2, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    :cond_0
    invoke-interface {p3, v0, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableManifestCallBack;->onPlayableManifestReady(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private handleManifestRefreshedFromServer(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_offlinePlayable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleManifestRefreshedFromServer res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->setManifestNetwork()V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->handleManifestUpdated(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->ManifestError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, p2, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->stopAndSendNetworkError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setPersistentStatus(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method private handleManifestUpdated(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->createCdnUrlDownloadersFromUpdatedManifest(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->ensureEnoughDiskSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->startCdnUrlDownloaders()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->requestSaveToRegistry()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_NOT_ENOUGH_FREE_SPACE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NotEnoughSpace:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->stopAndSendStorageError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->stopAndSendEncodesNotAvailableError()V

    goto :goto_0
.end method

.method private handleNetworkError(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NetworkError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->updateActiveAndCompleteDownloadableCount()V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_offlinePlayable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleNetworkError status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " playableId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " downloadableId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->getDownloadableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " active="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mActiveDownloadableCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " complete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCompletedDownloadableCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "nf_offlinePlayable"

    const-string/jumbo v2, "handleNetworkError networkConnected"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mActiveDownloadableCount:I

    if-lez v1, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_offlinePlayable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleNetworkError networkConnected, waiting for mActiveDownloadableCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mActiveDownloadableCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NoNetworkConnectivity:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const-string/jumbo v1, "nf_offlinePlayable"

    const-string/jumbo v2, "handleNetworkError noNetwork"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, p2, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->stopAndSendNetworkError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    goto :goto_0
.end method

.method private handleRefreshLicenseResponse(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V
    .locals 4

    const/4 v3, 0x0

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->populateLicenseData(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->resetPersistentStatus()V

    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->setLicenseRefreshing(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->requestSaveToRegistry()V

    if-eqz p3, :cond_1

    invoke-virtual {p3, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;->onLicenseRefreshDone(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "refreshLicense failed %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->isLicenseExpired(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setPersistentStatus(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method private handleUrlDownloadDiskIOError()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_URL_DOWNLOAD_DISK_IO_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->StorageError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->stopAndSendStorageError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void
.end method

.method private hasAtLeastOneTrackForDownload()Lcom/netflix/mediaclient/android/app/Status;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_MANIFEST_NO_TRACKS_TO_DOWNLOAD:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_0
.end method

.method private hasManifestNetworkChanged()Z
    .locals 2

    const/4 v1, 0x0

    return v1
.end method

.method private isIncompleteDownloadableCompletedByFileSize(Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Ljava/io/File;)Z
    .locals 4

    iget-boolean v0, p1, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mSizeOfDownloadable:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onProgressWatchRunnable()V
    .locals 5

    sget-object v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$13;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$DownloadState:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "ProgressWatchRunnable playableId=%s PlayablePercentageProgress=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->getPercentageDownloaded()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->updateProgressPercentage()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->scheduleNextProgressWatch()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->onProgress(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private refreshLicense(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V
    .locals 9

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->canRefreshOrDeleteLicense()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->shouldRefreshLicense(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p3, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;->onLicenseRefreshDone(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "refreshing license for %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-direct {p0, v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->setLicenseRefreshing(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getDrmHeader()[B

    move-result-object v3

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getKeySetIdOrNull(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)[B

    move-result-object v4

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-object v5, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mLinkRefresh:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getOxId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getOxId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;

    invoke-direct {v8, p0, p2, p3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V

    move-object v1, p1

    invoke-interface/range {v0 .. v8}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;->refreshLicense(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;)V

    goto :goto_0
.end method

.method private refreshManifestFromServerAndContinue()V
    .locals 7

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "refreshManifestFromServerAndContinue"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getOxId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getDxId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadVideoQuality()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    move-result-object v5

    new-instance v6, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$7;

    invoke-direct {v6, p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$7;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;->requestOfflineManifestRefreshFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;)V

    return-void
.end method

.method private removeProgressWatcher()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mProgressWatchRunnable:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$ProgressWatchRunnable;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private scheduleFirstProgressWatch()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mProgressWatchRunnable:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$ProgressWatchRunnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scheduleNextProgressWatch()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mProgressWatchRunnable:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$ProgressWatchRunnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sendMessageToHandler(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "sendMessageToHandler after handler is gone"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendNetworkError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Stopped:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "sendNetworkError already in stopped state."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "sendNetworkError sending error to mOfflinePlayableListener."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-interface {v0, p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->onNetworkError(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method private sendStorageError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayableFileObject:Ljava/io/File;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->getFreeSpaceOnFileSystem(Ljava/io/File;)J

    move-result-wide v0

    const-wide/32 v2, 0x989680

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "sendStorageError overriding error to not enough space"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_NOT_ENOUGH_FREE_SPACE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sget-object p2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NotEnoughSpace:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Stopped:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "sendStorageError already in stopped state."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-interface {v0, p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->onStorageError(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method private setLicenseActivating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mLicenseActivating:Z

    return-void
.end method

.method private setLicenseRefreshing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mLicenseRefreshing:Z

    return-void
.end method

.method private setManifestNetwork()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getActiveNetworkTypeOrMinusOne(Landroid/content/Context;)I

    move-result v1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setManifestNetworkType(I)V

    const-string/jumbo v0, ""

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setWiFiSsidOrNetworkOperatorName(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getSsidOrEmptyString(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCurrentOperatorNameOrEmptyString(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startCdnUrlDownloaders()V
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "startCdnUrlDownloaders"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->isDownloadComplete()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->startDownload()V

    move v0, v3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "nf_offlinePlayable"

    const-string/jumbo v6, "download was complete downloadableId=%s"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->getDownloadableId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v5, v6, v7}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->removeProgressWatcher()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateInProgress()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->scheduleFirstProgressWatch()V

    :goto_2
    return-void

    :cond_2
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "startCdnUrlDownloaders not running progress watcher."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private stopAndSendEncodesNotAvailableError()V
    .locals 3

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->doStopDownload()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->EncodesAreNotAvailableAnyMore:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_ENCODES_ARE_NOT_AVAILABLE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-interface {v0, p0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->onUnRecoverableError(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private stopAndSendNetworkError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->doStopDownload()V

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->sendNetworkError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void
.end method

.method private stopAndSendStorageError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->doStopDownload()V

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->sendStorageError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void
.end method

.method private updateActiveAndCompleteDownloadableCount()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCompletedDownloadableCount:I

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mActiveDownloadableCount:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCdnUrlDownloaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->isDownloadComplete()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCompletedDownloadableCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mCompletedDownloadableCount:I

    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mActiveDownloadableCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mActiveDownloadableCount:I

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public canResumeWithoutUserAction()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getStopReason()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->canResumeWithoutUserAction()Z

    move-result v0

    return v0
.end method

.method public deleteDownload()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->doDeleteDownload()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;->abortAllRequestsForPlayable(Ljava/lang/String;)V

    return-void
.end method

.method public doMaintenanceWork(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableMaintenanceCallBack;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mShouldRefresh:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "attempt auto refresh playableId=%s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;->MAINTENANCE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$5;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$5;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableMaintenanceCallBack;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->refreshLicenseIfNeeded(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "does not allow auto refresh playableId=%s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableMaintenanceCallBack;->onMaintenanceJobDone(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V

    :cond_0
    return-void
.end method

.method public getCurrentEstimatedSpace()J
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayableFileObject:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->getActualSizeOfPlayableOnDiskInCompleteState(Ljava/io/File;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->getBytesDownloadedSoFar()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getDownloadContextInitTimeMs()J
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextInitTimeMs:J

    return-wide v0
.end method

.method public getDownloadContextListPos()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextListPos:I

    return v0
.end method

.method public getDownloadContextRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadContextTrackId()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextTrackId:I

    return v0
.end method

.method public getDownloadContextVideoPos()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextVideoPos:I

    return v0
.end method

.method public getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    return-object v0
.end method

.method public getDxId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDxId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiringInMillis()J
    .locals 12

    const-wide/16 v0, -0x1

    const-wide/16 v10, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-boolean v2, v2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mShouldUsePlayWindowLimits:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-wide v2, v2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayStartTime:J

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v4, v4, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-wide v4, v4, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPlayWindowResetLimit:J

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v6, v6, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-wide v6, v6, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPlayableWindowInHour:J

    cmp-long v8, v2, v10

    if-lez v8, :cond_0

    cmp-long v4, v4, v10

    if-gtz v4, :cond_0

    cmp-long v4, v6, v10

    if-gtz v4, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getLastPersistentStatus()Lcom/netflix/mediaclient/android/app/Status;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mErrorCode:I

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget v1, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mErrorCode:I

    invoke-static {v1}, Lcom/netflix/mediaclient/StatusCode;->getStatusCodeByValue(I)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mErrorString:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mErrorString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setMessage(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setDisplayMessage(Z)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    goto :goto_0
.end method

.method public getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    return-object v0
.end method

.method public getOxId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentageDownloaded()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->getPercentageDownloaded()I

    move-result v0

    return v0
.end method

.method public getPlayableId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayableId:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileGuidOfDownloadRequester()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getProfileGuidList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getProfileGuidList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getProfileGuidList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "getProfileGuidOfDownloadRequester error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getStopReason()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getStopReason()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v0

    return-object v0
.end method

.method public getTotalEstimatedSpace()J
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayableFileObject:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->getActualSizeOfPlayableOnDiskInCompleteState(Ljava/io/File;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mPlayableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;->getTotalBytesToDownload()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getWatchState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->isGeoBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->GEO_BLOCKED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->WATCHING_ALLOWED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mKeySetId:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->isAllowedByViewWindow(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->VIEW_WINDOW_EXPIRED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    :cond_2
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_offlinePlayable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new WatchState is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->isLicenseExpired(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->LICENSE_EXPIRED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    goto :goto_1

    :cond_4
    iget-wide v2, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPlayWindowResetLimit:J

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-static {v4, v5, v1}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->isAllowedByPlayWindow(Landroid/content/Context;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-boolean v0, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPwResettable:Z

    if-eqz v0, :cond_5

    iget-wide v0, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPlayWindowResetLimit:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->PLAY_WINDOW_EXPIRED_BUT_RENEWABLE:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->PLAY_WINDOW_EXPIRED_FINAL:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    goto :goto_1

    :cond_6
    iget-wide v4, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mPlayWindowResetLimit:J

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mShouldUsePlayWindowLimits:Z

    if-eqz v1, :cond_2

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mBackGroundMessageHandler:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;

    new-instance v2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$6;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$6;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->NOT_WATCHABLE_DUE_TO_NOT_ENOUGH_DATA:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    goto :goto_0
.end method

.method public initialize()V
    .locals 8

    const/4 v4, 0x0

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "initialize playableId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayableId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->createPlayableDirectoryIfRequired()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_CANT_CREATE_VIEWABLE_DIRECTORY:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-interface {v0, p0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->onInitialized(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDxId:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportDownloadStart(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayableId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDxId:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->createDownloadContext(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadVideoQuality()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    move-result-object v6

    new-instance v7, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$2;

    invoke-direct {v7, p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$2;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;->requestOfflineManifestFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;)V

    goto :goto_0
.end method

.method public notifyOfflinePlayStarted()V
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->hasRecentHomingAndConnectivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayStartTime:J

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_offlinePlayable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start playWindow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-wide v4, v3, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayStartTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mShouldUsePlayWindowLimits:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->requestSaveToRegistry()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCdnUrlDownloadSessionEnd(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V
    .locals 5

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "onCdnUrlDownloadSessionEnd downloadableId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->getDownloadableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x4

    new-instance v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-direct {v1, p0, v2, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->sendMessageToHandler(ILjava/lang/Object;)V

    return-void
.end method

.method public onCdnUrlExpiredOrMoved(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "onCdnUrlExpiredOrMoved downloadableId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->getDownloadableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x3

    new-instance v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;

    invoke-direct {v1, p0, p2, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->sendMessageToHandler(ILjava/lang/Object;)V

    return-void
.end method

.method public onCdnUrlGeoCheckFailure(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "onCdnUrlExpiredOrMoved downloadableId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->getDownloadableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x5

    new-instance v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;

    invoke-direct {v1, p0, p2, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->sendMessageToHandler(ILjava/lang/Object;)V

    return-void
.end method

.method public onNetworkError(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_offlinePlayable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNetworkError statusCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x2

    new-instance v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;

    invoke-direct {v1, p0, p2, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->sendMessageToHandler(ILjava/lang/Object;)V

    return-void
.end method

.method public onUrlDownloadDiskIOError(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V
    .locals 4

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "onUrlDownloadDiskIOError"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-instance v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;

    new-instance v2, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->DL_URL_DOWNLOAD_DISK_IO_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {v1, p0, v2, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->sendMessageToHandler(ILjava/lang/Object;)V

    return-void
.end method

.method public refreshLicenseIfNeeded(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V
    .locals 5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->shouldRefreshLicense(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->canRefreshOrDeleteLicense()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "refreshLicenseIfNeeded playableId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    new-instance v3, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$9;

    invoke-direct {v3, p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$9;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;->requestOfflineManifestFromCache(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "refreshLicenseIfNeeded not refreshing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p2, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;->onLicenseRefreshDone(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public requestManifestForPlayback(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableManifestCallBack;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    new-instance v3, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$4;

    invoke-direct {v3, p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$4;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableManifestCallBack;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;->requestOfflineManifestFromCache(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;)V

    return-void
.end method

.method public startDownload()V
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "startDownload"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "Download is already complete. This shouldn\'t be called."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->canResumeWithoutUserAction()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "Download is not resume-able without user action"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->createPlayableDirectoryIfRequired()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_CANT_CREATE_VIEWABLE_DIRECTORY:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->StorageError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->sendStorageError(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateInProgress()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->doStopDownload()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mDirPathOfPlayable:Ljava/lang/String;

    new-instance v3, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$3;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$3;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;->requestOfflineManifestFromCache(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;)V

    goto :goto_0
.end method

.method public stopDownload(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->doStopDownload()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->mOfflinePlayablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void
.end method
