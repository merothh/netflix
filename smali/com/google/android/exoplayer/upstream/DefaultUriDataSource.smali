.class public final Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;
.super Ljava/lang/Object;
.source "DefaultUriDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/UriDataSource;


# instance fields
.field private final assetDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

.field private final contentDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

.field private dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

.field private final fileDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

.field private final httpDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Lcom/google/android/exoplayer/upstream/UriDataSource;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->httpDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    new-instance v0, Lcom/google/android/exoplayer/upstream/FileDataSource;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer/upstream/FileDataSource;-><init>(Lcom/google/android/exoplayer/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->fileDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    new-instance v0, Lcom/google/android/exoplayer/upstream/AssetDataSource;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer/upstream/AssetDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->assetDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    new-instance v0, Lcom/google/android/exoplayer/upstream/ContentDataSource;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer/upstream/ContentDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->contentDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;Z)V
    .locals 7

    const/16 v4, 0x1f40

    new-instance v0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;

    const/4 v2, 0x0

    move-object v1, p3

    move-object v3, p2

    move v5, v4

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;Lcom/google/android/exoplayer/upstream/TransferListener;IIZ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Lcom/google/android/exoplayer/upstream/UriDataSource;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/UriDataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    throw v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/UriDataSource;->getUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public open(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/exoplayer/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->assetDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/upstream/UriDataSource;->open(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->fileDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->assetDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->contentDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->httpDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    goto :goto_1
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer/upstream/UriDataSource;->read([BII)I

    move-result v0

    return v0
.end method
