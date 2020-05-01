.class Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$FetchPostPlayForPlaybackCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "PostPlayFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    .line 373
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 374
    return-void
.end method


# virtual methods
.method public onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 378
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 379
    if-eqz p1, :cond_0

    .line 380
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->access$302(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    .line 381
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    .line 382
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->access$500(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)V

    .line 384
    :cond_0
    return-void
.end method

.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 388
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 389
    if-eqz p1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->access$600(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 391
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)V

    .line 393
    :cond_0
    return-void
.end method

.method public onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    .prologue
    .line 406
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 407
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;->getPostPlayVideos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;->getPostPlayVideos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->access$800(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->access$100(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->access$100(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$FetchPostPlayForPlaybackCallback;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    const-string/jumbo v6, "PostPlayFrag"

    invoke-direct {v4, v5, v6}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$FetchPostPlayForPlaybackCallback;-><init>(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 413
    :cond_1
    return-void
.end method

.method public onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 397
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 398
    if-eqz p1, :cond_0

    .line 399
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->access$600(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 400
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)V

    .line 402
    :cond_0
    return-void
.end method
