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

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 87
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mUserIsLogin:Z

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    .line 102
    new-instance v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    .line 147
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDisableWebSocket:Z

    .line 150
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mEnableCast:Z

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetRestartingList:Ljava/util/ArrayList;

    .line 610
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mInitMdxNative:Ljava/lang/Runnable;

    .line 794
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStateEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    .line 893
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDiscoveryEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    .line 1270
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStartStopErrorReceiver:Landroid/content/BroadcastReceiver;

    .line 1850
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$4;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mUserAgentReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 164
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNativeExitCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 165
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    .line 167
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MdxAgentWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerThread:Landroid/os/HandlerThread;

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 169
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerHandler:Landroid/os/Handler;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetSelector;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetSelector:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Lcom/netflix/mediaclient/service/mdx/TargetSelector;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetSelector:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNativeExitCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetRestartingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/cast/CastManager;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNrdpLogger:Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->sessionGone()V

    return-void
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->isSameDevice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mInitMdxNative:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getDeviceFromUuid(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->ensureManagers()V

    return-void
.end method

.method static synthetic access$2400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MediaSessionController;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->clearVideoDetails()V

    return-void
.end method

.method static synthetic access$2900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->resetTargetSelection()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Z)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->updateMdxRemoteClient(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxSessionWatchDog:Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->lockWiFi()V

    return-void
.end method

.method static synthetic access$3500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->releaseWiFi()V

    return-void
.end method

.method static synthetic access$3800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/SwitchTarget;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mSwitchTarget:Lcom/netflix/mediaclient/service/mdx/SwitchTarget;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->addStateEventListener()V

    return-void
.end method

.method static synthetic access$4000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;ZZ)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->fetchVideoDetail(ZZ)V

    return-void
.end method

