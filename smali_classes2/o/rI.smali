.class public Lo/rI;
.super Lo/qF;
.source ""


# instance fields
.field private final d:Lo/rH;

.field private final e:Lo/pt;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/RenderersFactory;Lo/vq;Lo/pt;Lcom/google/android/exoplayer2/source/ExtractorMediaSource;Landroid/os/Handler;J)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lo/qF;-><init>()V

    .line 66
    iput-object p2, p0, Lo/rI;->c:Lo/vq;

    .line 67
    iget-object p2, p0, Lo/rI;->c:Lo/vq;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    iput-object p1, p0, Lo/rI;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 68
    iput-object p3, p0, Lo/rI;->e:Lo/pt;

    .line 69
    new-instance p1, Lo/rH;

    iget-object p2, p0, Lo/rI;->e:Lo/pt;

    invoke-direct {p1, p2, p5}, Lo/rH;-><init>(Lo/pt;Landroid/os/Handler;)V

    iput-object p1, p0, Lo/rI;->d:Lo/rH;

    .line 70
    iget-object p1, p0, Lo/rI;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object p2, p0, Lo/rI;->d:Lo/rH;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    const-wide/16 p1, 0x0

    cmp-long p3, p6, p1

    if-lez p3, :cond_0

    .line 72
    iget-object p1, p0, Lo/rI;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, p6, p7}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    .line 74
    :cond_0
    invoke-virtual {p0, p4}, Lo/rI;->e(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 76
    iget-object p1, p0, Lo/rI;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object p2, p0, Lo/rI;->d:Lo/rH;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoDebugListener(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    const/4 p1, 0x1

    .line 77
    invoke-virtual {p0, p1}, Lo/rI;->b(Z)V

    return-void
.end method

.method public static d(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Lo/pt;J)Lo/rI;
    .locals 13

    .line 39
    new-instance v6, Lo/qV;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/qV;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;IZLo/qY;)V

    .line 41
    new-instance v2, Lo/vq;

    const/4 v0, 0x0

    invoke-direct {v2, v0, v0, v0}, Lo/vq;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;Lo/tK;)V

    .line 42
    new-instance v4, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    new-instance v9, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;-><init>()V

    move-object v3, p1

    invoke-direct {v9, p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance v10, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v10}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    .line 50
    new-instance v8, Lo/rI;

    move-object v0, v8

    move-object v1, v6

    move-object/from16 v3, p3

    move-object v5, p2

    move-wide/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lo/rI;-><init>(Lcom/google/android/exoplayer2/RenderersFactory;Lo/vq;Lo/pt;Lcom/google/android/exoplayer2/source/ExtractorMediaSource;Landroid/os/Handler;J)V

    return-object v8
.end method


# virtual methods
.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()J
    .locals 2

    .line 117
    iget-object v0, p0, Lo/rI;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(II)V
    .locals 0

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(J)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 90
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "FileSourceExoSessionPlayer"

    const-string v2, "seek to %d s => %d s."

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 91
    invoke-super {p0, p1, p2}, Lo/qF;->d(J)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 96
    iget-object v0, p0, Lo/rI;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoDebugListener(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    .line 97
    iget-object v0, p0, Lo/rI;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lo/rI;->d:Lo/rH;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 98
    invoke-super {p0}, Lo/qF;->e()V

    return-void
.end method
