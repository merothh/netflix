.class Lcom/netflix/falkor/CachedModelProxy$PrefetchVideoListDetailsTask;
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
.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;

.field private final videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchVideoListDetailsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchVideoListDetailsTask;->videos:Ljava/util/List;

    return-void
.end method

.method private handleDetailsResponse()V
    .locals 5

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchVideoListDetailsTask;->videos:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchVideoListDetailsTask;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "CachedModelProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Prefetch DP response returned for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->removeFromPendingDetailsRequest(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchVideoListDetailsTask;->videos:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchVideoListDetailsTask;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v6, :cond_3

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-static {v5}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->addToPendingDetailsRequest(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1, v2}, Lcom/netflix/falkor/CachedModelProxy;->access$1900(Ljava/util/List;Ljava/util/List;)V

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInDetails()Z

    move-result v4

    move-object v0, p1

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy;->access$2000(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZZ)V

    goto :goto_0
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/falkor/CachedModelProxy$PrefetchVideoListDetailsTask;->handleDetailsResponse()V

    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/falkor/CachedModelProxy$PrefetchVideoListDetailsTask;->handleDetailsResponse()V

    return-void
.end method

.method protected getPriorityOverride()Lcom/android/volley/Request$Priority;
    .locals 1

    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method
