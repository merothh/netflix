.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "FalkorAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    .line 675
    if-nez p1, :cond_1

    .line 676
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "fetchEpisodesForSeason - onShowDetailsFetched res %d"

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

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentEpisodeId()Ljava/lang/String;

    move-result-object v0

    .line 683
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentEpisodeNumber()I

    move-result v1

    .line 684
    iget-object v2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    const/4 v3, 0x0

    new-instance v4, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1;

    invoke-direct {v4, p0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4;I)V

    invoke-virtual {v2, v0, v3, v4}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    goto :goto_0
.end method
