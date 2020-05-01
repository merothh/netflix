.class public Lcom/netflix/mediaclient/service/player/PlayerAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "PlayerAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigAgentListener;
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer;


# static fields
.field private static final BANDWITH_CHECK_INTERVAL:I = 0x7530

.field private static final DELAY_SEEKCOMPLETE_MS:I = 0x12c

.field private static final EOS_DELTA:I = 0x2710

.field private static final IntialLowBRThreshold:I = 0xc8

.field public static final MAX_BR_THRESHOLD_DEFAULT_KBPS:I = 0x4e20

.field private static final MAX_CELLULAR_DOWNLOAD_LIMIT:I = 0x249f0

.field private static final MAX_WIFI_DOWNLOAD_LIMIT:I = 0x493e0

.field private static MaxBRThreshold:I = 0x0

.field private static MaxNonAdaptiveThreshold:I = 0x0

.field private static final NETWORK_CHECK_INTERVAL:I = 0x3e8

.field private static final NETWORK_CHECK_TIMEOUT:I = 0x7530

.field private static final SEEKTO_DELTA_IN_MS:I = 0xea60

.field private static final STATE_CLOSED:I = 0x4

.field private static final STATE_CREATED:I = -0x1

.field private static final STATE_OPENING:I = 0x0

.field private static final STATE_PAUSED:I = 0x2

.field private static final STATE_PLAYING:I = 0x1

.field private static final STATE_PRECLOSE:I = 0x8

.field private static final STATE_PREOPEN:I = 0x5

.field private static final STATE_PREPLAY:I = 0x6

.field private static final STATE_PRESTOP:I = 0x7

.field private static final STATE_STOPPED:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static TimeToWaitBeforeLowBRStreamsEnabled:I = 0x0

.field private static final TimeToWaitBeforeShutdown:I = 0x7530

.field private static final TimeToWaitBeforeUnmute:I = 0x2710

.field private static getLevelExceptionReported:Z


# instance fields
.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private ignoreErrorsWhileActionId12IsProcessed:Z

.field private inPlaybackSession:Z

.field private mActionId12Error:Lcom/netflix/mediaclient/event/nrdp/media/NccpError;

.field private mAudioBitrateRange:Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;

.field private mBifManager:Lcom/netflix/mediaclient/media/BifManager;

.field private mBookmark:J

.field private mBufferingCompleted:Z

.field private final mCellularNetworkListener:Landroid/telephony/PhoneStateListener;

.field private mCloseTimeoutTask:Lcom/netflix/mediaclient/service/player/PlayerAgent$CloseTimeoutTask;

.field private mDelayedBifDowloadForDataSaver:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;

.field private mForcedRebuffer:Z

.field private mFuzz:I

.field private mHelper:Lcom/netflix/mediaclient/media/MediaPlayerHelper;

.field private mInPlayback:Z

.field private mInitVBRTimeoutTask:Lcom/netflix/mediaclient/service/player/PlayerAgent$InitialVideoBitrateRangeTimeoutTask;

.field private volatile mJPlayerListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;

.field private mLastBandwidthCheck:J

.field private mManifestCache:Lcom/netflix/mediaclient/servicemgr/IManifestCache;

.field private mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

.field private mMediaEventListener:Lcom/netflix/mediaclient/service/player/PlayerAgent$GenericMediaEventListener;

.field private mMovieId:J

.field private final mNetworkProfile:I

.field private mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

.field private mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field private mPlayParamsRecvr:Lcom/netflix/mediaclient/service/player/PlayParamsReceiver;

.field private mPlaybackVolumeMetric:Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;

.field private mPlayerExecutor:Ljava/util/concurrent/ExecutorService;

.field private mPlayerFileManager:Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

.field private mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

.field private mPlayerType:Lcom/netflix/mediaclient/media/PlayerType;

.field private mRelativeSeekPosition:I

.field private mScreenOnWhilePlaying:Z

.field private mStartPlayPositionInTitleInMs:J

.field private mStartPlayTimeoutTask:Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;

.field private volatile mState:I

.field private mStayAwake:Z

.field private mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

.field private mSubtitles:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

.field private mSurface:Landroid/view/Surface;

.field private mTimer:Ljava/util/Timer;

.field private mUpdatePlaybackVolumeMetric:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mUserAgentReceiver:Landroid/content/BroadcastReceiver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mXid:Ljava/lang/String;

.field private muted:Z

.field private networkCapabilities:Landroid/net/NetworkCapabilities;

.field private final onCloseRunnable:Ljava/lang/Runnable;

.field private final onOpenRunnable:Ljava/lang/Runnable;

.field private final onPlayRunnable:Ljava/lang/Runnable;

.field private final onSeekRunnable:Ljava/lang/Runnable;

.field private pendingError:Lcom/netflix/mediaclient/event/nrdp/media/NccpError;

.field private final playerChangesReceiver:Landroid/content/BroadcastReceiver;

.field private preparedCompleted:Z

.field private prevEndPosition:I

.field private seekedToPosition:I

.field private seeking:Z

.field private sessionInitRxBytes:J

.field private sessionInitTxBytes:J

.field private splashScreenRemoved:Z

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field private toCancelOpen:Z

.field private volatile toOpenAfterClose:Z

.field private toPlayAfterStop:Z

.field private validPtsRecieved:Z

