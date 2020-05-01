.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "FalkorAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

.field final synthetic val$cb:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

.field final synthetic val$n:I

.field final synthetic val$standardListNumber:I

.field final synthetic val$useCacheOnly:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iput p2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;->val$standardListNumber:I

    iput p3, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;->val$n:I

    iput-boolean p4, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;->val$useCacheOnly:Z

    iput-object p5, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;->val$cb:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoMosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v2

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->isRegularLomoForPreApp(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;->val$standardListNumber:I

    if-ne v0, v4, :cond_4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v3, "fetchRecommendedListFromCache listTitle: %s, listId: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$100(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)Lcom/netflix/falkor/CachedModelProxy;

    move-result-object v0

    iget v3, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;->val$n:I

    add-int/lit8 v3, v3, -0x1

    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;->val$useCacheOnly:Z

    iget-object v7, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;->val$cb:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/netflix/falkor/CachedModelProxy;->fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    move v2, v8

    :cond_2
    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;->val$cb:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
