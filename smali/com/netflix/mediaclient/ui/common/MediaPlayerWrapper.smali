.class public Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field private static final MEDIA_PLAYER_END:I = 0x8

.field private static final MEDIA_PLAYER_ERROR:I = 0x9

.field private static final MEDIA_PLAYER_IDLE:I = 0x0

.field private static final MEDIA_PLAYER_INITIALIZED:I = 0x1

.field private static final MEDIA_PLAYER_PAUSED:I = 0x6

.field private static final MEDIA_PLAYER_PLAYBACK_COMPLETED:I = 0x7

.field private static final MEDIA_PLAYER_PREPARED:I = 0x2

.field private static final MEDIA_PLAYER_PREPARING:I = 0x3

.field private static final MEDIA_PLAYER_STARTED:I = 0x4

.field private static final MEDIA_PLAYER_STOPPED:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MediaPlayerWrapper"


# instance fields
.field protected assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

.field private callbacks:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;

.field private completedLoops:I

.field private handler:Landroid/os/Handler;

.field protected length:J

.field protected localUrl:Ljava/lang/String;

.field protected mTextureView:Landroid/view/TextureView;

.field private maxLoops:I

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field protected offset:J

.field private playerState:I

.field private seekPosition:I

.field shouldLoop:Z

.field private startPlaybackRunnable:Ljava/lang/Runnable;

.field protected surfaceReady:Z

.field protected videoSurface:Landroid/view/Surface;

.field private volume:F


# direct methods
.method public constructor <init>(Landroid/view/TextureView;ZIFLcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->volume:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->surfaceReady:Z

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating MediaPlayerWrapper - shouldLoop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", maxLoops: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", assetType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p5, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->callbacks:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mTextureView:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_0
    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->shouldLoop:Z

    iput p3, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->maxLoops:I

    iput p4, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->volume:F

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->surfaceReady:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->startPlayback()V

    return-void
.end method

.method private releaseResources(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseMediaPlayer()V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseSurface(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->callbacks:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->callbacks:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;->onPlaybackFinished()V

    :cond_0
    return-void
.end method

.method private releaseSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->surfaceReady:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->videoSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->videoSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->videoSurface:Landroid/view/Surface;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_1
    return-void
.end method

.method private startPlayback()V
    .locals 5

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": MediaPlayer is null, cannot start playback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "MediaPlayerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": startPlayback(): Is MediaPlayer playing? - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " surfaceReady? - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->surfaceReady:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " playerState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->surfaceReady:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    if-eq v0, v4, :cond_3

    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    :cond_3
    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->seekPosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Starting media playback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto/16 :goto_0
.end method

.method private stopPlayback()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->seekPosition:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    :cond_0
    return-void
.end method

.method private updateVolume()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->volume:F

    iget v2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->volume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearCallbacks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->callbacks:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;

    return-void
.end method

.method public delayedStartPlayback(I)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->handler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->startPlaybackRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$1;-><init>(Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->startPlaybackRunnable:Ljava/lang/Runnable;

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Adding delay before startPlayback(): delay - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->startPlaybackRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public initializeMediaPlayer()V
    .locals 7

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": initializeMediaPlayer() surfaceReady? - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->surfaceReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->surfaceReady:Z

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->updateVolume()V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->videoSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->videoSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": initializeMediaPlayer() playerState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " localUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->localUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    :cond_4
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->startPlayback()V

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->localUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->localUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->offset:J

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->length:J

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "MediaPlayerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": Error loading video from local url - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->localUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseResources()V

    goto :goto_0

    :cond_9
    :try_start_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Video file no longer exists - skipping playback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseResources()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public isDonePlaying()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->maxLoops:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->completedLoops:I

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->shouldLoop:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->maxLoops:I

    :goto_1
    if-lt v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public isMuted()Z
    .locals 2

    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->volume:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x7

    iput v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->completedLoops:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->completedLoops:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->seekPosition:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->isDonePlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": onCompletion - done playing, releasing resources"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->callbacks:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->callbacks:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;->onPlaybackSuccessfullyCompleted()V

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseResources()V

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "MediaPlayerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": onCompletion - not done playing, completedLoops: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->completedLoops:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "MediaPlayerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": onCompletion() - Need to loop playback. Is MediaPlayer playing? - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v0, :cond_7

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": MediaPlayer#isPlaying() is still true when expected false. Delay next playback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->delayedStartPlayback(I)V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->startPlayback()V

    goto/16 :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const/16 v0, 0x9

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Media Player failed, Error codes -> what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->callbacks:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->callbacks:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;

    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;->onPlaybackError(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseResources()V

    const/4 v0, 0x1

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->callbacks:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->callbacks:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;->onPlaybackStarted()V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->startPlayback()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": onSurfaceTextureAvailable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->videoSurface:Landroid/view/Surface;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->surfaceReady:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->initializeMediaPlayer()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": SurfaceTexture Destroyed, releasing Media Player"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseResources(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3

    if-lez p2, :cond_1

    if-lez p3, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->startPlayback()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MediaPlayerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": video has no width or height. width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pausePlayback()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->seekPosition:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    :cond_0
    return-void
.end method

.method public releaseMediaPlayer()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->stopPlayback()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method

.method public releaseResources()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseResources(Z)V

    return-void
.end method

.method public releaseResources(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseResources(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->startPlaybackRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->startPlaybackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resumePlayback()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->surfaceReady:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->startPlayback()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->localUrl:Ljava/lang/String;

    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->offset:J

    iput-wide p4, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->length:J

    return-void
.end method

.method public toggleVolume()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->volume:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->volume:F

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->updateVolume()V

    return-void
.end method
