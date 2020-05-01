.class public Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "ResourceFetcher.java"


# static fields
.field private static final DOWNLOADS_CACHE_DIR:Ljava/lang/String; = "downloads"

.field private static final MINIMUM_IMAGE_CACHE_TTL:J = 0x48190800L

.field private static final RESOURCE_REQUEST_TIMEOUT_MS:I = 0x3e8

.field private static final SELECTED_WEBCLIENT:Ljava/lang/String; = "volley"

.field private static final TAG:Ljava/lang/String; = "nf_service_resourcefetcher"

.field private static final VOLLEY_CACHE_DIR:Ljava/lang/String; = "volley"

.field private static final VOLLEY_WEBCLIENT_NAME:Ljava/lang/String; = "volley"


# instance fields
.field private mDownloadsDir:Ljava/io/File;

.field private mImageLoader:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private mVolleyCacheWrapper:Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;

.field private final mWebClient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 94
    invoke-static {}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->createWebClient()Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mWebClient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    .line 95
    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method private createDiskCache()Lcom/android/volley/toolbox/DiskBasedCache;
    .locals 7

    .prologue
    .line 460
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "volley"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDiskCacheSizeBytes()I

    move-result v1

    .line 462
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    const-string/jumbo v2, "nf_service_resourcefetcher"

    const-string/jumbo v3, "Creating new Volley DiskBasedCache, location: %s,  max size: %d bytes"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    new-instance v2, Lcom/android/volley/toolbox/DiskBasedCache;

    invoke-direct {v2, v0, v1}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    return-object v2
.end method

.method private createHttpStack()Lcom/android/volley/toolbox/HttpStack;
    .locals 2

    .prologue
    .line 451
    const-string/jumbo v0, "nf_service_resourcefetcher"

    const-string/jumbo v1, "Create resource Http Stack"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ResourceHttpStack;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ResourceHttpStack;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    return-object v0
.end method

