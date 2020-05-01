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

    .prologue
    .line 1848
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchVideoListDetailsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    .line 1849
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 1850
    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchVideoListDetailsTask;->videos:Ljava/util/List;

    .line 1851
    return-void
.end method

.method private handleDetailsResponse()V
    .locals 5

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchVideoListDetailsTask;->videos:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1903
    :cond_0
    return-void

    .line 1894
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

    .line 1895
    if-eqz v0, :cond_2

    .line 1898
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1899
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

    .line 1901
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

    .prologue
    const/4 v3, 0x1

    .line 1860
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchVideoListDetailsTask;->videos:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1883
    :cond_0
    :goto_0
    return-void

    .line 1863
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1864
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1865
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

    .line 1866
    if-eqz v0, :cond_2

    .line 1869
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v5

    .line 1870
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v6, :cond_3

    .line 1871
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1875
    :goto_2
    invoke-static {v5}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->addToPendingDetailsRequest(Ljava/lang/String;)V

    goto :goto_1

    .line 1873
    :cond_3
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1877
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1878
    invoke-static {p1, v2}, Lcom/netflix/falkor/CachedModelProxy;->access$1900(Ljava/util/List;Ljava/util/List;)V

    .line 1880
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1881
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

    .prologue
    .line 1907
    invoke-direct {p0}, Lcom/netflix/falkor/CachedModelProxy$PrefetchVideoListDetailsTask;->handleDetailsResponse()V

    .line 1908
    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 0

    .prologue
    .line 1887
    invoke-direct {p0}, Lcom/netflix/falkor/CachedModelProxy$PrefetchVideoListDetailsTask;->handleDetailsResponse()V

    .line 1888
    return-void
.end method

.method protected getPriorityOverride()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 1855
    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method
