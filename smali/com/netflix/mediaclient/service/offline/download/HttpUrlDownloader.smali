.class Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;
.super Lcom/android/volley/toolbox/ProgressiveRequest;
.source "HttpUrlDownloader.java"

# interfaces
.implements Lcom/android/volley/toolbox/ProgressiveRequestListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_httpUrlDownloader"

.field private static final TEST_LOG_PROGRESS_EVERY_FIVE_SECONDS:Z


# instance fields
.field private mBufferedOutputStream:Ljava/io/BufferedOutputStream;

.field private final mFile:Ljava/io/File;

.field private final mFileName:Ljava/lang/String;

.field private final mHttpRange:Ljava/lang/String;

.field private mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

.field private final mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

.field private mTestingLastLogTime:J

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/android/volley/Request$Priority;Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;)V
    .locals 4

    invoke-direct {p0, p1, p3}, Lcom/android/volley/toolbox/ProgressiveRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Request$Priority;)V

    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mFile:Ljava/io/File;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mFileName:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    invoke-virtual {p0, p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->setProgressiveRequestListener(Lcom/android/volley/toolbox/ProgressiveRequestListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpRange:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized flushAndCloseOutputStream()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "nf_httpUrlDownloader"

    const-string/jumbo v2, "flushAndCloseOutputStream:"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendNetworkError(Lcom/android/volley/VolleyError;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_httpUrlDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendNetworkError error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;->onNetworkError(Lcom/android/volley/VolleyError;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    :cond_1
    return-void
.end method

.method private sendProgress()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;->onProgress(Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;)V

    :cond_0
    return-void
.end method

.method private sendUrlDownloadDiskIOError()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;->onUrlDownloadDiskIOError()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    :cond_0
    return-void
.end method

.method private sendUrlDownloadSessionEnd()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;->onUrlDownloadSessionEnd()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_httpUrlDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->setProgressiveRequestListener(Lcom/android/volley/toolbox/ProgressiveRequestListener;)V

    invoke-super {p0}, Lcom/android/volley/toolbox/ProgressiveRequest;->cancel()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->flushAndCloseOutputStream()V

    return-void
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_httpUrlDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RangeHeader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpRange:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "Range"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpRange:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getTotalBytesOnDisk()J
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mFileSizeAtDownloadStartTime:J

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    iget-wide v2, v2, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mBytesDownloadedInSession:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public onError(Lcom/android/volley/VolleyError;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->setProgressiveRequestListener(Lcom/android/volley/toolbox/ProgressiveRequestListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mOnErrorTime:J

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->flushAndCloseOutputStream()V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->sendNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public onNext([BI)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    if-nez v0, :cond_1

    const-string/jumbo v0, "nf_httpUrlDownloader"

    const-string/jumbo v1, "onNext mBufferedOutputStream null. not writing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p2, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/BufferedOutputStream;->write([BII)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    iget-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mBytesDownloadedInSession:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mBytesDownloadedInSession:J

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->sendProgress()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_httpUrlDownloader"

    const-string/jumbo v2, "onNext write to disk failed"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p0, v7}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->setProgressiveRequestListener(Lcom/android/volley/toolbox/ProgressiveRequestListener;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->sendUrlDownloadDiskIOError()V

    invoke-super {p0}, Lcom/android/volley/toolbox/ProgressiveRequest;->cancel()V

    goto :goto_0

    :cond_2
    if-gez p2, :cond_0

    :try_start_1
    const-string/jumbo v0, "nf_httpUrlDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNext done count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->setProgressiveRequestListener(Lcom/android/volley/toolbox/ProgressiveRequestListener;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->flushAndCloseOutputStream()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mOnCompleteTime:J

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->dumpStats()V

    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->sendUrlDownloadSessionEnd()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onResponseStart(J)V
    .locals 5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_httpUrlDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResponseStart responseContentLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mHttpResponseStartTime:J

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;->onHttpResponseStart(J)V

    :cond_1
    return-void
.end method

.method public start(Lcom/android/volley/RequestQueue;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mQueueStartTime:J

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mFileSizeAtDownloadStartTime:J

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_httpUrlDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HttpUrlDownloader starting... url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mFile:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_httpUrlDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " fileSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "nf_httpUrlDownloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start failed to create file="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->sendUrlDownloadDiskIOError()V

    goto :goto_0
.end method
