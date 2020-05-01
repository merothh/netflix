.class public Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;
.super Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBaseScreen;
.source "KongBattleIntroScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KongBattleIntroScreen"


# instance fields
.field private autoPlayInterval:I

.field private backButtonWidth:I

.field private battleCard:Landroid/widget/ImageView;

.field private battleCardComposite:Landroid/view/View;

.field private battleCardHeight:F

.field private battleCardWidth:F

.field private battleCountdownTimer:Landroid/widget/TextView;

.field private battleEpisodeSpacing:F

.field private battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

.field private battleIntroContainer:Landroid/view/ViewGroup;

.field private battleIntroPlaceholderView:Landroid/view/View;

.field battleIntroScaleDownListener:Landroid/animation/Animator$AnimatorListener;

.field private battleOptInHeaderString:Ljava/lang/String;

.field private battleOptInVOUrl:Ljava/lang/String;

.field private battleOptInVOVolume:F

.field private battleTitle:Landroid/widget/TextView;

.field private battleTitleString:Ljava/lang/String;

.field private battleWhatsNextSoundId:I

.field countdownTimerRunnable:Ljava/lang/Runnable;

.field private dropShadowImageUrl:Ljava/lang/String;

.field private finishTimeCounterSeconds:I

.field gearSelectionClickListener:Landroid/view/View$OnClickListener;

.field private hasWatchedAllBattlesForEpisode:Z

.field private interpolator:Landroid/view/animation/Interpolator;

.field private isBattleResultWin:Z

.field private isNextEpisodeTimerFocused:Z

.field private itemSelectionSoundUrl:Ljava/lang/String;

.field private itemSelectionSoundVolume:F

.field private kongAvatar:Landroid/widget/ImageView;

.field private kongAvatarImageUrl:Ljava/lang/String;

.field private leftGate:Landroid/widget/ImageView;

.field private leftGateImageUrl:Ljava/lang/String;

.field private leftGateWidth:F

.field mBattleIntroAnimationEndListener:Lcom/netflix/mediaclient/util/OnAnimationEndListener;

.field private nextEpisode:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field nextEpisodeClickListener:Landroid/view/View$OnClickListener;

.field private nextEpisodeContainer:Landroid/view/ViewGroup;

.field private nextEpisodeCountdownTimer:Landroid/widget/TextView;

.field private nextEpisodeImageUrl:Ljava/lang/String;

.field private nextEpisodeTitle:Landroid/widget/TextView;

.field private nextEpisodeTitleString:Ljava/lang/String;

.field private nextEpisodeTrackId:I

.field private nextEpisodeVideoId:I

.field private opponentAvatar:Landroid/widget/ImageView;

.field private opponentAvatarImageUrl:Ljava/lang/String;

.field private options:Landroid/graphics/BitmapFactory$Options;

.field private prepareBattleSoundId:I

.field private redFlareImageUrl:Ljava/lang/String;

.field private resultDataBattleCardImageUrl:Ljava/lang/String;

.field private rightGate:Landroid/widget/ImageView;

.field private rightGateImageUrl:Ljava/lang/String;

.field private rightGateWidth:F

.field private scaleDownHeight:F

.field private scaleDownWidth:F

.field private timerString:Ljava/lang/String;

.field private timerView:Landroid/widget/TextView;

.field private versusHex:Landroid/widget/ImageView;

.field private versusHexImageUrl:Ljava/lang/String;

.field private versusHexSword:Landroid/widget/ImageView;

