.class public Lcom/google/android/exoplayer/util/ManifestFetcher;
.super Ljava/lang/Object;
.source "ManifestFetcher.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/upstream/Loader$Callback;"
    }
.end annotation


# instance fields
.field private currentLoadStartTimestamp:J

.field private currentLoadable:Lcom/google/android/exoplayer/upstream/UriLoadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/upstream/UriLoadable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private enabledCount:I

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

.field private loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

.field private loadExceptionCount:I

.field private loadExceptionTimestamp:J

.field private loader:Lcom/google/android/exoplayer/upstream/Loader;

.field private volatile manifest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile manifestLoadCompleteTimestamp:J

.field private volatile manifestLoadStartTimestamp:J

.field volatile manifestUri:Ljava/lang/String;

.field private final parser:Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final uriDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;


# direct methods
.method static synthetic access$000(Lcom/google/android/exoplayer/util/ManifestFetcher;)Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventListener:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

    return-object v0
.end method

.method private getRetryDelayMillis(J)J
    .locals 5

    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyManifestError(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventListener:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/util/ManifestFetcher$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/util/ManifestFetcher$3;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyManifestRefreshStarted()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventListener:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/util/ManifestFetcher$1;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer/util/ManifestFetcher$1;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyManifestRefreshed()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventListener:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/util/ManifestFetcher$2;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer/util/ManifestFetcher$2;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->enabledCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->enabledCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    :cond_0
    return-void
.end method

.method public enable()V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->enabledCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->enabledCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    :cond_0
    return-void
.end method

.method public getManifest()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifest:Ljava/lang/Object;

    return-object v0
.end method

.method public getManifestLoadStartTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestLoadStartTimestamp:J

    return-wide v0
.end method

.method public maybeThrowError()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    throw v0
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 0

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->currentLoadable:Lcom/google/android/exoplayer/upstream/UriLoadable;

    if-eq v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->currentLoadable:Lcom/google/android/exoplayer/upstream/UriLoadable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/UriLoadable;->getResult()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifest:Ljava/lang/Object;

    iget-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->currentLoadStartTimestamp:J

    iput-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestLoadStartTimestamp:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestLoadCompleteTimestamp:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifest:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/exoplayer/util/ManifestFetcher$RedirectingManifest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifest:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer/util/ManifestFetcher$RedirectingManifest;

    invoke-interface {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher$RedirectingManifest;->getNextManifestUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestUri:Ljava/lang/String;

    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->notifyManifestRefreshed()V

    goto :goto_0
.end method

.method public onLoadError(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->currentLoadable:Lcom/google/android/exoplayer/upstream/UriLoadable;

    if-eq v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionTimestamp:J

    new-instance v0, Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->notifyManifestError(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public requestRefresh()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionTimestamp:J

    iget v4, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    int-to-long v4, v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getRetryDelayMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/exoplayer/upstream/Loader;

    const-string/jumbo v1, "manifestLoader"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer/upstream/UriLoadable;

    iget-object v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->uriDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->parser:Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer/upstream/UriLoadable;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->currentLoadable:Lcom/google/android/exoplayer/upstream/UriLoadable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->currentLoadStartTimestamp:J

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->currentLoadable:Lcom/google/android/exoplayer/upstream/UriLoadable;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->notifyManifestRefreshStarted()V

    goto :goto_0
.end method
