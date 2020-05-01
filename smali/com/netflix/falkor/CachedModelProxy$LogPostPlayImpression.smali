.class Lcom/netflix/falkor/CachedModelProxy$LogPostPlayImpression;
.super Lcom/netflix/falkor/CachedModelProxy$CmpTask;
.source "CachedModelProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/falkor/CachedModelProxy",
        "<TT;>.CmpTask;"
    }
.end annotation


# instance fields
.field private final impressionData:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;

.field private final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 2369
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$LogPostPlayImpression;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    .line 2370
    const/4 v0, 0x0

    invoke-direct {p0, p1, p5, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 2371
    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy$LogPostPlayImpression;->videoId:Ljava/lang/String;

    .line 2372
    iput-object p4, p0, Lcom/netflix/falkor/CachedModelProxy$LogPostPlayImpression;->impressionData:Ljava/lang/String;

    .line 2373
    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2382
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "videos"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$LogPostPlayImpression;->videoId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "postPlayImpression"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2383
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 2400
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onPostPlayImpressionLogged(ZLcom/netflix/mediaclient/android/app/Status;)V

    .line 2401
    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 2

    .prologue
    .line 2395
    const/4 v0, 0x1

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onPostPlayImpressionLogged(ZLcom/netflix/mediaclient/android/app/Status;)V

    .line 2396
    return-void
.end method

.method protected getOptionalRequestParams()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/DataUtil$StringPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2387
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2389
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "impressionData"

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$LogPostPlayImpression;->impressionData:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2391
    return-object v0
.end method

.method protected shouldSkipCache()Z
    .locals 1

    .prologue
    .line 2377
    const/4 v0, 0x1

    return v0
.end method
