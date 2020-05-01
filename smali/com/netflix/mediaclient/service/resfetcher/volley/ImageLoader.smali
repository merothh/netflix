.class public Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader;


# static fields
.field private static final LOG_VERBOSE:Z = false

.field private static final TAG:Ljava/lang/String; = "ImageLoader"


# instance fields
.field private final mApmLogger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

.field private final mBatchResponseDelayMs:I

.field private final mBatchedResponses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mCache:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mInFlightRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mMinimumCacheTtl:J

.field private final mRequestQueue:Lcom/android/volley/RequestQueue;

.field private mRequestSocketTimeout:I

.field private final mRequestTag:Ljava/lang/Object;

.field private mRunnable:Ljava/lang/Runnable;

.field mTTRTracker:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;


# direct methods
.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;IJLcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p6}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;ILcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    iput-wide p4, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mMinimumCacheTtl:J

    return-void
.end method

.method private constructor <init>(Lcom/android/volley/RequestQueue;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;ILcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    iput p3, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mRequestSocketTimeout:I

    return-void
.end method

.method private constructor <init>(Lcom/android/volley/RequestQueue;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mRequestTag:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mRequestSocketTimeout:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mBatchResponseDelayMs:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mMinimumCacheTtl:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mCache:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mApmLogger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Landroid/widget/ImageView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->setDrawableResource(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->setDrawableBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->setDrawableToNull(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;)Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mApmLogger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Ljava/lang/String;Lcom/android/volley/VolleyError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->onGetImageError(Ljava/lang/String;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    return-object v0
.end method

.method private batchResponse(Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$4;-><init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private get(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;IILcom/android/volley/Request$Priority;Landroid/graphics/Bitmap$Config;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;
    .locals 18

    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->throwIfNotOnMainThread()V

    invoke-static/range {p1 .. p1}, Lcom/netflix/mediaclient/util/UriUtil;->isValidUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-nez v2, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-nez v2, :cond_1

    const-string/jumbo v2, "Request queue is null - can\'t get bitmap"

    move-object v8, v2

    :goto_0
    const-string/jumbo v2, "ImageLoader"

    invoke-static {v2, v8}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;

    const/4 v4, 0x0

    const-string/jumbo v6, "ERROR"

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;-><init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;)V

    if-eqz p3, :cond_2

    new-instance v3, Lcom/android/volley/VolleyError;

    invoke-direct {v3, v8}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    :goto_1
    return-object v2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Request URL is NOT valid, unable to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "ImageLoader"

    const-string/jumbo v4, "Unable to report an error, missing listener"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;

    if-eqz v2, :cond_4

    move-object/from16 v2, p3

    check-cast v2, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->registerForTTR(Lcom/android/volley/Request$Priority;)V

    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->IMAGE_FETCH:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mCache:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;

    invoke-interface {v2, v6}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_5

    new-instance v2, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;-><init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;)V

    sget-object v3, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;->CACHE:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;->onResponse(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mApmLogger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportAssetRequest(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mApmLogger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportAssetRequestResult(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    goto :goto_1

    :cond_5
    new-instance v2, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;

    const/4 v4, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;-><init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;)V

    sget-object v3, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;->PLACEHOLDER:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;->onResponse(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v2}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->addContainer(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;)V

    goto/16 :goto_1

    :cond_6
    new-instance v7, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageRequest;

    new-instance v9, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v9, v0, v1, v8, v6}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$2;-><init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1, v8, v6}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$3;-><init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mRequestSocketTimeout:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mMinimumCacheTtl:J

    move-wide/from16 v16, v0

    move-object/from16 v8, p1

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p7

    move-object/from16 v14, p6

    invoke-direct/range {v7 .. v17}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Request$Priority;IJ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mRequestTag:Ljava/lang/Object;

    invoke-virtual {v7, v3}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mApmLogger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportAssetRequest(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    new-instance v4, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7, v2}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;-><init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Lcom/android/volley/Request;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;)V

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method static getCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->getPathFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onGetImageError(Ljava/lang/String;Lcom/android/volley/VolleyError;)V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->throwIfNotOnMainThread()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->setError(Lcom/android/volley/VolleyError;)V

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->batchResponse(Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;)V

    return-void
.end method

.method private onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->throwIfNotOnMainThread()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mCache:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->access$602(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->batchResponse(Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;)V

    :cond_0
    return-void
.end method

.method private setDrawableBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private setDrawableResource(Landroid/widget/ImageView;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setDrawableToNull(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showImgInternal(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZILandroid/graphics/Bitmap$Config;)V
    .locals 8

    const/4 v4, 0x0

    invoke-virtual {p4}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->shouldShowPlaceholder()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v3, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListenerWithPlaceholder;

    invoke-direct {v3, p0, p1, p2, p4}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListenerWithPlaceholder;-><init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;)V

    :goto_0
    if-lez p6, :cond_2

    sget-object v6, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    :goto_1
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v5, v4

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->get(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;IILcom/android/volley/Request$Priority;Landroid/graphics/Bitmap$Config;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;

    return-void

    :cond_0
    if-eqz p5, :cond_1

    new-instance v3, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListenerWithAnimation;

    invoke-direct {v3, p0, p1, p2, p4}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListenerWithAnimation;-><init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;)V

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;

    invoke-direct {v3, p0, p1, p2, p4}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;-><init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;)V

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    goto :goto_1
.end method

.method private throwIfNotOnMainThread()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ImageLoader must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private wrapPrivateListener(Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$1;-><init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;)V

    return-object v0
.end method


# virtual methods
.method public cancelAllRequests()V
    .locals 2

    const-string/jumbo v0, "ImageLoader"

    const-string/jumbo v1, "Cancelling all ImageLoader requests!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mRequestTag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-void
.end method

.method public clear(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setImageLoaderInfo(Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;)V

    return-void
.end method

.method public getImg(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;IILcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;)V
    .locals 8

    invoke-direct {p0, p5}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->wrapPrivateListener(Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;

    move-result-object v3

    sget-object v6, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->get(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;IILcom/android/volley/Request$Priority;Landroid/graphics/Bitmap$Config;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;

    return-void
.end method

.method public isCached(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->throwIfNotOnMainThread()V

    invoke-static {p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mCache:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshImgIfNecessary(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;)V
    .locals 8

    const-string/jumbo v0, "ImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshImgIfNecessary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string/jumbo v0, "ImageLoader"

    const-string/jumbo v1, "refreshImgIfNecessary: null imageView"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getImageLoaderInfo()Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ImageLoader"

    const-string/jumbo v1, "refreshImgIfNecessary: null image loader info object"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;->imageUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "ImageLoader"

    const-string/jumbo v1, "refreshImgIfNecessary: empty url"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;->imgViewConfig:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    if-nez v4, :cond_3

    const-string/jumbo v1, "ImageLoader"

    const-string/jumbo v3, "Couldn\'t get StaticImgConfig from image view - falling back to default"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->showImgInternal(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZILandroid/graphics/Bitmap$Config;)V

    goto :goto_0
.end method

.method public setTTRTracker(Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mTTRTracker:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;

    return-void
.end method

.method public showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V
    .locals 9

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V
    .locals 9

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZILandroid/graphics/Bitmap$Config;)V
    .locals 9

    if-eqz p4, :cond_0

    invoke-virtual {p1, p4}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getImageLoaderInfo()Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;

    move-object/from16 v0, p8

    invoke-direct {v2, p2, p5, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Landroid/graphics/Bitmap$Config;)V

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setImageLoaderInfo(Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;)V

    if-nez p2, :cond_3

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->setDrawableToNull(Landroid/widget/ImageView;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;->imageUrl:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->showImgInternal(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZILandroid/graphics/Bitmap$Config;)V

    goto :goto_1
.end method
