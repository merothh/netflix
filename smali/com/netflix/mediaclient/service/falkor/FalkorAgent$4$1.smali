.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "FalkorAgent.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4;

.field final synthetic val$episodeNumber:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4;I)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1;->this$1:Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4;

    iput p2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1;->val$episodeNumber:I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    .line 690
    if-nez p1, :cond_1

    .line 691
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "fetchEpisodesForSeason - onEpisodeDetailsFetched res %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getSeasonId()Ljava/lang/String;

    move-result-object v1

    .line 699
    iget v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1;->val$episodeNumber:I

    div-int/lit8 v0, v0, 0x28

    mul-int/lit8 v3, v0, 0x28

    .line 700
    add-int/lit8 v0, v3, 0x28

    add-int/lit8 v4, v0, -0x1

    .line 703
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1;->this$1:Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    new-instance v5, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1$1;

    invoke-direct {v5, p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1$1;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1;)V

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    goto :goto_0
.end method
