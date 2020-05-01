.class public Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "ExoPlayback.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigAgentListener;
.implements Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer;


# static fields
.field private static final TAG:Ljava/lang/String; = "OfflinePlayback"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private mMainHanlder:Landroid/os/Handler;

.field private mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

.field private mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

.field private mPlayerFileManager:Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

.field mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

.field private mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

.field private mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 44
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    .line 71
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mMainHanlder:Landroid/os/Handler;

    .line 73
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    .line 74
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 75
    return-void
.end method

.method private addConfigurationChangeListener()V
    .locals 2

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    .line 473
    instance-of v1, v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    if-eqz v1, :cond_0

    .line 474
    check-cast v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->addConfigAgentListener(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigAgentListener;)V

    .line 476
    :cond_0
    return-void
.end method

.method private findSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
    .locals 2

    .prologue
    .line 449
    const/4 v0, 0x0

    .line 450
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    .line 451
    if-eqz v1, :cond_0

    .line 452
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v0

    .line 455
    :cond_0
    if-nez v0, :cond_1

    .line 456
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->DEFAULT:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    .line 458
    :cond_1
    return-object v0
.end method

.method private varargs handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 370
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    monitor-enter v1

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

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

    .line 372
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;->isListening()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    new-instance v3, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback$1;

    invoke-direct {v3, p0, p1, v0, p2}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback$1;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;[Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->runInMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 381
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

    .line 382
    return-void
.end method

.method private runInMainThread(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mMainHanlder:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method

.method private updateSubtitleSettings(Z)V
    .locals 4

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->findSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v0

    .line 430
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    const-string/jumbo v1, "OfflinePlayback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Subtitle configuration was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string/jumbo v1, "OfflinePlayback"

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

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    if-ne v1, v0, :cond_2

    if-nez p1, :cond_2

    .line 436
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    const-string/jumbo v0, "OfflinePlayback"

    const-string/jumbo v1, "Already used subtitle configuration, do nothing "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_1
    :goto_0
    return-void

    .line 440
    :cond_2
    if-eqz p1, :cond_3

    .line 441
    const-string/jumbo v1, "OfflinePlayback"

    const-string/jumbo v2, "Forced set of subtitle configuration"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_3
    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    goto :goto_0
.end method


# virtual methods
.method public addPlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->addPlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V

    .line 292
    return-void
.end method

.method public canUpdatePosition(I)Z
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->stop()V

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->release()V

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    .line 109
    return-void
.end method

.method protected doInit()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->addConfigurationChangeListener()V

    .line 85
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->updateSubtitleSettings(Z)V

    .line 86
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerFileManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerFileManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerFileManager:Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    .line 87
    new-instance v0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/servicemgr/IPlayer;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    .line 88
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 89
    return-void
.end method

.method public getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    goto :goto_0
.end method

.method public getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSource;

    goto :goto_0
.end method

.method public getBifFrame(I)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->getBifFrame(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentAudioTrack()Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->getCurrentAudioTrack()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPlayableId()J
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->getCurrentPlayableId()J

    move-result-wide v0

    .line 345
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPositionMs()I
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentProgress()I
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->getCurrentPositionMs()I

    move-result v0

    return v0
.end method

.method public getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    .line 278
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayAspectRatioDimension()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 362
    new-instance v1, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->getWidthHeight()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->getWidthHeight()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v1

    .line 364
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getManifestCache()Lcom/netflix/mediaclient/servicemgr/IManifestCache;
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerFileManager:Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    return-object v0
.end method

.method public getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubtitleProfileFromMetadata()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    .line 318
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getSubtitleProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/Subtitle;

    goto :goto_0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->getWidthHeight()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->getWidthHeight()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleError(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;)V
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnPlaybackErrorHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlaybackErrorHandler;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    .line 414
    return-void
.end method

.method public handlePlaying()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnPlayingHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlayingHandler;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    .line 394
    return-void
.end method

.method public handlePrepared()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerPrepareHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPrepareHandler;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    .line 386
    return-void
.end method

.method public handleStarted()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnStartedHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStartedHandler;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    .line 390
    return-void
.end method

.method public handleStopped()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnCompletionHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnCompletionHandler;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    .line 399
    return-void
.end method

.method public handleSubtitleUpdate(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;)V
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnSubtitleChangeHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleChangeHandler;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    .line 409
    return-void
.end method

.method public handleUpdatePts(I)V
    .locals 4

    .prologue
    .line 403
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnUpdatePtsHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnUpdatePtsHandler;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    .line 404
    return-void
.end method

.method public isBufferingCompleted()Z
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isManifestCacheEnabled()Z
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->isPlaying()Z

    move-result v0

    .line 197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigRefreshed(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 463
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->updateSubtitleSettings(Z)V

    .line 466
    :cond_0
    return-void
.end method

.method public open(JLcom/netflix/mediaclient/ui/common/PlayContext;J)V
    .locals 13

    .prologue
    .line 94
    const-string/jumbo v0, "OfflinePlayback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "open() movieId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->close()V

    .line 98
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mMainHanlder:Landroid/os/Handler;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 99
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->getPdsAgentForPlay()Lcom/netflix/mediaclient/service/pdslogging/PdsPlayInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    move-object v3, p0

    move-wide v8, p1

    move-wide/from16 v10, p4

    move-object/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lcom/netflix/mediaclient/service/pdslogging/PdsPlayInterface;Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;JJLcom/netflix/mediaclient/ui/common/PlayContext;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    .line 100
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->pause()V

    .line 123
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->play()V

    .line 116
    :cond_0
    return-void
.end method

.method public removePlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->removePlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V

    .line 297
    return-void
.end method

.method public reportFailedSubtitle(Ljava/lang/String;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;ZLcom/netflix/mediaclient/android/app/Status;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 419
    return-void
.end method

.method public reportSubtitleQoe(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method public seekTo(IZ)V
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->seekTo(J)V

    .line 137
    :cond_0
    return-void
.end method

.method public seekWithFuzzRange(II)V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->getCurrentPosition()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->seekTo(J)V

    .line 147
    :cond_0
    return-void
.end method

.method public declared-synchronized selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;Z)Z
    .locals 1

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 269
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAudioDuck(Z)V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->setAudioDuck(Z)V

    .line 483
    :cond_0
    return-void
.end method

.method public setJPlayerListener(Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;)V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->setSurface(Landroid/view/Surface;)V

    .line 154
    :cond_0
    return-void
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method public setVideoBitrateRange(II)V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public unpause()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;->play()V

    .line 130
    :cond_0
    return-void
.end method
