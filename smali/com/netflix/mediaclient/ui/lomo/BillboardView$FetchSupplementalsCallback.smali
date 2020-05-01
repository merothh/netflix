.class Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "BillboardView.java"


# instance fields
.field private bookmarkPosition:Ljava/lang/String;

.field private continueWatching:Z

.field private final ctaButton:Landroid/widget/Button;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    const-string/jumbo v0, "BillboardView"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->continueWatching:Z

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->bookmarkPosition:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->ctaButton:Landroid/widget/Button;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    const-string/jumbo v0, "BillboardView"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->continueWatching:Z

    iput-boolean p4, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->continueWatching:Z

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->bookmarkPosition:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->ctaButton:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->ctaButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->bookmarkPosition:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addPlayableToCTA(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/widget/Button;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEpisodesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4
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

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onEpisodesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->ctaButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->bookmarkPosition:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addPlayableToCTA(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Landroid/widget/Button;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->ctaButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->bookmarkPosition:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addPlayableToCTA(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/widget/Button;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->continueWatching:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentEpisodeId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->ctaButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->bookmarkPosition:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->ctaButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;->bookmarkPosition:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addPlayableToCTA(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/widget/Button;Ljava/lang/String;)V

    goto :goto_0
.end method
