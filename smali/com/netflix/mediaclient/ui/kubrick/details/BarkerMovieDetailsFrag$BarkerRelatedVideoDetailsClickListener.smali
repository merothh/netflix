.class public Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;
.super Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsClickListener;
.source "BarkerMovieDetailsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;

    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsClickListener;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V

    return-void
.end method

.method private saveCurrentTitleState()V
    .locals 7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;->access$900(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;)Ljava/util/Stack;

    move-result-object v6

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;->access$700(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;->access$800(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;-><init>(Ljava/lang/String;Landroid/os/Parcelable;IILcom/netflix/mediaclient/ui/common/PlayContext;)V

    invoke-virtual {v6, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected launchDetailsActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 2

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;->access$300(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;)Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;->saveCurrentTitleState()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;->access$402(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;Ljava/lang/String;)Ljava/lang/String;

    instance-of v1, p1, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->startDPTTISession()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;->access$500(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;)V

    if-eqz v1, :cond_1

    check-cast p1, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->registerLoadingStatusCallback()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;->access$602(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;Z)Z

    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsClickListener;->launchDetailsActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    goto :goto_0
.end method
