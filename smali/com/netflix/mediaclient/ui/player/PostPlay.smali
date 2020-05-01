.class public abstract Lcom/netflix/mediaclient/ui/player/PostPlay;
.super Ljava/lang/Object;
.source "PostPlay.java"


# static fields
.field private static final DEFAULT_FETCH_POSTPLAY_MS:I = 0x2710

.field protected static final DEFAULT_INTERRUPTER_COUNT:I = 0x3

.field private static final DEFAULT_INTERRUPTER_TIMEOUT_IN_MS:I = 0x36ee80

.field private static final DEFAULT_OFFSET_MS:I = 0x2710

.field private static final INTERRUPTER_VALUE_IN_MS:I = 0x1d4c0

.field protected static final TAG:Ljava/lang/String; = "nf_postplay"


# instance fields
.field protected autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

.field protected interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

.field public isInteractivePostPlay:Z

.field protected mBackgroundContainer:Landroid/widget/LinearLayout;

.field protected mFetchPostPlayForPlaybackCallback:Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;

.field protected mFetchPostplayOffsetMs:I

.field protected mInPostPlay:Z

.field private mInteractivePostPlay:Lcom/netflix/model/leafs/InteractivePostplay;

.field protected mInterrputerTimeoutOffset:I

.field protected mInterrupter:Landroid/view/View;

.field protected mInterrupterContinue:Landroid/view/View;

.field protected mInterrupterPlayFromStart:Landroid/view/View;

.field protected mInterrupterStop:Landroid/view/View;

.field protected mItemsContainer:Landroid/widget/LinearLayout;

.field protected mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field protected mOffsetMs:I

.field protected mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field protected mPostPlay:Landroid/view/View;

.field protected mPostPlayDataExist:Z

.field protected mPostPlayDataFetchStatus:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

.field protected mPostPlayDismissed:Z

.field protected mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

.field protected mPostPlayIgnoreTap:Landroid/view/View;

.field private mSeamless:Z

.field protected mSynopsis:Landroid/widget/TextView;

.field protected mTitle:Landroid/widget/TextView;

.field private final onInterrupterDismiss:Ljava/lang/Runnable;

.field private final onInterrupterStart:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    const/16 v0, 0x2710

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mOffsetMs:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mFetchPostplayOffsetMs:I

    const v0, 0x36ee80

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrputerTimeoutOffset:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mSeamless:Z

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlay$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$7;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->onInterrupterStart:Ljava/lang/Runnable;

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlay$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$8;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->onInterrupterDismiss:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->findViewsCommon()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->findViews()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->setClickListeners()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mOffsetMs:I

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mOffsetMs:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mFetchPostplayOffsetMs:I

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->notStarted:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataFetchStatus:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    return-void
.end method

