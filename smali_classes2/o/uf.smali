.class Lo/uf;
.super Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
.source ""


# instance fields
.field private final a:[B

.field private volatile b:Z

.field public final c:Lo/ug;

.field private final d:I

.field private volatile e:I

.field private volatile j:Z


# direct methods
.method public constructor <init>(Lo/ug;[BILcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJI)V
    .locals 12

    move-object v11, p0

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v5, p8

    move-wide/from16 v6, p9

    move-wide/from16 v8, p11

    move/from16 v10, p13

    .line 30
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJI)V

    move v0, p3

    .line 31
    iput v0, v11, Lo/uf;->d:I

    move-object v0, p1

    .line 32
    iput-object v0, v11, Lo/uf;->c:Lo/ug;

    move-object v0, p2

    .line 33
    iput-object v0, v11, Lo/uf;->a:[B

    return-void
.end method


# virtual methods
.method public bytesLoaded()J
    .locals 2

    .line 43
    iget v0, p0, Lo/uf;->e:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lo/uf;->b:Z

    return-void
.end method

.method public e()I
    .locals 1

    .line 47
    iget v0, p0, Lo/uf;->d:I

    return v0
.end method

.method public isLoadCanceled()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lo/uf;->b:Z

    return v0
.end method

.method public isLoadCompleted()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lo/uf;->j:Z

    return v0
.end method

.method public load()V
    .locals 6

    .line 62
    iget-object v0, p0, Lo/uf;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v1, p0, Lo/uf;->e:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DataSpec;->subrange(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    .line 64
    :try_start_0
    iget-boolean v1, p0, Lo/uf;->b:Z

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lo/uf;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    .line 67
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lo/uf;->b:Z

    if-nez v1, :cond_1

    iget v1, p0, Lo/uf;->e:I

    int-to-long v1, v1

    iget-wide v3, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 68
    iget-wide v1, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iget v3, p0, Lo/uf;->e:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    long-to-int v2, v1

    .line 69
    iget-object v1, p0, Lo/uf;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v3, p0, Lo/uf;->a:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lo/uf;->a:[B

    array-length v5, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v1, v3, v4, v2}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v1

    .line 70
    iget v2, p0, Lo/uf;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lo/uf;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lo/uf;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lo/uf;->j:Z

    return-void

    :catchall_0
    move-exception v0

    .line 73
    iget-object v1, p0, Lo/uf;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 74
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{segment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/uf;->c:Lo/ug;

    iget-object v1, v1, Lo/ug;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/uf;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "AUDIO"

    goto :goto_0

    :cond_0
    const-string v1, "VIDEO"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/uf;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "kbps, pts=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/uf;->startTimeUs:J

    .line 83
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/uf;->endTimeUs:J

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
