.class Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;
.super Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;
.source "BarkerShowDetailsFrag.java"


# instance fields
.field epDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

.field provider:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

.field updateSynopsis:Z


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    .line 1192
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;-><init>(Landroid/content/Context;)V

    .line 1193
    return-void
.end method

.method static synthetic access$5400(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;)V
    .locals 0

    .prologue
    .line 1185
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->updateWithBookmark()V

    return-void
.end method

.method static synthetic access$5500(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;)V
    .locals 0

    .prologue
    .line 1185
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->updateWithNoBookmark()V

    return-void
.end method

.method private updateWithBookmark()V
    .locals 4

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->epDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getInterestingUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->access$5000(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->epDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getInterestingUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->updateImage(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)V

    .line 1238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->setBookmarkVisibility(I)V

    .line 1240
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->epDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->updateBookmark(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V

    .line 1241
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->epDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->updateBookmarkTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    .line 1243
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->synopsis:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->epDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getSynopsis()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1244
    return-void
.end method

.method private updateWithNoBookmark()V
    .locals 4

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->heroSlideshow:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->heroSlideshow:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;->start()V

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->access$4600(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getStoryUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->access$4700(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->access$4800(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getStoryUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->updateImage(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)V

    .line 1230
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->setBookmarkVisibility(I)V

    .line 1232
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->synopsis:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->access$4900(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getSynopsis()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1233
    return-void
.end method


# virtual methods
.method public updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V
    .locals 5

    .prologue
    .line 1198
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V

    .line 1199
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->provider:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;

    .line 1200
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->access$4500(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentEpisodeId()Ljava/lang/String;

    move-result-object v0

    .line 1202
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 1203
    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1204
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;

    const-string/jumbo v4, "BarkerShowDetailsFrag"

    invoke-direct {v3, p0, v4}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;-><init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 1212
    :goto_0
    return-void

    .line 1207
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->updateWithNoBookmark()V

    .line 1208
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showViews()V

    goto :goto_0
.end method

.method protected updateImage(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1217
    return-void
.end method

.method public updateSynopsis(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 1222
    return-void
.end method