.method private createImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 172
    const-string/jumbo v0, "nf_service_resourcefetcher"

    const-string/jumbo v1, "ResourceFetcher creating ImageLoader"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 174
    const-string/jumbo v0, "Attempting to create an ImageLoader with a null RequestQueue"

    .line 175
    const-string/jumbo v1, "nf_service_resourcefetcher"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    .line 196
    :goto_0
    return-object v6

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    .line 181
    const-wide/32 v4, 0x48190800

    .line 182
    const/16 v3, 0x3e8

    .line 183
    if-eqz v0, :cond_1

    .line 184
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getResourceRequestTimeout()I

    move-result v3

    .line 185
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getImageCacheMinimumTtl()J

    move-result-wide v4

    .line 187
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    const-string/jumbo v0, "nf_service_resourcefetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received request to create new ImageLoader with socketTimeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and minimumTtl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v6

    .line 196
    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 198
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getImageCache(Landroid/content/Context;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;

    move-result-object v2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;IJLcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    move-object v6, v0

    .line 196
    goto :goto_0
.end method

.method private static createWebClient()Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;
    .locals 2

    .prologue
    .line 469
    const-string/jumbo v0, "nf_service_resourcefetcher"

    const-string/jumbo v1, "WebClient of type volley"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string/jumbo v0, "volley"

    const-string/jumbo v1, "volley"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;-><init>()V

    return-object v0

    .line 474
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Webclient not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized getImageCache(Landroid/content/Context;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;
    .locals 6

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/NetflixApplication;

    .line 419
    invoke-virtual {v1}, Lcom/netflix/mediaclient/NetflixApplication;->getImageCache()Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;

    move-result-object v2

    .line 420
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;

    if-eqz v3, :cond_0

    .line 421
    move-object v0, v2

    check-cast v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    :goto_0
    monitor-exit p0

    return-object v1

    .line 424
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    .line 425
    if-nez v2, :cond_1

    .line 426
    const-string/jumbo v3, "nf_service_resourcefetcher"

    const-string/jumbo v4, "Config interface is null - using default img cache size"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_1
    if-nez v2, :cond_2

    sget v2, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->DEFAULT_IMAGE_CACHE_SIZE_BYTES:I

    move v3, v2

    .line 432
    :goto_1
    const-string/jumbo v2, "nf_service_resourcefetcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Creating new BitmapLruCache of size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v2, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$VolleyImageCache;

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$VolleyImageCache;-><init>(I)V

    .line 434
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/NetflixApplication;->setImageCache(Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;)V

    move-object v1, v2

    .line 435
    goto :goto_0

    .line 430
    :cond_2
    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getImageCacheSizeBytes()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    move v3, v2

    goto :goto_1

    .line 417
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getResourceFetcherCallback(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 486
    if-nez p1, :cond_0

    .line 487
    const-string/jumbo v1, "nf_service_resourcefetcher"

    const-string/jumbo v2, "Resource fetcher callback is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$ResourceFetcherCallbackWrapper;

    invoke-direct {v1, p0, p1, v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$ResourceFetcherCallbackWrapper;-><init>(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$1;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public deleteLocalResource(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 545
    const/4 v0, 0x0

    .line 546
    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mDownloadsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mDownloadsDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 548
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 550
    :cond_0
    return v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 138
    const-string/jumbo v0, "nf_service_resourcefetcher"

    const-string/jumbo v1, "Stopping Volley RequestQueue"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 142
    :cond_0
    return-void
.end method

.method protected doInit()V
    .locals 6

    .prologue
    .line 99
    const-string/jumbo v0, "nf_service_resourcefetcher"

    const-string/jumbo v1, "ResourceFetcher starting doInit."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getResFetcherThreadPoolSize()I

    move-result v0

    .line 103
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-string/jumbo v1, "nf_service_resourcefetcher"

    const-string/jumbo v2, "Creating Volley RequestQueue with threadPoolsize of %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    new-instance v1, Lcom/android/volley/RequestQueue;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->createDiskCache()Lcom/android/volley/toolbox/DiskBasedCache;

    move-result-object v2

    new-instance v3, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->createHttpStack()Lcom/android/volley/toolbox/HttpStack;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    invoke-direct {v1, v2, v3, v0}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    .line 110
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "downloads"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mDownloadsDir:Ljava/io/File;

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mDownloadsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mDownloadsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 115
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getApiEndpointRegistry()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v1

    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getUserCredentialRegistry()Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    move-result-object v2

    .line 117
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/webclient/NetflixWebClientInitParameters;-><init>(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;Lcom/android/volley/RequestQueue;)V

    .line 120
    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mWebClient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->init(Lcom/netflix/mediaclient/service/webclient/WebClientInitParameters;)V

    .line 122
    new-instance v1, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->getCache()Lcom/android/volley/Cache;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/DiskBasedCache;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;-><init>(Lcom/android/volley/toolbox/DiskBasedCache;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mVolleyCacheWrapper:Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;

    .line 124
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDataRequestTimeout()I

    move-result v0

    .line 125
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    const-string/jumbo v1, "nf_service_resourcefetcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting default timeout value for data request to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mWebClient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->setTimeout(I)V

    .line 131
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 132
    return-void
.end method

.method public fetchAndCacheResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V
    .locals 9

    .prologue
    .line 299
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const-string/jumbo v0, "nf_service_resourcefetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request to download or retrieve resourceMetaData at URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportAssetRequest(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 305
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getResourceFetcherCallback(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    move-result-object v1

    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mVolleyCacheWrapper:Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->getPathFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;->getEntryMetaData(Ljava/lang/String;)Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_2

    .line 309
    if-eqz v1, :cond_1

    .line 310
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;->getByteOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;->getByteLength()J

    move-result-wide v6

    sget-object v8, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    move-object v2, p1

    invoke-interface/range {v1 .. v8}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;->onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V

    .line 327
    :cond_1
    :goto_0
    return-void

    .line 314
    :cond_2
    new-instance v2, Lcom/netflix/mediaclient/service/resfetcher/volley/DownloadAndCacheRequest;

    new-instance v5, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$3;

    invoke-direct {v5, p0, v1, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$3;-><init>(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getResourceRequestTimeout()I

    move-result v6

    iget-object v7, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mVolleyCacheWrapper:Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;

    move-object v3, p1

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/service/resfetcher/volley/DownloadAndCacheRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Lcom/android/volley/Response$ErrorListener;ILcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;)V

    .line 325
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method public fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;JJLcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V
    .locals 11

    .prologue
    .line 341
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    const-string/jumbo v2, "nf_service_resourcefetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received request to fetch resource at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v2

    invoke-static {p1, p2, v2}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportAssetRequest(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 347
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getResourceFetcherCallback(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    move-result-object v8

    .line 349
    new-instance v9, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$4;

    invoke-direct {v9, p0, v8, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$4;-><init>(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Ljava/lang/String;)V

    .line 359
    new-instance v2, Lcom/netflix/mediaclient/service/resfetcher/volley/HttpRangeRequest;

    .line 360
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getResourceRequestTimeout()I

    move-result v10

    move-object v3, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v2 .. v10}, Lcom/netflix/mediaclient/service/resfetcher/volley/HttpRangeRequest;-><init>(Ljava/lang/String;JJLcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Lcom/android/volley/Response$ErrorListener;I)V

    .line 362
    iget-object v3, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 363
    return-void
.end method

.method public fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/android/volley/Request$Priority;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V
    .locals 7

    .prologue
    .line 268
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const-string/jumbo v0, "nf_service_resourcefetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received request to fetch resource at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportAssetRequest(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 274
    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getResourceFetcherCallback(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    move-result-object v2

    .line 275
    new-instance v0, Lcom/netflix/mediaclient/service/resfetcher/volley/FileDownloadRequest;

    new-instance v3, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$2;

    invoke-direct {v3, p0, v2, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$2;-><init>(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getResourceRequestTimeout()I

    move-result v4

    iget-object v6, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mDownloadsDir:Ljava/io/File;

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/resfetcher/volley/FileDownloadRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Lcom/android/volley/Response$ErrorListener;ILcom/android/volley/Request$Priority;Ljava/io/File;)V

    .line 287
    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 288
    return-void
.end method

.method public fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V
    .locals 3

    .prologue
    .line 261
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const-string/jumbo v0, "nf_service_resourcefetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received request to fetch resource at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    sget-object v0, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/android/volley/Request$Priority;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    .line 265
    return-void
.end method

.method public fetchResourceDirectly(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/android/volley/Request$Priority;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V
    .locals 6

    .prologue
    .line 228
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const-string/jumbo v0, "nf_service_resourcefetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received request to fetch resource directly at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportAssetRequest(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 233
    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getResourceFetcherCallback(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    move-result-object v2

    .line 235
    new-instance v0, Lcom/netflix/mediaclient/service/resfetcher/volley/RawFileDownloadRequest;

    new-instance v3, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$1;

    invoke-direct {v3, p0, v2, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$1;-><init>(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getResourceRequestTimeout()I

    move-result v4

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/resfetcher/volley/RawFileDownloadRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Lcom/android/volley/Response$ErrorListener;ILcom/android/volley/Request$Priority;)V

    .line 246
    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 247
    return-void
.end method

.method public fetchResourceDirectly(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResourceDirectly(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/android/volley/Request$Priority;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    .line 215
    return-void
.end method

.method public getApiNextWebClient()Lcom/netflix/mediaclient/service/webclient/WebClient;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mWebClient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    return-object v0
.end method

.method public getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mImageLoader:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    if-nez v0, :cond_1

    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mImageLoader:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    if-nez v0, :cond_0

    .line 160
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->createImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mImageLoader:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    .line 162
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mImageLoader:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    return-object v0

    .line 162
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public prefetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V
    .locals 4

    .prologue
    .line 376
    if-nez p1, :cond_0

    .line 377
    const-string/jumbo v0, "nf_service_resourcefetcher"

    const-string/jumbo v1, "Request to prefetch resource with null URL"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$5;

    invoke-direct {v1, p0, p3, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$5;-><init>(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 404
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    const-string/jumbo v0, "nf_service_resourcefetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request to prefetch resource at URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportAssetRequest(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 392
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getResourceFetcherCallback(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    move-result-object v0

    .line 393
    new-instance v1, Lcom/netflix/mediaclient/service/resfetcher/volley/PrefetchResourceRequest;

    new-instance v2, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$6;

    invoke-direct {v2, p0, v0, p1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$6;-><init>(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getResourceRequestTimeout()I

    move-result v3

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/netflix/mediaclient/service/resfetcher/volley/PrefetchResourceRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Lcom/android/volley/Response$ErrorListener;I)V

    .line 403
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method
