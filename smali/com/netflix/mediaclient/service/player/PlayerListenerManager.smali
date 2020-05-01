.class public Lcom/netflix/mediaclient/service/player/PlayerListenerManager;
.super Ljava/lang/Object;
.source "PlayerListenerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPlayerListenerOnAudioChangeHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnAudioChangeHandler;

.field private mPlayerListenerOnBandwidthChangeHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnBandwidthChangeHandler;

.field private mPlayerListenerOnBufferingUpdateHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnBufferingUpdateHandler;

.field private mPlayerListenerOnCompletionHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnCompletionHandler;

.field private mPlayerListenerOnMediaErrorHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnMediaErrorHandler;

.field private mPlayerListenerOnNccpErrorHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNccpErrorHandler;

.field private mPlayerListenerOnNrdFatalErrorHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNrdFatalErrorHandler;

.field private mPlayerListenerOnPlaybackErrorHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlaybackErrorHandler;

.field private mPlayerListenerOnPlayingHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlayingHandler;

.field private mPlayerListenerOnSeekCompleteHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSeekCompleteHandler;

.field private mPlayerListenerOnStalledHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStalledHandler;

.field private mPlayerListenerOnStartedHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStartedHandler;

.field private mPlayerListenerOnSubtitleChangeHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleChangeHandler;

.field private mPlayerListenerOnSubtitleFailedHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleFailedHandler;

.field private mPlayerListenerOnUpdatePtsHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnUpdatePtsHandler;

.field private mPlayerListenerPlaybackClosedHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPlaybackClosedHandler;

.field private mPlayerListenerPrepareHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPrepareHandler;

.field private mPlayerListenerRestartPlaybackHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerRestartPlaybackHandler;

.field private final mPlayerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListeners:Ljava/util/List;

    .line 44
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPrepareHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPrepareHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerPrepareHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPrepareHandler;

    .line 45
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnUpdatePtsHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnUpdatePtsHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnUpdatePtsHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnUpdatePtsHandler;

    .line 46
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnAudioChangeHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnAudioChangeHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnAudioChangeHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnAudioChangeHandler;

    .line 47
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnBandwidthChangeHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnBandwidthChangeHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnBandwidthChangeHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnBandwidthChangeHandler;

    .line 48
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnBufferingUpdateHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnBufferingUpdateHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnBufferingUpdateHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnBufferingUpdateHandler;

    .line 49
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnCompletionHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnCompletionHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnCompletionHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnCompletionHandler;

    .line 50
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnMediaErrorHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnMediaErrorHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnMediaErrorHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnMediaErrorHandler;

    .line 51
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNccpErrorHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNccpErrorHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnNccpErrorHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNccpErrorHandler;

    .line 52
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNrdFatalErrorHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNrdFatalErrorHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnNrdFatalErrorHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNrdFatalErrorHandler;

    .line 53
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlayingHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlayingHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnPlayingHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlayingHandler;

    .line 54
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSeekCompleteHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSeekCompleteHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnSeekCompleteHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSeekCompleteHandler;

    .line 55
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStalledHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStalledHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnStalledHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStalledHandler;

    .line 56
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStartedHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStartedHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnStartedHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStartedHandler;

    .line 57
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleChangeHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleChangeHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnSubtitleChangeHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleChangeHandler;

    .line 58
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleFailedHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleFailedHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnSubtitleFailedHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleFailedHandler;

    .line 59
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPlaybackClosedHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPlaybackClosedHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerPlaybackClosedHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPlaybackClosedHandler;

    .line 60
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerRestartPlaybackHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerRestartPlaybackHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerRestartPlaybackHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerRestartPlaybackHandler;

    .line 61
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlaybackErrorHandler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlaybackErrorHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnPlaybackErrorHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlaybackErrorHandler;

    return-void
.end method


# virtual methods
.method public declared-synchronized addPlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V
    .locals 3

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 75
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Listener count should not be generally greater than 2, count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListeners:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPlayerListenerOnAudioChangeHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnAudioChangeHandler;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnAudioChangeHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnAudioChangeHandler;

    return-object v0
.end method

.method public getPlayerListenerOnBandwidthChangeHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnBandwidthChangeHandler;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnBandwidthChangeHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnBandwidthChangeHandler;

    return-object v0
.end method

.method getPlayerListenerOnBufferingUpdateHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnBufferingUpdateHandler;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnBufferingUpdateHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnBufferingUpdateHandler;

    return-object v0
.end method

.method public getPlayerListenerOnCompletionHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnCompletionHandler;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnCompletionHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnCompletionHandler;

    return-object v0
.end method

.method getPlayerListenerOnMediaErrorHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnMediaErrorHandler;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnMediaErrorHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnMediaErrorHandler;

    return-object v0
