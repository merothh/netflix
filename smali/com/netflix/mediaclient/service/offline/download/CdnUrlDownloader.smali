.class public Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;
.super Ljava/lang/Object;
.source "CdnUrlDownloader.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;


# static fields
.field private static final MAX_PRIMARY_CDN_NETWORK_ERRORS:I

.field private static final PrimaryCdnBackOffTimes:[J

.field private static final TAG:Ljava/lang/String; = "nf_cdnUrlDownloader"


# instance fields
.field private final mBackGroundHandler:Landroid/os/Handler;

.field private final mCdnRetryRunnable:Ljava/lang/Runnable;

.field private final mCdnUrlDownloadEventReceiver:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;

.field private final mCdnUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadListener;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUrlIndex:I

.field private final mDownloadableFile:Ljava/io/File;

.field private final mDownloadableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

.field private mHttpUrlDownloader:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;

.field private final mMediaUrlDownloadPersistentData:Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

.field private mPrimaryCdnUrlNetworkErrors:I

.field private final mRankedCdnUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/CdnUrl;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->PrimaryCdnBackOffTimes:[J

    sget-object v0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->PrimaryCdnBackOffTimes:[J

    array-length v0, v0

    sput v0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->MAX_PRIMARY_CDN_NETWORK_ERRORS:I

    return-void

    :array_0
    .array-data 8
        0x7530
        0xea60
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;Ljava/io/File;Lcom/android/volley/RequestQueue;Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadListener;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader$1;-><init>(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCdnRetryRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mBackGroundHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mMediaUrlDownloadPersistentData:Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mDownloadableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    iput-object p6, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mDownloadableFile:Ljava/io/File;

    iput-object p7, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    iput-object p10, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCdnUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadListener;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mDownloadableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mDownloadableFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mBytesOnTheDisk:J

    invoke-interface {p4}, Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;->getCdnUrls()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mRankedCdnUrlList:Ljava/util/List;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mRankedCdnUrlList:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;->sortByRank(Ljava/util/List;)V

    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;

    invoke-direct {v0, p8, p9}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;-><init>(Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCdnUrlDownloadEventReceiver:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->onCdnRetryRunnable()V

    return-void
.end method

.method private doStartDownload(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mDownloadableFile:Ljava/io/File;

    sget-object v2, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/android/volley/Request$Priority;Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader$HttpUrlDownloadListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mHttpUrlDownloader:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mHttpUrlDownloader:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->start(Lcom/android/volley/RequestQueue;)V

    return-void
.end method

.method private doStopDownload()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mBackGroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mHttpUrlDownloader:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_cdnUrlDownloader"

    const-string/jumbo v1, "doStopDownload"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCdnUrlDownloadEventReceiver:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mDownloadableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    iget-wide v2, v1, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mBytesOnTheDisk:J

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->onDownloadStop(J)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mHttpUrlDownloader:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->cancel()V

    iput-object v4, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mHttpUrlDownloader:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;

    :cond_0
    return-void
.end method

.method private handleCdnUrlNetworkError()V
    .locals 6

    iget v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCurrentUrlIndex:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mPrimaryCdnUrlNetworkErrors:I

    sget v1, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->MAX_PRIMARY_CDN_NETWORK_ERRORS:I

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_cdnUrlDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCdnUrlNetworkError back-off by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->PrimaryCdnBackOffTimes:[J

    iget v4, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mPrimaryCdnUrlNetworkErrors:I

    aget-wide v4, v3, v4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mBackGroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCdnRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mBackGroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCdnRetryRunnable:Ljava/lang/Runnable;

    sget-object v2, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->PrimaryCdnBackOffTimes:[J

    iget v3, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mPrimaryCdnUrlNetworkErrors:I

    aget-wide v2, v2, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mPrimaryCdnUrlNetworkErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mPrimaryCdnUrlNetworkErrors:I

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCurrentUrlIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCurrentUrlIndex:I

    iget v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCurrentUrlIndex:I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mRankedCdnUrlList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mBackGroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCdnRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mBackGroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCdnRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "nf_cdnUrlDownloader"

    const-string/jumbo v1, "onCdnRetryRunnable all CDN URL exhausted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCdnUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadListener;

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_ALL_CDN_URLS_FAILED:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-interface {v0, p0, v1}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadListener;->onNetworkError(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method private onCdnRetryRunnable()V
    .locals 4

    iget v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCurrentUrlIndex:I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mRankedCdnUrlList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mRankedCdnUrlList:Ljava/util/List;

    iget v1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCurrentUrlIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_cdnUrlDownloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCdnRetryRunnable using rank="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;->mRank:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->doStartDownload(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCdnUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadListener;

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_ALL_CDN_URLS_FAILED:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-interface {v0, p0, v1}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadListener;->onNetworkError(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method


# virtual methods
.method public getDownloadableId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mMediaUrlDownloadPersistentData:Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    return-object v0
.end method

.method public isDownloadComplete()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mMediaUrlDownloadPersistentData:Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    return v0
.end method

.method public isDownloading()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mMediaUrlDownloadPersistentData:Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mHttpUrlDownloader:Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHttpResponseStart(J)V
    .locals 7

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_cdnUrlDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHttpResponseStart httpContentLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mDownloadableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mBytesOnTheDisk:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    cmp-long v0, p1, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mMediaUrlDownloadPersistentData:Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mSizeOfDownloadable:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_cdnUrlDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHttpResponseStart size mismatch size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mMediaUrlDownloadPersistentData:Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    iget-wide v2, v2, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mSizeOfDownloadable:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " httpContentLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCurrentUrlIndex:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCurrentUrlIndex:I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mRankedCdnUrlList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCdnUrlDownloadEventReceiver:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mRankedCdnUrlList:Ljava/util/List;

    iget v2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCurrentUrlIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mDownloadableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    iget-wide v2, v2, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mBytesOnTheDisk:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->onDownloadStart(Lcom/netflix/mediaclient/service/offline/download/CdnUrl;J)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_cdnUrlDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Incorrect mCurrentUrlIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCurrentUrlIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized onNetworkError(Lcom/android/volley/VolleyError;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_cdnUrlDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNetworkError error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    iget-object v1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v1, :cond_1

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_cdnUrlDownloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onError httpStatusCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/util/VolleyUtils;->getStatus(Lcom/android/volley/VolleyError;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;)Lcom/netflix/mediaclient/android/app/NetflixStatus;

    move-result-object v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->doStopDownload()V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->cdnUrlExpiredOrMoved(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "nf_cdnUrlDownloader"

    const-string/jumbo v3, "cdnUrlExpiredOrMoved httpStatusCode=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCdnUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadListener;

    invoke-interface {v0, p0, v1}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadListener;->onCdnUrlExpiredOrMoved(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;Lcom/netflix/mediaclient/android/app/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->isCdnUrlGeoCheckError(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "nf_cdnUrlDownloader"

    const-string/jumbo v3, "isCdnUrlGeoCheckError httpStatusCode=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCdnUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadListener;

    invoke-interface {v0, p0, v1}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadListener;->onCdnUrlGeoCheckFailure(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;Lcom/netflix/mediaclient/android/app/Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    const/16 v1, 0x1a0

    if-ne v0, v1, :cond_5

    :try_start_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->doStopDownload()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mDownloadableFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "nf_cdnUrlDownloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onNetworkError deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mDownloadableFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " deleted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v0, "http 416 error"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->handleCdnUrlNetworkError()V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "nf_cdnUrlDownloader"

    const-string/jumbo v2, "onNetworkError lost connectivity.. not trying next CDN url."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCdnUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadListener;

    invoke-interface {v0, p0, v1}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadListener;->onNetworkError(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;Lcom/netflix/mediaclient/android/app/Status;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onProgress(Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mDownloadableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/download/HttpUrlDownloader;->getTotalBytesOnDisk()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mBytesOnTheDisk:J

    return-void
.end method

.method public declared-synchronized onUrlDownloadDiskIOError()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_cdnUrlDownloader"

    const-string/jumbo v1, "onUrlDownloadDiskIOError"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->doStopDownload()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCdnUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadListener;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadListener;->onUrlDownloadDiskIOError(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onUrlDownloadSessionEnd()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mDownloadableFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mMediaUrlDownloadPersistentData:Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    iget-wide v2, v2, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mSizeOfDownloadable:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const-string/jumbo v0, "nf_cdnUrlDownloader"

    const-string/jumbo v1, "onUrlDownloadSessionEnd download finished."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mMediaUrlDownloadPersistentData:Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mIsComplete:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCdnUrlDownloadEventReceiver:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mDownloadableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    iget-wide v2, v1, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mBytesOnTheDisk:J

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->onDownloadComplete(J)V

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCdnUrlDownloadListener:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadListener;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadListener;->onCdnUrlDownloadSessionEnd(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->doStopDownload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "nf_cdnUrlDownloader"

    const-string/jumbo v1, "onUrlDownloadSessionEnd not finished yet."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startDownload()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_cdnUrlDownloader"

    const-string/jumbo v1, "startDownload"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mDownloadableProgressInfo:Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mDownloadableFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mBytesOnTheDisk:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mCurrentUrlIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mPrimaryCdnUrlNetworkErrors:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->mRankedCdnUrlList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;->mUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->doStopDownload()V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->doStartDownload(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopDownload()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;->doStopDownload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
