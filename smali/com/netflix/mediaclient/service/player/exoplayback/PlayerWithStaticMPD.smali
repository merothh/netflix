.class Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;
.super Ljava/lang/Object;
.source "PlayerWithStaticMPD.java"

# interfaces
.implements Lcom/google/android/exoplayer/ExoPlayer$Listener;
.implements Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
.implements Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
.implements Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;
.implements Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;
.implements Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;


# static fields
.field private static final AUDIO_BUFFER_SEGMENTS:I = 0x36

.field private static final BUFFER_SEGMENT_SIZE:I = 0x10000

.field static final RENDERER_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OfflinePlayback_Player"

.field static final TYPE_AUDIO:I = 0x1

.field static final TYPE_VIDEO:I = 0x0

.field private static final VIDEO_BUFFER_SEGMENTS:I = 0xc8


# instance fields
.field private mAudioRender:Lcom/google/android/exoplayer/TrackRenderer;

.field private mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;

.field private mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

.field private mHeight:I

.field private mMPD:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

.field private mPlaybackStarted:Z

.field private mPlaybackStat:Lcom/netflix/mediaclient/service/player/exoplayback/PlaybackStat;

.field private mPlayerState:I

.field private mSeekToMs:J

.field mVideoChunkSource:Lcom/google/android/exoplayer/dash/DashChunkSource;

.field private mVideoDecoderName:Ljava/lang/String;

.field private mWidth:I

