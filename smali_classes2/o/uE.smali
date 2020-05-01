.class public Lo/uE;
.super Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/source/chunk/ChunkSource;",
        ">",
        "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;"
    }
.end annotation


# instance fields
.field private final d:Lo/td;

.field private e:Z


# direct methods
.method public constructor <init>(I[ILcom/google/android/exoplayer2/source/chunk/ChunkSource;Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;Lcom/google/android/exoplayer2/upstream/Allocator;JILcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;Lo/td;)V
    .locals 0

    .line 41
    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;-><init>(I[ILcom/google/android/exoplayer2/source/chunk/ChunkSource;Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;Lcom/google/android/exoplayer2/upstream/Allocator;JILcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)V

    .line 42
    iput-object p10, p0, Lo/uE;->d:Lo/td;

    .line 43
    iget-object p1, p0, Lo/uE;->d:Lo/td;

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1, p0}, Lo/td;->e(Lo/uE;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 13

    .line 76
    invoke-virtual {p0}, Lo/uE;->c()[Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v0

    .line 77
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 78
    :goto_0
    array-length v3, v0

    if-lez v3, :cond_1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    :cond_1
    const-wide/16 v3, 0x0

    if-eqz v1, :cond_8

    if-nez v2, :cond_2

    goto :goto_4

    .line 83
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->isLoadCompleted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v5, v2, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    goto :goto_3

    :cond_3
    iget-wide v5, v2, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    iget-object v0, v2, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v0, v7, v3

    if-gtz v0, :cond_4

    goto :goto_1

    .line 86
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getDurationUs()J

    move-result-wide v7

    .line 87
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->bytesLoaded()J

    move-result-wide v9

    iget-object v0, v2, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v11, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    div-long/2addr v9, v11

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    const-wide/16 v11, 0x1

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    mul-long v7, v7, v9

    goto :goto_2

    :cond_5
    :goto_1
    move-wide v7, v3

    :goto_2
    add-long/2addr v5, v7

    :goto_3
    cmp-long v0, p1, v5

    if-gtz v0, :cond_6

    .line 88
    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    cmp-long v0, p1, v7

    if-ltz v0, :cond_6

    sub-long/2addr v5, p1

    return-wide v5

    .line 90
    :cond_6
    iget-boolean p1, p0, Lo/uE;->e:Z

    if-eqz p1, :cond_7

    return-wide v3

    .line 94
    :cond_7
    iget-wide p1, v1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    sub-long/2addr v5, p1

    return-wide v5

    :cond_8
    :goto_4
    return-wide v3
.end method

.method public c()[Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .locals 2

    .line 60
    iget-object v0, p0, Lo/uE;->mediaChunks:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    return-object v0
.end method

.method public d(J)J
    .locals 8

    .line 103
    invoke-virtual {p0}, Lo/uE;->c()[Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v0

    .line 104
    array-length v1, v0

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_4

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    cmp-long v1, v4, p1

    if-gez v1, :cond_0

    goto :goto_1

    .line 108
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 109
    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->isLoadCompleted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 110
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->bytesLoaded()J

    move-result-wide v2

    :goto_0
    add-int/lit8 v1, v1, -0x1

    :cond_1
    if-ltz v1, :cond_4

    .line 114
    aget-object v4, v0, v1

    .line 115
    iget-wide v5, v4, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    cmp-long v7, p1, v5

    if-ltz v7, :cond_2

    goto :goto_1

    .line 118
    :cond_2
    iget-wide v5, v4, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    cmp-long v7, p1, v5

    if-lez v7, :cond_3

    .line 121
    iget-wide v0, v4, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    sub-long/2addr p1, v0

    long-to-double p1, p1

    iget-wide v0, v4, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    iget-wide v5, v4, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    sub-long/2addr v0, v5

    long-to-double v0, v0

    div-double/2addr p1, v0

    .line 122
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->bytesLoaded()J

    move-result-wide v0

    long-to-double v0, v0

    mul-double p1, p1, v0

    double-to-long p1, p1

    add-long/2addr v2, p1

    goto :goto_1

    .line 125
    :cond_3
    iget-object v4, v4, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    add-long/2addr v2, v4

    goto :goto_0

    :cond_4
    :goto_1
    return-wide v2
.end method

.method public d()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .locals 2

    .line 65
    invoke-virtual {p0}, Lo/uE;->c()[Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v0

    .line 66
    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isReady()Z
    .locals 2

    .line 168
    invoke-virtual {p0}, Lo/uE;->d()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v0

    .line 169
    instance-of v1, v0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->isLoadCompleted()Z

    move-result v0

    return v0

    .line 172
    :cond_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isReady()Z

    move-result v0

    return v0
.end method

.method public maybeNotifyPrimaryTrackFormatChanged(I)V
    .locals 5

    .line 149
    iget-object v0, p0, Lo/uE;->mediaChunks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 150
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 151
    iget-object v2, p0, Lo/uE;->primaryDownstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lo/uE;->d:Lo/td;

    if-eqz v2, :cond_0

    .line 152
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    invoke-virtual {v2, v1, v3, v4}, Lo/td;->c(Lcom/google/android/exoplayer2/Format;J)V

    .line 154
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->maybeNotifyPrimaryTrackFormatChanged(I)V

    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 0

    .line 140
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_0

    .line 141
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 142
    iput-boolean p2, p0, Lo/uE;->e:Z

    :cond_0
    return p1
.end method

.method public release()V
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->release()V

    .line 51
    iget-object v0, p0, Lo/uE;->d:Lo/td;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p0}, Lo/td;->b(Lo/uE;)V

    :cond_0
    return-void
.end method

.method public seekToUs(J)V
    .locals 0

    .line 134
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->seekToUs(J)V

    const/4 p1, 0x0

    .line 135
    iput-boolean p1, p0, Lo/uE;->e:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 159
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lo/uE;->getPrimaryTrackType()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/NetflixExoLogUtil;->getTrackType(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "[%s, %s]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
