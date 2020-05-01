.class final Lo/uS$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/uS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private final b:J

.field private final c:J

.field private final d:Lcom/google/android/exoplayer2/source/SampleStream;

.field private e:J

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaPeriod;Lcom/google/android/exoplayer2/source/SampleStream;JJZ)V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lo/uS$ActionBar;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 267
    iput-object p2, p0, Lo/uS$ActionBar;->d:Lcom/google/android/exoplayer2/source/SampleStream;

    .line 268
    iput-wide p3, p0, Lo/uS$ActionBar;->b:J

    .line 269
    iput-wide p5, p0, Lo/uS$ActionBar;->c:J

    iput-wide p5, p0, Lo/uS$ActionBar;->e:J

    .line 270
    iput-boolean p7, p0, Lo/uS$ActionBar;->h:Z

    return-void
.end method

.method static synthetic c(Lo/uS$ActionBar;)Lcom/google/android/exoplayer2/source/SampleStream;
    .locals 0

    .line 253
    iget-object p0, p0, Lo/uS$ActionBar;->d:Lcom/google/android/exoplayer2/source/SampleStream;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 274
    iput-boolean v0, p0, Lo/uS$ActionBar;->h:Z

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 283
    iput-wide p1, p0, Lo/uS$ActionBar;->e:J

    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lo/uS$ActionBar;->g:Z

    .line 279
    iget-wide v0, p0, Lo/uS$ActionBar;->c:J

    iput-wide v0, p0, Lo/uS$ActionBar;->e:J

    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 288
    iget-object v0, p0, Lo/uS$ActionBar;->d:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SampleStream;->isReady()Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 1

    .line 293
    iget-object v0, p0, Lo/uS$ActionBar;->d:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SampleStream;->maybeThrowError()V

    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 299
    iget-boolean v3, v0, Lo/uS$ActionBar;->h:Z

    const/4 v4, -0x3

    if-eqz v3, :cond_0

    return v4

    .line 302
    :cond_0
    iget-boolean v3, v0, Lo/uS$ActionBar;->g:Z

    const/4 v5, 0x4

    const/4 v6, -0x4

    if-eqz v3, :cond_1

    .line 303
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    return v6

    .line 306
    :cond_1
    iget-object v3, v0, Lo/uS$ActionBar;->d:Lcom/google/android/exoplayer2/source/SampleStream;

    move/from16 v7, p3

    invoke-interface {v3, v1, v2, v7}, Lcom/google/android/exoplayer2/source/SampleStream;->readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v3

    if-eqz v1, :cond_3

    .line 309
    iget-object v9, v1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    if-eqz v9, :cond_3

    .line 310
    iget-object v1, v1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    .line 311
    iget-object v9, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v10, "audio/mp4a-latm"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-wide/32 v9, 0xa6aa

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v9, "audio/eac3"

    .line 312
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v9, 0x7d00

    goto :goto_0

    :cond_3
    const-wide/16 v9, 0x0

    .line 315
    :goto_0
    iget-wide v11, v0, Lo/uS$ActionBar;->e:J

    const-wide/high16 v13, -0x8000000000000000L

    const/4 v1, 0x1

    cmp-long v15, v11, v13

    if-eqz v15, :cond_6

    if-ne v3, v6, :cond_4

    iget-wide v11, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v7, v0, Lo/uS$ActionBar;->e:J

    add-long/2addr v7, v9

    cmp-long v17, v11, v7

    if-gez v17, :cond_5

    :cond_4
    if-ne v3, v4, :cond_6

    iget-object v4, v0, Lo/uS$ActionBar;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 317
    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v7

    cmp-long v4, v7, v13

    if-nez v4, :cond_6

    .line 324
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isFlagsOnly()Z

    move-result v4

    if-nez v4, :cond_6

    .line 325
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 326
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 327
    iput-boolean v1, v0, Lo/uS$ActionBar;->g:Z

    return v6

    .line 331
    :cond_6
    iget-wide v7, v0, Lo/uS$ActionBar;->e:J

    cmp-long v4, v7, v13

    if-eqz v4, :cond_b

    if-ne v3, v6, :cond_b

    const/4 v4, 0x0

    .line 332
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setPartialFrameDuration(I)V

    const-wide/16 v7, 0x0

    cmp-long v11, v9, v7

    if-lez v11, :cond_b

    .line 334
    iget-wide v7, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v12, v0, Lo/uS$ActionBar;->e:J

    const/high16 v14, -0x80000000

    const/16 v17, 0x2

    const/4 v15, 0x3

    cmp-long v16, v7, v12

    if-ltz v16, :cond_7

    new-array v5, v15, [Ljava/lang/Object;

    .line 335
    iget-wide v7, v0, Lo/uS$ActionBar;->b:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v4

    iget-wide v7, v0, Lo/uS$ActionBar;->e:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v1

    iget-wide v7, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v17

    const-string v7, "%d - %d, @%d extra frame"

    invoke-static {v7, v5}, Lcom/google/android/exoplayer2/util/NetflixExoLogUtil;->Log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    invoke-virtual {v2, v14}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    goto/16 :goto_1

    .line 337
    :cond_7
    iget-wide v7, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v12, v0, Lo/uS$ActionBar;->e:J

    sub-long/2addr v12, v9

    const-string v6, "%d - %d, @%d, %d"

    cmp-long v18, v7, v12

    if-lez v18, :cond_8

    .line 339
    invoke-virtual {v2, v14}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 341
    iget-wide v7, v0, Lo/uS$ActionBar;->e:J

    iget-wide v12, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    sub-long/2addr v7, v12

    long-to-int v8, v7

    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setPartialFrameDuration(I)V

    new-array v5, v5, [Ljava/lang/Object;

    .line 342
    iget-wide v7, v0, Lo/uS$ActionBar;->b:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v4

    iget-wide v7, v0, Lo/uS$ActionBar;->e:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v1

    iget-wide v7, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v17

    iget-wide v7, v0, Lo/uS$ActionBar;->e:J

    iget-wide v12, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    sub-long/2addr v7, v12

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v15

    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/util/NetflixExoLogUtil;->Log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 343
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-wide v7, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v12, v0, Lo/uS$ActionBar;->b:J

    cmp-long v14, v7, v12

    if-gez v14, :cond_9

    iget-wide v7, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    add-long/2addr v7, v9

    iget-wide v12, v0, Lo/uS$ActionBar;->b:J

    cmp-long v14, v7, v12

    if-lez v14, :cond_9

    .line 344
    iget-wide v7, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    sub-long/2addr v12, v7

    sub-long/2addr v12, v9

    long-to-int v7, v12

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setPartialFrameDuration(I)V

    new-array v5, v5, [Ljava/lang/Object;

    .line 345
    iget-wide v7, v0, Lo/uS$ActionBar;->b:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v4

    iget-wide v7, v0, Lo/uS$ActionBar;->e:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v1

    iget-wide v7, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v17

    iget-wide v7, v0, Lo/uS$ActionBar;->b:J

    iget-wide v12, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    sub-long/2addr v7, v12

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v15

    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/util/NetflixExoLogUtil;->Log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_1
    if-lez v11, :cond_a

    .line 347
    iget-wide v5, v0, Lo/uS$ActionBar;->e:J

    iget-wide v7, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    const-wide/32 v11, 0x186a0

    add-long/2addr v7, v11

    cmp-long v13, v5, v7

    if-gez v13, :cond_a

    iget-wide v5, v0, Lo/uS$ActionBar;->e:J

    iget-wide v7, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    add-long/2addr v7, v11

    sub-long/2addr v7, v9

    cmp-long v9, v5, v7

    if-ltz v9, :cond_a

    .line 349
    iget-wide v5, v0, Lo/uS$ActionBar;->e:J

    iget-wide v7, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    sub-long/2addr v5, v7

    iput-wide v5, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->enterTransition:J

    new-array v5, v15, [Ljava/lang/Object;

    .line 350
    iget-wide v6, v0, Lo/uS$ActionBar;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    iget-wide v6, v0, Lo/uS$ActionBar;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v1

    iget-wide v6, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v17

    const-string v1, "%d - %d, @%d trigger ease"

    invoke-static {v1, v5}, Lcom/google/android/exoplayer2/util/NetflixExoLogUtil;->Log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    const-wide/16 v4, 0x0

    .line 352
    iput-wide v4, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->enterTransition:J

    :cond_b
    :goto_2
    const/4 v1, -0x4

    if-ne v3, v1, :cond_c

    .line 357
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v1

    if-nez v1, :cond_c

    .line 358
    iget-wide v4, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v6, v0, Lo/uS$ActionBar;->b:J

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    :cond_c
    return v3
.end method

.method public skipData(J)I
    .locals 3

    .line 365
    iget-object v0, p0, Lo/uS$ActionBar;->d:Lcom/google/android/exoplayer2/source/SampleStream;

    iget-wide v1, p0, Lo/uS$ActionBar;->b:J

    add-long/2addr v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleStream;->skipData(J)I

    move-result p1

    return p1
.end method
