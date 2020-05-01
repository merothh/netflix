.class public abstract Lo/qF;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected a:I

.field protected b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field protected c:Lo/vq;

.field private e:Lcom/google/android/exoplayer2/PlaybackParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 71
    iget-object v0, p0, Lo/qF;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 139
    instance-of v0, p1, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lo/qF;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    check-cast p1, Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_0

    .line 141
    :cond_0
    instance-of v0, p1, Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lo/qF;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    check-cast p1, Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoTextureView(Landroid/view/TextureView;)V

    :goto_0
    return-void

    .line 144
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not SurfaceView or TextureView"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/qF;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const p1, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 88
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    :cond_1
    return-void
.end method

.method public abstract b()I
.end method

.method public b(F)V
    .locals 2

    .line 159
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    iput-object v0, p0, Lo/qF;->e:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 160
    iget-object p1, p0, Lo/qF;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v0, p0, Lo/qF;->e:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public b(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 62
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SessionPlayer"

    const-string v2, "setPlayWhenReady [%b]."

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 63
    iget-object v0, p0, Lo/qF;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public abstract c()J
.end method

.method public c(F)V
    .locals 1

    .line 93
    iget-object v0, p0, Lo/qF;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    return-void
.end method

.method public abstract c(II)V
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lo/qF;->c:Lo/vq;

    invoke-virtual {v0, p1}, Lo/vq;->a(Ljava/lang/String;)V

    return-void
.end method

.method public abstract d()I
.end method

.method public d(Landroid/view/ViewGroup;Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)Lo/Cj;
    .locals 3

    if-eqz p1, :cond_0

    .line 117
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 119
    invoke-static {}, Lo/adk;->e()Z

    .line 122
    new-instance v1, Lo/ra;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ra;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    invoke-virtual {v1, p2, p3}, Lo/ra;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)V

    .line 126
    iget-object p1, p0, Lo/qF;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setTextOutput(Lcom/google/android/exoplayer2/text/TextRenderer$Output;)V

    return-object v1

    .line 129
    :cond_0
    iget-object p1, p0, Lo/qF;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearTextOutput(Lcom/google/android/exoplayer2/text/TextRenderer$Output;)V

    return-object p2
.end method

.method public d(J)V
    .locals 1

    .line 50
    iget-object v0, p0, Lo/qF;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lo/qF;->c:Lo/vq;

    invoke-virtual {v0, p1}, Lo/vq;->c(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 43
    iget-object v0, p0, Lo/qF;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 109
    iput p1, p0, Lo/qF;->a:I

    .line 110
    iget-object v0, p0, Lo/qF;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    :cond_0
    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/AudioParameters;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lo/qF;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setAudioMpegDProperties(Lcom/google/android/exoplayer2/AudioParameters;)V

    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lo/qF;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget v1, p0, Lo/qF;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    .line 38
    iget-object v0, p0, Lo/qF;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 39
    iget-object p1, p0, Lo/qF;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    return-void
.end method

.method public h()F
    .locals 1

    .line 164
    iget-object v0, p0, Lo/qF;->e:Lcom/google/android/exoplayer2/PlaybackParameters;

    if-eqz v0, :cond_0

    .line 165
    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method
