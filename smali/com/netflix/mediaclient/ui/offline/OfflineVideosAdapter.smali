.class public Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;
.super Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;
.source "OfflineVideosAdapter.java"


# instance fields
.field private mSkipAdultContent:Z


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$RowClickListener;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$RowClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080166

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->setToolbarTitle(Ljava/lang/String;I)V

    .line 31
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->showAllProfilesButton()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mSkipAdultContent:Z

    .line 32
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->refreshUIData()V

    .line 33
    return-void

    .line 30
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mSkipAdultContent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mSkipAdultContent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->refreshUIData()V

    return-void
.end method

.method private refreshUIData()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mSkipAdultContent:Z

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->setSkipAdultContent(Z)Z

    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->refreshUIData()V

    .line 61
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->notifyDataSetChanged()V

    .line 63
    :cond_0
    return-void
.end method

.method private showAllProfilesButton()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isKidsProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public containsPlayableId(ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->containsPlayable(Ljava/lang/String;)Z

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
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->showAllProfilesButton()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->showAllProfilesButton()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayableId(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;

    .line 145
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getVideoAndProfileData()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    move-result-object v1

    iget-object v1, v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    if-eq v1, v2, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getVideoAndProfileData()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    move-result-object v1

    iget-object v1, v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    if-ne v1, v2, :cond_1

    .line 147
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getVideoAndProfileData()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoType(I)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 2

    .prologue
    .line 160
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter$2;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$OfflineAdapterData$ViewType:[I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getVideoAndProfileData()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 166
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 162
    :pswitch_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_0

    .line 164
    :pswitch_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isShowingAdultContent()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mSkipAdultContent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const v11, 0x7f0801bf

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 68
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$FooterViewHolderData;

    if-eqz v0, :cond_3

    .line 70
    check-cast p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$FooterViewHolderData;

    .line 71
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mSkipAdultContent:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0200e2

    .line 72
    :goto_0
    iget-object v1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$FooterViewHolderData;->allProfilesButton:Landroid/widget/TextView;

    invoke-virtual {v1, v7, v7, v0, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 73
    iget-object v1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$FooterViewHolderData;->allProfilesButton:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mSkipAdultContent:Z

    if-eqz v0, :cond_2

    const v0, 0x7f080200

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 74
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$FooterViewHolderData;->allProfilesButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v2, 0x7f0e007a

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    :cond_0
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$FooterViewHolderData;->allProfilesButton:Landroid/widget/TextView;

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter$1;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :goto_2
    return-void

    .line 71
    :cond_1
    const v0, 0x7f0200e4

    goto :goto_0

    .line 73
    :cond_2
    const v0, 0x7f080201

    goto :goto_1

    .line 88
    :cond_3
    check-cast p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getVideoAndProfileData()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    move-result-object v9

    .line 90
    iget-object v1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->info:Landroid/widget/TextView;

    iget-object v0, v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->PROFILE:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    if-eq v0, v2, :cond_6

    move v0, v6

    :goto_3
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    .line 91
    iget-object v1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->profileName:Landroid/widget/TextView;

    iget-object v0, v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->PROFILE:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    if-ne v0, v2, :cond_7

    move v0, v6

    :goto_4
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    .line 92
    iget-object v1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->title:Landroid/widget/TextView;

    iget-object v0, v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->PROFILE:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    if-eq v0, v2, :cond_8

    move v0, v6

    :goto_5
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    .line 93
    iget-object v1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->showIndicator:Landroid/widget/ImageView;

    iget-object v0, v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    if-ne v0, v2, :cond_9

    move v0, v6

    :goto_6
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 94
    iget-object v1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->downloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iget-object v0, v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    if-ne v0, v2, :cond_a

    move v0, v6

    :goto_7
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 95
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->progress:Landroid/widget/ProgressBar;

    invoke-static {v0, v7}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 97
    iget-object v0, v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->PROFILE:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    if-eq v0, v1, :cond_b

    .line 98
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 99
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->boxShot:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 100
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->title:Landroid/widget/TextView;

    iget-object v1, v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->boxShot:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iget-object v2, v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getRealmHorzDispUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v4, "icon"

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 109
    :goto_8
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->applyColorScheme(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;)V

    .line 110
    iget-object v0, v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    if-nez v0, :cond_c

    move-object v0, v8

    :goto_9
    iget-object v1, v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->PROFILE:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    if-eq v1, v2, :cond_d

    move v1, v6

    :goto_a
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->setupRowForSelection(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;ILjava/lang/String;Z)V

    .line 113
    iget-object v0, v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    if-ne v0, v1, :cond_e

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    iget v2, v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->numEpisodes:I

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->numEpisodes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v0, v2, v7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getCurrentSpace(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->getSpaceString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {v1, v11, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->info:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_4
    :goto_b
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->getVideoType(I)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v8

    :cond_5
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->getVideoType(I)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v8, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->updateDownloadStatusString(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;ILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 139
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->playIcon:Landroid/view/View;

    invoke-static {v0, v7}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    goto/16 :goto_2

    :cond_6
    move v0, v7

    .line 90
    goto/16 :goto_3

    :cond_7
    move v0, v7

    .line 91
    goto/16 :goto_4

    :cond_8
    move v0, v7

    .line 92
    goto/16 :goto_5

    :cond_9
    move v0, v7

    .line 93
    goto/16 :goto_6

    :cond_a
    move v0, v7

    .line 94
    goto/16 :goto_7

    .line 103
    :cond_b
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 104
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->boxShot:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 105
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->profileName:Landroid/widget/TextView;

    iget-object v1, v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->profile:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->boxShot:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iget-object v2, v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->profile:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->getRealmProfileIconUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v4, "icon"

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    goto/16 :goto_8

    .line 110
    :cond_c
    iget-object v0, v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_d
    move v1, v7

    goto/16 :goto_a

    .line 117
    :cond_e
    iget-object v0, v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    if-ne v0, v1, :cond_4

    .line 119
    iget-object v0, v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getCertification()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getCurrentSpace(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_c
    iget-object v1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->info:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->downloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iget-object v1, v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateFromPlayable(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getPercentage(I)I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_f

    .line 130
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->downloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getPercentage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setProgress(I)V

    .line 132
    :cond_f
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    iget-object v1, v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getOfflinePlayableViewData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->isFullyDownloadedAndWatchable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z

    move-result v7

    goto/16 :goto_b

    .line 123
    :cond_10
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v0, v2, v7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getCurrentSpace(I)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {v1, v11, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