.field private final webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const/16 v0, 0x3a98

    sput v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TimeToWaitBeforeLowBRStreamsEnabled:I

    const/16 v0, 0x4e20

    sput v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->MaxBRThreshold:I

    const/16 v0, 0x4b0

    sput v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->MaxNonAdaptiveThreshold:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seeking:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->validPtsRecieved:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->preparedCompleted:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mNetworkProfile:I

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->splashScreenRemoved:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mBufferingCompleted:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->ignoreErrorsWhileActionId12IsProcessed:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mState:I

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->toPlayAfterStop:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->toOpenAfterClose:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->toCancelOpen:Z

    new-instance v0, Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;

    const/16 v1, 0x40

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;-><init>(II)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mAudioBitrateRange:Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mUpdatePlaybackVolumeMetric:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$1;-><init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->onOpenRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$2;-><init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->onPlayRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$3;-><init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->onSeekRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$4;-><init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->onCloseRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$5;-><init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->muted:Z

    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$6;-><init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->playerChangesReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$9;-><init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mUserAgentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$10;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$10;-><init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mCellularNetworkListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/javabridge/ui/IMedia;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/player/PlayerAgent;)J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mBookmark:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mBufferingCompleted:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)Lcom/netflix/mediaclient/event/nrdp/media/NccpError;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->pendingError:Lcom/netflix/mediaclient/event/nrdp/media/NccpError;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mUpdatePlaybackVolumeMetric:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mStartPlayTimeoutTask:Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;)Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mStartPlayTimeoutTask:Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;

    return-object p1
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/service/player/PlayerAgent;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mState:I

    return v0
.end method

.method static synthetic access$1702(Lcom/netflix/mediaclient/service/player/PlayerAgent;I)I
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mState:I

    return p1
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->isMPPlayerType()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlaybackVolumeMetric:Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlaybackVolumeMetric:Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/service/player/PlayerAgent;)J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMovieId:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/service/player/PlayerAgent;I)I
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->prevEndPosition:I

    return p1
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/service/player/PlayerAgent;)J
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getPreferredPeakBpsForLogging()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->toOpenAfterClose:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/netflix/mediaclient/service/player/PlayerAgent;J)J
    .locals 1

    iput-wide p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->sessionInitRxBytes:J

    return-wide p1
.end method

.method static synthetic access$2502(Lcom/netflix/mediaclient/service/player/PlayerAgent;J)J
    .locals 1

    iput-wide p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->sessionInitTxBytes:J

    return-wide p1
.end method

