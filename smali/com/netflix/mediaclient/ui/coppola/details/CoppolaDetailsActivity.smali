.class public Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;
.super Lcom/netflix/mediaclient/ui/details/DetailsActivity;
.source "CoppolaDetailsActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListenerProvider;
.implements Lcom/netflix/mediaclient/ui/common/PlayContextProvider;


# static fields
.field private static MIN_SAMSUNG_POST_DRAW_INTERVAL_MS:I = 0x0

.field public static final PLAYABLE_AREA_RATIO:F = 2.5f

.field public static final PLAYBACK_START_SECONDS:Ljava/lang/String; = "playback_start_seconds"

.field public static final PUSH_TO_LANDSCAPE_FLAG:Ljava/lang/String; = "push_to_landscape"

.field private static final TAG:Ljava/lang/String; = "CoppolaDetailsActivity"


# instance fields
.field private bIsInPortrait:Z

.field private final backStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;",
            ">;"
        }
    .end annotation
.end field

.field private detailsFrag:Landroid/app/Fragment;

.field private dynamicToolbarMenu:Landroid/view/Menu;

.field private imageContainer:Landroid/view/View;

.field private playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field private startOrientation:I

.field private videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x190

    sput v0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->MIN_SAMSUNG_POST_DRAW_INTERVAL_MS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->startOrientation:I

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->backStack:Ljava/util/Stack;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->initSlidingPanel()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->hideMiniPlayer()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;)Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;)Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    return-object v0
.end method

