.class public Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;
.super Lcom/netflix/mediaclient/ui/details/DetailsActivity;
.source "BarkerKidsDetailsActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/common/PlayContextProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "KidsShowDetailsActivity"


# instance fields
.field private videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected allowTransitionAnimation()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method protected createActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KubrickKidsDetailActionBar;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;->hasUpAction()Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KubrickKidsDetailActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V

    .line 66
    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->GONE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setLogoType(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)V

    .line 67
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setTitle(Ljava/lang/String;)V

    .line 70
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setAlpha(F)V

    .line 72
    const v1, 0x7f0f007e

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_0

    .line 74
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 77
    :cond_0
    return-object v0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity$1;-><init>(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;)V

    return-object v0
.end method

.method protected createPrimaryFrag()Landroid/app/Fragment;
    .locals 4

    .prologue
    .line 111
    sget-object v0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity$2;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$VideoType:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Don\'t know how to handle type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;->videoId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsMovieDetailsFrag;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsMovieDetailsFrag;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;->videoId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->create(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 117
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;->videoId:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra_kids_color_id"

    const v3, 0x7f0e0080

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 117
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->create(Ljava/lang/String;I)Landroid/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public destroyed()Z
    .locals 1

    .prologue
    .line 136
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->CHARACTERS:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->characterDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->movieDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    goto :goto_0
.end method

.method public getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method protected handleBackPressed()Z
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/IHandleBackPress;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/IHandleBackPress;->handleBackPressed()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_video_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Start intent must provide extra value: extra_video_type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_video_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 40
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const-string/jumbo v0, "KidsShowDetailsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TRACK_ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v2}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_1
    return-void
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 85
    if-eqz p2, :cond_0

    .line 86
    new-instance v0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    const-string/jumbo v1, "KidsShowDetailsActivity"

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 87
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addItems(Landroid/view/Menu;)V

    .line 90
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->addSelectPlayTarget(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;Z)V

    .line 91
    return-void
.end method

.method public performUpAction()V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;->handleBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;->finish()V

    .line 56
    :cond_0
    return-void
.end method

.method protected shouldShowKidsBackground()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method
