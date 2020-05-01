.class Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "MdxAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

.field private final triggeredByCommand:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Z)V
    .locals 0

    .prologue
    .line 1517
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    .line 1518
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->triggeredByCommand:Z

    .line 1519
    return-void
.end method


# virtual methods
.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1523
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1524
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMovieDetailsFetched, res: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1529
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$4102(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 1531
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getHighResolutionPortraitBoxArtUrl()Ljava/lang/String;

    move-result-object v0

    .line 1532
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$4200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1533
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$4200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->fetchImage(Ljava/lang/String;)V

    .line 1535
    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getBifUrl()Ljava/lang/String;

    move-result-object v0

    .line 1536
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1537
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$4300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Ljava/lang/String;)V

    .line 1540
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->movieMetaDataAvailable(Ljava/lang/String;)V

    .line 1541
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->triggeredByCommand:Z

    if-eqz v0, :cond_3

    .line 1542
    new-instance v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    .line 1543
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isPlayableEpisode()Z

    move-result v1

    .line 1544
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getCatalogIdUrl()Ljava/lang/String;

    move-result-object v3

    .line 1545
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;-><init>(ZLjava/lang/String;Ljava/lang/String;II)V

    .line 1547
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$4402(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    .line 1548
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetManager;

    move-result-object v5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    .line 1549
    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$4400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v0

    iget-object v7, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogIdUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$4500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)I

    move-result v8

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    .line 1550
    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$4400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v0

    iget-object v9, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeIdUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$4600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)I

    move-result v10

    .line 1548
    invoke-virtual/range {v5 .. v10}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->playerPlay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 1551
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->logPlaystart(Z)V

    .line 1553
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$4100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1, v2, v4}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$4700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 1556
    :cond_4
    return-void
.end method
