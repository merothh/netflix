.class public Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
.super Lcom/google/android/exoplayer/MediaCodecTrackRenderer;
.source "MediaCodecVideoTrackRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final allowedJoiningTimeUs:J

.field private consecutiveDroppedFrameCount:I

.field private currentHeight:I

.field private currentPixelWidthHeightRatio:F

.field private currentUnappliedRotationDegrees:I

.field private currentWidth:I

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrameCount:I

.field private final eventListener:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

.field private final frameReleaseTimeHelper:Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;

.field private joiningDeadlineUs:J

.field private lastReportedHeight:I

.field private lastReportedPixelWidthHeightRatio:F

.field private lastReportedUnappliedRotationDegrees:I

.field private lastReportedWidth:I

.field private final maxDroppedFrameCountToNotify:I

.field private pendingPixelWidthHeightRatio:F

.field private pendingRotationDegrees:I

.field private renderedFirstFrame:Z

.field private reportedDrawnToSurface:Z

.field private surface:Landroid/view/Surface;

.field private final videoScalingMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;IJLcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer/SampleSource;",
            "Lcom/google/android/exoplayer/MediaCodecSelector;",
            "IJ",
            "Lcom/google/android/exoplayer/drm/DrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;",
            "I)V"
        }
    .end annotation

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;)V

    new-instance v2, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;

    iput p4, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->videoScalingMode:I

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p5

    iput-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->allowedJoiningTimeUs:J

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maxDroppedFrameCountToNotify:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->pendingPixelWidthHeightRatio:F

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedWidth:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedHeight:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedPixelWidthHeightRatio:F

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;)Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    return-object v0
.end method