.field renderers:[Lcom/google/android/exoplayer/TrackRenderer;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;Lcom/google/android/exoplayer/drm/DrmSessionManager;J)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mPlayerState:I

    iput v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mWidth:I

    iput v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mHeight:I

    const-string/jumbo v0, "OfflinePlayback_Player"

    const-string/jumbo v1, "()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mMPD:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iput-wide p6, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mSeekToMs:J

    invoke-direct {p0, p1, p2, p5}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->createRendersAndPlayer(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/DrmSessionManager;)V

    const-string/jumbo v0, "OfflinePlayback_Player"

    const-string/jumbo v1, "() done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createRendersAndPlayer(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/DrmSessionManager;)V
    .locals 20

    new-instance v6, Lcom/google/android/exoplayer/DefaultLoadControl;

    new-instance v4, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    const/high16 v5, 0x10000

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    invoke-direct {v6, v4}, Lcom/google/android/exoplayer/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    new-instance v19, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;)V

    new-instance v4, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    const-string/jumbo v5, "OfflinePlayback_Player"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/android/exoplayer/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1, v5}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    new-instance v5, Lcom/google/android/exoplayer/dash/DashChunkSource;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mMPD:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9}, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->newVideoInstance(Landroid/content/Context;ZZ)Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;

    move-result-object v8

    new-instance v9, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;-><init>(Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    invoke-direct {v5, v7, v8, v4, v9}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mVideoChunkSource:Lcom/google/android/exoplayer/dash/DashChunkSource;

    new-instance v4, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mVideoChunkSource:Lcom/google/android/exoplayer/dash/DashChunkSource;

    const/high16 v7, 0xc80000

    const/4 v10, 0x0

    move-object/from16 v8, p2

    move-object/from16 v9, p0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    new-instance v7, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    new-instance v10, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;

    invoke-direct {v10}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;-><init>()V

    const/4 v11, 0x1

    const-wide/16 v12, 0x1388

    const/4 v15, 0x1

    const/16 v18, 0x32

    move-object/from16 v8, p1

    move-object v9, v4

    move-object/from16 v14, p3

    move-object/from16 v16, p2

    move-object/from16 v17, p0

    invoke-direct/range {v7 .. v18}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;IJLcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    new-instance v4, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    const-string/jumbo v5, "OfflinePlayback_Player"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/android/exoplayer/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1, v5}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/exoplayer/dash/DashChunkSource;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mMPD:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    invoke-static {}, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->newAudioInstance()Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;

    move-result-object v8

    new-instance v10, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;-><init>(Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    invoke-direct {v9, v5, v8, v4, v10}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V

    new-instance v8, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    const/high16 v11, 0x360000

    const/4 v14, 0x1

    move-object v10, v6

    move-object/from16 v12, p2

    move-object/from16 v13, p0

    invoke-direct/range {v8 .. v14}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    new-instance v9, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    sget-object v11, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/4 v13, 0x1

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer/audio/AudioCapabilities;

    move-result-object v16

    const/16 v17, 0x3

    move-object v10, v8

    move-object/from16 v12, p3

    move-object/from16 v14, p2

    move-object/from16 v15, p0

    invoke-direct/range {v9 .. v17}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mAudioRender:Lcom/google/android/exoplayer/TrackRenderer;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/android/exoplayer/TrackRenderer;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mAudioRender:Lcom/google/android/exoplayer/TrackRenderer;

    aput-object v6, v4, v5

    const/4 v4, 0x2

    const/16 v5, 0x3e8

    const/16 v6, 0x1388

    invoke-static {v4, v5, v6}, Lcom/google/android/exoplayer/ExoPlayer$Factory;->newInstance(III)Lcom/google/android/exoplayer/ExoPlayer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/google/android/exoplayer/ExoPlayer;->addListener(Lcom/google/android/exoplayer/ExoPlayer$Listener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mSeekToMs:J

    invoke-interface {v4, v6, v7}, Lcom/google/android/exoplayer/ExoPlayer;->seekTo(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer/ExoPlayer;->prepare([Lcom/google/android/exoplayer/TrackRenderer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->play()V

    return-void
.end method

.method private setVideoDecoderName(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vp9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hevc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "h265"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "avc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "h264"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mVideoDecoderName:Ljava/lang/String;

    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/PlaybackStat;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mVideoDecoderName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/PlaybackStat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mPlaybackStat:Lcom/netflix/mediaclient/service/player/exoplayback/PlaybackStat;

    :cond_1
    return-void
.end method


# virtual methods
.method public getAudioCurrentTrackId()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer/ExoPlayer;->getTrackCount(I)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v1, v4}, Lcom/google/android/exoplayer/ExoPlayer;->getSelectedTrack(I)I

    move-result v1

    if-ge v1, v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OfflinePlayback_Player"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAudioCurrentTrackId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v3, v4, v1}, Lcom/google/android/exoplayer/ExoPlayer;->getTrackFormat(II)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, v4, v1}, Lcom/google/android/exoplayer/ExoPlayer;->getTrackFormat(II)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferedPercentage()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlaybackStatJSON()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mPlaybackStat:Lcom/netflix/mediaclient/service/player/exoplayback/PlaybackStat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mPlaybackStat:Lcom/netflix/mediaclient/service/player/exoplayback/PlaybackStat;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlaybackStat;->getJSON()Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoDecoderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mVideoDecoderName:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoResolution()Landroid/util/Pair;
    .locals 2
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

    iget v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAudioTrackInitializationError(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;

    new-instance v1, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;

    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->AUDIOTRACK_INIT_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    invoke-virtual {p1}, Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->PLAYBACK_INIT:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/netflix/mediaclient/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;->playerError(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;)V

    const-string/jumbo v0, "OfflinePlayback_Player"

    const-string/jumbo v1, "onAudioTrackInitializationError"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAudioTrackUnderrun(IJJ)V
    .locals 2

    const-string/jumbo v0, "OfflinePlayback_Player"

    const-string/jumbo v1, "onAudioTrackUnderrun"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAudioTrackWriteError(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;

    new-instance v1, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;

    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->AUDIOTRACK_WRITE_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    invoke-virtual {p1}, Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->PLAYBACK_PLAY:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/netflix/mediaclient/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;->playerError(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;)V

    const-string/jumbo v0, "OfflinePlayback_Player"

    const-string/jumbo v1, "onAudioTrackWriteError"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAvailableRangeChanged(ILcom/google/android/exoplayer/TimeRange;)V
    .locals 2

    const-string/jumbo v0, "OfflinePlayback_Player"

    const-string/jumbo v1, "DashChunkSource onAvailableRangeChanged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBandwidthSample(IJJ)V
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onCryptoError(Landroid/media/MediaCodec$CryptoException;)V
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;

    new-instance v1, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;

    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->CRYPTO_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    invoke-virtual {p1}, Landroid/media/MediaCodec$CryptoException;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->PLAYBACK_PLAY:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/netflix/mediaclient/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;->playerError(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;)V

    const-string/jumbo v0, "OfflinePlayback_Player"

    const-string/jumbo v1, "MediaCodecTrackRenderer onCryptoError"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public onDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;

    new-instance v1, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;

    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->DECODER_INIT_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    invoke-virtual {p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->PLAYBACK_INIT:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/netflix/mediaclient/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;->playerError(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;)V

    const-string/jumbo v0, "OfflinePlayback_Player"

    const-string/jumbo v1, "MediaCodecTrackRenderer onDecoderInitializationError"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OfflinePlayback_Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MediaCodecTrackRenderer onDecoderInitialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->setVideoDecoderName(Ljava/lang/String;)V

    return-void
.end method

.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer/chunk/Format;IJ)V
    .locals 0

    return-void
.end method

.method public onDrawnToSurface(Landroid/view/Surface;)V
    .locals 2

    const-string/jumbo v0, "OfflinePlayback_Player"

    const-string/jumbo v1, "onDrawnToSurface"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 4

    const-string/jumbo v0, "OfflinePlayback_Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDroppedFrames: count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " elapsed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mPlaybackStat:Lcom/netflix/mediaclient/service/player/exoplayback/PlaybackStat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mPlaybackStat:Lcom/netflix/mediaclient/service/player/exoplayback/PlaybackStat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/player/exoplayback/PlaybackStat;->updateDecoderStat(IJ)V

    :cond_0
    return-void
.end method

.method public onLoadCanceled(IJ)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OfflinePlayback_Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ChunkSampleSource onLoadCanceled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onLoadCompleted(IJIILcom/google/android/exoplayer/chunk/Format;JJJJ)V
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onLoadError(ILjava/io/IOException;)V
    .locals 6

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OfflinePlayback_Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ChunkSampleSource onLoadError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;

    new-instance v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->AUDIO_LOAD_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    :goto_0
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->PLAYBACK_PLAY:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lcom/netflix/mediaclient/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;->playerError(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;)V

    return-void

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->VIDEO_LOAD_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    goto :goto_0
.end method

.method public onLoadStarted(IJIILcom/google/android/exoplayer/chunk/Format;JJ)V
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onPlayWhenReadyCommitted()V
    .locals 2

    const-string/jumbo v0, "OfflinePlayback_Player"

    const-string/jumbo v1, "onPlayWhenReadyCommitted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer/ExoPlaybackException;)V
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;

    new-instance v1, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;

    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->PLAYER_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    invoke-virtual {p1}, Lcom/google/android/exoplayer/ExoPlaybackException;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->PLAYBACK_PLAY:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/netflix/mediaclient/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;->playerError(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;)V

    const-string/jumbo v0, "OfflinePlayback_Player"

    const-string/jumbo v1, "onPlayerError"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 4

    const/4 v3, 0x4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OfflinePlayback_Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlayerStateChanged  =>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne p2, v3, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mPlayerState:I

    if-eq p2, v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mPlaybackStarted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;->playerPrepared()V

    :cond_1
    if-ne p2, v3, :cond_2

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;->playerStarted()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mPlaybackStarted:Z

    :cond_2
    :goto_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;->playerBuffering()V

    :cond_3
    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;->playerStopped()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mPlaybackStarted:Z

    :cond_4
    iput p2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mPlayerState:I

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mPlaybackStarted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mCallback:Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlayerListener;->playerPaused()V

    goto :goto_0
.end method

.method public onUpstreamDiscarded(IJJ)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OfflinePlayback_Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVideoSizeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mWidth:I

    iput p2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mHeight:I

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public play()V
    .locals 2

    const-string/jumbo v0, "OfflinePlayback_Player"

    const-string/jumbo v1, "play() "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->release()V

    return-void
.end method

.method public seekTo(J)V
    .locals 5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mVideoChunkSource:Lcom/google/android/exoplayer/dash/DashChunkSource;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getSeekToTime(J)J

    move-result-wide v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OfflinePlayback_Player"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "seekTo() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", will seek to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer/ExoPlayer;->seekTo(J)V

    return-void
.end method

.method public selectAudioTrack(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OfflinePlayback_Player"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectAudioTrack "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->getAudioCurrentTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer/ExoPlayer;->getTrackCount(I)I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_4

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v4, v0, v2}, Lcom/google/android/exoplayer/ExoPlayer;->getTrackFormat(II)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "OfflinePlayback_Player"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectAudioTrack index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer/ExoPlayer;->setSelectedTrack(II)V

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public setAudioDuck(Z)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mAudioRender:Lcom/google/android/exoplayer/TrackRenderer;

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/exoplayer/ExoPlayer;->sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mAudioRender:Lcom/google/android/exoplayer/TrackRenderer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/exoplayer/ExoPlayer;->sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/exoplayer/ExoPlayer;->sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->stop()V

    return-void
.end method
