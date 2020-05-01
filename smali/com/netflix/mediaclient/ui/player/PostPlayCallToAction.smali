.class public Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;
.super Ljava/lang/Object;
.source "PostPlayCallToAction.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private action:Lcom/netflix/model/leafs/PostPlayAction;

.field private context:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

.field private netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field private target:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/model/leafs/PostPlayAction;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V
    .locals 6

    .prologue
    .line 26
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/model/leafs/PostPlayAction;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Landroid/view/View;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/model/leafs/PostPlayAction;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "PostPlayCallToAction"

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->TAG:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 31
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 32
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->context:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    .line 33
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    .line 34
    iput-object p5, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->target:Landroid/view/View;

    .line 36
    if-eqz p5, :cond_1

    .line 37
    instance-of v0, p5, Landroid/widget/Button;

    if-eqz v0, :cond_0

    move-object v0, p5

    .line 38
    check-cast v0, Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->setButtonText(Landroid/widget/Button;)V

    .line 40
    :cond_0
    invoke-direct {p0, p5}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->attachAction(Landroid/view/View;)V

    .line 42
    :cond_1
    return-void
.end method

.method private attachAction(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction$4;->$SwitchMap$com$netflix$model$leafs$PostPlayAction$CallToActionType:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->attachPlayHandler(Landroid/view/View;)V

    goto :goto_0

    .line 82
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->attachDisplayPageHandler(Landroid/view/View;)V

    goto :goto_0

    .line 85
    :pswitch_2
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 86
    check-cast p1, Landroid/widget/Button;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->attachPlaylistHandler(Landroid/widget/Button;)V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private attachDisplayPageHandler(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction$3;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    return-void
.end method

.method private attachPlayHandler(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->generatePlayHandler()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method private attachPlaylistHandler(Landroid/widget/Button;)V
    .locals 7

    .prologue
    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getVideoId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 222
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 223
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    .line 227
    invoke-virtual {v2}, Lcom/netflix/model/leafs/PostPlayAction;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    .line 228
    invoke-virtual {v2}, Lcom/netflix/model/leafs/PostPlayAction;->getTrackId()I

    move-result v5

    const/4 v6, 0x0

    move-object v2, p1

    .line 223
    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->createAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    move-result-object v1

    .line 231
    invoke-virtual {v0, v3, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->registerAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    .line 232
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayAction;->isInMyList()Z

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->updateMyListState(Ljava/lang/String;Z)V

    .line 234
    :cond_0
    return-void
.end method

.method private finishActivityIfNeeded()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 161
    :cond_0
    return-void
.end method

.method private getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 3

    .prologue
    .line 237
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v2}, Lcom/netflix/model/leafs/PostPlayAction;->getBookmarkPosition()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;I)V

    return-object v0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private reportNextPlay()V
    .locals 9

    .prologue
    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "User starts next play, report as such"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playback:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    .line 178
    invoke-virtual {v6}, Lcom/netflix/model/leafs/PostPlayAction;->getVideoId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    .line 179
    invoke-virtual {v7}, Lcom/netflix/model/leafs/PostPlayAction;->getItemIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    .line 180
    invoke-virtual {v8}, Lcom/netflix/model/leafs/PostPlayAction;->getTrackId()I

    move-result v8

    .line 172
    invoke-static/range {v0 .. v8}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportEndPostPlay(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/Error;ZZLjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 182
    return-void
.end method

.method private setButtonText(Landroid/widget/Button;)V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->getActionText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method private stopAllNotifications()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->stopAllNotifications()V

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method public displayPageAction()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->context:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->MDX:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->mdxDisplayPageAction()V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->playerDisplayPageAction()V

    goto :goto_0
.end method

.method public generateDisplayPageHandler()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction$2;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;)V

    return-object v0
.end method

.method public generatePlayHandler()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction$1;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;)V

    return-object v0
.end method

.method public getActionText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    .line 59
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction$4;->$SwitchMap$com$netflix$model$leafs$PostPlayAction$CallToActionType:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 67
    const-string/jumbo v0, ""

    goto :goto_0

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "playTrailer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0801cd

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0800c2

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0800c0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f08019d

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAction;->isInMyList()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f080101

    :goto_1
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v0, 0x7f0801f1

    goto :goto_1

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected mdxDisplayPageAction()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->finishActivityIfNeeded()V

    .line 216
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->playerDisplayPageAction()V

    .line 217
    return-void
.end method

.method protected mdxPlayAction(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlayContext;->DFLT_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    .line 152
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->stopAllNotifications()V

    .line 153
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$Utils;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;Z)Z

    .line 155
    :cond_0
    return-void
.end method

.method public playAction(Z)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->context:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->MDX:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->mdxPlayAction(Z)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->playerPlayAction(Z)V

    goto :goto_0
.end method

.method protected playerDisplayPageAction()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    .line 204
    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    .line 205
    invoke-virtual {v2}, Lcom/netflix/model/leafs/PostPlayAction;->getVideoId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    .line 206
    invoke-virtual {v3}, Lcom/netflix/model/leafs/PostPlayAction;->getAncestorTitle()Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v4

    const-string/jumbo v7, "PostPlay"

    move-object v6, v5

    .line 202
    invoke-static/range {v0 .. v7}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void

    .line 204
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_0
.end method

.method protected playerPlayAction(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;

    move-result-object v0

    sget-object v1, Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;->play:Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    .line 126
    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    .line 127
    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isPostPlayed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Play action already consumed, ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setPostPlayed(Z)V

    .line 137
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->reportNextPlay()V

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getSeamlessStart()I

    move-result v0

    if-lez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v3}, Lcom/netflix/model/leafs/PostPlayAction;->getSeamlessStart()I

    move-result v4

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playNextVideo(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;ZIZ)V

    .line 145
    :goto_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->finishActivityIfNeeded()V

    goto :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAction;->isDoNotIncrementInterrupter()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 142
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->action:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playNextVideo(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)V

    goto :goto_1

    .line 141
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method