.method private addTopGradientIfNeeded()V
    .locals 6

    const v3, 0x7f0f000b

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f01a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0201e8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setId(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0166

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    const/16 v5, 0x30

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private createEpisodesFrag()Landroid/app/Fragment;
    .locals 3

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->showNewEpisodesFrag(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->videoId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getEpisodeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;->create(Ljava/lang/String;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->videoId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getEpisodeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->create(Ljava/lang/String;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    goto :goto_0
.end method

.method private doOnManagerReady()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$3;-><init>(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getPlayableId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->episodeId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->episodeId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->videoId:Ljava/lang/String;

    goto :goto_0
.end method

.method private getPlayableVideoType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->episodeId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleNewIntent(Landroid/content/Intent;)V
    .locals 6

    const v5, 0x7f0f011c

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->refreshVideoTypeAndContext()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v0, "SPY-9355 - CoppolaDetailsActivity::handleNewIntent() was called when ServiceManager not ready - skipping..."

    const-string/jumbo v1, "CoppolaDetailsActivity"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->fillVideoAndEpisodeIds()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->resetCurrentPlayback()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getPlayableVideoType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getBundle(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setExternalBundle(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->requestDetailsIfNeeded(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->startDPTTISession()V

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    check-cast v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setVideoId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->reattachFragment(Landroid/app/Fragment;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    check-cast v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->scrollTop()V

    const-string/jumbo v0, "CoppolaDetailsActivity"

    const-string/jumbo v1, "onNewIntent() for movie"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->registerLoadingStatusCallback()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->createEpisodesFrag()Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    invoke-virtual {v0, v5, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    check-cast v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setVideoId(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->doOnManagerReady()V

    const-string/jumbo v0, "CoppolaDetailsActivity"

    const-string/jumbo v1, "onNewIntent() for show after movie"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->invalidateOptionsMenu()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    check-cast v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setVideoId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->reattachFragment(Landroid/app/Fragment;)V

    const-string/jumbo v0, "CoppolaDetailsActivity"

    const-string/jumbo v1, "onNewIntent() for show"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->videoId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    invoke-virtual {v0, v5, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    check-cast v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setVideoId(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->doOnManagerReady()V

    const-string/jumbo v0, "CoppolaDetailsActivity"

    const-string/jumbo v1, "onNewIntent() for movie after show"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->invalidateOptionsMenu()V

    goto/16 :goto_1
.end method

.method private hidePlayerUI()V
    .locals 3

    const v0, 0x7f0f011b

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$4;-><init>(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private reAttachMdxMiniPlayer()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getMdxMiniPlayerFrag()Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->reattachFragment(Landroid/app/Fragment;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$1;-><init>(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private reattachFragment(Landroid/app/Fragment;)V
    .locals 3

    if-nez p1, :cond_1

    const-string/jumbo v0, "CoppolaDetailsActivity"

    const-string/jumbo v1, "reattachFragment - frag is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    instance-of v0, p1, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CoppolaDetailsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Couldn\'t call omManagerReady() - unrecognized type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshVideoTypeAndContext()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_video_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_playcontext"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->setPlayContext(Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    return-void
.end method

.method private removeControlsIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->bIsInPortrait:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->clearPanel()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showNavigationBar()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->hideNavigationBar()V

    goto :goto_0
.end method

.method private removeStatusBar()V
    .locals 2

    const/16 v1, 0x400

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method private setupImageContainer()V
    .locals 7

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f028c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->bIsInPortrait:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->show(Z)V

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenHeightInPixels(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x40200000    # 2.5f

    div-float/2addr v1, v4

    float-to-int v4, v1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->imageContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v4, 0x10000

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v4, 0x102000a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v4, v1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->addTopGradientIfNeeded()V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    new-instance v1, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$2;-><init>(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)V

    sget v4, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->MIN_SAMSUNG_POST_DRAW_INTERVAL_MS:I

    int-to-long v4, v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    iget v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->startOrientation:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->bIsInPortrait:Z

    if-eqz v0, :cond_7

    move v0, v2

    :goto_1
    iput v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->startOrientation:I

    :cond_4
    iget v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->startOrientation:I

    if-ne v0, v3, :cond_5

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->bIsInPortrait:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->reattachFragment(Landroid/app/Fragment;)V

    iput v2, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->startOrientation:I

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hide(Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->imageContainer:Landroid/view/View;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenHeightInPixels(Landroid/content/Context;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_1
.end method

.method private updatePlayContextBrowsePlayMode()V
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "CoppolaDetailsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Updating play context, browsePlay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isBrowsePlay(Landroid/app/Activity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isBrowsePlay(Landroid/app/Activity;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->setBrowsePlay(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected configureLinearLayout()V
    .locals 0

    return-void
.end method

.method protected createPrimaryFrag()Landroid/app/Fragment;
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "playback_start_seconds"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getPlayableVideoType()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {v2, v0, v3, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->createPlayerFragment(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;I)Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->hidePlayerUI()V

    :cond_0
    return-object v0
.end method

.method protected createSecondaryFrag()Landroid/app/Fragment;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->videoId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->createEpisodesFrag()Landroid/app/Fragment;

    move-result-object v0

    goto :goto_0
.end method

.method public destroyed()Z
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected getContentLayoutId()I
    .locals 1

    const v0, 0x7f030033

    return v0
.end method

.method public getDialogCanceledListener()Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListener;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getDialogCanceledListener()Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListener;

    move-result-object v0

    return-object v0
.end method

.method public getEpisodeRowListener()Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MdxUtils;->isCurrentMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getEpisodeRowListener()Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getEpisodeRowListener()Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method protected handleBackPressed()Z
    .locals 4

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->bIsInPortrait:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handleBackPressed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->backStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->backStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "extra_video_id"

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "extra_playcontext"

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "extra_video_type"

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;->bIsShow:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->handleNewIntent(Landroid/content/Intent;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_1

    :cond_2
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->handleBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public handleMDXIconClick()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handleMdxClick()V

    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->invalidateOptionsMenu()V

    const-string/jumbo v0, "CoppolaDetailsActivity"

    const-string/jumbo v1, "Check if MDX status is changed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setTargetSelection()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->bIsInPortrait:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->removeControlsIfNeeded()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->setupImageContainer()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->updatePlayContextBrowsePlayMode()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->reAttachMdxMiniPlayer()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->removeStatusBar()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->refreshVideoTypeAndContext()V

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0f011a

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->imageContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "push_to_landscape"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->setRequestedOrientation(I)V

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->bIsInPortrait:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->dynamicToolbarMenu:Landroid/view/Menu;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hidelogo()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getSecondaryFrag()Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    return-void
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->dynamicToolbarMenu:Landroid/view/Menu;

    if-ne v0, p1, :cond_1

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isAutoplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->dynamicToolbarMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->dynamicToolbarMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->dynamicToolbarMenu:Landroid/view/Menu;

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->bIsInPortrait:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->shouldResumePreviousPlay(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CoppolaDetailsActivity"

    const-string/jumbo v1, "Got same video ID - resuming the playback..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_1

    const-string/jumbo v0, "SPY-8343 - CoppolaDetailsActivity received onNewIntent() prior to onCreate() - skipping to avoid crash"

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;->bIsShow:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->backStack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->handleNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onPlayVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onPlayVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->onStart()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->setupImageContainer()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public setEpisodesLayoutCurrentEpisodeId(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    check-cast v0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;->setCurrentEpisodeId(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->detailsFrag:Landroid/app/Fragment;

    check-cast v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->switchSeason(IZ)V

    :cond_1
    return-void
.end method

.method public setPlayContext(Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->setPlayContext(Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->updatePlayContextBrowsePlayMode()V

    return-void
.end method

.method public updateIntent(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPY-9106 - got null getIntent() inside CoppolaDetailsActivity - skipping intent update"

    const-string/jumbo v1, "CoppolaDetailsActivity"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->toIntent(Landroid/content/Intent;)Landroid/content/Intent;

    goto :goto_0
.end method