.method private maybeNotifyDrawnToSurface()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->reportedDrawnToSurface:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$2;-><init>(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;Landroid/view/Surface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->reportedDrawnToSurface:Z

    goto :goto_0
.end method

.method private maybeNotifyDroppedFrameCount()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    iget-wide v4, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v4, v0, v4

    iget-object v3, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;

    invoke-direct {v6, p0, v2, v4, v5}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;-><init>(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;IJ)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameAccumulationStartTimeMs:J

    goto :goto_0
.end method

.method private maybeNotifyVideoSizeChanged()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedWidth:I

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedHeight:I

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedUnappliedRotationDegrees:I

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentUnappliedRotationDegrees:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedPixelWidthHeightRatio:F

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    iget v3, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    iget v4, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentUnappliedRotationDegrees:I

    iget v5, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    iget-object v6, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;-><init>(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;IIIF)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedWidth:I

    iput v3, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedHeight:I

    iput v4, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedUnappliedRotationDegrees:I

    iput v5, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedPixelWidthHeightRatio:F

    goto :goto_0
.end method

.method private maybeSetMaxInputSize(Landroid/media/MediaFormat;Z)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/4 v3, 0x4

    const/4 v2, 0x2

    const-string/jumbo v0, "max-input-size"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-eqz p2, :cond_2

    const-string/jumbo v1, "max-height"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "max-height"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-eqz p2, :cond_3

    const-string/jumbo v4, "max-width"

    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v1, "max-width"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_3
    const-string/jumbo v4, "mime"

    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_4
    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    mul-int/2addr v0, v1

    move v1, v0

    move v0, v2

    :goto_2
    mul-int/lit8 v1, v1, 0x3

    mul-int/lit8 v0, v0, 0x2

    div-int v0, v1, v0

    const-string/jumbo v1, "max-input-size"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_0
    const-string/jumbo v6, "video/3gpp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "video/mp4v-es"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v6, "video/avc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v4, v2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v6, "video/x-vnd.on2.vp8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v6, "video/hevc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v4, v3

    goto :goto_1

    :sswitch_5
    const-string/jumbo v6, "video/x-vnd.on2.vp9"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x5

    goto :goto_1

    :pswitch_1
    const-string/jumbo v3, "BRAVIA 4K 2015"

    sget-object v4, Lcom/google/android/exoplayer/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0xf

    div-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, 0xf

    div-int/lit8 v0, v0, 0x10

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x10

    move v1, v0

    move v0, v2

    goto :goto_2

    :pswitch_2
    mul-int/2addr v0, v1

    move v1, v0

    move v0, v2

    goto :goto_2

    :pswitch_3
    mul-int/2addr v0, v1

    move v1, v0

    move v0, v3

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_0
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_1
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_3
        0x5f50bed9 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->reportedDrawnToSurface:Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->releaseCodec()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeInitCodec()V

    goto :goto_0
.end method


# virtual methods
.method protected canReconfigureCodec(Landroid/media/MediaCodec;ZLcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/MediaFormat;)Z
    .locals 2

    iget-object v0, p4, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    iget-object v1, p3, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    iget v0, p3, Lcom/google/android/exoplayer/MediaFormat;->width:I

    iget v1, p4, Lcom/google/android/exoplayer/MediaFormat;->width:I

    if-ne v0, v1, :cond_1

    iget v0, p3, Lcom/google/android/exoplayer/MediaFormat;->height:I

    iget v1, p4, Lcom/google/android/exoplayer/MediaFormat;->height:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected configureCodec(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .locals 2

    invoke-direct {p0, p3, p2}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeSetMaxInputSize(Landroid/media/MediaFormat;Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, p4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method protected dropOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 3

    const-string/jumbo v0, "dropVideoBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->droppedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->droppedOutputBufferCount:I

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->consecutiveDroppedFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->consecutiveDroppedFrameCount:I

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->consecutiveDroppedFrameCount:I

    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v2, v2, Lcom/google/android/exoplayer/CodecCounters;->maxConsecutiveDroppedOutputBufferCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->maxConsecutiveDroppedOutputBufferCount:I

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maxDroppedFrameCountToNotify:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyDroppedFrameCount()V

    :cond_0
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    check-cast p2, Landroid/view/Surface;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->setSurface(Landroid/view/Surface;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected handlesTrack(Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/MediaFormat;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p2, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "video/x-unknown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v1, v0}, Lcom/google/android/exoplayer/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected isReady()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v6, -0x1

    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->codecInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->getSourceState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_0
    iput-wide v6, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iput-wide v6, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    move v0, v1

    goto :goto_0
.end method

.method protected onDisabled()V
    .locals 2

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->pendingPixelWidthHeightRatio:F

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedWidth:I

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedHeight:I

    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedPixelWidthHeightRatio:F

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->disable()V

    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onDisabled()V

    return-void
.end method

.method protected onDiscontinuity(J)V
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onDiscontinuity(J)V

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->consecutiveDroppedFrameCount:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    return-void
.end method

.method protected onEnabled(IJZ)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onEnabled(IJZ)V

    if-eqz p4, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->allowedJoiningTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->allowedJoiningTimeUs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->enable()V

    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer/MediaFormatHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer/MediaFormatHolder;)V

    iget-object v0, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->pendingPixelWidthHeightRatio:F

    iget-object v0, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->rotationDegrees:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->pendingRotationDegrees:I

    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->rotationDegrees:I

    goto :goto_1
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 3

    const-string/jumbo v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "crop-left"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "crop-top"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    const-string/jumbo v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "crop-left"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    if-eqz v1, :cond_4

    const-string/jumbo v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "crop-top"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_2
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->pendingPixelWidthHeightRatio:F

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->pendingRotationDegrees:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->pendingRotationDegrees:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    :cond_1
    :goto_3
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->videoScalingMode:I

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->pendingRotationDegrees:I

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentUnappliedRotationDegrees:I

    goto :goto_3
.end method

.method protected onStarted()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onStarted()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameAccumulationStartTimeMs:J

    return-void
.end method

.method protected onStopped()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyDroppedFrameCount()V

    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onStopped()V

    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
    .locals 11

    if-eqz p9, :cond_0

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->skipOutputBuffer(Landroid/media/MediaCodec;I)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->consecutiveDroppedFrameCount:I

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    if-nez v2, :cond_2

    sget v2, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderOutputBufferV21(Landroid/media/MediaCodec;IJ)V

    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->consecutiveDroppedFrameCount:I

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderOutputBuffer(Landroid/media/MediaCodec;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long/2addr v2, p3

    move-object/from16 v0, p7

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v4, p1

    sub-long v2, v4, v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    add-long/2addr v2, v4

    iget-object v6, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;

    move-object/from16 v0, p7

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v6, v8, v9, v2, v3}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->adjustReleaseTime(JJ)J

    move-result-wide v2

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, -0x7530

    cmp-long v6, v4, v6

    if-gez v6, :cond_4

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->dropOutputBuffer(Landroid/media/MediaCodec;I)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    sget v6, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_5

    const-wide/32 v6, 0xc350

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderOutputBufferV21(Landroid/media/MediaCodec;IJ)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->consecutiveDroppedFrameCount:I

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0x7530

    cmp-long v2, v4, v2

    if-gez v2, :cond_7

    const-wide/16 v2, 0x2af8

    cmp-long v2, v4, v2

    if-lez v2, :cond_6

    const-wide/16 v2, 0x2710

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    :try_start_0
    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderOutputBuffer(Landroid/media/MediaCodec;I)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->consecutiveDroppedFrameCount:I

    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method protected renderOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyVideoSizeChanged()V

    const-string/jumbo v0, "releaseOutputBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyDrawnToSurface()V

    return-void
.end method

.method protected renderOutputBufferV21(Landroid/media/MediaCodec;IJ)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyVideoSizeChanged()V

    const-string/jumbo v0, "releaseOutputBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3, p4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyDrawnToSurface()V

    return-void
.end method

.method protected shouldInitCodec()Z
    .locals 1

    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->shouldInitCodec()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected skipOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 2

    const-string/jumbo v0, "skipVideoBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->skippedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->skippedOutputBufferCount:I

    return-void
.end method
