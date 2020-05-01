.class Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;
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
.field private final POST_PLAY_CREATE_NEW_POST_PLAY_CONTEXT:Ljava/lang/String;

.field private final context:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;

.field private final type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p5, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    const-string/jumbo v0, "ppNewContext"

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;->POST_PLAY_CREATE_NEW_POST_PLAY_CONTEXT:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;->videoId:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p4, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;->context:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;->videoId:Ljava/lang/String;

    aput-object v0, v1, v5

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "detail"

    :goto_0
    aput-object v0, v1, v6

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v0, v7, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;->videoId:Ljava/lang/String;

    aput-object v1, v0, v5

    const-string/jumbo v1, "postPlayExperience"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    const-string/jumbo v1, "experienceData"

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/PQL;->append(Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "playbackVideos"

    aput-object v2, v1, v4

    invoke-static {v4, v8}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v4, v8}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v6

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "detail"

    aput-object v3, v2, v4

    const-string/jumbo v3, "summary"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/PQL;->append(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v0, v8, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;->videoId:Ljava/lang/String;

    aput-object v1, v0, v5

    const-string/jumbo v1, "interactive"

    aput-object v1, v0, v6

    const-string/jumbo v1, "postplay"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;->videoId:Ljava/lang/String;

    aput-object v2, v1, v5

    const-string/jumbo v2, "postPlayExperience"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->access$2500(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/PQL;)V

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "postPlayExperiences"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;->videoId:Ljava/lang/String;

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "experienceData"

    aput-object v3, v2, v4

    const-string/jumbo v3, "playbackVideos"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->access$2500(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/PQL;)V

    return-void

    :cond_0
    const-string/jumbo v0, "summary"

    goto/16 :goto_0
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;->videoId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "summary"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->access$1800(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/PQL;)Lcom/netflix/model/branches/FalkorObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected getOptionalRequestParams()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/DataUtil$StringPair;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v3, "ppNewContext"

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPostPlayVideosTask;->context:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    sget-object v4, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->POST_PLAY:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "false"

    :goto_0
    invoke-direct {v2, v3, v0}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_0
    const-string/jumbo v0, "true"

    goto :goto_0
.end method
