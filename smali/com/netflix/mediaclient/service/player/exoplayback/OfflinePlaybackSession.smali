.class public Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;
.super Ljava/lang/Object;
.source "OfflinePlaybackSession.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;
.implements Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;


# static fields
.field private static final CALLBACK_INTERVAL_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "OfflinePlayback_Session"


# instance fields
.field private mABitrate:J

.field private mAdlid:Ljava/lang/String;

.field private mAspectRatio:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioSource:[Lcom/netflix/mediaclient/media/AudioSource;

.field private mAudioSubtitleDefaultOrderInfo:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

.field private mBatteryStats:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;

.field private final mBookmark:J

.field private final mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

.field private mDxid:Ljava/lang/String;

.field private mEndPlayLogged:Z

.field private final mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mMovieId:J

.field private final mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

.field private mOfflineBifManger:Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;

.field private mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

.field private mOxid:Ljava/lang/String;

.field private mPdsPlaySession:Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;

.field private final mPeriodicCallback:Ljava/lang/Runnable;

.field private mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field private mPlayTracker:Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

.field private mPlaybackTS:J

.field private mPowerStatusRcvr:Lcom/netflix/mediaclient/service/player/exoplayback/PowerStatusReceiver;

.field private mReportedAspectRatio:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResumePlayReason:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

.field private mStartPlayLogged:Z

.field private mSubtitle:[Lcom/netflix/mediaclient/media/Subtitle;

.field private mSubtitledlid:Ljava/lang/String;

.field private final mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

.field private mSurface:Landroid/view/Surface;

.field private mUserPlay:J

.field private mVBitrate:J

.field private mVdlid:Ljava/lang/String;

.field private mVideoTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mXid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lcom/netflix/mediaclient/service/pdslogging/PdsPlayInterface;Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;JJLcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->none:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mResumePlayReason:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlaybackTS:J

    new-instance v2, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPeriodicCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMainHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-static {}, Lcom/netflix/mediaclient/util/NetflixTransactionIdGenerator;->generateXid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mXid:Ljava/lang/String;

    move-wide/from16 v0, p8

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    move-wide/from16 v0, p10

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBookmark:J

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mUserPlay:J

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-wide/from16 v0, p8

    invoke-direct {p0, p4, v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->requestOfflineManifest(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;J)V

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getSessionId()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBookmark:J

    move-object/from16 v3, p6

    move-object/from16 v8, p12

    invoke-interface/range {v3 .. v8}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlayInterface;->createPdsPlaySession(Ljava/lang/String;Ljava/lang/String;JLcom/netflix/mediaclient/ui/common/PlayContext;)Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->createBatteryStats(Landroid/content/Context;)Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBatteryStats:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lcom/netflix/mediaclient/service/player/exoplayback/PowerStatusReceiver;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBatteryStats:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;

    invoke-direct {v3, v4}, Lcom/netflix/mediaclient/service/player/exoplayback/PowerStatusReceiver;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;)V

    iput-object v3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPowerStatusRcvr:Lcom/netflix/mediaclient/service/player/exoplayback/PowerStatusReceiver;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPowerStatusRcvr:Lcom/netflix/mediaclient/service/player/exoplayback/PowerStatusReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->handleManifest(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->reportStartPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlaybackTS:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;J)J
    .locals 1

    iput-wide p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlaybackTS:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayTracker:Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->handleSubtitleUpdate(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getPlayTimeJson()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayTracker:Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayTracker:Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->getPlayTimeJson()Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->getDefaultTimeJson()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private handleManifest(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAudioSubtitleDefaultOrderInfo:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitle:[Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAudioSource:[Lcom/netflix/mediaclient/media/AudioSource;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;->onManifest(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getOxId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOxid:Ljava/lang/String;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getDxId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mDxid:Ljava/lang/String;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getMpd()Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v4

    if-nez v4, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->MANIFEST_PROCESSING:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "OfflinePlayback.MPDIsNull"

    const-string/jumbo v3, ""

    invoke-direct {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->reportStartPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getPlayTimeJson()Lorg/json/JSONObject;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->MANIFEST_PROCESSING:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "OfflinePlayback.MPDIsNull"

    invoke-interface {v0, v2, v3, v4}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;->stop(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;

    new-instance v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;

    sget-object v3, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->MPD_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    const-string/jumbo v4, "MPD is null"

    sget-object v5, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->MANIFEST_PROCESSING:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;->handleError(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getVideoTrackList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mVideoTracks:Ljava/util/List;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mVideoTracks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->streams:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/Stream;

    iget v0, v0, Lcom/netflix/mediaclient/media/manifest/Stream;->bitrate:I

    int-to-long v6, v0

    iput-wide v6, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mVBitrate:J

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/Stream;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadable_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mVdlid:Ljava/lang/String;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getAspectWidthHeight()Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAspectRatio:Landroid/util/Pair;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getOfflineKeySetId()[B

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v2, v0

    if-lez v2, :cond_5

    const-string/jumbo v2, "OfflinePlayback_Session"

    const-string/jumbo v3, "has KeySetId"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->logByteArrayRaw(Ljava/lang/String;Ljava/lang/String;[B)V

    :try_start_0
    new-instance v5, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;

    invoke-direct {v5, v0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getBifFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "OfflinePlayback_Session"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onManifestResponse BitUrl "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    new-instance v0, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getBifFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineBifManger:Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;

    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMainHandler:Landroid/os/Handler;

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBookmark:J

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;Lcom/google/android/exoplayer/drm/DrmSessionManager;J)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBookmark:J

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlaybackTS:J

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->setSurface(Landroid/view/Surface;)V

    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayTracker:Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "OfflinePlayback_Session"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fail to create OfflineDrmSession "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->MANIFEST_PROCESSING:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "OfflinePlayback.DrmSessionRestoreFailed"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->reportStartPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getPlayTimeJson()Lorg/json/JSONObject;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->MANIFEST_PROCESSING:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "OfflinePlayback.DrmSessionRestoreFailed"

    invoke-interface {v0, v2, v3, v4}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;->stop(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;

    new-instance v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;

    sget-object v3, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->SESSION_INIT_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    const-string/jumbo v4, "OfflineDrmSession failed"

    sget-object v5, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->MANIFEST_PROCESSING:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;->handleError(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "OfflinePlayback_Session"

    const-string/jumbo v2, "invalid offline KeySetId, assume it is clear content"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v1

    goto/16 :goto_1
.end method

.method private declared-synchronized handleSubtitleUpdate(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OfflinePlayback_Session"

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
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "OfflinePlayback_Session"

    const-string/jumbo v1, "Subtitles are not visible, do not send any update"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    if-nez v0, :cond_2

    const-string/jumbo v0, "OfflinePlayback_Session"

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
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v0, "OfflinePlayback_Session"

    const-string/jumbo v1, "Subtitle data is not available."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->isReady()Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v0, "OfflinePlayback_Session"

    const-string/jumbo v1, "Subtitle data is not ready yet!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v0, "OfflinePlayback_Session"

    const-string/jumbo v1, "Not playing, do NOT send subtitle screen update"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getSubtitlesForPosition(J)Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;->handleSubtitleUpdate(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private reportAspectRatio(Landroid/util/Pair;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v3

    if-gtz v0, :cond_0

    const v0, 0x54600

    :cond_0
    :goto_0
    mul-int v3, v2, v1

    if-le v3, v0, :cond_1

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private reportEndPlay(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 25

    const-string/jumbo v2, "OfflinePlayback_Session"

    const-string/jumbo v3, "reportEndPlay: "

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mEndPlayLogged:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OfflinePlayback_Session"

    const-string/jumbo v3, "reportEndPlay: Already logged"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBatteryStats:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->updateBatteryStat(Z)V

    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mUserPlay:J

    sub-long v12, v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getCurrentPosition()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v19

    sget-object v4, Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;->INFO:Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;

    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;->error:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    sget-object v4, Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;->ERROR:Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;

    :cond_1
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->getPlaybackStatJSON()Lorg/json/JSONObject;

    move-result-object v20

    :cond_2
    const-string/jumbo v2, "OfflinePlayback_Session"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reportEndPlay: BatteryStat:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBatteryStats:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->getJSON()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "OfflinePlayback_Session"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reportEndPlay: PlayTimeTracker"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayTracker:Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v2}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v2

    int-to-long v7, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mXid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOxid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mDxid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayTracker:Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->getMovieTotalInMs()J

    move-result-wide v16

    const-wide/16 v22, 0x3e8

    div-long v16, v16, v22

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;->name()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBatteryStats:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->getJSON()Lorg/json/JSONObject;

    move-result-object v21

    move-object/from16 v22, p2

    move-object/from16 v23, p3

    move-object/from16 v24, p4

    invoke-direct/range {v3 .. v24}, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;-><init>(Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->sendBlob(Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mEndPlayLogged:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private reportResumePlay(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;)V
    .locals 20

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mUserPlay:J

    sub-long v8, v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getCurrentPosition()J

    move-result-wide v6

    new-instance v3, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/ResumePlay;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mXid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOxid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mDxid:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->name()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mVdlid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mVBitrate:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAdlid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mABitrate:J

    move-wide/from16 v18, v0

    invoke-direct/range {v3 .. v19}, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/ResumePlay;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->sendBlob(Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private reportStartPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 28

    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mUserPlay:J

    sub-long v12, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v24

    sget-object v4, Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;->INFO:Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;

    if-eqz p1, :cond_0

    sget-object v4, Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;->ERROR:Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBatteryStats:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->updateBatteryStat(Z)V

    :try_start_0
    new-instance v3, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StartPlay;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v2}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v2

    int-to-long v7, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mXid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOxid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mDxid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBookmark:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mVdlid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mVBitrate:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAdlid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mABitrate:J

    move-wide/from16 v20, v0

    move-wide/from16 v22, v12

    move-object/from16 v25, p1

    move-object/from16 v26, p2

    move-object/from16 v27, p3

    invoke-direct/range {v3 .. v27}, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StartPlay;-><init>(Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;JLjava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->sendBlob(Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mStartPlayLogged:Z

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private reportStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mUserPlay:J

    sub-long v4, v0, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getCurrentPosition()J

    move-result-wide v6

    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StateChanged;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mXid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOxid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mDxid:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StateChanged;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->sendBlob(Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private requestOfflineManifest(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;J)V
    .locals 4

    const-string/jumbo v0, "OfflinePlayback_Session"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestOfflineManifest movieId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$1;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)V

    invoke-interface {p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;->requestOfflineManifest(JLcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;)V

    return-void
.end method

.method private sendBlob(Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OfflinePlayback_Session"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendBlob: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    return-void
.end method

.method private updateCurrentAudioTrackData()V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->getAudioCurrentTrackId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAudioSource:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    invoke-virtual {v6}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/StringUtils;->notEmptyAndEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lcom/netflix/mediaclient/media/AudioSource;->getStreams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/Stream;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadable_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAdlid:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/media/AudioSource;->getStreams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/Stream;

    iget v0, v0, Lcom/netflix/mediaclient/media/manifest/Stream;->bitrate:I

    int-to-long v6, v0

    iput-wide v6, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mABitrate:J

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayTracker:Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mVdlid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAdlid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitledlid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->updateCurrrentPlayDlids(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAudioSubtitleDefaultOrderInfo:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    return-object v0
.end method

.method public getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAudioSource:[Lcom/netflix/mediaclient/media/AudioSource;

    return-object v0
.end method

.method public getBifFrame(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineBifManger:Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineBifManger:Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;->getIndexFrame(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferedPercentage()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->getBufferedPercentage()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferedPosition()J
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->getBufferedPosition()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentAudioTrack()Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->getAudioCurrentTrackId()Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPlayableId()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    return-wide v0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->getCurrentPosition()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->getDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/media/PlayoutMetadata;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mVBitrate:J

    long-to-int v1, v2

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->getVideoResolution()Landroid/util/Pair;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->getVideoDecoderName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/media/PlayoutMetadata;-><init>(ILandroid/util/Pair;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mXid:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitle:[Lcom/netflix/mediaclient/media/Subtitle;

    return-object v0
.end method

.method public getWidthHeight()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mReportedAspectRatio:Landroid/util/Pair;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAspectRatio:Landroid/util/Pair;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->getVideoResolution()Landroid/util/Pair;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->reportAspectRatio(Landroid/util/Pair;Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mReportedAspectRatio:Landroid/util/Pair;

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "OfflinePlayback_Session"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AspectRatio convert from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAspectRatio:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAspectRatio:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mReportedAspectRatio:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mReportedAspectRatio:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mReportedAspectRatio:Landroid/util/Pair;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OfflinePlayback_Session"

    const-string/jumbo v1, "pause: "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->pause()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;->notifyPause(J)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OfflinePlayback_Session"

    const-string/jumbo v1, "play: "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->play()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;->play()V

    :cond_0
    return-void
.end method

.method public playerBuffering()V
    .locals 0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->play()V

    return-void
.end method

.method public playerError(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;)V
    .locals 4

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mStartPlayLogged:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;->error:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;->getUiDisplayErrorCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "OfflinePlayback.PlaybackFailed"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;->getExceptionStack()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->reportEndPlay(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getPlayTimeJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;->getUiDisplayErrorCode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "OfflinePlayback.PlaybackFailed"

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;->stop(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;->handleError(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;->notifyPlayError(J)V

    return-void

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->PLAYBACK_INIT:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OfflinePlayback.PlaybackFailed"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;->getExceptionStack()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->reportStartPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playerPaused()V
    .locals 2

    const-string/jumbo v0, "Playing"

    const-string/jumbo v1, "Paused"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->reportStateChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public playerPrepared()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->updateCurrentAudioTrackData()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;->handlePrepared()V

    return-void
.end method

.method public playerStarted()V
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mStartPlayLogged:Z

    if-nez v0, :cond_0

    invoke-direct {p0, v1, v1, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->reportStartPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;->notifyPlay(J)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;->handleStarted()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;->handlePlaying()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPeriodicCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mResumePlayReason:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->none:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "Paused"

    const-string/jumbo v1, "Playing"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->reportStateChange(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->none:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mResumePlayReason:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mResumePlayReason:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->reportResumePlay(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;)V

    goto :goto_1
.end method

.method public playerStopped()V
    .locals 4

    const/4 v2, 0x0

    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;->ended:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    invoke-direct {p0, v0, v2, v2, v2}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->reportEndPlay(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getPlayTimeJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1, v2, v2}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;->stop(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;->notifyStop(J)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;->handleStopped()V

    return-void
.end method

.method public release()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->release()V

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineBifManger:Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineBifManger:Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineBifManger:Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->close()V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPowerStatusRcvr:Lcom/netflix/mediaclient/service/player/exoplayback/PowerStatusReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;->abortManifestRequest(J)V

    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "OfflinePlayback_Session"

    const-string/jumbo v1, "seekTo: "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mResumePlayReason:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->none:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->repos:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mResumePlayReason:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    :cond_2
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlaybackTS:J

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->seekTo(J)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;->seekTo(J)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    long-to-int v1, p1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->seeked(I)V

    goto :goto_0
.end method

.method public selectAudioTrack(Lcom/netflix/mediaclient/media/AudioSource;)Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->selectAudioTrack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->updateCurrentAudioTrackData()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;Z)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {v1}, Lcom/netflix/mediaclient/media/Subtitle;->getDownloadableId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitledlid:Ljava/lang/String;

    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "OfflinePlayback_Session"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Selected track Audio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "OfflinePlayback_Session"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Selected track Subtitle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "OfflinePlayback_Session"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p3, :cond_5

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->selectAudioTrack(Lcom/netflix/mediaclient/media/AudioSource;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->updateCurrentAudioTrackData()V

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBookmark:J

    invoke-virtual {v1, p2, v2, v4, v5}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->changeSubtitle(Lcom/netflix/mediaclient/media/Subtitle;FJ)V

    if-nez p2, :cond_3

    const-string/jumbo v1, "OfflinePlayback_Session"

    const-string/jumbo v2, "Removing subtitles"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayTracker:Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mVdlid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAdlid:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitledlid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->updateCurrrentPlayDlids(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitledlid:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v1, "OfflinePlayback_Session"

    const-string/jumbo v2, "Initial set of audio and subtitle. ExoPlayer sets initial audio, do subtitle only!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setAudioDuck(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->setAudioDuck(Z)V

    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->setSurface(Landroid/view/Surface;)V

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public stop()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "OfflinePlayback_Session"

    const-string/jumbo v1, "stop: "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->stop()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPeriodicCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;->notifyStop(J)V

    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;->stopped:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    invoke-direct {p0, v0, v4, v4, v4}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->reportEndPlay(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "OfflinePlayback_Session"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getPlayTimeJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getPlayTimeJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1, v4, v4}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;->stop(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;->abortManifestRequest(J)V

    goto :goto_0
.end method
