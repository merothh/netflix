.class public Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;
.super Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;
.source "CoppolaControlsDecorator.java"


# instance fields
.field private bottomGradient:Landroid/view/View;

.field private currentDeviceVolume:I

.field private currentOrientation:I

.field private extraSeekbarHandler:Landroid/view/View;

.field private muteButton:Landroid/widget/ImageButton;

.field private orientationButton:Landroid/widget/ImageButton;

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private pausePlayButton:Landroid/widget/ImageButton;

.field private timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

.field private topGradient:Landroid/view/View;

.field private userVolumeValue:I

.field private volumeObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayScreen;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;-><init>(Lcom/netflix/mediaclient/ui/player/PlayScreen;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateUI(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;-><init>(Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateUI(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->extraSeekbarHandler:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentOrientation:I

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->subscribeForSensorUpdates()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentVolumeIsMuted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateMuteDrawable(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->userVolumeValue:I

    return v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)Landroid/view/OrientationEventListener;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->orientationEventListener:Landroid/view/OrientationEventListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateUserVolume()V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateMuteDrawable()V

    return-void
.end method

.method private changePlayerOverlayVisibility(Z)V
    .locals 3

    const/4 v0, 0x1

    const/16 v2, 0x8

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentOrientation:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->pausePlayButton:Landroid/widget/ImageButton;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    move p1, v0

    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->topGradient:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->bottomGradient:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->muteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isAudioOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentVolumeIsMuted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->userVolumeValue:I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->setDeviceStreamVolume(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->pausePlayButton:Landroid/widget/ImageButton;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->orientationButton:Landroid/widget/ImageButton;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateDefaultPlayerControls()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->muteButton:Landroid/widget/ImageButton;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->topGradient:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->bottomGradient:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private currentVolumeIsMuted()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentDeviceVolume:I

    if-ge v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDeviceStreamVolume(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    return-void
.end method

.method private subscribeForSensorUpdates()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$4;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$4;-><init>(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->orientationEventListener:Landroid/view/OrientationEventListener;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method private updateButtonsMargins()V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->orientationButton:Landroid/widget/ImageButton;

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentOrientation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getUiResources()Lcom/netflix/mediaclient/ui/player/ResourceHelper;

    move-result-object v0

    iget v0, v0, Lcom/netflix/mediaclient/ui/player/ResourceHelper;->zoomIn:I

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentOrientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/util/DeviceUtils;->hasHardwareNavigationKeys()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v0

    move v1, v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->orientationButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->pausePlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateDefaultPlayerControls()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getUiResources()Lcom/netflix/mediaclient/ui/player/ResourceHelper;

    move-result-object v0

    iget v0, v0, Lcom/netflix/mediaclient/ui/player/ResourceHelper;->zoomOut:I

    goto :goto_0
.end method

.method private updateDefaultPlayerControls()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->playerScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setPlayPauseVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->playerScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoomVisibility(I)V

    return-void
.end method

.method private updateMuteDrawable()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentVolumeIsMuted()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateMuteDrawable(Z)V

    return-void
.end method

.method private updateMuteDrawable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->muteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->muteButton:Landroid/widget/ImageButton;

    const v1, 0x7f020108

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->muteButton:Landroid/widget/ImageButton;

    const v1, 0x7f02014b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateUI(Landroid/view/ViewGroup;)V
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c7

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0f0285

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->topGradient:Landroid/view/View;

    const v0, 0x7f0f0286

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->bottomGradient:Landroid/view/View;

    const v0, 0x7f0f0287

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->pausePlayButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->pausePlayButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$1;-><init>(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentOrientation:I

    const v0, 0x7f0f0289

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->orientationButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->orientationButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$2;-><init>(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateUserVolume()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isAudioOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->didUserMutePlayback(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->setDeviceStreamVolume(I)V

    :cond_1
    const v0, 0x7f0f028a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->muteButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->muteButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$3;-><init>(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateMuteDrawable()V

    new-instance v0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$VolumeContentObserver;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$VolumeContentObserver;-><init>(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->volumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->volumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const v0, 0x7f0f0288

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getPlayScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getListeners()Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    move-result-object v1

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->videoPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f0f028b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->extraSeekbarHandler:Landroid/view/View;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateButtonsMargins()V

    return-void
.end method

.method private updateUserVolume()V
    .locals 4

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentDeviceVolume:I

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    :goto_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentDeviceVolume:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentDeviceVolume:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->userVolumeValue:I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentDeviceVolume:I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentOrientation:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->changePlayerOverlayVisibility(Z)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateButtonsMargins()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateUserVolume()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateMuteDrawable()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onDestroy()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->volumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentVolumeIsMuted()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/Coppola1Utils;->setUserMutePlayback(Landroid/app/Activity;Z)V

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->userVolumeValue:I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->setDeviceStreamVolume(I)V

    return-void
.end method

.method public playExtraHandlerAnimation(ILjava/lang/Runnable;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->playExtraHandlerAnimation(ILjava/lang/Runnable;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->extraSeekbarHandler:Landroid/view/View;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playExtraHandlerAnimation(ILjava/lang/Runnable;Lcom/netflix/mediaclient/ui/player/CurrentTime;Landroid/view/View;Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;)V

    return-void
.end method

.method public playerOverlayVisibility(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->playerOverlayVisibility(Z)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->changePlayerOverlayVisibility(Z)V

    return-void
.end method

.method public setDraggingState(Z)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setDraggingState(Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->extraSeekbarHandler:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->pausePlayButton:Landroid/widget/ImageButton;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setSeekbarEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setSeekbarEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setEnabled(Z)V

    return-void
.end method

.method public setTimelineMaxProgress(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setTimelineMaxProgress(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setMax(I)V

    return-void
.end method

.method public setTimelineProgress(IZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setTimelineProgress(IZ)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setProgress(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->calculateTimelineMargin(Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;I)I

    move-result v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->extraSeekbarHandler:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->extraSeekbarHandler:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->extraSeekbarHandler:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    goto :goto_0
.end method

.method public updatePlaybackStatus(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->pausePlayButton:Landroid/widget/ImageButton;

    const v1, 0x7f020115

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->pausePlayButton:Landroid/widget/ImageButton;

    const v1, 0x7f020112

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method
