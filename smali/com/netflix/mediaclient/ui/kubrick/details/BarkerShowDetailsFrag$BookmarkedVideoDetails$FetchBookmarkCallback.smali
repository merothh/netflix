.class Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "BarkerShowDetailsFrag.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "BarkerShowDetailsFrag"

    const-string/jumbo v1, "Error status code fetching data - showing errors view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->access$5100(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v0, "BarkerShowDetailsFrag"

    const-string/jumbo v1, "No details in response!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->access$5200(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;

    iput-object p1, v1, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->epDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;

    iput-boolean v0, v1, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->updateSynopsis:Z

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkPosition()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    if-lez v1, :cond_2

    :goto_1
    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->access$5302(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->access$5300(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->access$5400(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;)V

    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showViews()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->access$5500(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;)V

    goto :goto_2
.end method
