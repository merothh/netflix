.class public Lcom/netflix/mediaclient/service/mdx/MdxAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "MdxAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController$PropertyUpdateListener;
.implements Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$MdxImageLoaderInterface;
.implements Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog$SessionWatchDogInterface;
.implements Lcom/netflix/mediaclient/service/mdx/SwitchTarget$SwitchTargetInterface;
.implements Lcom/netflix/mediaclient/service/mdx/TargetSelector$TargetSelectorInterface;
.implements Lcom/netflix/mediaclient/service/mdx/cast/CastAgent;
.implements Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;
.implements Lcom/netflix/mediaclient/servicemgr/IMdx;


# static fields
.field private static final DEFAULT_INTEGER:I = -0x1

.field public static final EVENT485_TRANSFERFROM_LOCAL:Ljava/lang/String; = "local_playback_transfer"

.field public static final EVENT526_TYPE_FAIL:Ljava/lang/String; = "association_failed"

.field public static final EVENT526_TYPE_FOUND:Ljava/lang/String; = "found"

.field public static final EVENT526_TYPE_LOST:Ljava/lang/String; = "lost"

.field public static final EVENT537_TYPE_CANCEL_PLAYBACK:Ljava/lang/String; = "cancel playback"

.field public static final EVENT537_TYPE_LOCAL_PLAYBACK:Ljava/lang/String; = "local playback"

.field public static final EVENT537_TYPE_TARGET_PLAYBACK:Ljava/lang/String; = "target playback"

.field private static final TAG:Ljava/lang/String; = "nf_mdx_MdxAgent"


# instance fields
.field private mBifManager:Lcom/netflix/mediaclient/media/BifManager;

.field private mBoxartBitmap:Landroid/graphics/Bitmap;

.field private mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

.field private mCommandHandler:Lcom/netflix/mediaclient/service/mdx/CommandHandler;

.field private mCurrentTargetUuid:Ljava/lang/String;

.field private mDisableWebSocket:Z

.field private final mDiscoveryEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

.field private mEnableCast:Z

.field private final mInitMdxNative:Ljava/lang/Runnable;

.field private final mMdxAgentWorkerHandler:Landroid/os/Handler;

.field private mMdxAgentWorkerThread:Landroid/os/HandlerThread;

.field private mMdxBoxartLoader:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

.field private mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

.field private final mMdxNativeExitCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

.field private mMdxNrdpLogger:Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

.field private mMdxSessionWatchDog:Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;

.field private mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

.field private mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

.field private final mStartStopErrorReceiver:Landroid/content/BroadcastReceiver;

.field private mStartTime:I

.field private final mStateEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

.field private mSwitchTarget:Lcom/netflix/mediaclient/service/mdx/SwitchTarget;

.field private mTargetDialUuid:Ljava/lang/String;

.field private mTargetFriendlyName:Ljava/lang/String;

.field private mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

.field private final mTargetMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetRestartingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetSelector:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

.field private mTargetUuid:Ljava/lang/String;

.field private mTrackId:I

.field private final mUserAgentReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIsLogin:Z

.field private mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

.field private mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

.field private mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

