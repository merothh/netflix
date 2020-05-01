.class public Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;
.super Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;
.source "OfflineEpisodesAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OfflineEpisodesAdapter"


# instance fields
.field private episodesArray:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

.field private final selectedProfileId:Ljava/lang/String;

.field private final showPlayableId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$RowClickListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$RowClickListener;)V

    .line 39
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->showPlayableId:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->selectedProfileId:Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->refreshEpisodesAndUIData()V

    .line 42
    return-void
.end method

.method private refreshEpisodesAndUIData()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->showPlayableId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->selectedProfileId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getShowUIData(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;

    move-result-object v1

    .line 133
    if-nez v1, :cond_0

    .line 134
    const-string/jumbo v0, "OfflineEpisodesAdapter"

    const-string/jumbo v1, "All the episodes were removed - closing the activity"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->episodesArray:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getVideoAndProfileData()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x1000000

    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->setToolbarTitle(Ljava/lang/String;I)V

    .line 139
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getEpisodes()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->episodesArray:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public containsPlayableId(ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->episodesArray:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    array-length v0, v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->episodesArray:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->episodesArray:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->episodesArray:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    array-length v0, v0

    goto :goto_0
.end method

.method public getPlayableId(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->episodesArray:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    aget-object v1, v0, p1

    .line 113
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 114
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getVideoType(I)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->episodesArray:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    .prologue
    .line 52
    check-cast p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->episodesArray:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    aget-object v9, v0, p2

    .line 54
    invoke-virtual {v9}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    move v7, v0

    .line 55
    :goto_0
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->info:Landroid/widget/TextView;

    invoke-static {v0, v7}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    .line 56
    iget-object v1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->profileName:Landroid/widget/TextView;

    if-nez v7, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    .line 57
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->title:Landroid/widget/TextView;

    invoke-static {v0, v7}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    .line 58
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->showIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 59
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->downloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {v0, v7}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 60
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->boxShot:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-static {v0, v7}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 62
    const/4 v0, 0x0

    .line 64
    if-eqz v7, :cond_8

    .line 65
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v1

    invoke-virtual {v9}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getOfflinePlayableViewData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_5

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0801bc

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v9}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v5

    invoke-static {v5}, Lcom/netflix/mediaclient/util/TimeUtils;->convertSecondsToMinutes(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v2, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->info:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v4, 0x7f0801bf

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getTotalEstimatedSpace()J

    move-result-wide v10

    invoke-static {v6, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPercentageDownloaded()I

    move-result v0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_0

    .line 71
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->downloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPercentageDownloaded()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setProgress(I)V

    .line 73
    :cond_0
    invoke-static {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->isFullyDownloadedAndWatchable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z

    move-result v0

    move v8, v0

    .line 77
    :goto_2
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 78
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->boxShot:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 79
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->title:Landroid/widget/TextView;

    const-string/jumbo v1, "%d. %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v9}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v9}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->downloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v9}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateFromPlayable(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 82
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 84
    invoke-static {}, Lcom/netflix/mediaclient/media/BookmarkStore;->getInstance()Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/media/BookmarkStore;->getBookmark(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    move-result-object v0

    .line 87
    :cond_1
    iget-object v2, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->progress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    :goto_3
    invoke-static {v2, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 88
    invoke-virtual {v9}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    .line 89
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 90
    iget-object v1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v2

    iget v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkInSecond:I

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->calculateProgress(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->boxShot:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v9, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getRealmHorzDispUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v4, "boxart"

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 99
    :goto_4
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->applyColorScheme(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;)V

    .line 100
    invoke-virtual {v9}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, v7}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->setupRowForSelection(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;ILjava/lang/String;Z)V

    .line 103
    if-eqz v7, :cond_9

    invoke-virtual {v9}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_5
    if-eqz v7, :cond_a

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_6
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->updateDownloadStatusString(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;ILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 105
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->playIcon:Landroid/view/View;

    invoke-static {v0, v8}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 108
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->itemView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setLongClickable(Z)V

    .line 109
    return-void

    .line 54
    :cond_3
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_0

    .line 56
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 74
    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 75
    const-string/jumbo v1, "OfflineEpisodesAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Episode view got null data for playableID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v8, v0

    goto/16 :goto_2

    .line 87
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 94
    :cond_8
    iget-object v1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 95
    iget-object v1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->profileName:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->progress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    move v8, v0

    goto :goto_4

    .line 103
    :cond_9
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public updatePlayableList()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;->refreshEpisodesAndUIData()V

    .line 128
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->updatePlayableList()V

    .line 129
    return-void
.end method
