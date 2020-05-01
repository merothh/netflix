.class public Lcom/google/android/exoplayer/dash/DashChunkSource;
.super Ljava/lang/Object;
.source "DashChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/ChunkSource;
.implements Lcom/google/android/exoplayer/dash/DashTrackSelector$Output;


# instance fields
.field private final adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

.field private availableRange:Lcom/google/android/exoplayer/TimeRange;

.field private final availableRangeValues:[J

.field private currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private final elapsedRealtimeOffsetUs:J

.field private enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

.field private final evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;

.field private final eventSourceId:I

.field private fatalError:Ljava/io/IOException;

.field private lastChunkWasInitialization:Z

.field private final live:Z

.field private final liveEdgeLatencyUs:J

.field private mInitializationChunkIndex:Lcom/google/android/exoplayer/extractor/ChunkIndex;

.field private final manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private nextPeriodHolderIndex:I

.field private final periodHolders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;",
            ">;"
        }
    .end annotation
.end field

.field private prepareCalled:Z

.field private processedManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

.field private startAtLiveEdge:Z

.field private final systemClock:Lcom/google/android/exoplayer/util/Clock;

.field private final trackSelector:Lcom/google/android/exoplayer/dash/DashTrackSelector;

.field private final tracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V
    .locals 16

    const/4 v2, 0x0

    new-instance v7, Lcom/google/android/exoplayer/util/SystemClock;

    invoke-direct {v7}, Lcom/google/android/exoplayer/util/SystemClock;-><init>()V

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;Lcom/google/android/exoplayer/util/Clock;JJZLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;Lcom/google/android/exoplayer/util/Clock;JJZLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            "Lcom/google/android/exoplayer/dash/DashTrackSelector;",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "Lcom/google/android/exoplayer/util/Clock;",
            "JJZ",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    iput-object p2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iput-object p3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->trackSelector:Lcom/google/android/exoplayer/dash/DashTrackSelector;

    iput-object p4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iput-object p5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    iput-object p6, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->systemClock:Lcom/google/android/exoplayer/util/Clock;

    iput-wide p7, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->liveEdgeLatencyUs:J

    iput-wide p9, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->elapsedRealtimeOffsetUs:J

    iput-boolean p11, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->startAtLiveEdge:Z

    iput-object p12, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventHandler:Landroid/os/Handler;

    iput-object p13, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventListener:Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;

    iput p14, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventSourceId:I

    new-instance v0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-direct {v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->tracks:Ljava/util/ArrayList;

    iget-boolean v0, p2, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->live:Z

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer/dash/DashChunkSource;)I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventSourceId:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer/dash/DashChunkSource;)Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventListener:Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;

    return-object v0
.end method

.method private findPeriodHolder(J)Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->getAvailableStartTimeUs()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->getAvailableEndTimeUs()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    goto :goto_0
.end method