.method protected constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 6

    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/player/PostPlay;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "PostPlay: current asset is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->getAutoPlayMaxCount()I

    move-result v1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPostPlayVideoPlayed()I

    move-result v2

    const/4 v3, -0x1

    if-gt v1, v3, :cond_4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "nf_postplay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PostPlay: autoPlayMaxCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " resetting to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "nf_postplay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PostPlay: postPlayVideoPlayerCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " autoPlayMaxCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-lt v2, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getState()Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->noUserInteraction()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "This is 3rd consecutive auto play with no user interaction, start interrupter timeout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->onInterrupterStart:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/player/PostPlay;)Lcom/netflix/model/leafs/InteractivePostplay;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInteractivePostPlay:Lcom/netflix/model/leafs/InteractivePostplay;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/player/PostPlay;Lcom/netflix/model/leafs/InteractivePostplay;)Lcom/netflix/model/leafs/InteractivePostplay;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInteractivePostPlay:Lcom/netflix/model/leafs/InteractivePostplay;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/player/PostPlay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mSeamless:Z

    return v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/player/PostPlay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mSeamless:Z

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/player/PostPlay;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->onInterrupterStart:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/player/PostPlay;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->onInterrupterDismiss:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static getPostPlayType(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isNonMemberPlayback()Z

    move-result v4

    if-eqz v2, :cond_0

    sget-object v3, Lcom/netflix/mediaclient/util/DeviceCategory;->UNKNOWN:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/netflix/mediaclient/util/DeviceCategory;->PHONE:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v2, v3, :cond_1

    :cond_0
    move v3, v1

    :goto_0
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isNextPlayableEpisode()Z

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    move v1, v2

    :goto_2
    if-eqz v4, :cond_4

    if-eqz v3, :cond_3

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "SignupForTablet post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->SignupForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    :goto_3
    return-object v0

    :cond_1
    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "SignupForPhone post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->SignupForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_7

    if-eqz v0, :cond_5

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "RecommendationForTablet post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->RecommendationForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "EpisodesForTablet post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->EpisodesForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    goto :goto_3

    :cond_6
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "RecommendationForTablet post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->RecommendationForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Phone recommendation (no) post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->RecommendationForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    goto :goto_3

    :cond_8
    if-eqz v1, :cond_9

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Phone episodes post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->EpisodesForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    goto :goto_3

    :cond_9
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "There will be no next episode, use phone recommendation (no) post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->RecommendationForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    goto :goto_3

    :cond_a
    move v0, v1

    goto :goto_2
.end method

.method private getStartOfCredits()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mSeamless:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getSeamlessEnd()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getEndtime()I

    move-result v0

    goto :goto_0
.end method

.method private inPostPlay(I)Z
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_1

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v2, "inPostPlay() - called with null PlayerFragment!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getDuration()I

    move-result v4

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->getStartOfCredits()I

    move-result v0

    mul-int/lit16 v2, v0, 0x3e8

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->isSupplementalVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x2

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    long-to-int v0, v6

    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "nf_postplay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Duration "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "nf_postplay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Endtime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "nf_postplay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Current position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sub-int v3, v4, v2

    if-gtz v3, :cond_4

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v2, "Duration is zero. Seems that we didn\'t process it correctly yet (episode switching is performing). Skipping post_play check..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mOffsetMs:I

    goto :goto_1

    :cond_4
    sub-int v3, v4, v2

    if-ge v3, v0, :cond_5

    const-string/jumbo v2, "nf_postplay"

    const-string/jumbo v3, "End time is too close to end of play. Use default offset instead."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v0, v4, v0

    :goto_2
    if-le p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_3
    move v1, v0

    goto/16 :goto_0

    :cond_5
    if-le v2, v4, :cond_7

    const-string/jumbo v2, "nf_postplay"

    const-string/jumbo v3, "End time is greater than duration! Use default offset instead."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v0, v4, v0

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public destroy()V
    .locals 9

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->onDestroy()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->stopTimer()V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->onInterrupterStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->onInterrupterDismiss:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "User exist playback and post_play if it was in progress, report as such"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playback:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v4, 0x1

    move-object v6, v3

    move-object v7, v3

    move v8, v5

    invoke-static/range {v0 .. v8}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportEndPostPlay(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/Error;ZZLjava/lang/Integer;Ljava/lang/Integer;I)V

    return-void
.end method

.method protected doTransitionFromPostPlay()V
    .locals 0

    return-void
.end method

.method protected abstract doTransitionToPostPlay()V
.end method

.method public endOfPlay()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "endOfPlay() - called with null PlayerFragment!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->waitUntilEndOfPlay()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->startInteractivePostPlay(Z)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->clear()V

    goto :goto_0
.end method

.method public declared-synchronized fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Fetch post_play videos..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nf_postplay: Requesting post play response for video ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->leaveBreadcrumb(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mFetchPostPlayForPlaybackCallback:Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Unable to fetch post_play videos!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public fetchPostPlayVideosIfNeeded(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V
    .locals 2

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "fetchPostPlayVideosIfNeeded starts"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataFetchStatus:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->started:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "fetchPostPlayVideosIfNeeded: Fetch of post_play data already in progress, do nothing."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataFetchStatus:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->notStarted:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "fetchPostPlayVideosIfNeeded: First time, postplaydata not fetched, check if we need to postpone data retrieval..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->shouldPostponeFetchPostPlayData()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "fetchPostPlayVideosIfNeeded: Postponing fetch of post_play data until playback starts..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->postponed:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataFetchStatus:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "fetchPostPlayVideosIfNeeded: Fetching post_play data now, too close to start of post_play..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/PostPlay;->fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "fetchPostPlayVideosIfNeeded: Fetching post_play was postponed, go and fetch it..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/PostPlay;->fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    goto :goto_0
.end method

.method protected abstract findViews()V
.end method

.method protected findViewsCommon()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f0f0266

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterPlayFromStart:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f0f0265

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterContinue:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f0f02ad

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mBackgroundContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f0f02a9

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mItemsContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f0f0267

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterStop:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f0f02a7

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayIgnoreTap:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f0f0264

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupter:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f0f02a5

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    return-void
.end method

.method public getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    return-object v0
.end method

.method protected abstract getLengthOfAutoPlayCountdow()I
.end method

.method protected abstract getPostPlayExpirience()Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;
.end method

.method protected hasValidPlayAction(Lcom/netflix/model/leafs/PostPlayItem;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nf_postplay: Checking post play play action video ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getVideoId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->leaveBreadcrumb(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected isAutoPlayEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v1, :cond_1

    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "isAutoPlayEnabled() - called with null PlayerFragment!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "Activity not found! Auto post_play is NOT enabled. This should NOT happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "Asset not found! Auto post_play is NOT enabled. This should NOT happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isAutoPlayEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "Autoplay is disabled for this title"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isAutoPlayEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Autoplay is enabled for this profile"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "Autoplay is disabled for this profile"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected isAutoPlayUsed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isAutoPlayEnabled()Z

    move-result v0

    return v0
.end method

.method public isInPostPlay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInPostPlay:Z

    return v0
.end method

.method protected isPostPlayAllowed()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isPostPlayEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "PostPlay is not enabled."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDismissed:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "PostPlay was dismissed by an user, do not start it again."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isPostPlayEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataExist:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Logging post play impression"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlay$LogPostPlayImpressionCallback;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$LogPostPlayImpressionCallback;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Unable to log post play impression!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method moveFromInterruptedToPlaying()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "moveFromInterruptedToPlaying() - called with null PlayerFragment!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Interrupter mode, continue"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->clearPanel()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupter:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->setSubtitleVisibility(Z)V

    goto :goto_0
.end method

.method moveFromInterruptedToPlayingFromStart()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "moveFromInterruptedToPlayingFromStart() - called with null PlayerFragment!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupter:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Interrupter mode, play from start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->clearPanel()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupter:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->setSubtitleVisibility(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doSeek(I)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInPostPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInPostPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInPostPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInPostPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->onStop()V

    :cond_0
    return-void
.end method

.method protected onTick(I)V
    .locals 0

    return-void
.end method

.method public postPlayDismissed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDismissed:Z

    return-void
.end method

.method public reportNextPlayFailed(Z)V
    .locals 9

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->shouldReportPostplay()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "User starts next play and it failed, report as such"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playback:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move v4, p1

    move-object v6, v3

    move-object v7, v3

    move v8, v5

    invoke-static/range {v0 .. v8}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportEndPostPlay(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/Error;ZZLjava/lang/Integer;Ljava/lang/Integer;I)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->postponed:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataFetchStatus:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataExist:Z

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    return-void
.end method

.method public setBackgroundImageVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mBackgroundContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mBackgroundContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mBackgroundContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setClickListeners()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayIgnoreTap:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayIgnoreTap:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlay$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$1;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterContinue:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterContinue:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlay$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$2;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterStop:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterStop:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlay$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$3;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterPlayFromStart:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterPlayFromStart:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlay$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$4;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "setClickListeners() - mInterrupterStop handler was not set!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setupAutoPlay(Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V
    .locals 4

    new-instance v0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplaySeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->setTime(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayExperience;->getItemsInitialIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayItem;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/model/leafs/PostPlayAction;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    new-instance v2, Lcom/netflix/mediaclient/ui/player/PostPlay$5;

    invoke-direct {v2, p0, v1}, Lcom/netflix/mediaclient/ui/player/PostPlay$5;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;)V

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->setOnFinish(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlay$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$6;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->setOnTick(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected shouldPostponeFetchPostPlayData()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v2, :cond_1

    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "shouldPostponeFetchPostPlayData() - called with null PlayerFragment!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlaybackBookmark()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->getDuration()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    if-gez v2, :cond_2

    const-string/jumbo v2, "nf_postplay"

    const-string/jumbo v4, "Invalid bookmark, reset to 0"

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :cond_2
    if-gtz v3, :cond_3

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v2, "We do not have duration, do not postpone!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mFetchPostplayOffsetMs:I

    add-int/2addr v2, v4

    if-ge v2, v3, :cond_4

    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_postplay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Duration (ms): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "nf_postplay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Fetch Postplay Offset (ms): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "nf_postplay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Bookmark (ms): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "nf_postplay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Postpone catching playback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method protected shouldReportPostplay()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public startInteractivePostPlay(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->startPostPlay(Z)V

    :cond_0
    return-void
.end method

.method transitionFromPostPlay()V
    .locals 9

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Transition from post play execute!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInPostPlay:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->postPlayDismissed()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->shouldReportPostplay()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "User dismissed post_play, report as such"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playback:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v4, 0x1

    move-object v6, v3

    move-object v7, v3

    move v8, v5

    invoke-static/range {v0 .. v8}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportEndPostPlay(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/Error;ZZLjava/lang/Integer;Ljava/lang/Integer;I)V

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->doTransitionFromPostPlay()V

    return-void
.end method

.method public transitionToPostPlay()V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Transition to post play execute!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInPostPlay:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->waitUntilEndOfPlay()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/player/PostPlay;->startInteractivePostPlay(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->shouldReportPostplay()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isAutoPlayUsed()Z

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->getLengthOfAutoPlayCountdow()I

    move-result v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->getPostPlayExpirience()Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportStartPostPlay(Landroid/content/Context;ZILcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayItem;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getVideoId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getImpressionData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->doTransitionToPostPlay()V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "SPY-10544 - Error transitioning to post play. No post play experience defined."

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract updateOnPostPlayVideosFetched()V
.end method

.method public updatePlaybackPosition(I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isPostPlayAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v2, :cond_1

    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "updatePlaybackPosition() - called with null PlayerFragment!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->inPostPlay(I)Z

    move-result v2

    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInPostPlay:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v2, "Already in post play"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getState()Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Interrupter:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v3, v4, :cond_3

    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "In Interrupter mode, do nothing"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInPostPlay:Z

    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "Transition from post play to normal"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->transitionFromPostPlay()V

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInPostPlay:Z

    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v2, "Transition to post play"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    move v0, v1

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "Not in in post play"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public wasPostPlayDismissed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDismissed:Z

    return v0
.end method
