.class public Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;
.super Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;
.source "AudioDecoderPipe.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPipeAudio"


# instance fields
.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mBufferSize:I

.field private mChannelConfig:I

.field private mSampleCnt:J

.field private mSampleRate:I

.field private mSampleSize:I

.field private nFrameRendered:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 42
    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 33
    const v0, 0xbb80

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mSampleRate:I

    .line 34
    const/16 v0, 0xc

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mChannelConfig:I

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->nFrameRendered:J

    .line 43
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 45
    :try_start_0
    const-class v1, Landroid/media/AudioTrack;

    const-string/jumbo v2, "getLatency"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    .line 46
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private renderOutput(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Z
    .locals 9

    .prologue
    const/16 v8, 0x1388

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_2

    .line 101
    const-string/jumbo v0, "MediaPipeAudio"

    const-string/jumbo v2, "create audiotrack ... "

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mSampleRate:I

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mChannelConfig:I

    invoke-static {v0, v2, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mBufferSize:I

    .line 105
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mBufferSize:I

    const v2, 0x8000

    if-ge v0, v2, :cond_0

    const v0, 0x8000

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mBufferSize:I

    .line 106
    :cond_0
    new-instance v0, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mSampleRate:I

    iget v3, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mChannelConfig:I

    iget v5, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mBufferSize:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mAudioTrack:Landroid/media/AudioTrack;

    .line 114
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const-string/jumbo v0, "MediaPipeAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mBufferSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mBufferSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", b.hasArray() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mSampleSize:I

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mAudioTrack:Landroid/media/AudioTrack;

    .line 121
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    const-string/jumbo v0, "MediaPipeAudio"

    const-string/jumbo v1, "start audiotrack ... "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mSampleCnt:J

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 142
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 143
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 145
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 146
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 152
    :goto_0
    if-eqz v0, :cond_6

    .line 153
    if-ge v1, v8, :cond_8

    .line 154
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v2

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 161
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mAudioTrack:Landroid/media/AudioTrack;

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v1, v0, v7, v2}, Landroid/media/AudioTrack;->write([BII)I

    .line 162
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mSampleCnt:J

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mSampleSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 163
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mSampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 164
    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v2, v0

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    .line 167
    :try_start_2
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->getLatencyMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 168
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v8, :cond_9

    .line 169
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v4, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mBufferSize:I

    mul-int/lit16 v4, v4, 0x3e8

    iget v5, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mSampleSize:I

    iget v7, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mSampleRate:I

    mul-int/2addr v5, v7

    div-int/2addr v4, v5

    sub-int/2addr v0, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    int-to-long v0, v0

    .line 170
    sub-long v0, v2, v0

    :goto_2
    move-wide v2, v0

    .line 177
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->update(J)V

    .line 178
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mSampleCnt:J

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mSampleCnt:J

    .line 183
    :cond_6
    :goto_4
    return v6

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string/jumbo v0, "MediaPipeAudio"

    const-string/jumbo v1, "AudioTrack.play() has  IllegalStateException"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 128
    goto :goto_4

    .line 136
    :catch_1
    move-exception v0

    .line 137
    const-string/jumbo v1, "MediaPipeAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AudioTrack.getPlaybackHeadPosition() has Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 138
    goto :goto_4

    .line 148
    :cond_7
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v0, [B

    .line 149
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p1, v0, v7, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 156
    :cond_8
    const/16 v2, 0x3a98

    if-ge v1, v2, :cond_4

    .line 158
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v2

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    goto/16 :goto_1

    .line 172
    :catch_2
    move-exception v0

    .line 173
    const-string/jumbo v0, "MediaPipeAudio"

    const-string/jumbo v1, "can\'t getLatency"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->getLatencyMethod:Ljava/lang/reflect/Method;

    goto :goto_3

    :cond_9
    move-wide v0, v2

    goto :goto_2
.end method


# virtual methods
.method public flush()V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->flush()V

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mSampleCnt:J

    .line 84
    const-string/jumbo v0, "MediaPipeAudio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop audio state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_1
    :goto_0
    const-string/jumbo v0, "MediaPipeAudio"

    const-string/jumbo v1, "flush audio done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string/jumbo v0, "MediaPipeAudio"

    const-string/jumbo v1, "AudioTrack.flush() has  IllegalStateException"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic getClock()Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->getClock()Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isDecoderCreated()Z
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->isDecoderCreated()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPauseded()Z
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->isPauseded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isStopped()Z
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->isStopped()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic pause()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->pause()V

    return-void
.end method

.method renderOutput(Z)Z
    .locals 10

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 187
    if-nez p1, :cond_0

    move v0, v1

    .line 224
    :goto_0
    return v0

    .line 194
    :cond_0
    iget-object v6, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v6

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    aget-object v3, v0, v4

    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v4

    .line 201
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    if-eq v4, v5, :cond_2

    if-eqz v3, :cond_2

    .line 204
    invoke-direct {p0, v0, v3}, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->renderOutput(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Z

    move-result v0

    .line 205
    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    aput-object v2, v0, v4

    .line 209
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mDecoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    :goto_2
    iget-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->nFrameRendered:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_1

    .line 214
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    const-string/jumbo v0, "MediaPipeAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ReleaseOutputBuffer "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " size= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " @"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " ms,flags "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_1
    iget-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->nFrameRendered:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->nFrameRendered:J

    .line 220
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 221
    goto/16 :goto_0

    .line 201
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    const-string/jumbo v0, "MediaPipeAudio"

    const-string/jumbo v2, "IllegalStateException at releaseOutputBuffer"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 224
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_3
    move-object v0, v2

    move-object v3, v2

    move v4, v5

    goto/16 :goto_1
.end method

.method public bridge synthetic setEventListener(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$EventListener;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->setEventListener(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$EventListener;)V

    return-void
.end method

.method public bridge synthetic setReferenceClock(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->setReferenceClock(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;)V

    return-void
.end method

.method public bridge synthetic start()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;->mSampleCnt:J

    .line 69
    invoke-super {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->stop()V

    .line 70
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string/jumbo v0, "MediaPipeAudio"

    const-string/jumbo v1, "AudioTrack.stop() has  IllegalStateException"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic unpause()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->unpause()V

    return-void
.end method