.method static synthetic access$2602(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->toPlayAfterStop:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->playWithBookmarkCheck()V

    return-void
.end method

.method static synthetic access$2802(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seeking:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/netflix/mediaclient/service/player/PlayerAgent;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mFuzz:I

    return v0
.end method

.method static synthetic access$3000(Lcom/netflix/mediaclient/service/player/PlayerAgent;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mRelativeSeekPosition:I

    return v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->validPtsRecieved:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mForcedRebuffer:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/service/player/PlayerAgent$InitialVideoBitrateRangeTimeoutTask;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mInitVBRTimeoutTask:Lcom/netflix/mediaclient/service/player/PlayerAgent$InitialVideoBitrateRangeTimeoutTask;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/service/player/PlayerAgent$InitialVideoBitrateRangeTimeoutTask;)Lcom/netflix/mediaclient/service/player/PlayerAgent$InitialVideoBitrateRangeTimeoutTask;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mInitVBRTimeoutTask:Lcom/netflix/mediaclient/service/player/PlayerAgent$InitialVideoBitrateRangeTimeoutTask;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->toCancelOpen:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->close2()V

    return-void
.end method

.method static synthetic access$3500(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/service/player/PlayerAgent$CloseTimeoutTask;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mCloseTimeoutTask:Lcom/netflix/mediaclient/service/player/PlayerAgent$CloseTimeoutTask;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/service/player/PlayerAgent$CloseTimeoutTask;)Lcom/netflix/mediaclient/service/player/PlayerAgent$CloseTimeoutTask;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mCloseTimeoutTask:Lcom/netflix/mediaclient/service/player/PlayerAgent$CloseTimeoutTask;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handleGenericMediaEvent(Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handleError(Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handlePrepare(Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/Buffering;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handleBufferring(Lcom/netflix/mediaclient/event/nrdp/media/Buffering;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/SubtitleData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handleSubtitleData(Lcom/netflix/mediaclient/event/nrdp/media/SubtitleData;)V

    return-void
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mInPlayback:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/AudioTrackChanged;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handleAudioTrackChanged(Lcom/netflix/mediaclient/event/nrdp/media/AudioTrackChanged;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/Statechanged;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handleStatechanged(Lcom/netflix/mediaclient/event/nrdp/media/Statechanged;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handleBufferRange(Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/netflix/mediaclient/service/player/PlayerAgent;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handleUpdatePts(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/Error;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handleMediaError(Lcom/netflix/mediaclient/event/nrdp/media/Error;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/Warning;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handleMediaWarning(Lcom/netflix/mediaclient/event/nrdp/media/Warning;)V

    return-void
.end method

.method static synthetic access$4702(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->ignoreErrorsWhileActionId12IsProcessed:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/event/nrdp/media/NccpError;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mActionId12Error:Lcom/netflix/mediaclient/event/nrdp/media/NccpError;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)Lcom/netflix/mediaclient/event/nrdp/media/NccpError;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mActionId12Error:Lcom/netflix/mediaclient/event/nrdp/media/NccpError;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/service/player/PlayerListenerManager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->inPlaybackSession:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->muteAudio(Z)V

    return-void
.end method

.method static synthetic access$5300()I
    .locals 1

    sget v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->MaxBRThreshold:I

    return v0
.end method

.method static synthetic access$5400(Lcom/netflix/mediaclient/service/player/PlayerAgent;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->updateSubtitleSettingsFromQaLocalOverride(I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Landroid/net/NetworkCapabilities;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->networkCapabilities:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method static synthetic access$5600()Z
    .locals 1

    sget-boolean v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getLevelExceptionReported:Z

    return v0
.end method

.method static synthetic access$5602(Z)Z
    .locals 0

    sput-boolean p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getLevelExceptionReported:Z

    return p0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->splashScreenRemoved:Z

    return p1
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/service/player/PlayerAgent;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->preparedCompleted:Z

    return p1
.end method

.method static synthetic access$802(Lcom/netflix/mediaclient/service/player/PlayerAgent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mXid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/player/PlayerAgent;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seekedToPosition:I

    return v0
.end method

.method static synthetic access$902(Lcom/netflix/mediaclient/service/player/PlayerAgent;I)I
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seekedToPosition:I

    return p1
.end method

.method private addConfigurationChangeListener()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->addConfigAgentListener(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigAgentListener;)V

    :cond_0
    return-void
.end method

.method private canStartBifDownload()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mInPlayback:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, v1, Lcom/netflix/mediaclient/media/PlayoutMetadata;->targetBitRate:I

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mDelayedBifDowloadForDataSaver:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->shouldDelayBifForPlay(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mDelayedBifDowloadForDataSaver:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->isBufferingCompleted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;->shouldDownloadBif(Z)Z

    move-result v0

    goto :goto_0
.end method

.method private clearBifs()V
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "preRelease()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/BifManager;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    :cond_0
    return-void
.end method

.method private declared-synchronized close2()V
    .locals 6

    monitor-enter p0

    const/16 v0, 0x8

    :try_start_0
    iput v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mState:I

    invoke-static {}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getApplicationRx()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->sessionInitRxBytes:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getApplicationTx()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->sessionInitTxBytes:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bytes Tx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bytes Rx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v2, v1, v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setBytesReport(II)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getAudioSinkType()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "has audioSinkType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlaybackVolumeMetric:Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;

    if-nez v1, :cond_2

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "playbackVolumeMetric is null, create a new one even if may not be correct if we reeleased media stream when loosing focus"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;-><init>(Landroid/content/Context;)V

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mUpdatePlaybackVolumeMetric:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mCellularNetworkListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlaybackVolumeMetric:Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->close(Ljava/lang/String;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Log;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private findSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->DEFAULT:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    :cond_1
    return-object v0
.end method

.method private getAudioSinkType()Ljava/lang/String;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v3

    const/16 v4, 0x16

    if-le v3, v4, :cond_9

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    array-length v0, v7

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_DEAULT:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->getDecriptionString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    array-length v8, v7

    move v6, v2

    move v0, v2

    move v3, v2

    move v4, v2

    move v5, v2

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v9, v7, v6

    invoke-virtual {v9}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_2
    :goto_2
    :pswitch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :pswitch_1
    move v5, v1

    goto :goto_2

    :pswitch_2
    move v3, v1

    goto :goto_2

    :pswitch_3
    move v4, v1

    goto :goto_2

    :pswitch_4
    move v0, v1

    goto :goto_2

    :pswitch_5
    move v2, v1

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_4

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_BT:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->getDecriptionString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_HEADPHONE:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->getDecriptionString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_DOCK:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->getDecriptionString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_USB:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->getDecriptionString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    if-eqz v4, :cond_8

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_BUILTIN:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->getDecriptionString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_OTHERS:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->getDecriptionString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_BT:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->getDecriptionString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_a
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_BT:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->getDecriptionString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_b
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_BUILTIN:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->getDecriptionString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_c
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_HEADPHONE:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->getDecriptionString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_DEAULT:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->getDecriptionString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private getPreferredPeakBpsForLogging()J
    .locals 4

    sget v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->MaxBRThreshold:I

    const/16 v1, 0x4e20

    if-eq v0, v1, :cond_0

    sget v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->MaxBRThreshold:I

    add-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    :goto_0
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    :cond_0
    sget v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->MaxBRThreshold:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method private handleAudioTrackChanged(Lcom/netflix/mediaclient/event/nrdp/media/AudioTrackChanged;)V
    .locals 4

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "MEDIA_AUDIO_CHANGE 53"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnAudioChangeHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnAudioChangeHandler;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/AudioTrackChanged;->getTrackIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    return-void
.end method

.method private handleBufferRange(Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;)V
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MEDIA_BANDWIDTH_UPDATE :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;->getBandwidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnBandwidthChangeHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnBandwidthChangeHandler;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;->getBandwidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    return-void
.end method

.method private handleBufferingComplete()V
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "BUFFERING COMPLETE 100"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mBufferingCompleted:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handlePlayback()V

    return-void
.end method

.method private handleBufferring(Lcom/netflix/mediaclient/event/nrdp/media/Buffering;)V
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MEDIA_BANDWIDTH_UPDATE :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/Buffering;->getPercentage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnBufferingUpdateHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnBufferingUpdateHandler;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/Buffering;->getPercentage()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    return-void
.end method

.method private handleEndOfPlayback()V
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "MEDIA_PLAYBACK_COMPLETE 2"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnCompletionHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnCompletionHandler;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    return-void
.end method

.method private handleError(Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Nccp error receieved"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->ignoreErrorsWhileActionId12IsProcessed:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "We will ignore received NccpNetworkingError/NetworkError, since if we need to handle it will be followed with action ID."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getActionId()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ActionID 11 NFErr_MC_Abort Playback."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnNccpErrorHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNccpErrorHandler;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->inPlaybackSession:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "We are in playback. Ignore all errors, except 11."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in Playback, being ignored "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getActionId()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_4

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ActionID 12 NFErr_MC_StaleCredentials"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->ignoreErrorsWhileActionId12IsProcessed:Z

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mActionId12Error:Lcom/netflix/mediaclient/event/nrdp/media/NccpError;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->doDummyWebCall(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Handle all errors except if they are for background events, such as logblob, ping, playdata or heartbeat..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getTransaction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "heartbeat"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "logblob"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "playdata"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "ping"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignore action id on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ". We will deal with only licence and authorize here when not in playback"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "background"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "We received background nccp error. Ignoring!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handling error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnNccpErrorHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNccpErrorHandler;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private handleGenericMediaEvent(Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;)V
    .locals 4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;->getType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_endOfStream:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handleEndOfPlayback()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_bufferingComplete:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handleBufferingComplete()V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->media_underflow:Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handleUnderflow()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Tags not handled yet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleMediaError(Lcom/netflix/mediaclient/event/nrdp/media/Error;)V
    .locals 3

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Media error receieved"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->ignoreErrorsWhileActionId12IsProcessed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnMediaErrorHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnMediaErrorHandler;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private handleMediaWarning(Lcom/netflix/mediaclient/event/nrdp/media/Warning;)V
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Media warning receieved"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "NFErr_MC_SubtitleFailure"

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/event/nrdp/media/Warning;->containsInStack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "=====> Subtitle failed!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnSubtitleFailedHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleFailedHandler;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized handlePlayback()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handlePlayback starts..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seeking:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "MEDIA_SEEK_COMPLETE 4"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seeking:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnSeekCompleteHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSeekCompleteHandler;

    move-result-object v0

    const-wide/16 v2, 0x12c

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handlePlayerListenerWithDelay(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;J[Ljava/lang/Object;)V

    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handlePlayback end"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "MEDIA_PLAYBACK_STARTED 6"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnPlayingHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlayingHandler;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private varargs handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V
    .locals 5

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;->isListening()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/netflix/mediaclient/service/player/PlayerAgent$7;

    invoke-direct {v4, p0, p1, v0, p2}, Lcom/netflix/mediaclient/service/player/PlayerAgent$7;-><init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private varargs handlePlayerListenerWithDelay(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;J[Ljava/lang/Object;)V
    .locals 6

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;->isListening()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/netflix/mediaclient/service/player/PlayerAgent$8;

    invoke-direct {v4, p0, p1, v0, p4}, Lcom/netflix/mediaclient/service/player/PlayerAgent$8;-><init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private declared-synchronized handlePrepare(Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->preparedCompleted:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openComplete already executed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handle openComplete starts..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->preparedCompleted:Z

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->toCancelOpen:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mXid:Ljava/lang/String;

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handle openComplete notifying client"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerPrepareHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPrepareHandler;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;->getWatermark()Lcom/netflix/mediaclient/media/Watermark;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MEDIA_SET_VIDEO_SIZE 5, w "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v2}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->getVideoWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", h "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v2}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->getVideoHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", watermark "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;->getWatermark()Lcom/netflix/mediaclient/media/Watermark;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handle openComplete end"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleStatechanged(Lcom/netflix/mediaclient/event/nrdp/media/Statechanged;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v0, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/Statechanged;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mState:I

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mState:I

    if-ne v3, v5, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMovieId:J

    invoke-direct {p0, v2, v0, v4, v5}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->notifyWidgetServiceOfPlayState(Landroid/content/Context;ZJ)V

    monitor-exit p0

    return-void

    :pswitch_0
    sget-object v2, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "State OPENING"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mState:I

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->transitToOpeningState()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mState:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    :try_start_1
    sget-object v2, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "State PLAYING"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mState:I

    if-eq v2, v1, :cond_0

    const/4 v2, 0x1

    iput v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mState:I

    goto :goto_0

    :pswitch_2
    sget-object v2, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "State PAUSED"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mState:I

    if-eq v2, v4, :cond_0

    const/4 v2, 0x2

    iput v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mState:I

    goto :goto_0

    :pswitch_3
    sget-object v2, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "State STOPPED"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mState:I

    if-eq v2, v5, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->transitToStoppedState()V

    const/4 v2, 0x3

    iput v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mState:I

    goto :goto_0

    :pswitch_4
    sget-object v2, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "State CLOSED"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mState:I

    if-eq v2, v6, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->transitToClosedState()V

    const/4 v2, 0x4

    iput v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleSubtitleData(Lcom/netflix/mediaclient/event/nrdp/media/SubtitleData;)V
    .locals 8

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "MEDIA_SUBTITLE_DATA 100"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSubtitles:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->getDisplayAspectRatio()F

    move-result v3

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mBookmark:J

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mStartPlayPositionInTitleInMs:J

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->changeSubtitle(Lcom/netflix/mediaclient/event/nrdp/media/SubtitleData;FJJ)V

    return-void
.end method

.method private declared-synchronized handleSubtitleUpdate(I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Update PTS received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Subtitles are not visible, do not send any update"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSubtitles:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    if-nez v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Subtitle manager is not available."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Subtitle data is not available."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->isReady()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Subtitle data is not ready yet!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Not playing, do NOT send subtitle screen update"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->canUpdatePosition(I)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Can not update position, do NOT send subtitle screen update"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnSubtitleChangeHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleChangeHandler;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    int-to-long v4, p1

    invoke-interface {v0, v4, v5}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getSubtitlesForPosition(J)Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private handleUnderflow()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "MEDIA_PLAYBACK_STALLED 7"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mBufferingCompleted:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnStalledHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStalledHandler;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    return-void
.end method

.method private handleUpdatePts(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mInPlayback:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->inPlaybackSession:Z

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->splashScreenRemoved:Z

    if-nez v0, :cond_0

    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->muteAudio(Z)V

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->splashScreenRemoved:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnStartedHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStartedHandler;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->canStartBifDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->startBif()V

    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handleSubtitleUpdate(I)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handleVolumeChange()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnUpdatePtsHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnUpdatePtsHandler;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    return-void
.end method

.method private handleVolumeChange()V
    .locals 5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mUpdatePlaybackVolumeMetric:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Playback is not in progress, do not update volume!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlaybackVolumeMetric:Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleVolumeChange:: This should not happen, playback metric should be created on open()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlaybackVolumeMetric:Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlaybackVolumeMetric:Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleVolumeChange:: no change"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleVolumeChange:: change from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->getVolumeMetric()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->getVolumeMetric()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v2, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->volumeChange(Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlaybackVolumeMetric:Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;

    goto :goto_0
.end method

.method private isMPPlayerType()Z
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device12:Lcom/netflix/mediaclient/media/PlayerType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device10:Lcom/netflix/mediaclient/media/PlayerType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device8:Lcom/netflix/mediaclient/media/PlayerType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized muteAudio(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->muted:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->muted:Z

    if-eqz p1, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "MUTED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "UN-MUTED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyWidgetServiceOfPlayState(Landroid/content/Context;ZJ)V
    .locals 5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " notifyWidgetServiceOfPlayState - inPause:%b, playableId:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->notifyPServiceOfPlayState(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.method private playWithBookmarkCheck()V
    .locals 4

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mBookmark:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seekedToPosition:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getDuration()I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "movie duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", and bookmark = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seekedToPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mState:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mBookmark:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->play(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->toPlayAfterStop:Z

    return-void
.end method

.method private preparePlayerType(Lcom/netflix/mediaclient/media/PlayerType;)V
    .locals 6

    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device10:Lcom/netflix/mediaclient/media/PlayerType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device11:Lcom/netflix/mediaclient/media/PlayerType;

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mHelper:Lcom/netflix/mediaclient/media/MediaPlayerHelper;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSurface:Landroid/view/Surface;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mJPlayerListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->isPropertyStreamingVideoDrs()Z

    move-result v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getJPlayerConfig()Lorg/json/JSONObject;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/media/MediaPlayerHelper;->prepareJPlayer(Lcom/netflix/mediaclient/javabridge/ui/IMedia;Landroid/view/Surface;Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;ZLorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mHelper:Lcom/netflix/mediaclient/media/MediaPlayerHelper;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/media/MediaPlayerHelper;->prepare(Lcom/netflix/mediaclient/javabridge/ui/IMedia;Landroid/view/Surface;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mHelper:Lcom/netflix/mediaclient/media/MediaPlayerHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mHelper:Lcom/netflix/mediaclient/media/MediaPlayerHelper;

    instance-of v0, v0, Lcom/netflix/mediaclient/media/JPlayer2Helper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mHelper:Lcom/netflix/mediaclient/media/MediaPlayerHelper;

    check-cast v0, Lcom/netflix/mediaclient/media/JPlayer2Helper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVideoResolutionRange()Lcom/netflix/mediaclient/media/VideoResolutionRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/media/JPlayer2Helper;->setMaxVideoHeight(Lcom/netflix/mediaclient/media/VideoResolutionRange;)V

    goto :goto_0
.end method

.method private registerReceivers()V
    .locals 0

    return-void
.end method

.method private registerUserAgentReceiver()V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mUserAgentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->getNotificationIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private release()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->reportPlaybackEnded()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mHelper:Lcom/netflix/mediaclient/media/MediaPlayerHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mHelper:Lcom/netflix/mediaclient/media/MediaPlayerHelper;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/MediaPlayerHelper;->release()V

    iput-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mHelper:Lcom/netflix/mediaclient/media/MediaPlayerHelper;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mJPlayerListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;

    if-eqz v0, :cond_1

    iput-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mJPlayerListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mBookmark:J

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->preparedCompleted:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mXid:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->splashScreenRemoved:Z

    iput v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seekedToPosition:I

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mBufferingCompleted:Z

    iput-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->pendingError:Lcom/netflix/mediaclient/event/nrdp/media/NccpError;

    iput-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlaybackVolumeMetric:Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mUpdatePlaybackVolumeMetric:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->muteAudio(Z)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->clearBifs()V

    return-void
.end method

.method private reportPlaybackEnded()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_ENDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PLAYER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private reportPlaybackPaused()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_PAUSED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PLAYER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private reportPlaybackStarted()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PLAYER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private reportPlaybackUnpaused()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_UNPAUSED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PLAYER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private declared-synchronized reportSubtitleQoeIfSubtitleIsChanged(Lcom/netflix/mediaclient/media/Subtitle;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->shouldReportSubtitleQoe(Lcom/netflix/mediaclient/media/Subtitle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSubtitles:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Subtitles are null, can not get parser!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSubtitles:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getNumberOfSubtitlesExpectedToBeDisplayed()I

    move-result v2

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getNumberOfDisplayedSubtitles()I

    move-result v3

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getSubtitleUrl()Lcom/netflix/mediaclient/media/SubtitleUrl;

    move-result-object v0

    const-string/jumbo v1, ""

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadableId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QoE: for subtitle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " we where expected to show "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and we showed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " subtitles."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->reportSubtitleQoe(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Parser is null, nothing to report!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private shouldReportSubtitleQoe(Lcom/netflix/mediaclient/media/Subtitle;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isNewSubtitle: current subtitle is null, can not report anything..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isNewSubtitle: subtitle is not changed, do not report anything..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isNewSubtitle: subtitle is changed, report QoE..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized startBif()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->getTrickplayUrlList()[Lcom/netflix/mediaclient/media/TrickplayUrl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->getTrickplayUrlList()[Lcom/netflix/mediaclient/media/TrickplayUrl;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/media/BifManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seekedToPosition:I

    invoke-direct {v1, v2, v0, v3}, Lcom/netflix/mediaclient/media/BifManager;-><init>(Landroid/content/Context;[Lcom/netflix/mediaclient/media/TrickplayUrl;I)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private transitToClosedState()V
    .locals 12

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mCloseTimeoutTask:Lcom/netflix/mediaclient/service/player/PlayerAgent$CloseTimeoutTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mCloseTimeoutTask:Lcom/netflix/mediaclient/service/player/PlayerAgent$CloseTimeoutTask;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$CloseTimeoutTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mCloseTimeoutTask:Lcom/netflix/mediaclient/service/player/PlayerAgent$CloseTimeoutTask;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_1
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->muteAudio(Z)V

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->toCancelOpen:Z

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->toPlayAfterStop:Z

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->toOpenAfterClose:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mHelper:Lcom/netflix/mediaclient/media/MediaPlayerHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mHelper:Lcom/netflix/mediaclient/media/MediaPlayerHelper;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/MediaPlayerHelper;->release()V

    :cond_2
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->toOpenAfterClose:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mState:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mStartPlayTimeoutTask:Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mStartPlayTimeoutTask:Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$StartPlayTimeoutTask;->cancel()Z

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mInitVBRTimeoutTask:Lcom/netflix/mediaclient/service/player/PlayerAgent$InitialVideoBitrateRangeTimeoutTask;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mInitVBRTimeoutTask:Lcom/netflix/mediaclient/service/player/PlayerAgent$InitialVideoBitrateRangeTimeoutTask;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent$InitialVideoBitrateRangeTimeoutTask;->cancel()Z

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->reloadPlayer()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->clearBifs()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mUpdatePlaybackVolumeMetric:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v9, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getStreamingQoe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->enableHTTPSAuth()Z

    move-result v2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->isMPPlayerType()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setStreamingQoe(Ljava/lang/String;ZZ)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMovieId:J

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCurrentNetType(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v5

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mBookmark:J

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isPreviewContentEnabled()Z

    move-result v8

    sget v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->MaxBRThreshold:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v10, v0

    invoke-interface/range {v1 .. v11}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->open(JLcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;JZLcom/netflix/mediaclient/util/PlaybackVolumeMetric;J)V

    iput-object v9, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlaybackVolumeMetric:Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;

    :goto_0
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->release()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerPlaybackClosedHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPlaybackClosedHandler;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private transitToOpeningState()V
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "MP: Set audio bitrange to 64 Kbps"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mAudioBitrateRange:Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setAudioBitrateRange(Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVideoResolutionRange()Lcom/netflix/mediaclient/media/VideoResolutionRange;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setVideoResolutionRange(Lcom/netflix/mediaclient/media/VideoResolutionRange;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setThrotteled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setNetworkProfile(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->muteAudio(Z)V

    return-void
.end method

.method private transitToStoppedState()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mAudioBitrateRange:Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setAudioBitrateRange(Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->isMPPlayerType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isNetworkTypeCellular(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mCellularNetworkListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x100

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isLowBitratePlaybackOnMobileNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    const/16 v1, 0x64

    invoke-interface {v0, v4, v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setVideoBitrateRange(II)V

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Pushing 100kbps bitrate for faster playback launch at Coppola portrait MDP in low bitrate test cell"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1b58

    sput v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TimeToWaitBeforeLowBRStreamsEnabled:I

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$InitialVideoBitrateRangeTimeoutTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent$InitialVideoBitrateRangeTimeoutTask;-><init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/service/player/PlayerAgent$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mInitVBRTimeoutTask:Lcom/netflix/mediaclient/service/player/PlayerAgent$InitialVideoBitrateRangeTimeoutTask;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mInitVBRTimeoutTask:Lcom/netflix/mediaclient/service/player/PlayerAgent$InitialVideoBitrateRangeTimeoutTask;

    sget v2, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TimeToWaitBeforeLowBRStreamsEnabled:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVideoResolutionRange()Lcom/netflix/mediaclient/media/VideoResolutionRange;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setVideoResolutionRange(Lcom/netflix/mediaclient/media/VideoResolutionRange;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0, v4}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setThrotteled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setNetworkProfile(I)V

    :cond_2
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->toPlayAfterStop:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->playWithBookmarkCheck()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    const/16 v1, 0xc8

    sget v2, Lcom/netflix/mediaclient/service/player/PlayerAgent;->MaxBRThreshold:I

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setVideoBitrateRange(II)V

    goto :goto_0
.end method

.method private unRegisterReceivers()V
    .locals 0

    return-void
.end method

.method private unregisterUserAgentReceiver()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mUserAgentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

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

.method private updateSubtitleSettings(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->findSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Subtitle configuration was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sets subtitle configuration to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    if-ne v1, v0, :cond_2

    if-nez p1, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Already used subtitle configuration, do nothing "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_3

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Forced set of subtitle configuration"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->getProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setSubtitleProfile(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->getMode()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setSubtitleOutputMode(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    goto :goto_0
.end method

.method private updateSubtitleSettingsFromQaLocalOverride(I)V
    .locals 4

    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->lookup(I)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received local override "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Subtitle configuration was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sets subtitle configuration to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    if-ne v1, v0, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Already used subtitle configuration, do nothing "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->getProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setSubtitleProfile(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->getMode()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setSubtitleOutputMode(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    goto :goto_0
.end method


# virtual methods
.method public addPlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->addPlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V

    return-void
.end method

.method public canUpdatePosition(I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seeking:Z

    if-eqz v2, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "canUpdatePosition:: seeking in progress, can not update position"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seekedToPosition:I

    if-lt p1, v2, :cond_5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "canUpdatePosition:: pts ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] >= seekedToPosition ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seekedToPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] , can update position"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->validPtsRecieved:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->prevEndPosition:I

    iget v3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seekedToPosition:I

    if-le v2, v3, :cond_3

    iget v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->prevEndPosition:I

    add-int/lit16 v2, v2, -0x7d0

    if-lt p1, v2, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "canUpdatePosition:: pts ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] >= prevEndPosition ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->prevEndPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] , invlalid PTS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->validPtsRecieved:Z

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "canUpdatePosition:: pts ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] < seekedToPosition ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seekedToPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] , can NOT update position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public close()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mUpdatePlaybackVolumeMetric:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlaybackVolumeMetric:Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "close()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSubtitles:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSubtitles:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->close()V

    :cond_0
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->inPlaybackSession:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->muteAudio(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->onCloseRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroy()V
    .locals 3

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->unregisterUserAgentReceiver()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->unRegisterReceivers()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

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

    :cond_1
    return-void
.end method

.method protected doInit()V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NRD_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "NRDP is NOT READY"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getMedia()Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$GenericMediaEventListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent$GenericMediaEventListener;-><init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/service/player/PlayerAgent$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMediaEventListener:Lcom/netflix/mediaclient/service/player/PlayerAgent$GenericMediaEventListener;

    invoke-static {}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->values()[Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Registering as listener for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/javabridge/ui/IMedia$MediaEventEnum;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMediaEventListener:Lcom/netflix/mediaclient/service/player/PlayerAgent$GenericMediaEventListener;

    invoke-interface {v5, v4, v6}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->clearRecords(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerType:Lcom/netflix/mediaclient/media/PlayerType;

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mState:I

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->toCancelOpen:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerType:Lcom/netflix/mediaclient/media/PlayerType;

    if-nez v0, :cond_5

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "This should not happen, player type was null at this point! Use default."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->findDefaultPlayerType()Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerType:Lcom/netflix/mediaclient/media/PlayerType;

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerType:Lcom/netflix/mediaclient/media/PlayerType;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/media/MediaPlayerHelperFactory;->getInstance(Landroid/content/Context;Lcom/netflix/mediaclient/media/PlayerType;)Lcom/netflix/mediaclient/media/MediaPlayerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mHelper:Lcom/netflix/mediaclient/media/MediaPlayerHelper;

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "MP: Set audio bitrange to 64 Kbps"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mAudioBitrateRange:Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setAudioBitrateRange(Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVideoResolutionRange()Lcom/netflix/mediaclient/media/VideoResolutionRange;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setVideoResolutionRange(Lcom/netflix/mediaclient/media/VideoResolutionRange;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getStreamingQoe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->enableHTTPSAuth()Z

    move-result v3

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->isMPPlayerType()Z

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setStreamingQoe(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setThrotteled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setNetworkProfile(I)V

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "MP: Set to Mobile network Profile"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/player/ManifestCache;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/player/ManifestCache;-><init>(Lcom/netflix/mediaclient/javabridge/ui/IMedia;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mManifestCache:Lcom/netflix/mediaclient/servicemgr/IManifestCache;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->updateSubtitleSettings(Z)V

    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "watchdog timer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mTimer:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->registerReceivers()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->registerUserAgentReceiver()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerFileManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerFileManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerFileManager:Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;-><init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSubtitles:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->addConfigurationChangeListener()V

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Player type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerType:Lcom/netflix/mediaclient/media/PlayerType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/PlayerType;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method excuteOnPlayExecutor(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    return-object v0
.end method

.method public getBifFrame(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mBifManager:Lcom/netflix/mediaclient/media/BifManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/media/BifManager;->getIndexFrame(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentAudioTrack()Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->getCurrentAudioTrack()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPlayableId()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMovieId:J

    return-wide v0
.end method

.method public getCurrentPositionMs()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->getMediaPosition()I

    move-result v0

    return v0
.end method

.method public getCurrentProgress()I
    .locals 5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seekedToPosition:I

    if-ge v0, v1, :cond_3

    iget v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seekedToPosition:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0xea60

    if-le v1, v2, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Gap is bigger than 1 minute"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stick to seekToPosition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seekedToPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seekedToPosition:I

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->validPtsRecieved:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->prevEndPosition:I

    add-int/lit16 v1, v1, -0x7d0

    iget v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seekedToPosition:I

    if-le v1, v2, :cond_5

    iget v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seekedToPosition:I

    add-int/lit16 v1, v1, 0x5dc

    if-lt v0, v1, :cond_5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pts ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] >= prevEndPosition ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->prevEndPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] , invlalid PTS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seekedToPosition:I

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Valid PTS was received"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->validPtsRecieved:Z

    goto :goto_0
.end method

.method public getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayAspectRatioDimension()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->getDisplayAspectRatioDimension()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->getDuration()I

    move-result v0

    return v0
.end method

.method public getManifestCache()Lcom/netflix/mediaclient/servicemgr/IManifestCache;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mManifestCache:Lcom/netflix/mediaclient/servicemgr/IManifestCache;

    return-object v0
.end method

.method public getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerFileManager:Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    return-object v0
.end method

.method public getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    return-object v0
.end method

.method public getSubtitleProfileFromMetadata()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSubtitles:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getSubtitleProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public getXid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mXid:Ljava/lang/String;

    return-object v0
.end method

.method public handleConnectivityChange(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isNetworkTypeCellular(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mCellularNetworkListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->networkCapabilities:Landroid/net/NetworkCapabilities;

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->shouldLimitCellularVideoBitrate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getBWSaveConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getCellularVideoBitrateKbps(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;)I

    move-result v0

    if-lez v0, :cond_2

    sget v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->MaxBRThreshold:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v3, v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->setVideoBitrateRange(II)V

    :cond_2
    const v0, 0x249f0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->setVideoStreamingBufferSize(I)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getManifestCache()Lcom/netflix/mediaclient/servicemgr/IManifestCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IManifestCache;->cacheFlush()V

    return-void

    :cond_4
    const v0, 0x493e0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->setVideoStreamingBufferSize(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0, v1, v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->updateCellLevelBandwidthMargin(II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mCellularNetworkListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->telephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_0
.end method

.method public isBufferingCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mBufferingCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mInPlayback:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManifestCacheEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerType:Lcom/netflix/mediaclient/media/PlayerType;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->isJPlayer2(Lcom/netflix/mediaclient/media/PlayerType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDisableMcQueenV2()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPropertyStreamingVideoDrs()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->isJPlayerBase(Lcom/netflix/mediaclient/media/PlayerType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->isPropertyStreamingVideoDrs()Z

    move-result v0

    goto :goto_0
.end method

.method public onConfigRefreshed(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->updateSubtitleSettings(Z)V

    :cond_0
    return-void
.end method

.method public open(JLcom/netflix/mediaclient/ui/common/PlayContext;J)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isBWSavingEnabledForPlay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mDelayedBifDowloadForDataSaver:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getBWSaveConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getCellularVideoBitrateKbps(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;)I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "nf_bw bwOverride: %d,MaxBRThreshold : %d "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget v5, Lcom/netflix/mediaclient/service/player/PlayerAgent;->MaxBRThreshold:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-lez v0, :cond_4

    :goto_0
    sput v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->MaxBRThreshold:I

    :cond_1
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/AdaptiveMediaDecoderHelper;->isAvcDecoderSupportsAdaptivePlayback()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->MaxBRThreshold:I

    sget v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->MaxNonAdaptiveThreshold:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->MaxBRThreshold:I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "nf_bw MaxBRThreshold nonAdaptive Override : %d "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/netflix/mediaclient/service/player/PlayerAgent;->MaxBRThreshold:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMovieId:J

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-wide p4, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mBookmark:J

    iput-wide p4, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mStartPlayPositionInTitleInMs:J

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Open called movieId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " trackId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bookmark:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " StartPlayPositionInTitleInMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mStartPlayPositionInTitleInMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->onOpenRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->reportPlaybackStarted()V

    monitor-exit p0

    return-void

    :cond_4
    sget v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->MaxBRThreshold:I

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x4e20

    sput v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->MaxBRThreshold:I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "nf_bw MaxBRThreshold : %d "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/netflix/mediaclient/service/player/PlayerAgent;->MaxBRThreshold:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->pause()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->reportPlaybackPaused()V

    return-void
.end method

.method public play()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->onPlayRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized reloadPlayer()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reloadPlayer if required"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/media/MediaPlayerHelperFactory;->getInstance(Landroid/content/Context;Lcom/netflix/mediaclient/media/PlayerType;)Lcom/netflix/mediaclient/media/MediaPlayerHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mHelper:Lcom/netflix/mediaclient/media/MediaPlayerHelper;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerType:Lcom/netflix/mediaclient/media/PlayerType;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Player type is not changed! It is still "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerType:Lcom/netflix/mediaclient/media/PlayerType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/PlayerType;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". Preparing players!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->preparePlayerType(Lcom/netflix/mediaclient/media/PlayerType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerType:Lcom/netflix/mediaclient/media/PlayerType;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerType:Lcom/netflix/mediaclient/media/PlayerType;

    if-nez v0, :cond_3

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "This should not happen, player type was null at this point! Use default."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->findDefaultPlayerType()Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerType:Lcom/netflix/mediaclient/media/PlayerType;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerType:Lcom/netflix/mediaclient/media/PlayerType;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->preparePlayerType(Lcom/netflix/mediaclient/media/PlayerType;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerType:Lcom/netflix/mediaclient/media/PlayerType;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->changePlayer(Lcom/netflix/mediaclient/media/PlayerType;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mAudioBitrateRange:Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setAudioBitrateRange(Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVideoResolutionRange()Lcom/netflix/mediaclient/media/VideoResolutionRange;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setVideoResolutionRange(Lcom/netflix/mediaclient/media/VideoResolutionRange;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setThrotteled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setNetworkProfile(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v0, 0x190

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Player changed done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Player type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerType:Lcom/netflix/mediaclient/media/PlayerType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/PlayerType;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "ReloadPlayer "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public removePlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->removePlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V

    return-void
.end method

.method public reportFailedSubtitle(Ljava/lang/String;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;ZLcom/netflix/mediaclient/android/app/Status;[Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to download subtitles metadata from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", because "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v0

    const-string/jumbo v1, "Failed to download subtitle metadata"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->reportFailedSubtitle(Ljava/lang/String;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;ZLcom/netflix/mediaclient/android/app/Status;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnSubtitleFailedHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleFailedHandler;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to download subtitles metadata from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", because "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportSubtitleQoe(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->reportSubtitleQoe(Ljava/lang/String;II)V

    return-void
.end method

.method public seekTo(IZ)V
    .locals 2

    const/4 v0, 0x0

    iput p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seekedToPosition:I

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mForcedRebuffer:Z

    iput v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mRelativeSeekPosition:I

    iput v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mFuzz:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->onSeekRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSubtitles:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSubtitles:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSubtitles:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seekedToPosition:I

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->seeked(I)V

    :cond_0
    return-void
.end method

.method public seekWithFuzzRange(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getCurrentPositionMs()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seekedToPosition:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mForcedRebuffer:Z

    iput p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mRelativeSeekPosition:I

    iput p2, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mFuzz:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->onSeekRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSubtitles:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSubtitles:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSubtitles:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->seekedToPosition:I

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->seeked(I)V

    :cond_0
    return-void
.end method

.method public declared-synchronized selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;Z)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Selected track Audio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Selected track Subtitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;)Z

    if-eqz p3, :cond_1

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->reportSubtitleQoeIfSubtitleIsChanged(Lcom/netflix/mediaclient/media/Subtitle;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mStartPlayPositionInTitleInMs:J

    :cond_1
    if-nez p2, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Removing subtitles"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAudioDuck(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mHelper:Lcom/netflix/mediaclient/media/MediaPlayerHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mHelper:Lcom/netflix/mediaclient/media/MediaPlayerHelper;

    instance-of v0, v0, Lcom/netflix/mediaclient/media/JPlayer2Helper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mHelper:Lcom/netflix/mediaclient/media/MediaPlayerHelper;

    check-cast v0, Lcom/netflix/mediaclient/media/JPlayer2Helper;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/media/JPlayer2Helper;->setAudioDuck(Z)V

    :cond_0
    return-void
.end method

.method public setJPlayerListener(Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mJPlayerListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Surface is being set: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "SurfaceExisted"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mHelper:Lcom/netflix/mediaclient/media/MediaPlayerHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mHelper:Lcom/netflix/mediaclient/media/MediaPlayerHelper;

    instance-of v0, v0, Lcom/netflix/mediaclient/media/JPlayer2Helper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mHelper:Lcom/netflix/mediaclient/media/MediaPlayerHelper;

    check-cast v0, Lcom/netflix/mediaclient/media/JPlayer2Helper;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/media/JPlayer2Helper;->updateSurface(Landroid/view/Surface;)V

    :cond_1
    if-nez p1, :cond_3

    :goto_1
    return-void

    :cond_2
    const-string/jumbo v0, "No Surface Existed"

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setSurface(Landroid/view/Surface;)V

    goto :goto_1
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public setVOapi(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setVOapi(JJ)V

    return-void
.end method

.method public setVideoBitrateRange(II)V
    .locals 5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "nf_bw setVideoBitrateRange :(%d, %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput p2, Lcom/netflix/mediaclient/service/player/PlayerAgent;->MaxBRThreshold:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setVideoBitrateRange(II)V

    :cond_0
    return-void
.end method

.method setVideoStreamingBufferSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setMaxVideoBufferSize(I)V

    :cond_0
    return-void
.end method

.method public unpause()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mMedia:Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->unpause()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->reportPlaybackUnpaused()V

    return-void
.end method
