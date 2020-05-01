.class Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "MdxAgent.java"


# instance fields
.field episodeId:I

.field private final isPostPlay:Z

.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

.field private final triggeredByCommand:Z

.field vidDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

.field vidIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;ZZI)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->triggeredByCommand:Z

    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->isPostPlay:Z

    iput p4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->episodeId:I

    return-void
.end method

.method private assignVideoDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->vidDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->isPostPlay:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$4102(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3002(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    goto :goto_0
.end method

.method private assignVideoIds(Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->vidIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->isPostPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3902(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$4402(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    goto :goto_0
.end method


# virtual methods
.method public onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEpisodeDetailsFetched, res: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SPY-7909: FetchEpisode got bad id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->episodeId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$4800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->assignVideoDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getHighResolutionPortraitBoxArtUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$4200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$4200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->fetchImage(Ljava/lang/String;)V

    :cond_3
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getBifUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$4300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->movieMetaDataAvailable(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->triggeredByCommand:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isPlayableEpisode()Z

    move-result v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getEpisodeIdUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getCatalogIdUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getShowId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;-><init>(ZLjava/lang/String;Ljava/lang/String;II)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->assignVideoIds(Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->vidIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-object v2, v2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogIdUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$4500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)I

    move-result v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->vidIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-object v4, v4, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeIdUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v5}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$4600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->playerPlay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0, v6}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->logPlaystart(Z)V

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->isPostPlay:Z

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080170

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->vidDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->vidDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->vidDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->vidDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isNSRE()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080171

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->vidDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->vidDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentTitle()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;->isPostPlay:Z

    invoke-static {v1, v7, v2, v0, v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$4700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;ZLjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