.end method

.method getPlayerListenerOnNccpErrorHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNccpErrorHandler;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnNccpErrorHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNccpErrorHandler;

    return-object v0
.end method

.method getPlayerListenerOnNrdFatalErrorHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNrdFatalErrorHandler;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnNrdFatalErrorHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNrdFatalErrorHandler;

    return-object v0
.end method

.method public getPlayerListenerOnPlaybackErrorHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlaybackErrorHandler;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnPlaybackErrorHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlaybackErrorHandler;

    return-object v0
.end method

.method public getPlayerListenerOnPlayingHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlayingHandler;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnPlayingHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlayingHandler;

    return-object v0
.end method

.method public getPlayerListenerOnSeekCompleteHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSeekCompleteHandler;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnSeekCompleteHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSeekCompleteHandler;

    return-object v0
.end method

.method public getPlayerListenerOnStalledHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStalledHandler;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnStalledHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStalledHandler;

    return-object v0
.end method

.method public getPlayerListenerOnStartedHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStartedHandler;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnStartedHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStartedHandler;

    return-object v0
.end method

.method public getPlayerListenerOnSubtitleChangeHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleChangeHandler;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnSubtitleChangeHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleChangeHandler;

    return-object v0
.end method

.method public getPlayerListenerOnSubtitleFailedHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleFailedHandler;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnSubtitleFailedHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleFailedHandler;

    return-object v0
.end method

.method public getPlayerListenerOnUpdatePtsHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnUpdatePtsHandler;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnUpdatePtsHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnUpdatePtsHandler;

    return-object v0
.end method

.method public getPlayerListenerPlaybackClosedHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPlaybackClosedHandler;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerPlaybackClosedHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPlaybackClosedHandler;

    return-object v0
.end method

.method public getPlayerListenerPrepareHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPrepareHandler;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerPrepareHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPrepareHandler;

    return-object v0
.end method

.method public getPlayerListenerRestartPlaybackHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerRestartPlaybackHandler;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerRestartPlaybackHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerRestartPlaybackHandler;

    return-object v0
.end method

.method public declared-synchronized removePlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setPlayerListenerOnAudioChangeHandler(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnAudioChangeHandler;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnAudioChangeHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnAudioChangeHandler;

    .line 388
    return-void
.end method

.method setPlayerListenerOnBandwidthChangeHandler(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnBandwidthChangeHandler;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnBandwidthChangeHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnBandwidthChangeHandler;

    .line 407
    return-void
.end method

.method setPlayerListenerOnBufferingUpdateHandler(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnBufferingUpdateHandler;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnBufferingUpdateHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnBufferingUpdateHandler;

    .line 426
    return-void
.end method

.method setPlayerListenerOnCompletionHandler(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnCompletionHandler;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnCompletionHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnCompletionHandler;

    .line 445
    return-void
.end method

.method setPlayerListenerOnMediaErrorHandler(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnMediaErrorHandler;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnMediaErrorHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnMediaErrorHandler;

    .line 464
    return-void
.end method

.method setPlayerListenerOnNccpErrorHandler(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNccpErrorHandler;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnNccpErrorHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNccpErrorHandler;

    .line 483
    return-void
.end method

.method setPlayerListenerOnNrdFatalErrorHandler(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNrdFatalErrorHandler;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnNrdFatalErrorHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNrdFatalErrorHandler;

    .line 502
    return-void
.end method

.method setPlayerListenerOnPlayingHandler(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlayingHandler;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnPlayingHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlayingHandler;

    .line 521
    return-void
.end method

.method setPlayerListenerOnSeekCompleteHandler(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSeekCompleteHandler;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnSeekCompleteHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSeekCompleteHandler;

    .line 540
    return-void
.end method

.method setPlayerListenerOnStalledHandler(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStalledHandler;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnStalledHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStalledHandler;

    .line 559
    return-void
.end method

.method setPlayerListenerOnStartedHandler(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStartedHandler;)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnStartedHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStartedHandler;

    .line 578
    return-void
.end method

.method setPlayerListenerOnSubtitleChangeHandler(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleChangeHandler;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnSubtitleChangeHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleChangeHandler;

    .line 597
    return-void
.end method

.method setPlayerListenerOnSubtitleFailedHandler(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleFailedHandler;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnSubtitleFailedHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleFailedHandler;

    .line 616
    return-void
.end method

.method setPlayerListenerOnUpdatePtsHandler(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnUpdatePtsHandler;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerOnUpdatePtsHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnUpdatePtsHandler;

    .line 369
    return-void
.end method

.method setPlayerListenerPrepareHandler(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPrepareHandler;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->mPlayerListenerPrepareHandler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPrepareHandler;

    .line 350
    return-void
.end method
