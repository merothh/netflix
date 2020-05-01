.class Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "EpisodesFrag.java"


# instance fields
.field private final requestId:J

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;J)V
    .locals 2

    .prologue
    .line 890
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    .line 891
    const-string/jumbo v0, "EpisodesFrag"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 892
    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->requestId:J

    .line 893
    return-void
.end method


# virtual methods
.method public onShowDetailsAndSeasonsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 897
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onShowDetailsAndSeasonsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 905
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->requestId:J

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-wide v2, v2, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->requestId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 906
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Stale response - ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iput-boolean v4, v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isLoading:Z

    .line 912
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 913
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Error status code fetching data - showing errors view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showErrorView()V

    goto :goto_0

    .line 918
    :cond_2
    if-nez p1, :cond_3

    .line 919
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "No details in response!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showErrorView()V

    goto :goto_0

    .line 924
    :cond_3
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->isPreRelease()Z

    move-result v0

    .line 925
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->access$400(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 926
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "No seasons in response!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showErrorView()V

    goto :goto_0

    .line 932
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->updateShowDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    .line 933
    invoke-static {p3}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->reportDPMetadataFetchedEvent(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 935
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->access$400(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 936
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->updateSeasonData(Ljava/util/List;)V

    goto :goto_0

    .line 938
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isListVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 939
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Showing recycler view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    .line 941
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    goto :goto_0
.end method
