.class Lcom/netflix/falkor/CachedModelProxy$RefreshIqTask;
.super Lcom/netflix/falkor/CachedModelProxy$RefreshLomoTask;
.source "CachedModelProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/falkor/CachedModelProxy",
        "<TT;>.Refresh",
        "LomoTask;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3601
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$RefreshIqTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    .line 3602
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/falkor/CachedModelProxy$RefreshLomoTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3603
    return-void
.end method


# virtual methods
.method protected getOptionalRequestParams()Ljava/util/List;
    .locals 6
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
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3609
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3611
    const-string/jumbo v1, "\'%s\'"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$RefreshIqTask;->lomoId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3612
    new-instance v2, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v3, "param"

    invoke-virtual {p0, v1}, Lcom/netflix/falkor/CachedModelProxy$RefreshIqTask;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3613
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "param"

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$RefreshIqTask;->lomoIndex:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/netflix/falkor/CachedModelProxy$RefreshIqTask;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3614
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "param"

    const-string/jumbo v3, "\'queue\'"

    invoke-virtual {p0, v3}, Lcom/netflix/falkor/CachedModelProxy$RefreshIqTask;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3616
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$RefreshIqTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    .line 3617
    invoke-static {v2}, Lcom/netflix/falkor/CachedModelProxy;->access$2900(Lcom/netflix/falkor/CachedModelProxy;)I

    move-result v2

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$RefreshIqTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-static {v3}, Lcom/netflix/falkor/CachedModelProxy;->access$3000(Lcom/netflix/falkor/CachedModelProxy;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v5

    .line 3616
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    .line 3618
    invoke-virtual {v1}, Lcom/netflix/falkor/PQL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3619
    const-string/jumbo v2, "[\'summary\']"

    .line 3621
    new-instance v3, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v4, "pathSuffix"

    invoke-virtual {p0, v1}, Lcom/netflix/falkor/CachedModelProxy$RefreshIqTask;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3622
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v3, "pathSuffix"

    invoke-virtual {p0, v2}, Lcom/netflix/falkor/CachedModelProxy$RefreshIqTask;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3624
    return-object v0
.end method

.method protected notifyOfRefresh()V
    .locals 1

    .prologue
    .line 3631
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$RefreshIqTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->sendIqRefreshBrodcast(Landroid/content/Context;)V

    .line 3632
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$RefreshIqTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->informIqUpdated(Landroid/content/Context;)V

    .line 3633
    return-void
.end method
