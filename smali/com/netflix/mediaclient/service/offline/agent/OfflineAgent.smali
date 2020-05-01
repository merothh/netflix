.class public Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "OfflineAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/IntentCommandHandler;
.implements Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;
.implements Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler$MaintenanceJobHandlerCallback;
.implements Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
.implements Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentServiceInterface;
.implements Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;


# static fields
.field private static final CW_FETCH_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "nf_offlineAgent"

.field private static final VIEW_TIME_TO_QUALIFY_FIRST_VIEW:J = 0x7530L


# instance fields
.field private final mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

.field private mAvailable:Z

.field private mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mBroadcastReceiverHelper:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

.field private final mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

.field private final mDownloadControllerListener:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

.field private mDownloadNotificationManager:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;

.field private final mMainThreadOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

.field private mMaintenanceJobHandler:Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;

.field private mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

.field private mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

.field private final mOfflinePlayManifestRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mOfflinePlayableUiList:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;

.field private mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

.field private mPlayableIdInFlight:Ljava/lang/String;

.field private mRealm:Lio/realm/Realm;

.field private mRegistryDirty:Z

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private mSkipAdultContent:Z

.field private final mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    .line 113
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;

    invoke-direct {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableUiList:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;

    .line 119
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRegistryDirty:Z

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayManifestRequestMap:Ljava/util/Map;

    .line 123
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAvailable:Z

    .line 129
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    .line 138
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mMainThreadOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    .line 1377
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$15;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$15;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadControllerListener:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

    .line 132
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 133
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendResponseForCreate(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->saveToRegistry()V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->onGeoPlayabilityUpdated(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleGeoPlayabilityUpdated(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lio/realm/Realm;
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getRealm()Lio/realm/Realm;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lio/realm/Realm;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRealm:Lio/realm/Realm;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lio/realm/Realm;)Lio/realm/Realm;
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRealm:Lio/realm/Realm;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mSkipAdultContent:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableUiList:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Ljava/util/List;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->doSaveToRegistryInBGThread(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendDownloadStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendLicenseRefreshDone(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendPlayWindowRenewDone(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRegistryDirty:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Z)Z
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRegistryDirty:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadNotificationManager:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleAgentInitRequest()V

    return-void
.end method

.method static synthetic access$2500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$CreateRequest;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleCreateRequest(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$CreateRequest;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleDeleteRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handlePauseRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleResumeRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleAgentDestroyRequest()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/agent/DownloadController;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleDownloadResumeJob()V

    return-void
.end method

.method static synthetic access$3100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleDownloadMaintenanceJob()V

    return-void
.end method

.method static synthetic access$3200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Z)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleDeleteAllRequest(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleOfflinePlaybackStart30Second(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$3402(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;)Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mMaintenanceJobHandler:Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleRequestForGeoPlayability()V

    return-void
.end method

.method static synthetic access$3600(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/user/UserAgent;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;I)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->addRequestToHandler(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->stopAllDownloadsAndPersistRegistry(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayManifestRequestMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendDownloadCompleted(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;JLcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 99
    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendOfflineManifestFromMainThread(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;JLcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 99
    invoke-static {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleFetchDetailsError(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->startDownloadIfAllowed()V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendProgress(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleThreadException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private addRequestToHandler(I)V
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1166
    return-void
.end method

.method private addRequestToHandler(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1162
    return-void
.end method

.method private buildFalkorDataAndPlayableListFromPersistentStore()Z
    .locals 7

    .prologue
    .line 1005
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "buildFalkorDataAndPlayableListFromPersistentStore"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1008
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->create(Landroid/content/Context;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    .line 1009
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    if-nez v0, :cond_0

    .line 1010
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "can\'t create OfflineRegistry"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const/4 v0, 0x0

    .line 1036
    :goto_0
    return v0

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->getGeoCountryCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getGeoCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->setGeoCountryCode(Ljava/lang/String;)V

    .line 1018
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->hasAtLeastOnePlayable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1019
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->startQueueIfRequired()V

    .line 1022
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1023
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->getRegistryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    .line 1025
    iget-object v1, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflinePlayablePersistentDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    .line 1026
    iget-object v6, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflineRootStorageDirPath:Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->createOfflineViewable(Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v1

    .line 1028
    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1032
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->refreshUIData()V

    .line 1033
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1034
    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "buildFalkorDataAndPlayableListFromPersistentStore took="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private buildNewUiList()V
    .locals 4

    .prologue
    .line 764
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 765
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    .line 766
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 769
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 770
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v2, "buildNewUiList already in main regenerate"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableUiList:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRealm:Lio/realm/Realm;

    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mSkipAdultContent:Z

    invoke-virtual {v0, v2, v1, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->regenerate(Lio/realm/Realm;Ljava/util/Map;Z)V

    .line 781
    :goto_1
    return-void

    .line 773
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$9;

    invoke-direct {v2, p0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$9;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private createHttpStack()Lcom/android/volley/toolbox/HttpStack;
    .locals 2

    .prologue
    .line 970
    new-instance v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ResourceHttpStack;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ResourceHttpStack;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    return-object v0
.end method

.method private createOfflineViewable(Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;
    .locals 11

    .prologue
    .line 736
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;

    invoke-direct {v3}, Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;-><init>()V

    iget-object v2, p2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayableId:Ljava/lang/String;

    .line 739
    invoke-static {p1, v2}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getDirectoryPathForViewable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRequestQueue:Lcom/android/volley/RequestQueue;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    iget-object v8, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mMainThreadOfflinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    iget-object v9, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 745
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v10

    move-object v2, p2

    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Lcom/netflix/mediaclient/service/offline/download/PlayableProgressInfo;Ljava/lang/String;Lcom/android/volley/RequestQueue;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;Landroid/os/HandlerThread;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    .line 736
    return-object v0
.end method

.method private doSaveToRegistryInBGThread(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1062
    if-eqz p1, :cond_1

    .line 1063
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->persistRegistry()Z

    move-result v0

    .line 1064
    if-nez v0, :cond_0

    .line 1065
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "doSaveToRegistryInBGThread can\'t persist registry"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const-string/jumbo v0, "persistRegistry failed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1067
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_CANT_PERSIST_REGISTRY:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendError(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1072
    :cond_0
    :goto_0
    return-void

    .line 1070
    :cond_1
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "doSaveToRegistryInBGThread context is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getRealm()Lio/realm/Realm;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRealm:Lio/realm/Realm;

    return-object v0
.end method

.method private getVideoQualityFromPref()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;
    .locals 3

    .prologue
    .line 926
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "download_video_quality"

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->DEFAULT:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    .line 927
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 926
    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    move-result-object v0

    return-object v0
.end method

.method private handleAgentDestroyRequest()V
    .locals 2

    .prologue
    .line 357
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleAgentDestroyRequest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBroadcastReceiverHelper:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBroadcastReceiverHelper:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->destroy()V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;->destroy()V

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->destroy()V

    .line 368
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->stopAllDownloadsAndPersistRegistry(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 369
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_3

    .line 370
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "Stopping Volley RequestQueue"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 375
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    .line 376
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->destroy()V

    goto :goto_0

    .line 379
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 380
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->stopBackgroundThread()V

    .line 381
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    .line 382
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "destroyInBgThread done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-void
.end method

.method private handleAgentInitRequest()V
    .locals 9

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "MSLClient not enabled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_MSL_CLIENT_DISABLED:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->sendOfflineNotAvailableLogblob(Lcom/netflix/mediaclient/service/NrdController;Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;)V

    .line 247
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 309
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getOfflineConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->isOfflineFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_DISABLED_FROM_END_POINT:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->sendOfflineNotAvailableLogblob(Lcom/netflix/mediaclient/service/NrdController;Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;)V

    .line 252
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getNetflixPowerManager()Lcom/netflix/mediaclient/service/NetflixPowerManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->setNetflixPowerManager(Lcom/netflix/mediaclient/service/NetflixPowerManager;)V

    .line 256
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    .line 257
    new-instance v1, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getPdsAgentForDownload()Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadInterface;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;-><init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Landroid/os/HandlerThread;Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadInterface;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    .line 259
    :try_start_0
    new-instance v1, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 265
    :try_start_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->buildFalkorDataAndPlayableListFromPersistentStore()Z

    move-result v0

    if-nez v0, :cond_2

    .line 266
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_OFFLINE_STORAGE_NOT_AVAILABLE:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->sendOfflineNotAvailableLogblob(Lcom/netflix/mediaclient/service/NrdController;Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;)V

    .line 267
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V
    :try_end_1
    .catch Lcom/netflix/mediaclient/service/offline/registry/ChecksumException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    const-string/jumbo v1, "nf_offlineAgent"

    const-string/jumbo v2, "ChecksumException"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 272
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_REGISTRY_CHECKSUM_FAILED:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto/16 :goto_0

    .line 260
    :catch_1
    move-exception v0

    .line 261
    :goto_1
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto/16 :goto_0

    .line 277
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$DownloadJobExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$DownloadJobExecutor;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;)V

    .line 278
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->DOWNLOAD_RESUME:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/NetflixService;->registerJobExecutor(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;)V

    .line 279
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->DOWNLOAD_MAINTENANCE:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/NetflixService;->registerJobExecutor(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;)V

    .line 282
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 284
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    .line 285
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/NetflixService;->getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 286
    invoke-interface {v4}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDeviceLowMem()Z

    move-result v4

    move-object v5, p0

    .line 281
    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->createDownloadNotificationManager(Landroid/os/Handler;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/INetflixService;Lcom/netflix/mediaclient/util/gfx/ImageLoader;ZLcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadNotificationManager:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;

    .line 289
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 290
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/NetflixService;->getJobScheduler()Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 291
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadControllerListener:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    .line 292
    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->areDownloadsPausedByUser()Z

    move-result v6

    iget-object v7, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 293
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;Ljava/util/List;Landroid/os/Looper;Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;ZLcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    .line 297
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 304
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBroadcastReceiverHelper:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

    .line 305
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBroadcastReceiverHelper:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->init()V

    .line 306
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "OfflineAgent doInit success."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAvailable:Z

    .line 308
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto/16 :goto_0

    .line 260
    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method private handleCreateRequest(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$CreateRequest;)V
    .locals 6

    .prologue
    .line 387
    iget-object v1, p1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$CreateRequest;->mPlayableId:Ljava/lang/String;

    .line 388
    iget-object v2, p1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$CreateRequest;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 389
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfileGuid()Ljava/lang/String;

    move-result-object v3

    .line 390
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->startQueueIfRequired()V

    .line 394
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->getOfflineViewableByPlayableId(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->CreateFailed:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v4, v5, :cond_0

    .line 396
    const-string/jumbo v4, "nf_offlineAgent"

    const-string/jumbo v5, "handleCreateRequest removing CreateFailed item"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 398
    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->removePlayable(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Z)V

    .line 399
    const/4 v0, 0x0

    .line 401
    :cond_0
    if-nez v0, :cond_2

    .line 402
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleCreateRequest creating new item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/util/NetflixTransactionIdGenerator;->generateOxId()Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getVideoQualityFromPref()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 406
    invoke-static {v1, v2, v0, v3, v4}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->createOfflineContentPersistentData(Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v0

    .line 413
    invoke-static {}, Lcom/netflix/mediaclient/util/NetflixTransactionIdGenerator;->generateDxId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDxId:Ljava/lang/String;

    .line 414
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportAddCachedVideoStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->getCurrentOfflineStorageDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->createOfflineViewable(Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v1

    .line 418
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->addToCurrentRegistryData(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)V

    .line 419
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->processNextCreateRequest()V

    .line 425
    :goto_0
    return-void

    .line 422
    :cond_2
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v2, "handleCreateRequest already requested"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_TITTLE_ALREADY_REQUESTED_FOR_DOWNLOAD:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendResponseForCreate(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method private handleDeleteAllRequest(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 577
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleDeleteAllRequest deletePermanently=%b"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 578
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 579
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    .line 580
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mPlayableIdInFlight:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v2, "handleDeleteRequest not deleting in-flight item"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 587
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    .line 588
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportRemoveCachedVideoStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 589
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->removePlayable(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Z)V

    .line 590
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->deleteDownload()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v2

    .line 591
    invoke-interface {v2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 592
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 593
    const-string/jumbo v1, "nf_offlineAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleDeleteAllRequest can\'t delete playableId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " got error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v1, v2

    .line 598
    :cond_2
    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->reportDeleteConsolidatedLogging(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V

    goto :goto_0

    .line 600
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->setPrimaryProfileGuid(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 602
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->onAllPlayableDeleted()V

    .line 603
    if-eqz p1, :cond_4

    .line 604
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->deleteDeletedList()V

    .line 607
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$6;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$6;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 613
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->saveToRegistry()V

    .line 614
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->refreshUIData()V

    .line 615
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendAllDeleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 616
    return-void
.end method

.method private handleDeleteRequest(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 530
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleDeleteRequest playableId=%s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 531
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->getOfflineViewableByPlayableId(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v0

    .line 532
    if-nez v0, :cond_0

    .line 533
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleDeleteRequest offlinePlayable not found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :goto_0
    return-void

    .line 536
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mPlayableIdInFlight:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleDeleteRequest not deleting in-flight item"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_BUSY_TRY_DELETE_AGAIN:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendDownloadDeleted(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 542
    :cond_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    .line 543
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportRemoveCachedVideoStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 546
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->removePlayable(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Z)V

    .line 547
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->deleteDownload()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    .line 549
    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->reportDeleteConsolidatedLogging(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V

    .line 551
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->onDeleted(Ljava/lang/String;)V

    .line 552
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->saveToRegistry()V

    .line 553
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->buildNewUiList()V

    .line 554
    invoke-direct {p0, p1, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendDownloadDeleted(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 555
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->startDownloadIfAllowed()V

    .line 557
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$5;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$5;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private handleDownloadMaintenanceJob()V
    .locals 4

    .prologue
    .line 501
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleDownloadMaintenanceJob"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mMaintenanceJobHandler:Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mMaintenanceJobHandler:Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->terminate()V

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->DOWNLOAD_MAINTENANCE:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->sendNetflixJobStartLogBlob(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 506
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;-><init>(Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler$MaintenanceJobHandlerCallback;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;Ljava/util/List;Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mMaintenanceJobHandler:Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;

    .line 510
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mMaintenanceJobHandler:Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->startMaintenanceJob()V

    .line 511
    return-void
.end method

.method private handleDownloadResumeJob()V
    .locals 2

    .prologue
    .line 514
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleDownloadResumeJob"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->DOWNLOAD_RESUME:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->sendNetflixJobStartLogBlob(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 516
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->startDownloadIfAllowed()V

    .line 517
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->onDownloadResumeJobDone()V

    .line 518
    return-void
.end method

.method private static handleFetchDetailsError(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 1621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "serializeMetadataToDisc() got an error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1622
    const-string/jumbo v1, "nf_offlineAgent"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    .line 1624
    return-void
.end method

.method private handleGeoPlayabilityUpdated(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 522
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleGeoPlayabilityUpdated"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->applyGeoPlayabilityFlags(Ljava/util/Map;Ljava/util/List;)V

    .line 524
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getGeoCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->setGeoCountryCode(Ljava/lang/String;)V

    .line 525
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->saveToRegistry()V

    .line 526
    return-void
.end method

.method private handleLicenseRefreshForAll()V
    .locals 3

    .prologue
    .line 570
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    .line 571
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->doMaintenanceWork(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableMaintenanceCallBack;)V

    goto :goto_0

    .line 573
    :cond_0
    return-void
.end method

.method private handleMayBeNewUser()V
    .locals 2

    .prologue
    .line 1226
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1227
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1234
    :cond_0
    :goto_0
    return-void

    .line 1228
    :cond_1
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleMayBeNewUser"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->hasPrimaryProfileGuidChanged(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;)Z

    move-result v0

    .line 1231
    if-eqz v0, :cond_0

    .line 1232
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleDeleteAllRequest(Z)V

    goto :goto_0
.end method

.method private handleOfflinePlaybackStart30Second(Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 1472
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->getOfflineViewableByPlayableId(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v0

    .line 1473
    if-eqz v0, :cond_0

    .line 1474
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->notifyOfflinePlayStarted()V

    .line 1476
    :cond_0
    return-void
.end method

.method private handlePauseRequest(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 479
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handlePauseRequest playableId=%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 480
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->getOfflineViewableByPlayableId(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_1

    .line 482
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v1, v2, :cond_0

    .line 483
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->StoppedFromAgentAPI:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->stopDownload(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 484
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->saveToRegistry()V

    .line 485
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendDownloadStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    .line 492
    :goto_0
    return-void

    .line 487
    :cond_0
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handlePauseRequest trying to pause a completed item"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 490
    :cond_1
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handlePauseRequest playableId=%s not found"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private handleRequestForGeoPlayability()V
    .locals 2

    .prologue
    .line 1480
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleRequestForGeoPlayability"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendGeoPlayabilityRequest()V

    .line 1482
    return-void
.end method

.method private handleResumeRequest(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 429
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->saveToRegistry()V

    .line 430
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->getOfflineViewableByPlayableId(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v0

    .line 431
    if-nez v0, :cond_1

    .line 432
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleResumeRequest not found playableId=%s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Stopped:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v1, v2, :cond_2

    .line 436
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    const-string/jumbo v1, "nf_offlineAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleResumeRequest not stopped, state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 442
    :cond_2
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 443
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->resetPersistentStatus()V

    .line 444
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->tryResumingPlayable(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)Z

    move-result v1

    .line 445
    if-eqz v1, :cond_3

    .line 446
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendDownloadResumedByUser(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V

    .line 450
    :goto_1
    const-string/jumbo v2, "nf_offlineAgent"

    const-string/jumbo v3, "handleResumeRequest playableId=%s resumed=%b"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 448
    :cond_3
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendDownloadStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    goto :goto_1
.end method

.method private handleThreadException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 336
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uncaughtException threadName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, p2, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 340
    :cond_0
    :try_start_0
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "uncaughtException stopping all downloads"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 342
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->stopAllDownloads(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Z

    move-result v0

    .line 343
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    const-string/jumbo v1, "nf_offlineAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wasAnythingStopped="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->onThreadException()V

    .line 347
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "uncaughtException stopped all downloads"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "passing to defaultExceptionHandler"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 353
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    const-string/jumbo v1, "nf_offlineAgent"

    const-string/jumbo v2, "setUncaughtExceptionHandler error stopping downloads"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private isOfflineFeatureDisabled()Z
    .locals 1

    .prologue
    .line 1183
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getOfflineConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->isOfflineFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDownloadPauseOrResumeByUser(Z)V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->setDownloadsPausedByUser(Z)V

    .line 497
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->setDownloadsAreStoppedByUser(Z)V

    .line 498
    return-void
.end method

.method private onGeoPlayabilityUpdated(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "onGeoPlayabilityUpdated"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$4;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$4;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private processNextCreateRequest()V
    .locals 4

    .prologue
    .line 214
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "processNextCreateRequest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mPlayableIdInFlight:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->findNextCreatingStatePlayable(Ljava/util/List;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_1

    .line 218
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    const-string/jumbo v1, "nf_offlineAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processNextCreateRequest processing playableId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mPlayableIdInFlight:Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->isUserLoggedIn()Z

    move-result v1

    if-nez v1, :cond_2

    .line 223
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleCreateRequest use not logged-in"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mPlayableIdInFlight:Ljava/lang/String;

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_USER_NOT_LOGGED_IN:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendResponseForCreate(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    .line 228
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->getCurrentOfflineStorageDirPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    .line 227
    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->ensureEnoughDiskSpaceForNewRequest(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 229
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "handleCreateRequest not enough space"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mPlayableIdInFlight:Ljava/lang/String;

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_NOT_ENOUGH_FREE_SPACE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendResponseForCreate(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 233
    :cond_3
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->initialize()V

    goto :goto_0

    .line 236
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processNextCreateRequest already processing, mPlayableIdInFlight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mPlayableIdInFlight:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reportDeleteConsolidatedLogging(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 626
    invoke-interface {p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    .line 627
    invoke-interface {p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v1, v2, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v3

    invoke-static {v1, v0, v4, v2, v3}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportDownloadEnded(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 631
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 632
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v3

    invoke-static {v1, v0, v4, v2, v3}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportRemoveCachedVideoEnded(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 636
    :goto_0
    return-void

    .line 634
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v1, v0, v4, v2, v4}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportRemoveCachedVideoEnded(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    goto :goto_0
.end method

.method private saveToRegistry()V
    .locals 2

    .prologue
    .line 1045
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "saveToRegistry"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRegistryDirty:Z

    .line 1047
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$13;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$13;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->post(Ljava/lang/Runnable;)Z

    .line 1058
    return-void
.end method

.method private sendAllDeleted(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->onAllPlayablesDeleted(Landroid/os/Handler;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1148
    return-void
.end method

.method private sendDownloadCompleted(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->onDownloadCompleted(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    .line 1122
    return-void
.end method

.method private sendDownloadDeleted(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->onOfflinePlayableDeleted(Landroid/os/Handler;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1127
    return-void
.end method

.method private sendDownloadResumedByUser(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V
    .locals 2

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->onDownloadResumedByUser(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    .line 1138
    return-void
.end method

.method private sendDownloadStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 5

    .prologue
    .line 1131
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getOxId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDxId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getStopReason()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->sendDownloadStopError(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1132
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getStopReason()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->onDownloadStopped(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1133
    return-void
.end method

.method private sendError(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->onError(Landroid/os/Handler;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1143
    return-void
.end method

.method private sendGeoPlayabilityRequest()V
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->getCompletedVideoIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 314
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$3;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$3;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 313
    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper;->sendGeoPlayabilityRequest(Ljava/util/List;Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$GeoPlayabilityCallBack;)V

    .line 320
    return-void
.end method

.method private sendLicenseRefreshDone(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->onLicenseRefreshDone(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1153
    return-void
.end method

.method private sendOfflineManifestFromMainThread(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;JLcom/netflix/mediaclient/android/app/Status;)V
    .locals 9

    .prologue
    .line 1537
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1538
    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendOfflineManifestFromMainThread offlineManifest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;JLcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1549
    return-void
.end method

.method private sendPlayWindowRenewDone(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->onPlayWindowRenewDone(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1158
    return-void
.end method

.method private sendProgress(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V
    .locals 2

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->onOfflinePlayableProgress(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V

    .line 1117
    return-void
.end method

.method private sendResponseForCreate(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1076
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "sendResponseForCreate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iput-object v5, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mPlayableIdInFlight:Ljava/lang/String;

    .line 1078
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->getOfflineViewableByPlayableId(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v0

    .line 1079
    if-nez v0, :cond_1

    .line 1080
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendResponseForCreate not found playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1086
    :cond_1
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1087
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->addCachedVideoButton:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportAddCachedVideoEnded(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 1088
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_WARNING_DL_N_TIMES_BEFORE_DATE:Lcom/netflix/mediaclient/StatusCode;

    if-ne v1, v2, :cond_2

    .line 1091
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setWarningStatus(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1093
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->DownloadLimitRequiresManualResume:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1104
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->doSaveToRegistryInBGThread(Landroid/content/Context;)V

    .line 1105
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->buildNewUiList()V

    .line 1106
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->onCreateRequestResponse(Landroid/os/Handler;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1107
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->processNextCreateRequest()V

    .line 1108
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1109
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->tryResumingPlayable(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)Z

    move-result v0

    .line 1110
    const-string/jumbo v1, "nf_offlineAgent"

    const-string/jumbo v2, "sendResponseForCreate playableId=%s resumed=%b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1096
    :cond_2
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    goto :goto_1

    .line 1100
    :cond_3
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setPersistentStatus(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1101
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->addCachedVideoButton:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportAddCachedVideoEnded(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 1102
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setCreateFailedState()V

    goto :goto_1
.end method

.method private serializeMetadataToDisc(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1557
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    .line 1560
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p2, v1, :cond_1

    .line 1561
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$19;

    invoke-direct {v2, p0, v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$19;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;Ljava/lang/String;)V

    invoke-interface {v1, p1, v3, v2}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 1614
    :cond_0
    :goto_0
    return-void

    .line 1576
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p2, v1, :cond_0

    .line 1577
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;

    invoke-direct {v2, p0, v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;Ljava/lang/String;)V

    invoke-interface {v1, p1, v3, v2}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    goto :goto_0
.end method

.method private startBackgroundThread()V
    .locals 3

    .prologue
    .line 643
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "nf_of_bg"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 644
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 645
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    .line 646
    return-void
.end method

.method private startDownloadIfAllowed()V
    .locals 5

    .prologue
    .line 937
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 938
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->getNextPlayableForDownload()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v0

    .line 939
    if-eqz v0, :cond_1

    .line 940
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 941
    const-string/jumbo v1, "nf_offlineAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "starting the download for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->startDownload()V

    .line 950
    :goto_0
    return-void

    .line 945
    :cond_1
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "no downloadable item found, count=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 948
    :cond_2
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "startDownloadIfAllowed user is not logged in"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startQueueIfRequired()V
    .locals 5

    .prologue
    .line 956
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 966
    :goto_0
    return-void

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDownloadAgentThreadPoolSize()I

    move-result v0

    .line 961
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 962
    const-string/jumbo v1, "nf_offlineAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Creating Volley RequestQueue with threadPoolSize of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_1
    new-instance v1, Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/android/volley/toolbox/NoCache;

    invoke-direct {v2}, Lcom/android/volley/toolbox/NoCache;-><init>()V

    new-instance v3, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->createHttpStack()Lcom/android/volley/toolbox/HttpStack;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    invoke-direct {v1, v2, v3, v0}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 965
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    goto :goto_0
.end method

.method private stopAllDownloads(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Z
    .locals 4

    .prologue
    .line 975
    const/4 v0, 0x0

    .line 976
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    .line 977
    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->isDownloading(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 978
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->stopDownload(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 979
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendDownloadStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    .line 980
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 982
    goto :goto_0

    .line 983
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private stopAllDownloadsAndPersistRegistry(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 2

    .prologue
    .line 988
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->stopAllDownloads(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Z

    move-result v0

    .line 989
    if-eqz v0, :cond_0

    .line 990
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "stopAllDownloadsAndPersistRegistry something was stopped"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->doSaveToRegistryInBGThread(Landroid/content/Context;)V

    .line 993
    :cond_0
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 649
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 651
    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 655
    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 656
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 658
    :cond_1
    return-void
.end method

.method private tryResumingPlayable(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)Z
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->canThisPlayableBeResumedByUser(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->startDownload()V

    .line 470
    const/4 v0, 0x1

    .line 474
    :goto_0
    return v0

    .line 472
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePrimaryProfileGuidIfMissing()V
    .locals 4

    .prologue
    .line 724
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getPrimaryProfileGuid()Ljava/lang/String;

    move-result-object v0

    .line 725
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->getPrimaryProfileGuid()Ljava/lang/String;

    move-result-object v1

    .line 726
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->setPrimaryProfileGuid(Ljava/lang/String;)V

    .line 728
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 729
    const-string/jumbo v1, "nf_offlineAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePrimaryProfileGuidIfMissing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_0
    return-void
.end method


# virtual methods
.method public abortManifestRequest(J)V
    .locals 3

    .prologue
    .line 1487
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1488
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$17;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;J)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->post(Ljava/lang/Runnable;)Z

    .line 1499
    :cond_0
    :goto_0
    return-void

    .line 1495
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1496
    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "abortManifestRequest OfflineAgent not ready error movieId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V
    .locals 2

    .prologue
    .line 818
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 819
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->addOfflineAgentListener(Landroid/os/Handler;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    .line 820
    return-void
.end method

.method public deleteAllOfflineContent()V
    .locals 1

    .prologue
    .line 867
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 868
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->addRequestToHandler(I)V

    .line 869
    return-void
.end method

.method public deleteOfflinePlayable(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 751
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 752
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->onDownloadPauseOrResumeByUser(Z)V

    .line 753
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->addRequestToHandler(ILjava/lang/String;)V

    .line 754
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 677
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAvailable:Z

    .line 679
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->agentDestroying()V

    .line 680
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    if-eqz v0, :cond_0

    .line 681
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->addRequestToHandler(I)V

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 684
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$8;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$8;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 691
    :cond_1
    return-void
.end method

.method protected doInit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 662
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "OfflineAgent doInit"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAvailable:Z

    .line 664
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$7;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$7;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 670
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->stopBackgroundThread()V

    .line 671
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->startBackgroundThread()V

    .line 672
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->addRequestToHandler(I)V

    .line 673
    return-void
.end method

.method public getCommandHandler()Lcom/netflix/mediaclient/service/IntentCommandHandler;
    .locals 0

    .prologue
    .line 932
    return-object p0
.end method

.method public getCurrentDownloadVideoQuality()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;
    .locals 1

    .prologue
    .line 861
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getVideoQualityFromPref()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    move-result-object v0

    return-object v0
.end method

.method public getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;
    .locals 1

    .prologue
    .line 794
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 795
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflinePlayableUiList:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;

    return-object v0
.end method

.method public getRequiresUnmeteredNetwork()Z
    .locals 1

    .prologue
    .line 847
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 848
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->requiresUnmeteredConnectionForDownload()Z

    move-result v0

    return v0
.end method

.method public handleCommand(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1170
    invoke-static {p1}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->getGroupType(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    move-result-object v0

    .line 1171
    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$21;->$SwitchMap$com$netflix$mediaclient$service$offline$agent$IntentCommandGroupType:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1176
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1177
    const-string/jumbo v1, "nf_offlineAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported IntentCommandGroupType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_0
    :goto_0
    return-void

    .line 1173
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadNotificationManager:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->handleDownloadNotificationIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isOfflineFeatureEnabled()Z
    .locals 1

    .prologue
    .line 704
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyPause(J)V
    .locals 0

    .prologue
    .line 1512
    return-void
.end method

.method public notifyPlay(J)V
    .locals 5

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    const/16 v1, 0x9

    .line 1505
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1504
    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1506
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1507
    return-void
.end method

.method public notifyPlayError(J)V
    .locals 3

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    const/16 v1, 0x9

    .line 1530
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1529
    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1531
    return-void
.end method

.method public notifyPlayProgress(JJ)V
    .locals 0

    .prologue
    .line 1524
    return-void
.end method

.method public notifyStop(J)V
    .locals 3

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    const/16 v1, 0x9

    .line 1518
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1517
    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1519
    return-void
.end method

.method public onAccountDataFetched()V
    .locals 2

    .prologue
    .line 1212
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1213
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "onAccountDataFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleMayBeNewUser()V

    .line 1215
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleLicenseRefreshForAll()V

    .line 1218
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->getGeoCountryCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 1219
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getGeoCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 1218
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper;->hasGeoCountryChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->sendGeoPlayabilityRequest()V

    .line 1222
    :cond_0
    return-void
.end method

.method public onAllMaintenanceJobDone()V
    .locals 2

    .prologue
    .line 1252
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "onAllMaintenanceJobDone"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->addRequestToHandler(I)V

    .line 1254
    return-void
.end method

.method public onStreamingPlayStartReceived()V
    .locals 1

    .prologue
    .line 1238
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1239
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1241
    :goto_0
    return-void

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->notifyStreamingStarted()V

    goto :goto_0
.end method

.method public onStreamingPlayStopReceived()V
    .locals 1

    .prologue
    .line 1245
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1246
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1248
    :goto_0
    return-void

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mDownloadController:Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->notifyStreamingStopped()V

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mOfflineManifestManager:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;->onTrimMemory(I)V

    .line 698
    :cond_0
    return-void
.end method

.method public onUserAccountActive()V
    .locals 2

    .prologue
    .line 1204
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1205
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "onUserAccountActive"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->handleMayBeNewUser()V

    .line 1207
    return-void
.end method

.method public onUserAccountInActive()V
    .locals 2

    .prologue
    .line 1189
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1190
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    :goto_0
    return-void

    .line 1192
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->AccountInActive:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->stopAllDownloadsAndPersistRegistry(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1193
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$14;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$14;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public pauseDownload(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 802
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 803
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->onDownloadPauseOrResumeByUser(Z)V

    .line 804
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->addRequestToHandler(ILjava/lang/String;)V

    .line 805
    return-void
.end method

.method public refreshUIData()V
    .locals 0

    .prologue
    .line 1040
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->buildNewUiList()V

    .line 1041
    return-void
.end method

.method public removeOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V
    .locals 2

    .prologue
    .line 825
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 826
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mAgentListenerHelper:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->removeOfflineAgentListener(Landroid/os/Handler;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    .line 827
    return-void
.end method

.method public requestGeoPlayabilityUpdate()V
    .locals 1

    .prologue
    .line 874
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 875
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->addRequestToHandler(I)V

    .line 876
    return-void
.end method

.method public requestOfflineManifest(JLcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;)V
    .locals 3

    .prologue
    .line 1433
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1434
    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestOfflineManifest movieId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1437
    const/4 v0, 0x0

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_OFFLINE_AGENT_NOT_READY:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-interface {p3, p1, p2, v0, v1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;->onManifestResponse(JLcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1468
    :goto_0
    return-void

    .line 1441
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1442
    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestOfflineManifest posting runnable movieId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$16;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$16;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;JLcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public requestOfflineViewing(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 3

    .prologue
    .line 710
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestOfflineViewing playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->updatePrimaryProfileGuidIfMissing()V

    .line 714
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->onDownloadPauseOrResumeByUser(Z)V

    .line 715
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$CreateRequest;

    invoke-direct {v0, p0, p1, p3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$CreateRequest;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->serializeMetadataToDisc(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 718
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 719
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 720
    return-void
.end method

.method public requestRefreshLicenseForPlayable(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 881
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestRefreshLicenseForPlayable playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->post(Ljava/lang/Runnable;)Z

    .line 900
    return-void
.end method

.method public requestRenewPlayWindowForPlayable(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 905
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestRenewPlayWindowForPlayable playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$12;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$12;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->post(Ljava/lang/Runnable;)Z

    .line 923
    return-void
.end method

.method public resumeDownload(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 810
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 811
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->onDownloadPauseOrResumeByUser(Z)V

    .line 812
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->addRequestToHandler(ILjava/lang/String;)V

    .line 813
    return-void
.end method

.method public setDownloadVideoQuality(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;)V
    .locals 3

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "download_video_quality"

    .line 855
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 854
    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 856
    return-void
.end method

.method public setRequiresUnmeteredNetwork(Z)V
    .locals 3

    .prologue
    .line 832
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 833
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRequiresUnmeteredNetwork requires="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mBackGroundHandler:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$10;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$10;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Z)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->post(Ljava/lang/Runnable;)Z

    .line 842
    return-void
.end method

.method public setSkipAdultContent(Z)Z
    .locals 1

    .prologue
    .line 784
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mSkipAdultContent:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 785
    :goto_0
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->mSkipAdultContent:Z

    .line 786
    return v0

    .line 784
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