.field private versusHexSwordImageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBaseScreen;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->interpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->options:Landroid/graphics/BitmapFactory$Options;

    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$2;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->countdownTimerRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$3;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->mBattleIntroAnimationEndListener:Lcom/netflix/mediaclient/util/OnAnimationEndListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$4;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroScaleDownListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$5;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->gearSelectionClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$6;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleOptInHeaderString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)F
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->scaleDownWidth:F

    return v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeVideoId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->timerView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleTitleString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeTitleString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisode:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;I)I
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->finishTimeCounterSeconds:I

    return p1
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->autoPlayInterval:I

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->isBattleResultWin:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCountdownTimer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeCountdownTimer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeTrackId:I

    return v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)F
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->scaleDownHeight:F

    return v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)F
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleEpisodeSpacing:F

    return v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCard:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->hasWatchedAllBattlesForEpisode:Z

    return v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->resultDataBattleCardImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCardComposite:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method animationEndUIState()V
    .locals 3

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->leftGate:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->rightGate:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->opponentAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->versusHex:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->versusHexSword:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleOptInHeaderString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->scaleDownWidth:F

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->setScaleX(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->scaleDownHeight:F

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->setScaleY(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleEpisodeSpacing:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeVideoId:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleEpisodeSpacing:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method public getBattleCountdownTimer()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCountdownTimer:Landroid/widget/TextView;

    return-object v0
.end method

.method public getBattleCountdownTimerVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCountdownTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCountdownTimer:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method getBattleIntroCompoundView()Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    return-object v0
.end method

.method public getBattleIntroContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getBattleIntroPlaceholderView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroPlaceholderView:Landroid/view/View;

    return-object v0
.end method

.method public getBattleTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getGear1Group()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getGear1Group()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getGear2Group()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getGear2Group()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getKongAvatar()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->kongAvatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLeftGate()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->leftGate:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getNextEpisode()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisode:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    return-object v0
.end method

.method public getNextEpisodeContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getNextEpisodeCountdownTimer()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeCountdownTimer:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNextEpisodeCountdownTimerVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeCountdownTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeCountdownTimer:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getNextEpisodeTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method getNextEpisodeVideoId()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeVideoId:I

    return v0
.end method

.method getNextEpisodeView()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisode:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    return-object v0
.end method

.method public getOpponentAvatar()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->opponentAvatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRightGate()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->rightGate:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getVersusHex()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->versusHex:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getVersusHexSword()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->versusHexSword:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hasTimerExpired()Z
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->finishTimeCounterSeconds:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hide()V
    .locals 0

    return-void
.end method

.method initViews(Landroid/view/View;)V
    .locals 6

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-nez p1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KongBattleIntroScreen"

    const-string/jumbo v1, "Container is null. Cannot inflate views for screen."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0f026f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0f026b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0081

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCardWidth:F

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCardWidth:F

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenAspectRatio(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCardHeight:F

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenHeightInPixels(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getRealScreenHeightInPixels(Landroid/app/Activity;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCardWidth:F

    div-float/2addr v3, v0

    iput v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->scaleDownWidth:F

    iget v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCardHeight:F

    div-float v2, v3, v2

    iput v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->scaleDownHeight:F

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeVideoId:I

    if-lez v2, :cond_2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->backButtonWidth:I

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleEpisodeSpacing:F

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCardWidth:F

    div-float/2addr v2, v5

    div-float/2addr v0, v5

    iget v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->backButtonWidth:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget v4, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleEpisodeSpacing:F

    add-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleEpisodeSpacing:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v5

    add-float/2addr v0, v2

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleEpisodeSpacing:F

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0f0272

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0f0273

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCountdownTimer:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0f0270

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0f0271

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroPlaceholderView:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroPlaceholderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCardHeight:F

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    const v2, 0x7f0f019d

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->leftGate:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    const v2, 0x7f0f019c

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->rightGate:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    const v2, 0x7f0f01a0

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->versusHex:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    const v2, 0x7f0f01a1

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->versusHexSword:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    const v2, 0x7f0f019f

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->kongAvatar:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    const v2, 0x7f0f019e

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->opponentAvatar:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->leftGateWidth:F

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->leftGateWidth:F

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->rightGateWidth:F

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    const v1, 0x7f0f01a2

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCard:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    const v1, 0x7f0f019a

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCardComposite:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->gearSelectionClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;-><init>(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCountdownTimer:Landroid/widget/TextView;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->gearSelectionClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;-><init>(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0f026c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisode:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisode:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCardHeight:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisode:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0f026d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0f026e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeCountdownTimer:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisode:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisode:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;-><init>(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeCountdownTimer:Landroid/widget/TextView;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisode:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;-><init>(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method loadPostPlayData(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;)V
    .locals 2

    if-nez p1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KongBattleIntroScreen"

    const-string/jumbo v1, "Interactive data is null. Cannot load post play info."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getAutoPlayInterval()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->autoPlayInterval:I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getLeftGateImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->leftGateImageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getRedFlareImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->redFlareImageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getRightGateImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->rightGateImageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getVersusHexImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->versusHexImageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getVersusSwordsImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->versusHexSwordImageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getAvatarImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->kongAvatarImageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getOpponentImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->opponentAvatarImageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getCardDropshadowImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->dropShadowImageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getNextEpisodeImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeImageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getNextEpisodeVideoId()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeVideoId:I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getNextEpisodeTrackId()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeTrackId:I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getNextEpisodeString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeTitleString:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getAutoPlayString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->timerString:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBattleOptInHeaderString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleOptInHeaderString:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->isNextEpisodeFocused()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->isNextEpisodeTimerFocused:Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBattleTitleString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleTitleString:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBattleOptInVOSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleOptInVOUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getVolume()F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleOptInVOVolume:F

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getItemSelectionSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->itemSelectionSoundUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getVolume()F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->itemSelectionSoundVolume:F

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getPostPlayState()Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->RESULT:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBattleAgainString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleTitleString:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->hasWatchedAllBattleVideosForEpisode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->hasWatchedAllBattlesForEpisode:Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getResultBattleCardImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->resultDataBattleCardImageUrl:Ljava/lang/String;

    const-string/jumbo v0, "Win"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getResultType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->isBattleResultWin:Z

    goto/16 :goto_0
.end method

.method loadResources()V
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isHighPerfDevice()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->rightGate:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->rightGateImageUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->leftGate:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->leftGateImageUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisode:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeImageUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->resultDataBattleCardImageUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCard:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->resultDataBattleCardImageUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->opponentAvatar:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->opponentAvatarImageUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->kongAvatar:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->kongAvatarImageUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->versusHex:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->versusHexImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->versusHexSword:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->versusHexSwordImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->loadSoundPoolResources()V

    return-void
.end method

.method loadSoundPoolResources()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getSoundPoolManager()Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "KongBattleIntroScreen"

    const-string/jumbo v1, "Sound pool manager is null. Cannot load VO resources."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleOptInVOUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getResourceToLocalCacheFileMap(Ljava/lang/String;)Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->loadSoundPoolVo(Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleWhatsNextSoundId:I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->itemSelectionSoundUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getResourceToLocalCacheFileMap(Ljava/lang/String;)Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->loadSoundPoolVo(Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->prepareBattleSoundId:I

    goto :goto_0
.end method

.method onResourcesLoaded()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->versusHex:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->versusHexSword:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->rightGate:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->leftGate:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method playBattleSound()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getSoundPoolManager()Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleWhatsNextSoundId:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleOptInVOVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->playSoundPoolId(IF)V

    :cond_0
    return-void
.end method

.method playPrepareBattleSound()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getSoundPoolManager()Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->prepareBattleSoundId:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->itemSelectionSoundVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->playSoundPoolId(IF)V

    :cond_0
    return-void
.end method

.method public releaseBitmapResources()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->rightGate:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->resetImageDrawable(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->leftGate:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->resetImageDrawable(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisode:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->resetImageDrawable(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->opponentAvatar:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->resetImageDrawable(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->kongAvatar:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->resetImageDrawable(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->versusHex:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->resetImageDrawable(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->versusHexSword:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->resetImageDrawable(Landroid/widget/ImageView;)V

    return-void
.end method

.method setCountdownTimerText(Landroid/widget/TextView;)V
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "KongBattleIntroScreen"

    const-string/jumbo v1, "countDownTimerView is null. Returning from setting countdown timer."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->timerView:Landroid/widget/TextView;

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->finishTimeCounterSeconds:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->finishTimeCounterSeconds:I

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->timerString:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->timerView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->finishTimeCounterSeconds:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->finishTimeCounterSeconds:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->timerView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->timerView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->countdownTimerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method start()V
    .locals 0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->startAnimation()Z

    return-void
.end method

.method startAnimation()Z
    .locals 11

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->cancelCurrentAnimation()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlayState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    sget-object v2, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->BATTLE:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->playPrepareBattleSound()V

    :cond_1
    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->autoPlayInterval:I

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->finishTimeCounterSeconds:I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCard:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCardComposite:Landroid/view/View;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getBattleResultAvatar()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGoneAnimation(Landroid/view/View;ZZ)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getUnlockingGearContainer()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGoneAnimation(Landroid/view/View;ZZ)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getPowerUpContainer()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getGear1Group()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getGear2Group()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeCountdownTimer:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCountdownTimer:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->setClickable(Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->setClickable(Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisode:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getGear1Group()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getGear2Group()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->setScaleX(F)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->setScaleY(F)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->leftGate:Landroid/widget/ImageView;

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->leftGateWidth:F

    neg-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->rightGate:Landroid/widget/ImageView;

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->rightGateWidth:F

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->kongAvatar:Landroid/widget/ImageView;

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->leftGateWidth:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->opponentAvatar:Landroid/widget/ImageView;

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->rightGateWidth:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->versusHex:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->versusHexSword:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->leftGate:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->rightGate:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->kongAvatar:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->opponentAvatar:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->versusHex:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->versusHexSword:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x29a

    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->shouldHideAnimation()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlayState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    sget-object v2, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->RESULT:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    if-ne v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->hasWatchedAllBattlesForEpisode:Z

    if-nez v1, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v2, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v6, 0x3e8

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeContainer:Landroid/view/ViewGroup;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->mBattleIntroAnimationEndListener:Lcom/netflix/mediaclient/util/OnAnimationEndListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->setCurrentAnimation(Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const/4 v0, 0x1

    return v0

    :cond_5
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    iget v8, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->scaleDownWidth:F

    aput v8, v6, v7

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v6, 0x29a

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroCompoundView:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget v9, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->scaleDownHeight:F

    aput v9, v7, v8

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v6, 0x29a

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v2, v6, v3

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroScaleDownListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleIntroContainer:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    iget v8, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleEpisodeSpacing:F

    neg-float v8, v8

    aput v8, v6, v7

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v6, 0x29a

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v6, 0x14d

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeContainer:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeContainer:Landroid/view/ViewGroup;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeContainer:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget v10, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleEpisodeSpacing:F

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x29a

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget v4, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeVideoId:I

    if-lez v4, :cond_4

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0
.end method

.method startTimer()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->autoPlayInterval:I

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeVideoId:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlayState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->RESULT:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->isNextEpisodeTimerFocused:Z

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->hasWatchedAllBattlesForEpisode:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCountdownTimer:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeCountdownTimer:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeCountdownTimer:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->setCountdownTimerText(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCountdownTimer:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->nextEpisodeCountdownTimer:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->battleCountdownTimer:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->setCountdownTimerText(Landroid/widget/TextView;)V

    goto :goto_0
.end method
