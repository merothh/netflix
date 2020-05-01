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

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;-><init>(Lcom/netflix/mediaclient/ui/player/PlayScreen;)V

    .line 54
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateUI(Landroid/view/ViewGroup;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;-><init>(Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;)V

    .line 49
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateUI(Landroid/view/ViewGroup;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->extraSeekbarHandler:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentOrientation:I

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->subscribeForSensorUpdates()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)Z
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentVolumeIsMuted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;Z)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateMuteDrawable(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->userVolumeValue:I

    return v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)Landroid/view/OrientationEventListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->orientationEventListener:Landroid/view/OrientationEventListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateUserVolume()V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateMuteDrawable()V

    return-void
.end method

.method private changePlayerOverlayVisibility(Z)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/16 v2, 0x8

    .line 262
    iget v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentOrientation:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 263
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

    .line 271
    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 272
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->topGradient:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->bottomGradient:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->muteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setVisibility(I)V

    .line 278
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

    .line 279
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->userVolumeValue:I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->setDeviceStreamVolume(I)V

    .line 288
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->pausePlayButton:Landroid/widget/ImageButton;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 289
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->orientationButton:Landroid/widget/ImageButton;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 292
    if-eqz p1, :cond_3

    .line 293
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateDefaultPlayerControls()V

    .line 295
    :cond_3
    return-void

    .line 282
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->muteButton:Landroid/widget/ImageButton;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 284
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->topGradient:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 285
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->bottomGradient:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private currentVolumeIsMuted()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 334
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

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 339
    if-eqz v0, :cond_0

    .line 340
    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 341
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 343
    :cond_0
    return-void
.end method

.method private subscribeForSensorUpdates()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$4;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$4;-><init>(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 235
    return-void
.end method

.method private updateButtonsMargins()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 238
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

    .line 243
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentOrientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 244
    invoke-static {}, Lcom/netflix/mediaclient/util/DeviceUtils;->hasHardwareNavigationKeys()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v0

    move v1, v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->orientationButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 250
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->pausePlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 253
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateDefaultPlayerControls()V

    .line 254
    return-void

    .line 238
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

    .prologue
    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->playerScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setPlayPauseVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->playerScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoomVisibility(I)V

    .line 303
    return-void
.end method

.method private updateMuteDrawable()V
    .locals 1

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentVolumeIsMuted()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateMuteDrawable(Z)V

    .line 372
    return-void
.end method

.method private updateMuteDrawable(Z)V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->muteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 376
    if-eqz p1, :cond_1

    .line 377
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->muteButton:Landroid/widget/ImageButton;

    const v1, 0x7f020108

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->muteButton:Landroid/widget/ImageButton;

    const v1, 0x7f02014b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateUI(Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c7

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    const v0, 0x7f0f0285

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->topGradient:Landroid/view/View;

    .line 61
    const v0, 0x7f0f0286

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->bottomGradient:Landroid/view/View;

    .line 62
    const v0, 0x7f0f0287

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->pausePlayButton:Landroid/widget/ImageButton;

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->pausePlayButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$1;-><init>(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
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

    .line 73
    const v0, 0x7f0f0289

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->orientationButton:Landroid/widget/ImageButton;

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->orientationButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$2;-><init>(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateUserVolume()V

    .line 90
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

    .line 91
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->setDeviceStreamVolume(I)V

    .line 94
    :cond_1
    const v0, 0x7f0f028a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->muteButton:Landroid/widget/ImageButton;

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->muteButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$3;-><init>(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateMuteDrawable()V

    .line 114
    new-instance v0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$VolumeContentObserver;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator$VolumeContentObserver;-><init>(Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->volumeObserver:Landroid/database/ContentObserver;

    .line 115
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

    .line 117
    const v0, 0x7f0f0288

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getPlayScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getListeners()Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    move-result-object v1

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->videoPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 120
    const v0, 0x7f0f028b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->extraSeekbarHandler:Landroid/view/View;

    .line 121
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateButtonsMargins()V

    .line 122
    return-void
.end method

.method private updateUserVolume()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 350
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_0

    .line 352
    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 355
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 358
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentDeviceVolume:I

    .line 359
    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 364
    :goto_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentDeviceVolume:I

    if-lez v0, :cond_0

    .line 365
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentDeviceVolume:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->userVolumeValue:I

    .line 368
    :cond_0
    return-void

    .line 361
    :cond_1
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentDeviceVolume:I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 140
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentOrientation:I

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->changePlayerOverlayVisibility(Z)V

    .line 142
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateButtonsMargins()V

    .line 143
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateUserVolume()V

    .line 144
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->updateMuteDrawable()V

    .line 145
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onDestroy()V

    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 195
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

    .line 198
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->currentVolumeIsMuted()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/Coppola1Utils;->setUserMutePlayback(Landroid/app/Activity;Z)V

    .line 201
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->userVolumeValue:I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->setDeviceStreamVolume(I)V

    .line 202
    return-void
.end method

.method public playExtraHandlerAnimation(ILjava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->playExtraHandlerAnimation(ILjava/lang/Runnable;)V

    .line 127
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->extraSeekbarHandler:Landroid/view/View;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playExtraHandlerAnimation(ILjava/lang/Runnable;Lcom/netflix/mediaclient/ui/player/CurrentTime;Landroid/view/View;Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;)V

    .line 128
    return-void
.end method

.method public playerOverlayVisibility(Z)V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->playerOverlayVisibility(Z)V

    .line 133
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->changePlayerOverlayVisibility(Z)V

    .line 134
    return-void
.end method

.method public setDraggingState(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setDraggingState(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->extraSeekbarHandler:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->pausePlayButton:Landroid/widget/ImageButton;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 160
    return-void

    .line 157
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setSeekbarEnabled(Z)V
    .locals 1

    .prologue
    .line 307
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setSeekbarEnabled(Z)V

    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setEnabled(Z)V

    .line 309
    return-void
.end method

.method public setTimelineMaxProgress(I)V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setTimelineMaxProgress(I)V

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setMax(I)V

    .line 151
    return-void
.end method

.method public setTimelineProgress(IZ)V
    .locals 3

    .prologue
    .line 164
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setTimelineProgress(IZ)V

    .line 166
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    if-eqz p2, :cond_1

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setProgress(I)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->calculateTimelineMargin(Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;I)I

    move-result v1

    .line 171
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

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->extraSeekbarHandler:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    goto :goto_0
.end method

.method public updatePlaybackStatus(Z)V
    .locals 2

    .prologue
    .line 179
    if-eqz p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->pausePlayButton:Landroid/widget/ImageButton;

    const v1, 0x7f020115

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaControlsDecorator;->pausePlayButton:Landroid/widget/ImageButton;

    const v1, 0x7f020112

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method
