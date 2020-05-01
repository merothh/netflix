.class public Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "EpisodesAdapter.java"


# instance fields
.field private final numItems:I

.field private final requestId:J

.field private final startIndex:I

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;JII)V
    .locals 2

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    const-string/jumbo v0, "EpisodesAdapter"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->requestId:J

    sub-int v0, p5, p4

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->numItems:I

    iput p4, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->startIndex:I

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

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onEpisodesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->access$000(Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->requestId:J

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-wide v2, v2, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->requestId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-string/jumbo v0, "EpisodesAdapter"

    const-string/jumbo v1, "Ignoring stale request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->hasMoreData:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iput-boolean v4, v0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->isLoading:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->onLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "EpisodesAdapter"

    const-string/jumbo v1, "Invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->access$100(Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string/jumbo v0, "EpisodesAdapter"

    const-string/jumbo v1, "No details in response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iput-boolean v4, v0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->hasMoreData:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "EpisodesAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " items, expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->numItems:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->numItems:I

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iput-boolean v4, v0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->hasMoreData:Z

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->startIndex:I

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->updateEpisodesData(Ljava/util/List;I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->updateEpisodeSelection()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->onEpisodesUpdated(Ljava/util/List;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/DataUtil;->hasUnavailableEpisodes(Ljava/util/List;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setAsDAB(Z)V

    goto/16 :goto_0
.end method