.method private getAvailableRange(J)Lcom/google/android/exoplayer/TimeRange;
    .locals 13

    const-wide/16 v8, -0x1

    const-wide/16 v10, 0x3e8

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v2, v2, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->isIndexExplicit()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->getAvailableStartTimeUs()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->getAvailableEndTimeUs()J

    move-result-wide v0

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;-><init>(JJ)V

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->getAvailableStartTimeUs()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->isIndexUnbounded()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide v4, 0x7fffffffffffffffL

    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->systemClock:Lcom/google/android/exoplayer/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    mul-long/2addr v0, v10

    iget-object v6, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v6, v6, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->availabilityStartTime:J

    mul-long/2addr v6, v10

    sub-long v6, p1, v6

    sub-long v6, v0, v6

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v0, v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->timeShiftBufferDepth:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_3

    :goto_2
    new-instance v1, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;

    iget-object v10, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->systemClock:Lcom/google/android/exoplayer/util/Clock;

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;-><init>(JJJJLcom/google/android/exoplayer/util/Clock;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->getAvailableEndTimeUs()J

    move-result-wide v4

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v0, v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->timeShiftBufferDepth:J

    mul-long v8, v0, v10

    goto :goto_2
.end method

.method private static getMediaMimeType(Lcom/google/android/exoplayer/chunk/Format;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "application/mp4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "stpp"

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "application/ttml+xml"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "wvtt"

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "application/x-mp4vtt"

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNowUnixTimeUs()J
    .locals 6

    const-wide/16 v4, 0x3e8

    iget-wide v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->elapsedRealtimeOffsetUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->systemClock:Lcom/google/android/exoplayer/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    mul-long/2addr v0, v4

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->elapsedRealtimeOffsetUs:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-long/2addr v0, v4

    goto :goto_0
.end method

.method private static getTrackFormat(ILcom/google/android/exoplayer/chunk/Format;Ljava/lang/String;J)Lcom/google/android/exoplayer/MediaFormat;
    .locals 11

    const/4 v3, -0x1

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v8

    :pswitch_0
    iget-object v0, p1, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    iget v6, p1, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v7, p1, Lcom/google/android/exoplayer/chunk/Format;->height:I

    move-object v1, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v8

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    iget v6, p1, Lcom/google/android/exoplayer/chunk/Format;->audioChannels:I

    iget v7, p1, Lcom/google/android/exoplayer/chunk/Format;->audioSamplingRate:I

    iget-object v9, p1, Lcom/google/android/exoplayer/chunk/Format;->language:Ljava/lang/String;

    move-object v1, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v8

    goto :goto_0

    :pswitch_2
    iget-object v1, p1, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    iget-object v6, p1, Lcom/google/android/exoplayer/chunk/Format;->language:Ljava/lang/String;

    move-object v2, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static mimeTypeIsRawText(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "text/vtt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static mimeTypeIsWebm(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "video/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "audio/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "application/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newInitializationChunk(Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/Representation;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/upstream/DataSource;II)Lcom/google/android/exoplayer/chunk/Chunk;
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->attemptMerge(Lcom/google/android/exoplayer/dash/mpd/RangedUri;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-virtual {p1}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->start:J

    iget-wide v4, p1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    invoke-virtual {p3}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    new-instance v1, Lcom/google/android/exoplayer/chunk/InitializationChunk;

    iget-object v5, p3, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object v2, p5

    move-object v3, v0

    move v4, p7

    move-object v6, p4

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/chunk/InitializationChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;I)V

    return-object v1

    :cond_0
    move-object p1, p2

    goto :goto_0

    :cond_1
    move-object p1, p2

    goto :goto_0
.end method

.method private notifyAvailableRangeChanged(Lcom/google/android/exoplayer/TimeRange;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventListener:Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/dash/DashChunkSource$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/dash/DashChunkSource$1;-><init>(Lcom/google/android/exoplayer/dash/DashChunkSource;Lcom/google/android/exoplayer/TimeRange;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private processManifest(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriod(I)Lcom/google/android/exoplayer/dash/mpd/Period;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    iget-wide v2, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->startTimeUs:J

    iget-wide v4, v1, Lcom/google/android/exoplayer/dash/mpd/Period;->startMs:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    iget v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->localIndex:I

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriodCount()I

    move-result v1

    if-le v0, v1, :cond_1

    :goto_1
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->updatePeriod(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;ILcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;)V

    const/4 v0, 0x1

    if-le v1, v0, :cond_2

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->updatePeriod(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;ILcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriodCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    new-instance v1, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    iget v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->nextPeriodHolderIndex:I

    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;-><init>(ILcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;ILcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;)V

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    iget v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->nextPeriodHolderIndex:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->nextPeriodHolderIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->nextPeriodHolderIndex:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getNowUnixTimeUs()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getAvailableRange(J)Lcom/google/android/exoplayer/TimeRange;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRange:Lcom/google/android/exoplayer/TimeRange;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRange:Lcom/google/android/exoplayer/TimeRange;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRange:Lcom/google/android/exoplayer/TimeRange;

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRange:Lcom/google/android/exoplayer/TimeRange;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->notifyAvailableRangeChanged(Lcom/google/android/exoplayer/TimeRange;)V

    :cond_5
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    goto :goto_1
.end method


# virtual methods
.method public adaptiveTrack(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;II[I)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    if-nez v0, :cond_0

    const-string/jumbo v0, "DashChunkSource"

    const-string/jumbo v1, "Skipping adaptive track (missing format evaluator)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriod(I)Lcom/google/android/exoplayer/dash/mpd/Period;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    array-length v1, p4

    new-array v3, v1, [Lcom/google/android/exoplayer/chunk/Format;

    const/4 v1, 0x0

    move v7, v1

    :goto_1
    array-length v1, v3

    if-ge v7, v1, :cond_2

    iget-object v1, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    aget v6, p4, v7

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/dash/mpd/Representation;

    iget-object v6, v1, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    if-eqz v2, :cond_1

    iget v1, v6, Lcom/google/android/exoplayer/chunk/Format;->height:I

    if-le v1, v5, :cond_6

    :cond_1
    move-object v1, v6

    :goto_2
    iget v2, v6, Lcom/google/android/exoplayer/chunk/Format;->width:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v2, v6, Lcom/google/android/exoplayer/chunk/Format;->height:I

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput-object v6, v3, v7

    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move-object v2, v1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;

    invoke-direct {v1}, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;-><init>()V

    invoke-static {v3, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-boolean v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->live:Z

    if-eqz v1, :cond_3

    const-wide/16 v6, -0x1

    :goto_3
    invoke-static {v2}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getMediaMimeType(Lcom/google/android/exoplayer/chunk/Format;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string/jumbo v0, "DashChunkSource"

    const-string/jumbo v1, "Skipped adaptive track (unknown media mime type)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-wide v6, p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->duration:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    goto :goto_3

    :cond_4
    iget v0, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->type:I

    invoke-static {v0, v2, v1, v6, v7}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getTrackFormat(ILcom/google/android/exoplayer/chunk/Format;Ljava/lang/String;J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    if-nez v1, :cond_5

    const-string/jumbo v0, "DashChunkSource"

    const-string/jumbo v1, "Skipped adaptive track (unknown media format)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->tracks:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/MediaFormat;->copyAsAdaptive(Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;-><init>(Lcom/google/android/exoplayer/MediaFormat;I[Lcom/google/android/exoplayer/chunk/Format;II)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    move-object v1, v2

    goto :goto_2
.end method

.method public continueBuffering(J)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v0, v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->processedManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    if-eq v0, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->processManifest(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->processedManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v0, v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->minUpdatePeriod:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    const-wide/16 v0, 0x1388

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifestLoadStartTimestamp()J

    move-result-wide v4

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->requestRefresh()V

    goto :goto_0
.end method

.method public disable(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;->isAdaptive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->disable()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->disable()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iput-object v1, v0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iput-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRange:Lcom/google/android/exoplayer/TimeRange;

    iput-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    iput-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    return-void
.end method

.method public enable(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;->isAdaptive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->enable()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->enable()V

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->processManifest(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->processManifest(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V

    goto :goto_0
.end method

.method public fixedTrack(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;III)V
    .locals 8

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriod(I)Lcom/google/android/exoplayer/dash/mpd/Period;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    iget-object v1, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/dash/mpd/Representation;

    iget-object v2, v1, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-static {v2}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getMediaMimeType(Lcom/google/android/exoplayer/chunk/Format;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v0, "DashChunkSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Skipped track "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (unknown media mime type)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v4, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->type:I

    iget-boolean v0, p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    :goto_1
    invoke-static {v4, v2, v3, v0, v1}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getTrackFormat(ILcom/google/android/exoplayer/chunk/Format;Ljava/lang/String;J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "DashChunkSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Skipped track "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (unknown media format)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->duration:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->tracks:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-direct {v3, v0, p3, v2}, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;-><init>(Lcom/google/android/exoplayer/MediaFormat;ILcom/google/android/exoplayer/chunk/Format;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final getChunkOperation(Ljava/util/List;JLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;J",
            "Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;",
            ")V"
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->queueSize:I

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastChunkWasInitialization:Z

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;->isAdaptive()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-static {v3}, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;->access$000(Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;)[Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    move-object v3, p1

    move-wide/from16 v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->evaluate(Ljava/util/List;J[Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;)V

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget-object v6, v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v2, v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->queueSize:I

    move-object/from16 v0, p4

    iput v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    if-nez v6, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-static {v3}, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;->access$100(Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;)Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    const/4 v3, 0x2

    iput v3, v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    goto :goto_1

    :cond_5
    move-object/from16 v0, p4

    iget v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-eqz v2, :cond_6

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/Chunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRange:Lcom/google/android/exoplayer/TimeRange;

    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer/TimeRange;->getCurrentBoundsUs([J)[J

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-boolean v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->live:Z

    if-eqz v2, :cond_8

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->startAtLiveEdge:Z

    :cond_7
    iget-boolean v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->startAtLiveEdge:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    iget-wide v8, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->liveEdgeLatencyUs:J

    sub-long/2addr v4, v8

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    :cond_8
    :goto_2
    move-wide/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/dash/DashChunkSource;->findPeriodHolder(J)Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    move-result-object v2

    const/4 v3, 0x1

    move-object v12, v2

    move v7, v3

    :goto_3
    iget-object v2, v12, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->representationHolders:Ljava/util/HashMap;

    iget-object v3, v6, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    iget-object v5, v11, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v6, v11, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v6, :cond_9

    invoke-virtual {v5}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getInitializationUri()Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v3

    :cond_9
    iget-object v2, v11, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    if-nez v2, :cond_a

    invoke-virtual {v5}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getIndexUri()Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v4

    :cond_a
    if-nez v3, :cond_b

    if-eqz v4, :cond_13

    :cond_b
    iget-object v6, v11, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    iget-object v7, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget v8, v12, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->localIndex:I

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v9, v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer/dash/DashChunkSource;->newInitializationChunk(Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/Representation;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/upstream/DataSource;II)Lcom/google/android/exoplayer/chunk/Chunk;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastChunkWasInitialization:Z

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_2

    :cond_d
    iget-boolean v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->startAtLiveEdge:Z

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->startAtLiveEdge:Z

    :cond_e
    move-object/from16 v0, p4

    iget v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/chunk/MediaChunk;

    iget-wide v4, v2, Lcom/google/android/exoplayer/chunk/MediaChunk;->endTimeUs:J

    iget-boolean v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->live:Z

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    const/4 v7, 0x0

    aget-wide v8, v3, v7

    cmp-long v3, v4, v8

    if-gez v3, :cond_f

    new-instance v2, Lcom/google/android/exoplayer/BehindLiveWindowException;

    invoke-direct {v2}, Lcom/google/android/exoplayer/BehindLiveWindowException;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    goto/16 :goto_0

    :cond_f
    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v3, v3, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    const/4 v7, 0x1

    aget-wide v8, v3, v7

    cmp-long v3, v4, v8

    if-gez v3, :cond_0

    :cond_10
    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    iget v4, v2, Lcom/google/android/exoplayer/chunk/MediaChunk;->parentId:I

    iget v5, v3, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->localIndex:I

    if-ne v4, v5, :cond_11

    iget-object v3, v3, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->representationHolders:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/google/android/exoplayer/chunk/MediaChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/chunk/MediaChunk;->getNextChunkIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->isBeyondLastSegment(I)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v2, v2, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-boolean v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    goto/16 :goto_0

    :cond_11
    const/4 v5, 0x0

    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    iget v4, v2, Lcom/google/android/exoplayer/chunk/MediaChunk;->parentId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    if-nez v3, :cond_12

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    const/4 v3, 0x1

    move-object v12, v2

    move v7, v3

    goto/16 :goto_3

    :cond_12
    invoke-virtual {v3}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->isIndexUnbounded()Z

    move-result v4

    if-nez v4, :cond_17

    iget-object v4, v3, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->representationHolders:Ljava/util/HashMap;

    iget-object v7, v2, Lcom/google/android/exoplayer/chunk/MediaChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v7, v7, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/chunk/MediaChunk;->getNextChunkIndex()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->isBeyondLastSegment(I)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    iget v2, v2, Lcom/google/android/exoplayer/chunk/MediaChunk;->parentId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    const/4 v3, 0x1

    move-object v12, v2

    move v7, v3

    goto/16 :goto_3

    :cond_13
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    move-wide/from16 v0, p2

    invoke-virtual {v11, v0, v1}, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->getSegmentNum(J)I

    move-result v8

    :goto_4
    iget-object v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v7, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v9, v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    if-eqz v6, :cond_16

    const/4 v10, 0x1

    :goto_5
    move-object v2, p0

    move-object v3, v12

    move-object v4, v11

    invoke-virtual/range {v2 .. v10}, Lcom/google/android/exoplayer/dash/DashChunkSource;->newMediaChunk(Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;IIZ)Lcom/google/android/exoplayer/chunk/Chunk;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastChunkWasInitialization:Z

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_0

    :cond_14
    if-eqz v7, :cond_15

    invoke-virtual {v11}, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->getFirstAvailableSegmentNum()I

    move-result v8

    goto :goto_4

    :cond_15
    move-object/from16 v0, p4

    iget v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/chunk/MediaChunk;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/chunk/MediaChunk;->getNextChunkIndex()I

    move-result v8

    goto :goto_4

    :cond_16
    const/4 v10, 0x0

    goto :goto_5

    :cond_17
    move-object v12, v3

    move v7, v5

    goto/16 :goto_3
.end method

.method public final getFormat(I)Lcom/google/android/exoplayer/MediaFormat;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;->trackFormat:Lcom/google/android/exoplayer/MediaFormat;

    return-object v0
.end method

.method public getSeekToTime(J)J
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->mInitializationChunkIndex:Lcom/google/android/exoplayer/extractor/ChunkIndex;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->mInitializationChunkIndex:Lcom/google/android/exoplayer/extractor/ChunkIndex;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ChunkIndex;->isSeekable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->mInitializationChunkIndex:Lcom/google/android/exoplayer/extractor/ChunkIndex;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer/extractor/ChunkIndex;->getChunkIndex(J)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->mInitializationChunkIndex:Lcom/google/android/exoplayer/extractor/ChunkIndex;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/ChunkIndex;->durationsUs:[J

    aget-wide v4, v1, v0

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    div-long p1, v2, v0

    :cond_1
    return-wide p1
.end method

.method public getTrackCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->maybeThrowError()V

    :cond_1
    return-void
.end method

.method protected newMediaChunk(Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;IIZ)Lcom/google/android/exoplayer/chunk/Chunk;
    .locals 24

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

    iget-object v12, v9, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(I)J

    move-result-wide v22

    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->getSegmentUrl(I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v6

    new-instance v2, Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-virtual {v6}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget-wide v4, v6, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->start:J

    iget-wide v6, v6, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    invoke-virtual {v9}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->startTimeUs:J

    iget-wide v6, v9, Lcom/google/android/exoplayer/dash/mpd/Representation;->presentationTimeOffsetUs:J

    sub-long v13, v4, v6

    iget-object v3, v12, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/exoplayer/dash/DashChunkSource;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;

    const/4 v6, 0x1

    move-object/from16 v0, p5

    iget-object v13, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;->trackFormat:Lcom/google/android/exoplayer/MediaFormat;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget v15, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->localIndex:I

    move-object/from16 v4, p3

    move-object v5, v2

    move-object v7, v12

    move-wide/from16 v8, v22

    move/from16 v12, p6

    invoke-direct/range {v3 .. v15}, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJILcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/drm/DrmInitData;I)V

    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    move-object/from16 v0, p5

    iget v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptiveMaxWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p5

    iget v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptiveMaxHeight:I

    move/from16 v18, v0

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->access$200(Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;)Lcom/google/android/exoplayer/drm/DrmInitData;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->localIndex:I

    move/from16 v21, v0

    move-object/from16 v4, p3

    move-object v5, v2

    move/from16 v6, p7

    move-object v7, v12

    move-wide/from16 v8, v22

    move/from16 v12, p6

    move-object/from16 v16, p4

    move/from16 v20, p8

    invoke-direct/range {v3 .. v21}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIJLcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/MediaFormat;IILcom/google/android/exoplayer/drm/DrmInitData;ZI)V

    goto :goto_0
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V
    .locals 5

    instance-of v0, p1, Lcom/google/android/exoplayer/chunk/InitializationChunk;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/exoplayer/chunk/InitializationChunk;

    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->getSeekMap()Lcom/google/android/exoplayer/extractor/SeekMap;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/exoplayer/extractor/ChunkIndex;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->getSeekMap()Lcom/google/android/exoplayer/extractor/SeekMap;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ChunkIndex;

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->mInitializationChunkIndex:Lcom/google/android/exoplayer/extractor/ChunkIndex;

    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer/chunk/InitializationChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v1, v0, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    iget v2, p1, Lcom/google/android/exoplayer/chunk/InitializationChunk;->parentId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->representationHolders:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->hasFormat()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->getFormat()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    :cond_3
    iget-object v2, v1, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->hasSeekMap()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v3, Lcom/google/android/exoplayer/dash/DashWrappingSegmentIndex;

    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->getSeekMap()Lcom/google/android/exoplayer/extractor/SeekMap;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/extractor/ChunkIndex;

    iget-object v4, p1, Lcom/google/android/exoplayer/chunk/InitializationChunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v4, v4, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/google/android/exoplayer/dash/DashWrappingSegmentIndex;-><init>(Lcom/google/android/exoplayer/extractor/ChunkIndex;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    :cond_4
    invoke-static {v0}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->access$200(Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;)Lcom/google/android/exoplayer/drm/DrmInitData;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->hasDrmInitData()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->getDrmInitData()Lcom/google/android/exoplayer/drm/DrmInitData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->access$202(Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;Lcom/google/android/exoplayer/drm/DrmInitData;)Lcom/google/android/exoplayer/drm/DrmInitData;

    goto :goto_0
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public prepare()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->prepareCalled:Z

    if-nez v2, :cond_0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->prepareCalled:Z

    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->trackSelector:Lcom/google/android/exoplayer/dash/DashTrackSelector;

    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p0}, Lcom/google/android/exoplayer/dash/DashTrackSelector;->selectTracks(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;ILcom/google/android/exoplayer/dash/DashTrackSelector$Output;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v2, :cond_1

    :goto_1
    return v0

    :catch_0
    move-exception v2

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
