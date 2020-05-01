.class public Lcom/netflix/mediaclient/service/resfetcher/volley/RawFileDownloadRequest;
.super Lcom/android/volley/Request;
.source "RawFileDownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<[B>;"
    }
.end annotation


# static fields
.field private static final IMAGE_BACKOFF_MULT:F = 2.0f

.field private static final IMAGE_MAX_RETRIES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "nf_service_rawfiledownloadrequest"


# instance fields
.field private mCallback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

.field private mPriority:Lcom/android/volley/Request$Priority;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Lcom/android/volley/Response$ErrorListener;ILcom/android/volley/Request$Priority;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p3}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/RawFileDownloadRequest;->mCallback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/RawFileDownloadRequest;->mPriority:Lcom/android/volley/Request$Priority;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/RawFileDownloadRequest;->setShouldCache(Z)V

    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/4 v1, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, p4, v1, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/RawFileDownloadRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/RawFileDownloadRequest;->deliverResponse([B)V

    return-void
.end method

.method protected deliverResponse([B)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/RawFileDownloadRequest;->mCallback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/RawFileDownloadRequest;->mCallback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/volley/RawFileDownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1, p1, v2}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;->onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/RawFileDownloadRequest;->mPriority:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<[B>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/volley/RawFileDownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_service_rawfiledownloadrequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received response from url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    return-object v0
.end method