.method static synthetic access$4100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxBoxartLoader:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->createBifManager(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTrackId:I

    return v0
.end method

.method static synthetic access$4600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStartTime:I

    return v0
.end method

.method static synthetic access$4700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->updateMdxNotification(ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->addDiscoveryEventListener()V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetManager;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->addPairingEventListener(Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->addSessionEventListener(Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDisableWebSocket:Z

    return v0
.end method

.method private addDiscoveryEventListener()V
    .locals 3

    .prologue
    .line 896
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_devicefound:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 897
    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDiscoveryEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    .line 896
    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 899
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_devicelost:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 900
    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDiscoveryEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    .line 899
    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 902
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_remoteDeviceReady:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 903
    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDiscoveryEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    .line 902
    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 905
    return-void
.end method

.method private addPairingEventListener(Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 2

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_pair_pairingresponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 1017
    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1016
    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 1018
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_pair_regpairresponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 1019
    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1018
    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 1020
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_pair_pairingdeleted:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 1021
    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1020
    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 1022
    return-void
.end method

.method private addSessionEventListener(Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_startSessionResponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 1035
    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1034
    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 1036
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_messagedelivered:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 1037
    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1036
    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 1038
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_message:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 1039
    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1038
    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 1040
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_messagingerror:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 1041
    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1040
    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 1042
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_sessionended:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 1043
    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1042
    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 1044
    return-void
.end method

.method private addStateEventListener()V
    .locals 3

    .prologue
    .line 798
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->removeStateEventListener()V

    .line 800
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_init:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStateEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 802
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_initerror:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStateEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 804
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_mdxstate:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStateEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 806
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_targetrestarting:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStateEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 808
    return-void
.end method

.method private clearVideoDetails()V
    .locals 1

    .prologue
    .line 1720
    new-instance v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    .line 1721
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 1722
    return-void
.end method

.method private createBifManager(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/BifManager;->release()V

    .line 1142
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/media/BifManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/media/BifManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    .line 1143
    return-void
.end method

.method private createNotificationButtonIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 1795
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 1796
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "uuid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    .line 1797
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1805
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

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    if-nez v0, :cond_0

    .line 1256
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1257
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    .line 1261
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    if-nez v0, :cond_1

    .line 1262
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-static {v0, v1, p0, v2}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerFactory;->create(Landroid/content/Context;ZLcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    .line 1264
    :cond_1
    return-void
.end method

.method private fetchVideoDetail(ZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1659
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    if-nez v0, :cond_1

    :cond_0
    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    if-eqz v0, :cond_3

    .line 1662
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget v0, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    .line 1665
    :goto_0
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;ZZI)V

    .line 1667
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    move-result-object v2

    .line 1668
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1667
    invoke-interface {v2, v0, v3, v1}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 1675
    :goto_1
    return-void

    .line 1662
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget v0, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    goto :goto_0

    .line 1670
    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Z)V

    .line 1672
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget v2, v2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogId:I

    .line 1673
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1672
    invoke-interface {v1, v2, v3, v0}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    goto :goto_1
.end method

.method private getCurrentEpisodeTitle()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1189
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-nez v0, :cond_1

    .line 1190
    const/4 v0, 0x0

    .line 1202
    :cond_0
    :goto_0
    return-object v0

    .line 1192
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    .line 1194
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080170

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 1196
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 1197
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 1198
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1194
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1199
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isNSRE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1200
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

    .prologue
    const/4 v1, 0x0

    .line 1063
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1064
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    monitor-exit v2

    move-object v0, v1

    .line 1077
    :goto_0
    return-object v0

    .line 1067
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

    .line 1068
    iget-object v4, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    .line 1069
    iget-object v5, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    .line 1070
    invoke-static {v5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1071
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1072
    monitor-exit v2

    goto :goto_0

    .line 1078
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1073
    :cond_2
    :try_start_1
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1074
    monitor-exit v2

    goto :goto_0

    .line 1077
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method private getNextEpisodeTitle()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1206
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-nez v0, :cond_0

    .line 1207
    const/4 v0, 0x0

    .line 1217
    :goto_0
    return-object v0

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    .line 1211
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080170

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 1212
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 1213
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getEpisodeNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1211
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1214
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isNSRE()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1215
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

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isDisableWebsocket()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDisableWebSocket:Z

    .line 677
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isEnableCast()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mEnableCast:Z

    .line 678
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mEnableCast:Z

    if-eqz v0, :cond_1

    .line 679
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerHandler:Landroid/os/Handler;

    .line 680
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNrdpLogger:Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    .line 681
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->getCastWhiteList()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->setCastWhiteList(Lorg/json/JSONArray;)V

    .line 682
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->setTargetId(Ljava/lang/String;)V

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    goto :goto_0
.end method

.method private isSameDevice(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1087
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 1108
    :goto_0
    return v0

    .line 1091
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1092
    goto :goto_0

    .line 1095
    :cond_2
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1096
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1097
    monitor-exit v3

    move v0, v2

    goto :goto_0

    .line 1099
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

    .line 1100
    iget-object v5, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    .line 1101
    iget-object v0, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    .line 1102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1103
    :cond_5
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1104
    :cond_6
    monitor-exit v3

    move v0, v1

    goto :goto_0

    .line 1107
    :cond_7
    monitor-exit v3

    move v0, v2

    .line 1108
    goto :goto_0

    .line 1107
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

    .prologue
    .line 1815
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->releaseWiFi()V

    .line 1816
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1818
    if-eqz v0, :cond_0

    .line 1819
    const-string/jumbo v1, "nf_mdx_MdxAgent"

    const-string/jumbo v2, "WiFi lock acquiring..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    const/4 v1, 0x3

    const-string/jumbo v2, "nf_mdx_MdxAgent"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 1822
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1823
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "WiFi lock acquired."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1827
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 1828
    const/4 v1, 0x1

    const-string/jumbo v2, "nf_mdx_MdxAgent"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1831
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1832
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1834
    :cond_2
    return-void
.end method

.method private reconcileSelectedTargetInfo()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 719
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    const/4 v1, 0x0

    .line 724
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getDeviceFromUuid(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v0

    .line 725
    if-nez v0, :cond_b

    .line 726
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getDeviceFromUuid(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 727
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getDeviceFromUuid(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v0

    .line 728
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetUuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    move v1, v2

    .line 765
    :cond_2
    :goto_1
    iget-object v3, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    .line 766
    iget-object v4, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    .line 767
    iget-object v0, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->friendlyName:Ljava/lang/String;

    .line 769
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetUuid:Ljava/lang/String;

    .line 770
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 771
    iput-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetUuid:Ljava/lang/String;

    move v1, v2

    .line 774
    :cond_3
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetDialUuid:Ljava/lang/String;

    .line 775
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 776
    iput-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetDialUuid:Ljava/lang/String;

    move v1, v2

    .line 779
    :cond_4
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetFriendlyName:Ljava/lang/String;

    .line 780
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 781
    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetFriendlyName:Ljava/lang/String;

    move v1, v2

    .line 785
    :cond_5
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetSelector:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetSelector:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetDialUuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->updateSelectedTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 730
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetDialUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getDeviceFromUuid(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 731
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetDialUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getDeviceFromUuid(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v0

    .line 732
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetDialUuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    move v1, v2

    .line 733
    goto :goto_1

    .line 735
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

    .line 736
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetFriendlyName:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetFriendlyName:Ljava/lang/String;

    iget-object v3, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->friendlyName:Ljava/lang/String;

    .line 737
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 739
    iget-object v1, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 740
    iget-object v0, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    .line 748
    :cond_9
    :goto_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
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

    .line 742
    :cond_a
    iget-object v0, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    goto :goto_2

    .line 755
    :cond_b
    iget-object v3, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    .line 756
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 757
    iget-object v1, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    move v1, v2

    .line 758
    goto/16 :goto_1
.end method

.method private registerStartStopReceiver()V
    .locals 3

    .prologue
    .line 1678
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKEND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1679
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKSTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1680
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_POSTPLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1681
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_SIMPLE_PLAYBACKSTATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1682
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1683
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1684
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1685
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1687
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStartStopErrorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1688
    return-void
.end method

.method private releaseWiFi()V
    .locals 2

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1838
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "WiFi lock was held, release..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1840
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "WiFi lock released."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1843
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1845
    :cond_1
    return-void
.end method

.method private removeDiscoveryEventListener()V
    .locals 3

    .prologue
    .line 908
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_devicefound:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 909
    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDiscoveryEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    .line 908
    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 911
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_devicelost:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 912
    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDiscoveryEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    .line 911
    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 914
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_remoteDeviceReady:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 915
    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDiscoveryEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    .line 914
    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 917
    return-void
.end method

.method private removePairingEventListener(Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 2

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_pair_pairingresponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 1026
    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1025
    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 1027
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_pair_regpairresponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 1028
    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1027
    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 1029
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_pair_pairingdeleted:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 1030
    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1029
    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 1031
    return-void
.end method

.method private removeSessionEventListener(Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 2

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_startSessionResponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 1048
    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1047
    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 1049
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_messagedelivered:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 1050
    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1049
    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 1051
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_message:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 1052
    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1051
    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 1053
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_messagingerror:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 1054
    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1053
    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 1055
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_sessionended:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 1056
    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1055
    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 1057
    return-void
.end method

.method private removeStateEventListener()V
    .locals 3

    .prologue
    .line 811
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_init:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStateEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 813
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_initerror:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStateEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 815
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_mdxstate:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStateEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 817
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_targetrestarting:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStateEventListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 819
    return-void
.end method

.method private resetTargetSelection()V
    .locals 5

    .prologue
    .line 264
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: resetTargetSelection"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    .line 266
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetUuid:Ljava/lang/String;

    .line 267
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetDialUuid:Ljava/lang/String;

    .line 268
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetFriendlyName:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetSelector:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetSelector:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetDialUuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->selectNewTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_0
    return-void
.end method

.method private sendVolumeUpdateBroadcast(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 559
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_SETVOLUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    const-string/jumbo v1, "volume"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 561
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 562
    return-void
.end method

.method private sessionGone()V
    .locals 4

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    if-eqz v0, :cond_0

    .line 1709
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->targetGone(Ljava/lang/String;)V

    .line 1711
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    const/16 v2, 0xc9

    const-string/jumbo v3, "stop connecting to target"

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->error(Ljava/lang/String;ILjava/lang/String;)V

    .line 1713
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->playbackEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    return-void
.end method

.method private unregisterStartStopReceiver()V
    .locals 4

    .prologue
    .line 1692
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStartStopErrorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1696
    :goto_0
    return-void

    .line 1693
    :catch_0
    move-exception v0

    .line 1694
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

    .prologue
    .line 1727
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->ensureManagers()V

    .line 1728
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    monitor-enter v1

    .line 1729
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setTitlesNotify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1732
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    if-eqz v0, :cond_0

    .line 1733
    if-nez p3, :cond_1

    .line 1734
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-virtual {v0, p2, p4}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->updateMetadata(Ljava/lang/String;Z)V

    .line 1736
    :cond_0
    monitor-exit v1

    .line 1737
    return-void

    :cond_1
    move-object p2, p3

    .line 1733
    goto :goto_0

    .line 1736
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateMdxRemoteClient(Z)V
    .locals 5

    .prologue
    const/16 v4, 0x15

    .line 1147
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-nez v0, :cond_1

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1151
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v0, :cond_0

    .line 1155
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 1159
    :goto_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_6

    .line 1163
    if-eqz p1, :cond_4

    .line 1164
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080199

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 1171
    :goto_2
    if-eqz p1, :cond_5

    instance-of v1, v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    if-eqz v1, :cond_5

    .line 1172
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getNextEpisodeTitle()Ljava/lang/String;

    move-result-object v1

    .line 1177
    :goto_3
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v3

    if-ge v3, v4, :cond_0

    .line 1178
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v3, p1, v0, v4}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->start(ZLcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V

    .line 1179
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {v0, v2, v1}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->setTitles(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1155
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    goto :goto_1

    .line 1167
    :cond_4
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentTitle()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    .line 1174
    :cond_5
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getCurrentEpisodeTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1182
    :cond_6
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    if-ge v1, v4, :cond_0

    .line 1183
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

    .prologue
    const/4 v2, 0x0

    .line 392
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mInitMdxNative:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 394
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :goto_0
    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerThread:Landroid/os/HandlerThread;

    .line 402
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->unregisterUserAgentReceiver()V

    .line 403
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->removePropertyUpdateListener()V

    .line 405
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->removeStateEventListener()V

    .line 406
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->removeDiscoveryEventListener()V

    .line 407
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->removePairingEventListener(Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 408
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->removeSessionEventListener(Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 409
    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/BifManager;->release()V

    .line 414
    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    .line 417
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_4

    .line 418
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->stop()V

    .line 420
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->destroy()V

    .line 421
    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    .line 427
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    if-eqz v0, :cond_3

    .line 428
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->destroy()V

    .line 430
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->unregisterStartStopReceiver()V

    .line 431
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    .line 432
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: mMdxAgentWorkerThread interrupted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->destroy()V

    goto :goto_1
.end method

.method public disconnectFromCast()V
    .locals 1

    .prologue
    .line 2215
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    if-eqz v0, :cond_0

    .line 2216
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->disconnect()V

    .line 2218
    :cond_0
    return-void
.end method

.method protected doInit()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 317
    const-string/jumbo v2, "nf_mdx_MdxAgent"

    const-string/jumbo v3, "MdxAgent: doInit"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getMdxController()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    .line 321
    new-instance v2, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;-><init>(Lcom/netflix/mediaclient/javabridge/ui/Nrdp;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNrdpLogger:Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

    .line 326
    new-instance v2, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    .line 327
    new-instance v2, Lcom/netflix/mediaclient/service/mdx/TargetManager;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    .line 328
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNrdpLogger:Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/netflix/mediaclient/service/mdx/TargetManager;-><init>(Lcom/netflix/mediaclient/service/mdx/NotifierInterface;Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    .line 329
    new-instance v2, Lcom/netflix/mediaclient/service/mdx/CommandHandler;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/service/mdx/CommandHandler;-><init>(Lcom/netflix/mediaclient/service/mdx/CommandInterface;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCommandHandler:Lcom/netflix/mediaclient/service/mdx/CommandHandler;

    .line 331
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCommandHandler:Lcom/netflix/mediaclient/service/mdx/CommandHandler;

    if-nez v2, :cond_2

    .line 333
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INTERNAL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 388
    :goto_0
    return-void

    .line 323
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NRD_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 337
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 338
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNativeExitCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 339
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 340
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetRestartingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 341
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    invoke-interface {v2, p0}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->setPropertyUpdateListener(Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController$PropertyUpdateListener;)V

    .line 342
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/TransactionId;->setTransactionIdSource(Lcom/netflix/mediaclient/javabridge/ui/Nrdp;)V

    .line 343
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 344
    const-string/jumbo v2, "nf_mdx_MdxAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MdxAgent: change XID base from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 347
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

    .line 344
    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/netflix/mediaclient/service/mdx/MdxAgent$1;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$1;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    new-instance v2, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    invoke-direct {v2, v3, p0}, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;-><init>(Lcom/netflix/mediaclient/service/mdx/TargetManager;Lcom/netflix/mediaclient/service/mdx/SwitchTarget$SwitchTargetInterface;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mSwitchTarget:Lcom/netflix/mediaclient/service/mdx/SwitchTarget;

    .line 360
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 361
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

    .line 364
    :cond_4
    new-instance v2, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v3

    .line 365
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, p0, v5}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$MdxImageLoaderInterface;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxBoxartLoader:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    .line 367
    new-instance v2, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog$SessionWatchDogInterface;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxSessionWatchDog:Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;

    .line 370
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->registerUserAgentReceiver()V

    .line 371
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v2

    .line 372
    if-eqz v2, :cond_6

    .line 373
    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfileGuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 374
    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->isUserLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 373
    :goto_1
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->notifyIsUserLogin(Z)V

    .line 380
    :goto_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->registerStartStopReceiver()V

    .line 381
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_7

    .line 382
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    .line 387
    :goto_3
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 374
    goto :goto_1

    .line 376
    :cond_6
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: userAgent is not ready yet, skip init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 384
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

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/media/BifManager;->getIndexFrame(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1122
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTarget()Ljava/lang/String;
    .locals 3

    .prologue
    .line 295
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
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

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTargetCapabilities()Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;
    .locals 1

    .prologue
    .line 303
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

    .prologue
    const/4 v3, 0x0

    .line 572
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v0

    .line 573
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->ensureManagers()V

    .line 575
    if-eqz v0, :cond_5

    .line 576
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

    .line 579
    :cond_1
    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    .line 580
    invoke-direct {p0, v3, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->fetchVideoDetail(ZZ)V

    .line 581
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->getNotification(Z)Landroid/util/Pair;

    move-result-object v0

    .line 598
    :goto_0
    return-object v0

    .line 583
    :cond_2
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: videoIds are all same"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->movieMetaDataAvailable(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 587
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setBoxart(Landroid/graphics/Bitmap;)V

    .line 590
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    if-nez v0, :cond_4

    .line 591
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setTitlesNotify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 598
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->getNotification(Z)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    .line 595
    :cond_5
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: new videoIds is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getNoActionIntent()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1791
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

    .prologue
    .line 1751
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_PAUSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1752
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->createNotificationButtonIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getPlayNextIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1769
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    instance-of v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    if-eqz v0, :cond_2

    .line 1770
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    .line 1771
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.MDX_PLAY_VIDEOIDS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1773
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getNextEpisodeId()Ljava/lang/String;

    move-result-object v0

    .line 1774
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentId()Ljava/lang/String;

    move-result-object v3

    .line 1775
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v0, v1

    .line 1785
    :goto_0
    return-object v0

    .line 1779
    :cond_1
    const-string/jumbo v1, "episodeId"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1780
    const-string/jumbo v0, "catalogId"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1782
    const-string/jumbo v0, "playNext"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1783
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->createNotificationButtonIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1785
    goto :goto_0
.end method

.method public getResumeIntent()Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 1757
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_RESUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1758
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->createNotificationButtonIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;
    .locals 2

    .prologue
    .line 2161
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->getSharedState(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/MdxSharedState;

    move-result-object v0

    .line 2164
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSkipbackIntent(I)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 1744
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_SKIP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 1746
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->createNotificationButtonIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getStopIntent()Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 1763
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1764
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

    .prologue
    .line 193
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    monitor-enter v3

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const/4 v0, 0x0

    monitor-exit v3

    .line 225
    :goto_0
    return-object v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Landroid/util/Pair;

    .line 200
    const/4 v1, 0x0

    .line 201
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

    .line 202
    iget-object v5, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    .line 203
    iget-object v6, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    .line 204
    iget-object v7, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->friendlyName:Ljava/lang/String;

    .line 205
    invoke-static {v6}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 206
    add-int/lit8 v0, v1, 0x1

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    aput-object v5, v2, v1

    .line 207
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
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

    .line 220
    goto :goto_1

    .line 211
    :cond_2
    invoke-static {v5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 212
    add-int/lit8 v0, v1, 0x1

    invoke-static {v5, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    aput-object v6, v2, v1

    .line 213
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
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

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 218
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

    .line 221
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 222
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

    .line 225
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto/16 :goto_0
.end method

.method public getVideoDetail()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object v0
.end method

.method public getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    return-object v0
.end method

.method public getVideoIdsPostplay()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    return-object v0
.end method

.method public handleCommand(Landroid/content/Intent;)Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v4, -0x1

    .line 436
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    .line 437
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->isTargetHaveContext(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    .line 439
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getDeviceFromUuid(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->targetSelected(Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;)V

    .line 442
    :cond_0
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.MDX"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_PLAY_VIDEOIDS"

    .line 443
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 444
    const-string/jumbo v0, "uuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 446
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

    .line 549
    :goto_0
    return v7

    .line 451
    :cond_2
    const-string/jumbo v0, "catalogId"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 453
    const-string/jumbo v0, "episodeId"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 456
    const-string/jumbo v0, "trackId"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 458
    if-ne v0, v4, :cond_3

    .line 459
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v3, "MdxAgent: MDX_PLAY_VIDEOIDS has invalid trackId"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const v0, 0xd2a38f

    .line 463
    :cond_3
    const-string/jumbo v3, "time"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 465
    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTrackId:I

    .line 466
    iput v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStartTime:I

    .line 469
    if-ne v2, v4, :cond_f

    move v0, v6

    .line 472
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 473
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

    .line 477
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

    .line 482
    :cond_4
    const-string/jumbo v3, "playNext"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 483
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->stopAllNotifications()V

    .line 486
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

    .line 489
    :cond_6
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->commandPlayReceived(Ljava/lang/String;)V

    .line 491
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iput-boolean v0, v3, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    .line 492
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iput v1, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogId:I

    .line 493
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iput v2, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    .line 495
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    if-eqz v0, :cond_7

    .line 497
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/BifManager;->release()V

    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    .line 501
    :cond_7
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDXUPDATE_POSTPLAY"

    .line 502
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 501
    invoke-direct {p0, v7, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->fetchVideoDetail(ZZ)V

    goto/16 :goto_0

    .line 504
    :cond_8
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: videoIds are same, start play"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-object v2, v2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogIdUrl:Ljava/lang/String;

    iget v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTrackId:I

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-object v4, v4, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeIdUrl:Ljava/lang/String;

    iget v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStartTime:I

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->playerPlay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 508
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->movieMetaDataAvailable(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0, v6}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->logPlaystart(Z)V

    goto/16 :goto_0

    .line 511
    :cond_9
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_SELECT_TARGET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 512
    const-string/jumbo v0, "uuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
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

    .line 514
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->setCurrentTarget(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 516
    :cond_a
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.MDXRCC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 517
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: get nf_mdx_RemoteControlClient intent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const-string/jumbo v0, "uuid"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_TOGGLE_PAUSE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 526
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: get nf_mdx_RemoteControlClient intent toggle pause"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    if-eqz v0, :cond_b

    .line 529
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_b

    .line 530
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 531
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_RESUME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    :cond_b
    :goto_2
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_STOP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 541
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->stopAllNotifications()V

    .line 546
    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCommandHandler:Lcom/netflix/mediaclient/service/mdx/CommandHandler;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/CommandHandler;->handleCommandIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 533
    :cond_d
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_PAUSE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 542
    :cond_e
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_SETVOLUME"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 543
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

    .prologue
    .line 565
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->hasActiveSession()Z

    move-result v0

    .line 568
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBifReady()Z
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/BifManager;->isBifReady()Z

    move-result v0

    .line 1131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->isPaused()Z

    move-result v0

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTargetLaunchingOrLaunched()Z
    .locals 2

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    if-eqz v0, :cond_0

    .line 2197
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "checking isTargetLaunchingOrLaunched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->isTargetLaunchingOrLaunched(Ljava/lang/String;)Z

    move-result v0

    .line 2200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method logPlaystart(Z)V
    .locals 5

    .prologue
    .line 1977
    const-string/jumbo v0, ""

    .line 1978
    if-eqz p1, :cond_0

    .line 1979
    const-string/jumbo v0, "local_playback_transfer"

    .line 1981
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    .line 1982
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    .line 1983
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-object v2, v2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogIdUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-object v3, v3, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeIdUrl:Ljava/lang/String;

    iget v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTrackId:I

    .line 1984
    invoke-interface {v1, v2, v3, v0, v4}, Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;->logMdxPlaybackStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1986
    return-void
.end method

.method public declared-synchronized notifyIsUserLogin(Z)V
    .locals 2

    .prologue
    .line 633
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mUserIsLogin:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_1

    .line 673
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 637
    :cond_1
    :try_start_1
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mUserIsLogin:Z

    .line 638
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mUserIsLogin:Z

    if-eqz v0, :cond_2

    .line 639
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->handleAccountConfig()V

    .line 640
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mInitMdxNative:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 642
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mInitMdxNative:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 643
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 644
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "notifyIsUserLogin: logout, was not ready ignore"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 647
    :cond_3
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "notifyIsUserLogin: logout, exit native"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->resetTargetSelection()V

    .line 653
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    if-eqz v0, :cond_4

    .line 654
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->stop()V

    .line 656
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 657
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNativeExitCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 658
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->exit()V

    .line 660
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->removeDiscoveryEventListener()V

    .line 661
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->removePairingEventListener(Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 662
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->removeSessionEventListener(Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 665
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->clearVideoDetails()V

    .line 666
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->sessionGone()V

    .line 667
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 668
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetRestartingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 669
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->notready()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onBitmapReady(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 1959
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    .line 1960
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    .line 1961
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    if-eqz v0, :cond_0

    .line 1962
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->setBoxart(Landroid/graphics/Bitmap;)V

    .line 1968
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    if-eqz v0, :cond_1

    .line 1969
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setBoxartNotify(Landroid/graphics/Bitmap;)V

    .line 1971
    :cond_1
    return-void

    .line 1964
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    if-eqz v0, :cond_0

    .line 1965
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->updateMetadata(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onGetTimeOfMostRecentIncomingMessage()J
    .locals 2

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    if-eqz v0, :cond_0

    .line 1991
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->getTimeOfMostRecentIncomingMessage()J

    move-result-wide v0

    .line 1993
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public onIsReady(Z)V
    .locals 3

    .prologue
    .line 695
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
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

    .line 698
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

    .prologue
    .line 702
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
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

    .line 706
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    monitor-enter v1

    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 708
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 710
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->reconcileSelectedTargetInfo()V

    .line 711
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->targetList()V

    .line 716
    :cond_1
    return-void

    .line 711
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

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    if-eqz v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->playbackEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    :cond_0
    return-void
.end method

.method public onSetToNewTarget(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1954
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->setCurrentTarget(Ljava/lang/String;)V

    .line 1955
    return-void
.end method

.method public onStickinessExpired()V
    .locals 1

    .prologue
    .line 1903
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->setCurrentTarget(Ljava/lang/String;)V

    .line 1904
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    if-eqz v0, :cond_0

    .line 1905
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->targetList()V

    .line 1907
    :cond_0
    return-void
.end method

.method public onTargetSelectorLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1912
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    .line 1913
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetUuid:Ljava/lang/String;

    .line 1914
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetDialUuid:Ljava/lang/String;

    .line 1915
    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetFriendlyName:Ljava/lang/String;

    .line 1916
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1917
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->setTargetId(Ljava/lang/String;)V

    .line 1919
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

    .prologue
    .line 2170
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getCastPrefetchSharedSecret()Landroid/util/Pair;

    move-result-object v1

    .line 2171
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    if-nez v0, :cond_1

    .line 2172
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "castManager is null "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    :cond_0
    :goto_0
    return-void

    .line 2176
    :cond_1
    if-nez v1, :cond_2

    .line 2177
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "prefetchVideo shared secret is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2180
    :cond_2
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2181
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    .line 2182
    new-instance v2, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;

    .line 2183
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3, v0, v1}, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 2185
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2186
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2187
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2188
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

    .line 2190
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->prefetchVideo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method registerUserAgentReceiver()V
    .locals 3

    .prologue
    .line 1879
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mUserAgentReceiver:Landroid/content/BroadcastReceiver;

    .line 1881
    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->getNotificationIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    .line 1879
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1882
    return-void
.end method

.method public setCurrentTarget(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 231
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->sessionGone()V

    .line 236
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->clearVideoDetails()V

    .line 237
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v0

    const-string/jumbo v1, "local playback"

    .line 238
    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;->logMdxTargetSelection(Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->resetTargetSelection()V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->clearVideoDetails()V

    .line 243
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getDeviceFromUuid(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v0

    .line 245
    if-nez v0, :cond_2

    .line 246
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

    .line 247
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->resetTargetSelection()V

    goto :goto_0

    .line 249
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManager;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->targetSelected(Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;)V

    .line 250
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v1

    const-string/jumbo v2, "target playback"

    .line 251
    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;->logMdxTargetSelection(Ljava/lang/String;)V

    .line 252
    iget-object v1, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetUuid:Ljava/lang/String;

    .line 253
    iget-object v1, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetDialUuid:Ljava/lang/String;

    .line 254
    iget-object v0, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->friendlyName:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetFriendlyName:Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetSelector:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    if-eqz v0, :cond_0

    .line 256
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

    .prologue
    const/4 v0, 0x1

    .line 282
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    :goto_0
    return v0

    .line 285
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getDeviceFromUuid(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->setCurrentTarget(Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopAllNotifications()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1222
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "Stop all notifications"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->ensureManagers()V

    .line 1225
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    .line 1226
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->stop()V

    .line 1233
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->stopNotification(Lcom/netflix/mediaclient/service/NetflixService;)V

    .line 1234
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->cancelNotification()V

    .line 1235
    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    .line 1236
    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    .line 1239
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->finishMDXController(Landroid/content/Context;)V

    .line 1242
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;

    .line 1243
    instance-of v1, v0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;

    if-eqz v1, :cond_1

    .line 1244
    check-cast v0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->resetPostplayState()V

    .line 1246
    :cond_1
    return-void

    .line 1227
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->stopMediaSession()V

    goto :goto_0
.end method

.method public stopPostplayNotification()V
    .locals 2

    .prologue
    .line 1250
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->ensureManagers()V

    .line 1251
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->stopPostplayNotification(Lcom/netflix/mediaclient/service/NetflixService;)V

    .line 1252
    return-void
.end method

.method public switchPlaybackFromTarget(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 1931
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1932
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

    .line 1935
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mSwitchTarget:Lcom/netflix/mediaclient/service/mdx/SwitchTarget;

    if-eqz v0, :cond_1

    .line 1936
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mSwitchTarget:Lcom/netflix/mediaclient/service/mdx/SwitchTarget;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTrackId:I

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->startSwitch(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;II)V

    .line 1939
    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1940
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v0

    const-string/jumbo v1, "local playback"

    .line 1941
    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;->logMdxTargetSelection(Ljava/lang/String;)V

    .line 1950
    :cond_2
    :goto_0
    return-void

    .line 1943
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v0

    const-string/jumbo v1, "target playback"

    .line 1944
    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;->logMdxTargetSelection(Ljava/lang/String;)V

    .line 1945
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1946
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "fling playback from local to target"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->logPlaystart(Z)V

    goto :goto_0
.end method

.method public transferPlaybackFromLocal()V
    .locals 2

    .prologue
    .line 2209
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "transfer playback from local to target"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->logPlaystart(Z)V

    .line 2211
    return-void
.end method

.method public uiComingToForeground()V
    .locals 2

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mUserIsLogin:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    if-eqz v0, :cond_0

    .line 606
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: UI coming to foreground, try restart discovery"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->restartCastDiscoveryIfNeeded()V

    .line 609
    :cond_0
    return-void
.end method

.method unregisterUserAgentReceiver()V
    .locals 4

    .prologue
    .line 1886
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mUserAgentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1891
    :goto_0
    return-void

    .line 1888
    :catch_0
    move-exception v0

    .line 1889
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

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1489
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1491
    new-instance v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    .line 1492
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iput-boolean v3, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    .line 1493
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1494
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1493
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, v1, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    .line 1496
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->ensureManagers()V

    .line 1497
    invoke-direct {p0, v4, v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->fetchVideoDetail(ZZ)V

    .line 1500
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3

    .line 1501
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->start(ZLcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V

    .line 1502
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {v0, v4, v4, v3}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->setState(ZZZ)V

    .line 1508
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    .line 1509
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getMdxNotification(Z)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    .line 1508
    invoke-interface {v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->startNotification(Landroid/app/Notification;Lcom/netflix/mediaclient/service/NetflixService;Z)V

    .line 1510
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, v4, v4, v3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setUpNextStateNotify(ZZZ)V

    .line 1512
    :cond_1
    return-void

    .line 1493
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 1503
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-virtual {v0, v4, v3}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->updateState(ZZ)V

    goto :goto_1
.end method
