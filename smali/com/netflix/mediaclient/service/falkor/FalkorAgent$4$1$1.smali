.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1$1;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "FalkorAgent.java"


# instance fields
.field final synthetic this$2:Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1$1;->this$2:Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpisodesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 706
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "fetchEpisodesForSeason - onEpisodesFetched res %d"

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

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_0
    return-void
.end method
