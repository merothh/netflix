.class public Lo/uc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSink;


# instance fields
.field private final c:I

.field private d:Z

.field private final e:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;I)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;

    const-wide/32 v1, 0x200000

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    iput-object v0, p0, Lo/uc;->e:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;

    .line 34
    iput p2, p0, Lo/uc;->c:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 54
    iget-boolean v0, p0, Lo/uc;->d:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lo/uc;->e:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->close()V

    :cond_0
    return-void
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .locals 1

    .line 39
    iget v0, p0, Lo/uc;->c:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/upstream/DataSpec;->isFlagSet(I)Z

    move-result v0

    iput-boolean v0, p0, Lo/uc;->d:Z

    .line 40
    iget-boolean v0, p0, Lo/uc;->d:Z

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lo/uc;->e:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 47
    iget-boolean v0, p0, Lo/uc;->d:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lo/uc;->e:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->write([BII)V

    :cond_0
    return-void
.end method
