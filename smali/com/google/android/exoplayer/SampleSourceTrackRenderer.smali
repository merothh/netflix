.class public abstract Lcom/google/android/exoplayer/SampleSourceTrackRenderer;
.super Lcom/google/android/exoplayer/TrackRenderer;
.source "SampleSourceTrackRenderer.java"


# instance fields
.field private durationUs:J

.field private enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

.field private enabledSourceTrackIndex:I

.field private handledSourceIndices:[I

.field private handledSourceTrackIndices:[I

.field private final sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer/SampleSource;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/exoplayer/TrackRenderer;-><init>()V

    array-length v0, p1

    new-array v0, v0, [Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iput-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer/SampleSource;->register()Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkForDiscontinuity(J)J
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSourceTrackIndex:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->readDiscontinuity(I)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->onDiscontinuity(J)V

    move-wide p1, v0

    :cond_0
    return-wide p1
.end method

.method private maybeThrowError(Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;)V
    .locals 2

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->maybeThrowError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected final doPrepare(J)Z
    .locals 17

    const/4 v3, 0x1

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    aget-object v4, v4, v2

    move-wide/from16 v0, p1

    invoke-interface {v4, v0, v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->prepare(J)Z

    move-result v4

    and-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getTrackCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    new-array v8, v3, [I

    new-array v9, v3, [I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    array-length v10, v2

    const/4 v2, 0x0

    move v3, v4

    move-wide v4, v6

    move v6, v2

    :goto_3
    if-ge v6, v10, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    aget-object v7, v2, v6

    invoke-interface {v7}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getTrackCount()I

    move-result v11

    const/4 v2, 0x0

    move/from16 v16, v2

    move v2, v3

    move/from16 v3, v16

    :goto_4
    if-ge v3, v11, :cond_6

    invoke-interface {v7, v3}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getFormat(I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v12

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->handlesTrack(Lcom/google/android/exoplayer/MediaFormat;)Z
    :try_end_0
    .catch Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-eqz v13, :cond_3

    aput v6, v8, v2

    aput v3, v9, v2

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v14, -0x1

    cmp-long v13, v4, v14

    if-nez v13, :cond_4

    :cond_3
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catch_0
    move-exception v2

    new-instance v3, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_4
    iget-wide v12, v12, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    const-wide/16 v14, -0x1

    cmp-long v14, v12, v14

    if-nez v14, :cond_5

    const-wide/16 v4, -0x1

    goto :goto_5

    :cond_5
    const-wide/16 v14, -0x2

    cmp-long v14, v12, v14

    if-eqz v14, :cond_3

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v2

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->durationUs:J

    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->handledSourceIndices:[I

    invoke-static {v9, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->handledSourceTrackIndices:[I

    const/4 v2, 0x1

    goto/16 :goto_1
.end method

.method protected final doSomeWork(JJ)V
    .locals 7

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->shiftInputPosition(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v3, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSourceTrackIndex:I

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->continueBuffering(IJ)Z

    move-result v6

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->checkForDiscontinuity(J)J

    move-result-wide v2

    move-object v1, p0

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->doSomeWork(JJZ)V

    return-void
.end method

.method protected abstract doSomeWork(JJZ)V
.end method

.method protected getBufferedPositionUs()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->durationUs:J

    return-wide v0
.end method

.method protected final getFormat(I)Lcom/google/android/exoplayer/MediaFormat;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget-object v1, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->handledSourceIndices:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->handledSourceTrackIndices:[I

    aget v1, v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getFormat(I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method protected final getTrackCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->handledSourceTrackIndices:[I

    array-length v0, v0

    return v0
.end method

.method protected abstract handlesTrack(Lcom/google/android/exoplayer/MediaFormat;)Z
.end method

.method protected maybeThrowError()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->maybeThrowError(Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    array-length v1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->maybeThrowError(Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onDisabled()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSourceTrackIndex:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->disable(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    return-void
.end method

.method protected abstract onDiscontinuity(J)V
.end method

.method protected onEnabled(IJZ)V
    .locals 4

    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->shiftInputPosition(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget-object v3, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->handledSourceIndices:[I

    aget v3, v3, p1

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget-object v2, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->handledSourceTrackIndices:[I

    aget v2, v2, p1

    iput v2, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSourceTrackIndex:I

    iget-object v2, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v3, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSourceTrackIndex:I

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->enable(IJ)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->onDiscontinuity(J)V

    return-void
.end method

.method protected onReleased()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    array-length v1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->sources:[Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final readSource(JLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;)I
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSourceTrackIndex:I

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;)I

    move-result v0

    return v0
.end method

.method protected final seekTo(J)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->shiftInputPosition(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->seekToUs(J)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->checkForDiscontinuity(J)J

    return-void
.end method

.method protected shiftInputPosition(J)J
    .locals 1

    return-wide p1
.end method
