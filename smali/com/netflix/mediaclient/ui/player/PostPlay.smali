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

    .prologue
    const/16 v0, 0x2710

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mOffsetMs:I

    .line 140
    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mFetchPostplayOffsetMs:I

    .line 145
    const v0, 0x36ee80

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrputerTimeoutOffset:I

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mSeamless:Z

    .line 887
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlay$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$7;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->onInterrupterStart:Ljava/lang/Runnable;

    .line 922
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlay$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$8;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->onInterrupterDismiss:Ljava/lang/Runnable;

    .line 185
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 186
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->findViewsCommon()V

    .line 187
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->findViews()V

    .line 188
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->setClickListeners()V

    .line 190
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mOffsetMs:I

    .line 191
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mOffsetMs:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mFetchPostplayOffsetMs:I

    .line 192
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->notStarted:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataFetchStatus:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    .line 193
    return-void
.end method

.method protected constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 6

    .prologue
    const/4 v0, 0x3

    .line 200
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/player/PostPlay;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 202
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 204
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v2

    .line 205
    if-nez v2, :cond_1

    .line 206
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "PostPlay: current asset is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->getAutoPlayMaxCount()I

    move-result v1

    .line 213
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPostPlayVideoPlayed()I

    move-result v2

    .line 215
    const/4 v3, -0x1

    if-gt v1, v3, :cond_4

    .line 216
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 217
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

    .line 222
    :cond_2
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
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

    .line 226
    :cond_3
    if-lt v2, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getState()Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->noUserInteraction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "This is 3rd consecutive auto play with no user interaction, start interrupter timeout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
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

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInteractivePostPlay:Lcom/netflix/model/leafs/InteractivePostplay;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/player/PostPlay;Lcom/netflix/model/leafs/InteractivePostplay;)Lcom/netflix/model/leafs/InteractivePostplay;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInteractivePostPlay:Lcom/netflix/model/leafs/InteractivePostplay;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/player/PostPlay;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mSeamless:Z

    return v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/player/PostPlay;Z)Z
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mSeamless:Z

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/player/PostPlay;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->onInterrupterStart:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/player/PostPlay;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->onInterrupterDismiss:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static getPostPlayType(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 972
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    .line 974
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v2

    .line 975
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isNonMemberPlayback()Z

    move-result v4

    .line 977
    if-eqz v2, :cond_0

    sget-object v3, Lcom/netflix/mediaclient/util/DeviceCategory;->UNKNOWN:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/netflix/mediaclient/util/DeviceCategory;->PHONE:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v2, v3, :cond_1

    :cond_0
    move v3, v1

    .line 987
    :goto_0
    if-eqz p1, :cond_a

    .line 988
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isNextPlayableEpisode()Z

    move-result v2

    .line 989
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    move v1, v2

    .line 992
    :goto_2
    if-eqz v4, :cond_4

    .line 993
    if-eqz v3, :cond_3

    .line 994
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "SignupForTablet post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->SignupForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    .line 1025
    :goto_3
    return-object v0

    :cond_1
    move v3, v0

    .line 980
    goto :goto_0

    :cond_2
    move v0, v1

    .line 989
    goto :goto_1

    .line 997
    :cond_3
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "SignupForPhone post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->SignupForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    goto :goto_3

    .line 1002
    :cond_4
    if-eqz v3, :cond_7

    .line 1003
    if-eqz v0, :cond_5

    .line 1004
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "RecommendationForTablet post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->RecommendationForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    goto :goto_3

    .line 1007
    :cond_5
    if-eqz v1, :cond_6

    .line 1008
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "EpisodesForTablet post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->EpisodesForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    goto :goto_3

    .line 1011
    :cond_6
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "RecommendationForTablet post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->RecommendationForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    goto :goto_3

    .line 1016
    :cond_7
    if-eqz v0, :cond_8

    .line 1017
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Phone recommendation (no) post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->RecommendationForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    goto :goto_3

    .line 1020
    :cond_8
    if-eqz v1, :cond_9

    .line 1021
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Phone episodes post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->EpisodesForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    goto :goto_3

    .line 1024
    :cond_9
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "There will be no next episode, use phone recommendation (no) post_play layout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->RecommendationForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    goto :goto_3

    :cond_a
    move v0, v1

    goto :goto_2
.end method

.method private getStartOfCredits()I
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mSeamless:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    .line 299
    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getSeamlessEnd()I

    move-result v0

    .line 298
    :goto_0
    return v0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 300
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getEndtime()I

    move-result v0

    goto :goto_0
.end method

.method private inPostPlay(I)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 624
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_1

    .line 625
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v2, "inPostPlay() - called with null PlayerFragment!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_0
    :goto_0
    return v1

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    .line 633
    if-eqz v0, :cond_0

    .line 636
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v3

    .line 637
    if-eqz v3, :cond_0

    .line 641
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getDuration()I

    move-result v4

    .line 642
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->getStartOfCredits()I

    move-result v0

    mul-int/lit16 v2, v0, 0x3e8

    .line 645
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->isSupplementalVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x2

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    long-to-int v0, v6

    .line 647
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 648
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

    .line 649
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

    .line 650
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

    .line 653
    :cond_2
    sub-int v3, v4, v2

    if-gtz v3, :cond_4

    .line 654
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v2, "Duration is zero. Seems that we didn\'t process it correctly yet (episode switching is performing). Skipping post_play check..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 645
    :cond_3
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mOffsetMs:I

    goto :goto_1

    .line 656
    :cond_4
    sub-int v3, v4, v2

    if-ge v3, v0, :cond_5

    .line 657
    const-string/jumbo v2, "nf_postplay"

    const-string/jumbo v3, "End time is too close to end of play. Use default offset instead."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    sub-int v0, v4, v0

    .line 664
    :goto_2
    if-le p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_3
    move v1, v0

    goto/16 :goto_0

    .line 659
    :cond_5
    if-le v2, v4, :cond_7

    .line 660
    const-string/jumbo v2, "nf_postplay"

    const-string/jumbo v3, "End time is greater than duration! Use default offset instead."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    sub-int v0, v4, v0

    goto :goto_2

    :cond_6
    move v0, v1

    .line 664
    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public destroy()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 871
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->onDestroy()V

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    if-eqz v0, :cond_1

    .line 875
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->stopTimer()V

    .line 877
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->onInterrupterStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 878
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->onInterrupterDismiss:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 879
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "User exist playback and post_play if it was in progress, report as such"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
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

    .line 881
    return-void
.end method

.method protected doTransitionFromPostPlay()V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method protected abstract doTransitionToPostPlay()V
.end method

.method public endOfPlay()V
    .locals 2

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    .line 1036
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "endOfPlay() - called with null PlayerFragment!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :goto_0
    return-void

    .line 1040
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->waitUntilEndOfPlay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1042
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->startInteractivePostPlay(Z)V

    .line 1046
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->clear()V

    goto :goto_0
.end method

.method public declared-synchronized fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V
    .locals 3

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 336
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 341
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Fetch post_play videos..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    .line 343
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

    .line 344
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 345
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mFetchPostPlayForPlaybackCallback:Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 347
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

    .prologue
    .line 359
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "fetchPostPlayVideosIfNeeded starts"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataFetchStatus:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->started:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    if-ne v0, v1, :cond_0

    .line 362
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "fetchPostPlayVideosIfNeeded: Fetch of post_play data already in progress, do nothing."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataFetchStatus:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->notStarted:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    if-ne v0, v1, :cond_2

    .line 365
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "fetchPostPlayVideosIfNeeded: First time, postplaydata not fetched, check if we need to postpone data retrieval..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->shouldPostponeFetchPostPlayData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "fetchPostPlayVideosIfNeeded: Postponing fetch of post_play data until playback starts..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->postponed:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataFetchStatus:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    goto :goto_0

    .line 370
    :cond_1
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "fetchPostPlayVideosIfNeeded: Fetching post_play data now, too close to start of post_play..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/PostPlay;->fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    goto :goto_0

    .line 374
    :cond_2
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "fetchPostPlayVideosIfNeeded: Fetching post_play was postponed, go and fetch it..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/PostPlay;->fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    goto :goto_0
.end method

.method protected abstract findViews()V
.end method

.method protected findViewsCommon()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f0f0266

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterPlayFromStart:Landroid/view/View;

    .line 285
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f0f0265

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterContinue:Landroid/view/View;

    .line 286
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f0f02ad

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mBackgroundContainer:Landroid/widget/LinearLayout;

    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f0f02a9

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mItemsContainer:Landroid/widget/LinearLayout;

    .line 288
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f0f0267

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterStop:Landroid/view/View;

    .line 289
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f0f02a7

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayIgnoreTap:Landroid/view/View;

    .line 290
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f0f0264

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupter:Landroid/view/View;

    .line 291
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f0f02a5

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    .line 292
    return-void
.end method

.method public getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    return-object v0
.end method

.method protected abstract getLengthOfAutoPlayCountdow()I
.end method

.method protected abstract getPostPlayExpirience()Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;
.end method

.method protected hasValidPlayAction(Lcom/netflix/model/leafs/PostPlayItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 820
    if-nez p1, :cond_1

    .line 829
    :cond_0
    :goto_0
    return v0

    .line 823
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v1

    .line 824
    if-eqz v1, :cond_0

    .line 825
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

    .line 826
    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 827
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

    .prologue
    .line 675
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 678
    :cond_0
    return-void
.end method

.method protected isAutoPlayEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 577
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v1, :cond_1

    .line 578
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "isAutoPlayEnabled() - called with null PlayerFragment!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_0
    :goto_0
    return v0

    .line 582
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 583
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "Activity not found! Auto post_play is NOT enabled. This should NOT happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 586
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    .line 587
    if-nez v1, :cond_3

    .line 588
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "Asset not found! Auto post_play is NOT enabled. This should NOT happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 592
    :cond_3
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isAutoPlayEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 593
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "Autoplay is disabled for this title"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 597
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 598
    if-eqz v1, :cond_0

    .line 601
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    .line 602
    if-eqz v1, :cond_0

    .line 606
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isAutoPlayEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 607
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Autoplay is enabled for this profile"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/4 v0, 0x1

    goto :goto_0

    .line 610
    :cond_5
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "Autoplay is disabled for this profile"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected isAutoPlayUsed()Z
    .locals 1

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isAutoPlayEnabled()Z

    move-result v0

    return v0
.end method

.method public isInPostPlay()Z
    .locals 1

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInPostPlay:Z

    return v0
.end method

.method protected isPostPlayAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 554
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isPostPlayEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "PostPlay is not enabled."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :goto_0
    return v0

    .line 559
    :cond_0
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDismissed:Z

    if-eqz v1, :cond_1

    .line 560
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "PostPlay was dismissed by an user, do not start it again."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 564
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isPostPlayEnabled()Z
    .locals 1

    .prologue
    .line 620
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

    .prologue
    .line 316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Logging post play impression"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlay$LogPostPlayImpressionCallback;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$LogPostPlayImpressionCallback;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    .line 319
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Unable to log post play impression!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method moveFromInterruptedToPlaying()V
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    .line 940
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "moveFromInterruptedToPlaying() - called with null PlayerFragment!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :goto_0
    return-void

    .line 944
    :cond_0
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Interrupter mode, continue"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->clearPanel()V

    .line 946
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    .line 947
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupter:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 948
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->setSubtitleVisibility(Z)V

    goto :goto_0
.end method

.method moveFromInterruptedToPlayingFromStart()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 952
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    .line 953
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "moveFromInterruptedToPlayingFromStart() - called with null PlayerFragment!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :goto_0
    return-void

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupter:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 958
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Interrupter mode, play from start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->clearPanel()V

    .line 960
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupter:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 961
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->setSubtitleVisibility(Z)V

    .line 962
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doSeek(I)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1053
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInPostPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->onPause()V

    .line 1056
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1063
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInPostPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->onResume()V

    .line 1066
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInPostPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->onStart()V

    .line 1084
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1072
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInPostPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->onStop()V

    .line 1075
    :cond_0
    return-void
.end method

.method protected onTick(I)V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method public postPlayDismissed()V
    .locals 1

    .prologue
    .line 836
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDismissed:Z

    .line 837
    return-void
.end method

.method public reportNextPlayFailed(Z)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 481
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->shouldReportPostplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "User starts next play and it failed, report as such"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playback:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move v4, p1

    move-object v6, v3

    move-object v7, v3

    move v8, v5

    invoke-static/range {v0 .. v8}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportEndPostPlay(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/Error;ZZLjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 491
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1090
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    .line 1091
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->postponed:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataFetchStatus:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    .line 1092
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataExist:Z

    .line 1093
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    .line 1094
    return-void
.end method

.method public setBackgroundImageVisible(Z)V
    .locals 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mBackgroundContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 862
    if-eqz p1, :cond_1

    .line 863
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mBackgroundContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mBackgroundContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setClickListeners()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayIgnoreTap:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayIgnoreTap:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlay$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$1;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterContinue:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterContinue:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlay$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$2;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterStop:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterStop:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlay$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$3;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterPlayFromStart:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInterrupterPlayFromStart:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlay$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$4;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    :cond_2
    return-void

    .line 270
    :cond_3
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "setClickListeners() - mInterrupterStop handler was not set!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setupAutoPlay(Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V
    .locals 4

    .prologue
    .line 413
    new-instance v0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    .line 414
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplaySeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->setTime(I)V

    .line 416
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

    .line 417
    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/model/leafs/PostPlayAction;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    .line 419
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    new-instance v2, Lcom/netflix/mediaclient/ui/player/PostPlay$5;

    invoke-direct {v2, p0, v1}, Lcom/netflix/mediaclient/ui/player/PostPlay$5;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;)V

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->setOnFinish(Ljava/lang/Runnable;)V

    .line 425
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlay$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PostPlay$6;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->setOnTick(Ljava/lang/Runnable;)V

    .line 431
    return-void
.end method

.method protected shouldPostponeFetchPostPlayData()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1103
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v2, :cond_1

    .line 1104
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "shouldPostponeFetchPostPlayData() - called with null PlayerFragment!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_0
    :goto_0
    return v0

    .line 1108
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v3

    .line 1109
    if-eqz v3, :cond_0

    .line 1113
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlaybackBookmark()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    .line 1114
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->getDuration()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    .line 1115
    if-gez v2, :cond_2

    .line 1116
    const-string/jumbo v2, "nf_postplay"

    const-string/jumbo v4, "Invalid bookmark, reset to 0"

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1120
    :cond_2
    if-gtz v3, :cond_3

    .line 1121
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v2, "We do not have duration, do not postpone!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1122
    goto :goto_0

    .line 1125
    :cond_3
    iget v4, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mFetchPostplayOffsetMs:I

    add-int/2addr v2, v4

    if-ge v2, v3, :cond_4

    .line 1127
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1128
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

    .line 1129
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

    .line 1130
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

    .line 1131
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

    .line 1125
    goto :goto_1
.end method

.method protected shouldReportPostplay()Z
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x1

    return v0
.end method

.method public startInteractivePostPlay(Z)V
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->startPostPlay(Z)V

    .line 684
    :cond_0
    return-void
.end method

.method transitionFromPostPlay()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 463
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Transition from post play execute!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iput-boolean v5, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInPostPlay:Z

    .line 465
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->postPlayDismissed()V

    .line 466
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->shouldReportPostplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "User dismissed post_play, report as such"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playback:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v4, 0x1

    move-object v6, v3

    move-object v7, v3

    move v8, v5

    invoke-static/range {v0 .. v8}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportEndPostPlay(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/Error;ZZLjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 476
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->doTransitionFromPostPlay()V

    .line 477
    return-void
.end method

.method public transitionToPostPlay()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 383
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Transition to post play execute!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInPostPlay:Z

    .line 387
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-nez v0, :cond_1

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 391
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_3

    .line 392
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->waitUntilEndOfPlay()Z

    move-result v0

    if-nez v0, :cond_2

    .line 393
    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/player/PostPlay;->startInteractivePostPlay(Z)V

    .line 410
    :cond_2
    :goto_0
    return-void

    .line 396
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_6

    .line 397
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 398
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlay:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 401
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->shouldReportPostplay()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 402
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isAutoPlayUsed()Z

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->getLengthOfAutoPlayCountdow()I

    move-result v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->getPostPlayExpirience()Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportStartPostPlay(Landroid/content/Context;ZILcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;)V

    .line 403
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayItem;

    .line 404
    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getVideoId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getImpressionData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V

    .line 406
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->doTransitionToPostPlay()V

    goto :goto_0

    .line 408
    :cond_6
    const-string/jumbo v0, "SPY-10544 - Error transitioning to post play. No post play experience defined."

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract updateOnPostPlayVideosFetched()V
.end method

.method public updatePlaybackPosition(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 513
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isPostPlayAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 539
    :goto_0
    return v0

    .line 517
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v2, :cond_1

    .line 518
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "updatePlaybackPosition() - called with null PlayerFragment!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 522
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->inPostPlay(I)Z

    move-result v2

    .line 523
    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInPostPlay:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 524
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v2, "Already in post play"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 525
    goto :goto_0

    .line 526
    :cond_2
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getState()Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Interrupter:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v3, v4, :cond_3

    .line 527
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "In Interrupter mode, do nothing"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 529
    :cond_3
    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInPostPlay:Z

    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    .line 530
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "Transition from post play to normal"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->transitionFromPostPlay()V

    goto :goto_0

    .line 533
    :cond_4
    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mInPostPlay:Z

    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    .line 534
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v2, "Transition to post play"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->moveToState(Lcom/netflix/mediaclient/ui/player/PlayerUiState;)V

    move v0, v1

    .line 536
    goto :goto_0

    .line 538
    :cond_5
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v2, "Not in in post play"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public wasPostPlayDismissed()Z
    .locals 1

    .prologue
    .line 852
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDismissed:Z

    return v0
.end method
