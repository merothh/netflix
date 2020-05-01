.class final Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;
.super Ljava/lang/Object;
.source "RollingSampleBuffer.java"


# instance fields
.field private absoluteReadIndex:I

.field private capacity:I

.field private encryptionKeys:[[B

.field private flags:[I

.field private offsets:[J

.field private queueSize:I

.field private relativeReadIndex:I

.field private relativeWriteIndex:I

.field private sizes:[I

.field private timesUs:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->offsets:[J

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->timesUs:[J

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->flags:[I

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->sizes:[I

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->encryptionKeys:[[B

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->absoluteReadIndex:I

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    return-void
.end method

.method public declared-synchronized commitSample(JIJI[B)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->timesUs:[J

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    aput-wide p1, v0, v1

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->offsets:[J

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    aput-wide p4, v0, v1

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->sizes:[I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    aput p6, v0, v1

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->flags:[I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    aput p3, v0, v1

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->encryptionKeys:[[B

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    aput-object p7, v0, v1

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    add-int/lit16 v0, v0, 0x3e8

    new-array v1, v0, [J

    new-array v2, v0, [J

    new-array v3, v0, [I

    new-array v4, v0, [I

    new-array v5, v0, [[B

    iget v6, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    iget v7, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->offsets:[J

    iget v8, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    const/4 v9, 0x0

    invoke-static {v7, v8, v1, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->timesUs:[J

    iget v8, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    const/4 v9, 0x0

    invoke-static {v7, v8, v2, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->flags:[I

    iget v8, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    const/4 v9, 0x0

    invoke-static {v7, v8, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->sizes:[I

    iget v8, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    const/4 v9, 0x0

    invoke-static {v7, v8, v4, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->encryptionKeys:[[B

    iget v8, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    const/4 v9, 0x0

    invoke-static {v7, v8, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v7, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->offsets:[J

    const/4 v9, 0x0

    invoke-static {v8, v9, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->timesUs:[J

    const/4 v9, 0x0

    invoke-static {v8, v9, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->flags:[I

    const/4 v9, 0x0

    invoke-static {v8, v9, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->sizes:[I

    const/4 v9, 0x0

    invoke-static {v8, v9, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->encryptionKeys:[[B

    const/4 v9, 0x0

    invoke-static {v8, v9, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->offsets:[J

    iput-object v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->timesUs:[J

    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->flags:[I

    iput-object v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->sizes:[I

    iput-object v5, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->encryptionKeys:[[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    iput v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    iput v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public discardUpstreamSamples(I)J
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->getWriteIndex()I

    move-result v0

    sub-int v1, v0, p1

    if-ltz v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    if-nez v1, :cond_3

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->absoluteReadIndex:I

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    :goto_2
    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->offsets:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->sizes:[I

    aget v0, v1, v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    iget v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->offsets:[J

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    aget-wide v0, v0, v1

    goto :goto_1
.end method

.method public getReadIndex()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->absoluteReadIndex:I

    return v0
.end method

.method public getWriteIndex()I
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->absoluteReadIndex:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized moveToNextSample()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->absoluteReadIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->absoluteReadIndex:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    iget v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->offsets:[J

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    aget-wide v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->sizes:[I

    aget v1, v1, v0

    int-to-long v2, v1

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->offsets:[J

    aget-wide v0, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized peekSample(Lcom/google/android/exoplayer/SampleHolder;Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->timesUs:[J

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->sizes:[I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    aget v0, v0, v1

    iput v0, p1, Lcom/google/android/exoplayer/SampleHolder;->size:I

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->flags:[I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    aget v0, v0, v1

    iput v0, p1, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->offsets:[J

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    aget-wide v0, v0, v1

    iput-wide v0, p2, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->offset:J

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->encryptionKeys:[[B

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    aget-object v0, v0, v1

    iput-object v0, p2, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->encryptionKeyId:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skipToKeyframeBefore(J)J
    .locals 9

    const/4 v5, -0x1

    const-wide/16 v0, -0x1

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->timesUs:[J

    iget v3, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    aget-wide v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_1
    :try_start_1
    iget v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    :goto_1
    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->timesUs:[J

    aget-wide v2, v3, v2

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v3, 0x0

    iget v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    move v4, v2

    move v2, v5

    :goto_2
    iget v6, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    if-eq v4, v6, :cond_2

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->timesUs:[J

    aget-wide v6, v6, v4

    cmp-long v6, v6, p1

    if-lez v6, :cond_4

    :cond_2
    if-eq v2, v5, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->absoluteReadIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->absoluteReadIndex:I

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->offsets:[J

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    aget-wide v0, v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->flags:[I

    aget v6, v6, v4

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    move v2, v3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    iget v6, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    rem-int/2addr v4, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
