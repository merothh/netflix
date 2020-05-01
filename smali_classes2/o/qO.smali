.class Lo/qO;
.super Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;
.source ""


# instance fields
.field protected a:Z

.field private b:J

.field private c:J

.field private d:Z


# direct methods
.method public varargs constructor <init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;",
            "Lcom/google/android/exoplayer2/audio/AudioCapabilities;",
            "[",
            "Lcom/google/android/exoplayer2/audio/AudioProcessor;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;)V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    iput-wide p1, p0, Lo/qO;->b:J

    const-wide/16 p1, 0x0

    .line 28
    iput-wide p1, p0, Lo/qO;->c:J

    .line 33
    new-instance p1, Lo/qH;

    new-instance p2, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;

    invoke-direct {p2, p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;-><init>(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)V

    invoke-direct {p1, p6, p7, p2}, Lo/qH;-><init>(Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;)V

    iput-object p1, p0, Lo/qO;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    return-void
.end method


# virtual methods
.method public canReconfigureCodec(Landroid/media/MediaCodec;ZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 58
    iget p1, p3, Lcom/google/android/exoplayer2/Format;->profile:I

    iget v0, p4, Lcom/google/android/exoplayer2/Format;->profile:I

    if-ne p1, v0, :cond_1

    iget p1, p3, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v0, p4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-eq p1, v0, :cond_0

    if-nez p2, :cond_0

    iget p1, p4, Lcom/google/android/exoplayer2/Format;->profile:I

    const/16 p2, 0x2a

    if-ne p1, p2, :cond_1

    :cond_0
    iget p1, p3, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget p2, p4, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne p1, p2, :cond_1

    iget p1, p3, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget p2, p4, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-ne p1, p2, :cond_1

    iget-object p1, p3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object p2, p4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public configureCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .locals 2

    .line 102
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Format;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object p1

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lo/qO;->audioParameters:Lcom/google/android/exoplayer2/AudioParameters;

    if-eqz v0, :cond_0

    iget p3, p3, Lcom/google/android/exoplayer2/Format;->profile:I

    const/16 v0, 0x2a

    if-ne p3, v0, :cond_0

    .line 104
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DRC mode: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/qO;->audioParameters:Lcom/google/android/exoplayer2/AudioParameters;

    iget v0, v0, Lcom/google/android/exoplayer2/AudioParameters;->drcMode:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "target_ref_level: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/qO;->audioParameters:Lcom/google/android/exoplayer2/AudioParameters;

    iget v0, v0, Lcom/google/android/exoplayer2/AudioParameters;->target_ref_level:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MediaCodecAudioRenderer"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p3, p0, Lo/qO;->audioParameters:Lcom/google/android/exoplayer2/AudioParameters;

    iget p3, p3, Lcom/google/android/exoplayer2/AudioParameters;->drcMode:I

    const-string v0, "aac-drc-effect-type"

    invoke-virtual {p1, v0, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 106
    iget-object p3, p0, Lo/qO;->audioParameters:Lcom/google/android/exoplayer2/AudioParameters;

    iget p3, p3, Lcom/google/android/exoplayer2/AudioParameters;->target_ref_level:I

    const-string v0, "aac-target-ref-level"

    invoke-virtual {p1, v0, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p2, p1, p3, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method public disableWhenPeriodChanges()V
    .locals 1

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lo/qO;->a:Z

    .line 52
    invoke-super {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->disable()V

    return-void
.end method

.method public onDisabled()V
    .locals 1

    .line 44
    iget-boolean v0, p0, Lo/qO;->a:Z

    if-nez v0, :cond_0

    .line 45
    invoke-super {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->onDisabled()V

    :cond_0
    return-void
.end method

.method public onEnabled(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lo/qO;->a:Z

    .line 39
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->onEnabled(Z)V

    return-void
.end method

.method public onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 87
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->profile:I

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lo/qO;->d:Z

    .line 88
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 3

    .line 93
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "Pixel 3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/qO;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "sample-rate"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const v2, 0xbb80

    if-eq v1, v2, :cond_0

    .line 94
    invoke-virtual {p2, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 96
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    return-void
.end method

.method public onProcessedOutputBuffer(J)V
    .locals 3

    .line 77
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->onProcessedOutputBuffer(J)V

    .line 78
    iget-object v0, p0, Lo/qO;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    instance-of v0, v0, Lo/qH;

    if-eqz v0, :cond_0

    .line 79
    iget-wide v0, p0, Lo/qO;->b:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 80
    iget-object p1, p0, Lo/qO;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    check-cast p1, Lo/qH;

    iget-wide v0, p0, Lo/qO;->c:J

    invoke-virtual {p1, v0, v1}, Lo/qH;->d(J)V

    :cond_0
    return-void
.end method

.method public onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 5

    .line 68
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 69
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->enterTransition:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 70
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v0, p0, Lo/qO;->b:J

    .line 71
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->enterTransition:J

    iput-wide v0, p0, Lo/qO;->c:J

    :cond_0
    return-void
.end method
