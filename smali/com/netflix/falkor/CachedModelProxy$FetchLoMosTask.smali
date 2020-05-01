.class Lcom/netflix/falkor/CachedModelProxy$FetchLoMosTask;
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
.field private final fromLomo:I

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;

.field private final toLomo:I


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 1385
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchLoMosTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    .line 1386
    const/4 v0, 0x0

    invoke-direct {p0, p1, p4, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 1387
    iput p2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchLoMosTask;->fromLomo:I

    .line 1388
    iput p3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchLoMosTask;->toLomo:I

    .line 1389
    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 4
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
    .line 1393
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "lolomo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchLoMosTask;->fromLomo:I

    iget v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchLoMosTask;->toLomo:I

    invoke-static {v2, v3}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "summary"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1394
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 1404
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onLoMosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1405
    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 2

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchLoMosTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v1, p2, Lcom/netflix/falkor/CachedModelProxy$GetResult;->pqls:Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->access$1400(Lcom/netflix/falkor/CachedModelProxy;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 1399
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onLoMosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1400
    return-void
.end method