.field private mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mUserIsLogin:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    new-instance v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    new-instance v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDisableWebSocket:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mEnableCast:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetRestartingList:Ljava/util/ArrayList;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mInitMdxNative:Ljava/lang/Runnable;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStateEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDiscoveryEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStartStopErrorReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$4;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mUserAgentReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNativeExitCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MdxAgentWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetSelector;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetSelector:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Lcom/netflix/mediaclient/service/mdx/TargetSelector;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetSelector:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNativeExitCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetRestartingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/cast/CastManager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNrdpLogger:Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->sessionGone()V

    return-void
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->isSameDevice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mInitMdxNative:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getDeviceFromUuid(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->ensureManagers()V

    return-void
.end method

.method static synthetic access$2400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MediaSessionController;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->clearVideoDetails()V

    return-void
.end method

.method static synthetic access$2900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->resetTargetSelection()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->updateMdxRemoteClient(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxSessionWatchDog:Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->lockWiFi()V

    return-void
.end method

.method static synthetic access$3500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->releaseWiFi()V

    return-void
.end method

.method static synthetic access$3800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/SwitchTarget;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mSwitchTarget:Lcom/netflix/mediaclient/service/mdx/SwitchTarget;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->addStateEventListener()V

    return-void
.end method

.method static synthetic access$4000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->fetchVideoDetail(ZZ)V

    return-void
.end method

.method static synthetic access$4100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxBoxartLoader:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->createBifManager(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTrackId:I

    return v0
.end method

.method static synthetic access$4600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStartTime:I

    return v0
.end method

.method static synthetic access$4700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->updateMdxNotification(ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->addDiscoveryEventListener()V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetManager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->addPairingEventListener(Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->addSessionEventListener(Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDisableWebSocket:Z

    return v0
.end method

.method private addDiscoveryEventListener()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_devicefound:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDiscoveryEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_devicelost:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDiscoveryEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_remoteDeviceReady:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDiscoveryEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    return-void
.end method

.method private addPairingEventListener(Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_pair_pairingresponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_pair_regpairresponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_pair_pairingdeleted:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    return-void
.end method

.method private addSessionEventListener(Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_startSessionResponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_messagedelivered:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_message:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_messagingerror:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_sessionended:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    return-void
.end method

.method private addStateEventListener()V
    .locals 3

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->removeStateEventListener()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_init:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStateEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_initerror:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStateEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_mdxstate:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStateEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_targetrestarting:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStateEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    return-void
.end method

.method private clearVideoDetails()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-void
.end method

.method private createBifManager(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/BifManager;->release()V

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/media/BifManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/media/BifManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    return-void
.end method

.method private createNotificationButtonIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "uuid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private ensureManagers()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-static {v0, v1, p0, v2}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerFactory;->create(Landroid/content/Context;ZLcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    :cond_1
    return-void
.end method

.method private fetchVideoDetail(ZZ)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    if-nez v0, :cond_1

    :cond_0
    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    if-eqz v0, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget v0, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    :goto_0
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;ZZI)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v3, v1}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget v0, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget v2, v2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3, v0}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    goto :goto_1
.end method

.method private getCurrentEpisodeTitle()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080170

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isNSRE()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080171

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getDeviceFromUuid(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;
    .locals 7

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    iget-object v4, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    iget-object v5, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    invoke-static {v5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit v2

    goto :goto_0

    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method private getNextEpisodeTitle()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080170

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getEpisodeNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isNSRE()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080171

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleAccountConfig()V
    .locals 6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isDisableWebsocket()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDisableWebSocket:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isEnableCast()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mEnableCast:Z

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mEnableCast:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNrdpLogger:Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->getCastWhiteList()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->setCastWhiteList(Lorg/json/JSONArray;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->setTargetId(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    goto :goto_0
.end method

.method private isSameDevice(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    monitor-exit v3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    iget-object v5, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    iget-object v0, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_6
    monitor-exit v3

    move v0, v1

    goto :goto_0

    :cond_7
    monitor-exit v3

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private lockWiFi()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->releaseWiFi()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "nf_mdx_MdxAgent"

    const-string/jumbo v2, "WiFi lock acquiring..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    const-string/jumbo v2, "nf_mdx_MdxAgent"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "WiFi lock acquired."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    const-string/jumbo v2, "nf_mdx_MdxAgent"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2
    return-void
.end method

.method private reconcileSelectedTargetInfo()V
    .locals 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getDeviceFromUuid(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getDeviceFromUuid(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getDeviceFromUuid(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetUuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    move v1, v2

    :cond_2
    :goto_1
    iget-object v3, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    iget-object v4, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    iget-object v0, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->friendlyName:Ljava/lang/String;

    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iput-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetUuid:Ljava/lang/String;

    move v1, v2

    :cond_3
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetDialUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iput-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetDialUuid:Ljava/lang/String;

    move v1, v2

    :cond_4
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetFriendlyName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetFriendlyName:Ljava/lang/String;

    move v1, v2

    :cond_5
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetSelector:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetSelector:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetDialUuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->updateSelectedTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetDialUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getDeviceFromUuid(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetDialUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getDeviceFromUuid(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetDialUuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    move v1, v2

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetFriendlyName:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetFriendlyName:Ljava/lang/String;

    iget-object v3, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->friendlyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v1, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    :cond_9
    :goto_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MdxAgent: taregt no longer exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    iget-object v0, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    goto :goto_2

    :cond_b
    iget-object v3, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    move v1, v2

    goto/16 :goto_1
.end method

.method private registerStartStopReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKEND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKSTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_POSTPLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_SIMPLE_PLAYBACKSTATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStartStopErrorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private releaseWiFi()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "WiFi lock was held, release..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "WiFi lock released."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method

.method private removeDiscoveryEventListener()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_devicefound:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDiscoveryEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_devicelost:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDiscoveryEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_remoteDeviceReady:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDiscoveryEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    return-void
.end method

.method private removePairingEventListener(Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_pair_pairingresponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_pair_regpairresponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_pair_pairingdeleted:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    return-void
.end method

.method private removeSessionEventListener(Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_startSessionResponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_messagedelivered:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_message:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_messagingerror:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_sessionended:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    return-void
.end method

.method private removeStateEventListener()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_init:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStateEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_initerror:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStateEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_mdxstate:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStateEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_targetrestarting:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStateEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    return-void
.end method

.method private resetTargetSelection()V
    .locals 5

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: resetTargetSelection"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetUuid:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetDialUuid:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetFriendlyName:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetSelector:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetSelector:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetDialUuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->selectNewTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sendVolumeUpdateBroadcast(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_SETVOLUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "volume"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private sessionGone()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->targetGone(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    const/16 v2, 0xc9

    const-string/jumbo v3, "stop connecting to target"

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->error(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->playbackEnd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unregisterStartStopReceiver()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStartStopErrorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_mdx_MdxAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregistermStartStopReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateMdxNotification(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->ensureManagers()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setTitlesNotify(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-virtual {v0, p2, p4}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->updateMetadata(Ljava/lang/String;Z)V

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    move-object p2, p3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateMdxRemoteClient(Z)V
    .locals 5

    const/16 v4, 0x15

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v0, :cond_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    :goto_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_6

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080199

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_2
    if-eqz p1, :cond_5

    instance-of v1, v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getNextEpisodeTitle()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v3

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v3, p1, v0, v4}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->start(ZLcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {v0, v2, v1}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->setTitles(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentTitle()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getCurrentEpisodeTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    if-ge v1, v4, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->setTitles(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mInitMdxNative:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->unregisterUserAgentReceiver()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removePropertyUpdateListener()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->removeStateEventListener()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->removeDiscoveryEventListener()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->removePairingEventListener(Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->removeSessionEventListener(Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/BifManager;->release()V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->stop()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->destroy()V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->destroy()V

    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->unregisterStartStopReceiver()V

    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: mMdxAgentWorkerThread interrupted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->destroy()V

    goto :goto_1
.end method

.method public disconnectFromCast()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->disconnect()V

    :cond_0
    return-void
.end method

.method protected doInit()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "nf_mdx_MdxAgent"

    const-string/jumbo v3, "MdxAgent: doInit"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getMdxController()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;-><init>(Lcom/netflix/mediaclient/javabridge/ui/Nrdp;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNrdpLogger:Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/TargetManager;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNrdpLogger:Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/netflix/mediaclient/service/mdx/TargetManager;-><init>(Lcom/netflix/mediaclient/service/mdx/NotifierInterface;Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/CommandHandler;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/service/mdx/CommandHandler;-><init>(Lcom/netflix/mediaclient/service/mdx/CommandInterface;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCommandHandler:Lcom/netflix/mediaclient/service/mdx/CommandHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCommandHandler:Lcom/netflix/mediaclient/service/mdx/CommandHandler;

    if-nez v2, :cond_2

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INTERNAL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NRD_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNativeExitCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetRestartingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    invoke-interface {v2, p0}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->setPropertyUpdateListener(Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController$PropertyUpdateListener;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/TransactionId;->setTransactionIdSource(Lcom/netflix/mediaclient/javabridge/ui/Nrdp;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "nf_mdx_MdxAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MdxAgent: change XID base from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->now()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/netflix/mediaclient/service/mdx/MdxAgent$1;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$1;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    invoke-direct {v2, v3, p0}, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;-><init>(Lcom/netflix/mediaclient/service/mdx/TargetManager;Lcom/netflix/mediaclient/service/mdx/SwitchTarget$SwitchTargetInterface;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mSwitchTarget:Lcom/netflix/mediaclient/service/mdx/SwitchTarget;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "nf_mdx_MdxAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MdxAgent: doInit mCurrentTargetUuid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v2, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, p0, v5}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$MdxImageLoaderInterface;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxBoxartLoader:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog$SessionWatchDogInterface;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxSessionWatchDog:Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->registerUserAgentReceiver()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfileGuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->isUserLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_1
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->notifyIsUserLogin(Z)V

    :goto_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->registerStartStopReceiver()V

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_7

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    :goto_3
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: userAgent is not ready yet, skip init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    goto :goto_3
.end method

.method public getBifFrame(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/media/BifManager;->getIndexFrame(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTarget()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MdxAgent: getCurrentTarget : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTargetCapabilities()Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->getTargetCapabilities()Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getMdxNotification(Z)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->ensureManagers()V

    if-eqz v0, :cond_5

    iget-boolean v1, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-boolean v2, v2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget v2, v2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogId:I

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget v2, v2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogId:I

    if-eq v1, v2, :cond_2

    :cond_1
    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    invoke-direct {p0, v3, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->fetchVideoDetail(ZZ)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->getNotification(Z)Landroid/util/Pair;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: videoIds are all same"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->movieMetaDataAvailable(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setBoxart(Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setTitlesNotify(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->getNotification(Z)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: new videoIds is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getNoActionIntent()Landroid/app/PendingIntent;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getPauseIntent()Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_PAUSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->createNotificationButtonIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getPlayNextIntent()Landroid/app/PendingIntent;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    instance-of v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.MDX_PLAY_VIDEOIDS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getNextEpisodeId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "episodeId"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "catalogId"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "playNext"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->createNotificationButtonIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getResumeIntent()Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_RESUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->createNotificationButtonIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->getSharedState(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/MdxSharedState;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSkipbackIntent(I)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_SKIP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->createNotificationButtonIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getStopIntent()Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->createNotificationButtonIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getTargetList()[Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Landroid/util/Pair;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    iget-object v5, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    iget-object v6, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    iget-object v7, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->friendlyName:Ljava/lang/String;

    invoke-static {v6}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v0, v1, 0x1

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_mdx_MdxAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MdxAgent: getTargetList : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    move v1, v0

    goto :goto_1

    :cond_2
    invoke-static {v5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v0, v1, 0x1

    invoke-static {v5, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_mdx_MdxAgent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MdxAgent: getTargetList : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    const-string/jumbo v5, "nf_mdx_MdxAgent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MdxAgent: uuid and dialUuid are invalid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MdxAgent: getTargetList has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " targets"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto/16 :goto_0
.end method

.method public getVideoDetail()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object v0
.end method

.method public getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    return-object v0
.end method

.method public getVideoIdsPostplay()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    return-object v0
.end method

.method public handleCommand(Landroid/content/Intent;)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->isTargetHaveContext(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getDeviceFromUuid(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->targetSelected(Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;)V

    :cond_0
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.MDX"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_PLAY_VIDEOIDS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "uuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string/jumbo v1, "nf_mdx_MdxAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MdxAgent: MDX_PLAY_VIDEOIDS is for uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "vs. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v7

    :cond_2
    const-string/jumbo v0, "catalogId"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v0, "episodeId"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v0, "trackId"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_3

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v3, "MdxAgent: MDX_PLAY_VIDEOIDS has invalid trackId"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0xd2a38f

    :cond_3
    const-string/jumbo v3, "time"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTrackId:I

    iput v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStartTime:I

    if-ne v2, v4, :cond_f

    move v0, v6

    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "nf_mdx_MdxAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MdxAgent: PLAYER_PLAY existing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-boolean v5, v5, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",catalogId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget v5, v5, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",episodeId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget v5, v5, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "nf_mdx_MdxAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MdxAgent: PLAYER_PLAY request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",catalogId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",episodeId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v3, "playNext"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->stopAllNotifications()V

    :cond_5
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-boolean v3, v3, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    if-ne v3, v0, :cond_6

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget v3, v3, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogId:I

    if-ne v3, v1, :cond_6

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget v3, v3, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    if-eq v3, v2, :cond_8

    :cond_6
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->commandPlayReceived(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iput-boolean v0, v3, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iput v1, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogId:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iput v2, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/BifManager;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    :cond_7
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDXUPDATE_POSTPLAY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v7, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->fetchVideoDetail(ZZ)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: videoIds are same, start play"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-object v2, v2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogIdUrl:Ljava/lang/String;

    iget v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTrackId:I

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-object v4, v4, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeIdUrl:Ljava/lang/String;

    iget v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStartTime:I

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->playerPlay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->movieMetaDataAvailable(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->logPlaystart(Z)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_SELECT_TARGET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "uuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nf_mdx_MdxAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MdxAgent: select target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->setCurrentTarget(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.MDXRCC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: get nf_mdx_RemoteControlClient intent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "uuid"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_TOGGLE_PAUSE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: get nf_mdx_RemoteControlClient intent toggle pause"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_b

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_RESUME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_b
    :goto_2
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_STOP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->stopAllNotifications()V

    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCommandHandler:Lcom/netflix/mediaclient/service/mdx/CommandHandler;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/CommandHandler;->handleCommandIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_PAUSE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_e
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_SETVOLUME"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "volume"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->sendVolumeUpdateBroadcast(Landroid/content/Context;I)V

    goto :goto_3

    :cond_f
    move v0, v7

    goto/16 :goto_1
.end method

.method public hasActiveSession()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->hasActiveSession()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBifReady()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/BifManager;->isBifReady()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->isPaused()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTargetLaunchingOrLaunched()Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "checking isTargetLaunchingOrLaunched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->isTargetLaunchingOrLaunched(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method logPlaystart(Z)V
    .locals 5

    const-string/jumbo v0, ""

    if-eqz p1, :cond_0

    const-string/jumbo v0, "local_playback_transfer"

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-object v2, v2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogIdUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-object v3, v3, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeIdUrl:Ljava/lang/String;

    iget v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTrackId:I

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;->logMdxPlaybackStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public declared-synchronized notifyIsUserLogin(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mUserIsLogin:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mUserIsLogin:Z

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mUserIsLogin:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->handleAccountConfig()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mInitMdxNative:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mInitMdxNative:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "notifyIsUserLogin: logout, was not ready ignore"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "notifyIsUserLogin: logout, exit native"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->resetTargetSelection()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->stop()V

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNativeExitCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->exit()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->removeDiscoveryEventListener()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->removePairingEventListener(Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->removeSessionEventListener(Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->clearVideoDetails()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->sessionGone()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetRestartingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->notready()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onBitmapReady(Landroid/graphics/Bitmap;)V
    .locals 2

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->setBoxart(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setBoxartNotify(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->updateMetadata(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onGetTimeOfMostRecentIncomingMessage()J
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->getTimeOfMostRecentIncomingMessage()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public onIsReady(Z)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MdxAgent: onIsReady "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onRemoteDeviceMap(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MdxAgent: onRemoteDeviceMap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->reconcileSelectedTargetInfo()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->targetList()V

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

.method public onSessionWatchDogExpired()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->playbackEnd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSetToNewTarget(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->setCurrentTarget(Ljava/lang/String;)V

    return-void
.end method

.method public onStickinessExpired()V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->setCurrentTarget(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->targetList()V

    :cond_0
    return-void
.end method

.method public onTargetSelectorLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetUuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetDialUuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetFriendlyName:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->setTargetId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public prefetchVideo(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getCastPrefetchSharedSecret()Landroid/util/Pair;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    if-nez v0, :cond_1

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "castManager is null "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v1, :cond_2

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "prefetchVideo shared secret is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3, v0, v1}, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "nf_mdx_MdxAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prefetchVideo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->prefetchVideo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method registerUserAgentReceiver()V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mUserAgentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->getNotificationIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public setCurrentTarget(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->sessionGone()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->clearVideoDetails()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v0

    const-string/jumbo v1, "local playback"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;->logMdxTargetSelection(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->resetTargetSelection()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->clearVideoDetails()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getDeviceFromUuid(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MdxAgent: no such device for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->resetTargetSelection()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->targetSelected(Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v1

    const-string/jumbo v2, "target playback"

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;->logMdxTargetSelection(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetUuid:Ljava/lang/String;

    iget-object v1, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetDialUuid:Ljava/lang/String;

    iget-object v0, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->friendlyName:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetFriendlyName:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetSelector:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetSelector:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetDialUuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->selectNewTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDialUuidAsCurrentTarget(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getDeviceFromUuid(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->setCurrentTarget(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopAllNotifications()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "Stop all notifications"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->ensureManagers()V

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->stop()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->stopNotification(Lcom/netflix/mediaclient/service/NetflixService;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->cancelNotification()V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->finishMDXController(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;

    instance-of v1, v0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->resetPostplayState()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->stopMediaSession()V

    goto :goto_0
.end method

.method public stopPostplayNotification()V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->ensureManagers()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->stopPostplayNotification(Lcom/netflix/mediaclient/service/NetflixService;)V

    return-void
.end method

.method public switchPlaybackFromTarget(Ljava/lang/String;I)V
    .locals 6

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchPlaybackFromTarget to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mSwitchTarget:Lcom/netflix/mediaclient/service/mdx/SwitchTarget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mSwitchTarget:Lcom/netflix/mediaclient/service/mdx/SwitchTarget;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTrackId:I

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->startSwitch(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;II)V

    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v0

    const-string/jumbo v1, "local playback"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;->logMdxTargetSelection(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v0

    const-string/jumbo v1, "target playback"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;->logMdxTargetSelection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "fling playback from local to target"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->logPlaystart(Z)V

    goto :goto_0
.end method

.method public transferPlaybackFromLocal()V
    .locals 2

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "transfer playback from local to target"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->logPlaystart(Z)V

    return-void
.end method

.method public uiComingToForeground()V
    .locals 2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mUserIsLogin:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: UI coming to foreground, try restart discovery"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->restartCastDiscoveryIfNeeded()V

    :cond_0
    return-void
.end method

.method unregisterUserAgentReceiver()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mUserAgentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_mdx_MdxAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterUserAgenReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateMdxNotificationAndLockscreenWithNextSeries(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iput-boolean v3, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, v1, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->ensureManagers()V

    invoke-direct {p0, v4, v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->fetchVideoDetail(ZZ)V

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->start(ZLcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {v0, v4, v4, v3}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->setState(ZZZ)V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getMdxNotification(Z)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    invoke-interface {v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->startNotification(Landroid/app/Notification;Lcom/netflix/mediaclient/service/NetflixService;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, v4, v4, v3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setUpNextStateNotify(ZZZ)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-virtual {v0, v4, v3}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->updateState(ZZ)V

    goto :goto_1
.end method
