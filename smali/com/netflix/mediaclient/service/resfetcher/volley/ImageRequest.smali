.class public Lcom/netflix/mediaclient/service/resfetcher/volley/ImageRequest;
.super Lcom/android/volley/toolbox/ImageRequest;
.source "ImageRequest.java"


# static fields
.field private static final IMAGE_BACKOFF_MULT:F = 2.0f

.field private static final IMAGE_MAX_RETRIES:I = 0x2

.field private static final LOG_VERBOSE:Z = false

.field private static final TAG:Ljava/lang/String; = "nf_ImageRequest"


# instance fields
.field private final mMinimumCacheTtl:J

.field private final mPriority:Lcom/android/volley/Request$Priority;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Request$Priority;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Lcom/android/volley/Request$Priority;",
            "IJ)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lcom/android/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    if-eqz p7, :cond_1

    iput-object p7, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageRequest;->mPriority:Lcom/android/volley/Request$Priority;

    :goto_0
    if-lez p8, :cond_0

    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/4 v1, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, p8, v1, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    :cond_0
    iput-wide p9, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageRequest;->mMinimumCacheTtl:J

    return-void

    :cond_1
    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageRequest;->mPriority:Lcom/android/volley/Request$Priority;

    goto :goto_0
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageRequest;->mPriority:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/volley/toolbox/ImageRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/volley/Response;->error:Lcom/android/volley/VolleyError;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageRequest;->mMinimumCacheTtl:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageRequest;->mMinimumCacheTtl:J

    add-long/2addr v2, v4

    iget-object v1, v0, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    iget-wide v4, v1, Lcom/android/volley/Cache$Entry;->ttl:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    iput-wide v2, v1, Lcom/android/volley/Cache$Entry;->ttl:J

    iget-object v1, v0, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    iput-wide v2, v1, Lcom/android/volley/Cache$Entry;->softTtl:J

    goto :goto_0
.end method
