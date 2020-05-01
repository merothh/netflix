.class public Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;
.super Ljava/lang/Object;
.source "ChunkExtractorWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/ExtractorOutput;
.implements Lcom/google/android/exoplayer/extractor/TrackOutput;


# instance fields
.field private final extractor:Lcom/google/android/exoplayer/extractor/Extractor;

.field private extractorInitialized:Z

.field private output:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

.field private seenTrack:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/Extractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    return-void
.end method


# virtual methods
.method public drmInitData(Lcom/google/android/exoplayer/drm/DrmInitData;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->output:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->drmInitData(Lcom/google/android/exoplayer/drm/DrmInitData;)V

    return-void
.end method

.method public endTracks()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->seenTrack:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    return-void
.end method

.method public format(Lcom/google/android/exoplayer/MediaFormat;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->output:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    return-void
.end method

.method public init(Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->output:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->extractorInitialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/extractor/Extractor;->init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->extractorInitialized:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/Extractor;->seek()V

    goto :goto_0
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;)I
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/google/android/exoplayer/extractor/Extractor;->read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->output:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v0

    return v0
.end method

.method public sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->output:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    return-void
.end method

.method public sampleMetadata(JIII[B)V
    .locals 9

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->output:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->sampleMetadata(JIII[B)V

    return-void
.end method

.method public seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->output:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    return-void
.end method

.method public track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->seenTrack:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    iput-boolean v1, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->seenTrack:Z

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
