.class Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$3;
.super Ljava/lang/Object;
.source "ResourceFetcher.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

.field final synthetic val$realCallback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

.field final synthetic val$resourceUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$3;->this$0:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$3;->val$realCallback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$3;->val$resourceUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    .line 318
    const-string/jumbo v0, "nf_service_resourcefetcher"

    const-string/jumbo v1, "fetchAndCacheResource failed: "

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$3;->val$realCallback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    if-eqz v0, :cond_0

    .line 320
    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$3;->val$realCallback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$3;->val$resourceUrl:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v8, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;

    invoke-direct {v8, p1}, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;-><init>(Lcom/android/volley/VolleyError;)V

    move-wide v6, v4

    invoke-interface/range {v1 .. v8}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;->onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V

    .line 322
    :cond_0
    return-void
.end method
