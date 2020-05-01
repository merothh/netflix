.class public final Lcom/google/android/exoplayer/upstream/DataSourceInputStream;
.super Ljava/io/InputStream;
.source "DataSourceInputStream.java"


# instance fields
.field private closed:Z

.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private final dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

.field private opened:Z

.field private final singleByteArray:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->opened:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->closed:Z

    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->singleByteArray:[B

    return-void
.end method

.method private checkOpened()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->opened:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/upstream/DataSource;->open(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->opened:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/DataSource;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->closed:Z

    :cond_0
    return-void
.end method

.method public open()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->checkOpened()V

    return-void
.end method

.method public read()I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->singleByteArray:[B

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->read([B)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->singleByteArray:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->checkOpened()V

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer/upstream/DataSource;->read([BII)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public skip(J)J
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->checkOpened()V

    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
