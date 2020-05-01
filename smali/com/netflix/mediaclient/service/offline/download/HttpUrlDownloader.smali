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

    .prologue
    .line 49
    invoke-direct {p0, p1, p3}, Lcom/android/volley/toolbox/ProgressiveRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Request$Priority;)V

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    .line 50
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mUrl:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mFile:Ljava/io/File;

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mFileName:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    .line 54
    invoke-virtual {p0, p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->setProgressiveRequestListener(Lcom/android/volley/toolbox/ProgressiveRequestListener;)V

    .line 57
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

    .line 58
    return-void
.end method

.method private declared-synchronized flushAndCloseOutputStream()V
    .locals 4

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 175
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    :cond_0
    monitor-exit p0

    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    :try_start_3
    const-string/jumbo v1, "nf_httpUrlDownloader"

    const-string/jumbo v2, "flushAndCloseOutputStream:"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendNetworkError(Lcom/android/volley/VolleyError;)V
    .locals 3

    .prologue
    .line 185
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
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

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;->onNetworkError(Lcom/android/volley/VolleyError;)V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    .line 192
    :cond_1
    return-void
.end method

.method private sendProgress()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;->onProgress(Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;)V

    .line 153
    :cond_0
    return-void
.end method

.method private sendUrlDownloadDiskIOError()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;->onUrlDownloadDiskIOError()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    .line 199
    :cond_0
    return-void
.end method

.method private sendUrlDownloadSessionEnd()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;->onUrlDownloadSessionEnd()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    .line 169
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 203
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
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

    .line 207
    :cond_0
    iput-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    .line 208
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->setProgressiveRequestListener(Lcom/android/volley/toolbox/ProgressiveRequestListener;)V

    .line 209
    invoke-super {p0}, Lcom/android/volley/toolbox/ProgressiveRequest;->cancel()V

    .line 212
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->flushAndCloseOutputStream()V

    .line 213
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

    .prologue
    .line 83
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
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

    .line 86
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    const-string/jumbo v1, "Range"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpRange:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-object v0
.end method

.method public getTotalBytesOnDisk()J
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mFileSizeAtDownloadStartTime:J

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    iget-wide v2, v2, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mBytesDownloadedInSession:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public onError(Lcom/android/volley/VolleyError;)V
    .locals 4

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->setProgressiveRequestListener(Lcom/android/volley/toolbox/ProgressiveRequestListener;)V

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mOnErrorTime:J

    .line 159
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->flushAndCloseOutputStream()V

    .line 161
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->sendNetworkError(Lcom/android/volley/VolleyError;)V

    .line 162
    return-void
.end method

.method public onNext([BI)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    if-nez v0, :cond_1

    .line 112
    const-string/jumbo v0, "nf_httpUrlDownloader"

    const-string/jumbo v1, "onNext mBufferedOutputStream null. not writing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    if-lez p2, :cond_2

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    iget-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mBytesDownloadedInSession:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mBytesDownloadedInSession:J

    .line 118
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->sendProgress()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-string/jumbo v1, "nf_httpUrlDownloader"

    const-string/jumbo v2, "onNext write to disk failed"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 143
    invoke-virtual {p0, v7}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->setProgressiveRequestListener(Lcom/android/volley/toolbox/ProgressiveRequestListener;)V

    .line 144
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->sendUrlDownloadDiskIOError()V

    .line 145
    invoke-super {p0}, Lcom/android/volley/toolbox/ProgressiveRequest;->cancel()V

    goto :goto_0

    .line 119
    :cond_2
    if-gez p2, :cond_0

    .line 120
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

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->setProgressiveRequestListener(Lcom/android/volley/toolbox/ProgressiveRequestListener;)V

    .line 122
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->flushAndCloseOutputStream()V

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mOnCompleteTime:J

    .line 124
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->dumpStats()V

    .line 127
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->sendUrlDownloadSessionEnd()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onResponseStart(J)V
    .locals 5

    .prologue
    .line 93
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
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

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mHttpResponseStartTime:J

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;->onHttpResponseStart(J)V

    .line 100
    :cond_1
    return-void
.end method

.method public start(Lcom/android/volley/RequestQueue;)V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mQueueStartTime:J

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mHttpUrlDownloadStats:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloadStats;->mFileSizeAtDownloadStartTime:J

    .line 63
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
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

    .line 67
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mFile:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    .line 68
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
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

    .line 78
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 79
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
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

    .line 75
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->sendUrlDownloadDiskIOError()V

    goto :goto_0
.end method
