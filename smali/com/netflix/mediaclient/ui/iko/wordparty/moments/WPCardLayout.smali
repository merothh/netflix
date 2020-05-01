.class public abstract Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;
.super Landroid/widget/FrameLayout;
.source "WPCardLayout.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WPCardLayout"


# instance fields
.field protected final CAMERA_DISTANCE:I

.field protected audio:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

.field protected cardHeight:I

.field protected cardListener:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/CardListener;

.field protected cardRotationValue:F

.field protected cardWidth:I

.field private completedAudioPlaybackForReveal:Z

.field private completedVideoPlaybackForReveal:Z

.field protected currentVideoTextureAnimator:Landroid/animation/ObjectAnimator;

.field protected imageView:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;

.field protected mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

.field protected padding:I

.field protected quintOutInterpolator:Landroid/view/animation/Interpolator;

.field protected video:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;

.field protected videoMaskDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field protected videoMaskImageView:Landroid/widget/ImageView;

.field protected videoTexture:Landroid/view/TextureView;

.field private videoTextureState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

.field protected voPlayer:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardVOPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->CAMERA_DISTANCE:I

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->completedAudioPlaybackForReveal:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->onMediaPlaybackComplete()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->startVideoPlaybackRevealAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->onVideoPlaybackComplete()V

    return-void
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;)Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTextureState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    return-object p1
.end method

.method private createTextureView()V
    .locals 4

    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOpaque(Z)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTexture:Landroid/view/TextureView;

    return-void
.end method

.method private downloadVideo(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WPCardLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Downloading video - url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/log/IkoLogUtils;->reportIkoVideoLoadStarted(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->wordPartyVideoCard:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v2, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$5;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$5;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->fetchAndCacheResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    return-void
.end method

.method private endCurrentVideoTextureAnimator()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->currentVideoTextureAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    return-void
.end method

.method private getCardRotationValue(II)F
    .locals 3

    rem-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->cardRotationValue:F

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    div-int/lit8 v1, p2, 0x2

    if-lt p1, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    :cond_1
    div-int/lit8 v1, p1, 0x2

    if-gtz v1, :cond_2

    const/4 v1, -0x1

    :goto_1
    int-to-float v1, v1

    rem-int/lit8 v2, p1, 0x2

    if-gtz v2, :cond_3

    :goto_2
    mul-float/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    neg-float v0, v0

    goto :goto_2
.end method

.method private getCardSpacingMultiplier(I)F
    .locals 4

    const-wide v0, 0x3ff3333340000000L    # 1.2000000476837158

    rsub-int/lit8 v2, p1, 0x4

    add-int/lit8 v2, v2, 0x1

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private getCardXPosition(II)F
    .locals 2

    rem-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->cardWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->padding:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_0

    neg-float v0, v0

    goto :goto_0
.end method

.method private getCardYPosition(II)F
    .locals 2

    const/4 v0, 0x2

    if-gt p2, v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->cardHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->padding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    div-int/lit8 v1, p1, 0x2

    if-gtz v1, :cond_0

    neg-float v0, v0

    goto :goto_0
.end method

.method private getRecapCardXPosition(II)F
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getRecapExitCardXPosition(II)F

    move-result v0

    goto :goto_0
.end method

.method private getRecapCardYPosition(II)F
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-nez p1, :cond_0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->padding:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenAspectRatio(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private getRecapExitCardXPosition(II)F
    .locals 2

    div-int/lit8 v0, p2, 0x2

    sub-int v0, p1, v0

    int-to-float v0, v0

    rem-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getCardSpacingMultiplier(I)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private getRecapExitCardYPosition(II)F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "WPCardLayout"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->initProperties()V

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->storeViews(Landroid/content/Context;)V

    return-void
.end method

.method private onMediaPlaybackComplete()V
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->completedAudioPlaybackForReveal:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->completedVideoPlaybackForReveal:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->cardListener:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/CardListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->cardListener:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/CardListener;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/CardListener;->onCardRevealComplete(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    :cond_0
    return-void
.end method

.method private onVideoPlaybackComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->completedVideoPlaybackForReveal:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->onMediaPlaybackComplete()V

    return-void
.end method

.method private playVO()V
    .locals 3

    new-instance v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$3;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->voPlayer:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardVOPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->voPlayer:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardVOPlayer;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->audio:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardVOPlayer;->playVO(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;->onComplete(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private playVideo()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->video:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->video:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->video:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setUpVideo(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->onVideoPlaybackComplete()V

    goto :goto_0
.end method

.method private removeViewFromParent(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setUpVideo(Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WPCardLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUpVideo, video url: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTexture:Landroid/view/TextureView;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->removeViewFromParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseResources(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoMaskImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->removeViewFromParent(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->createTextureView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->createVideoMask()V

    new-instance v0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTexture:Landroid/view/TextureView;

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->wordPartyVideoCard:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v6, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$4;

    invoke-direct {v6, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$4;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;-><init>(Landroid/view/TextureView;ZIFLcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->downloadVideo(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->hideVideo()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->onVideoPlaybackComplete()V

    goto :goto_0
.end method

.method private startVideoPlaybackRevealAnimation()V
    .locals 4

    const-string/jumbo v0, "WPCardLayout"

    const-string/jumbo v1, "startVideoPlaybackRevealAnimation"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTextureState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->SHOWING:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTextureState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->SHOWN:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->SHOWING:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTextureState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->endCurrentVideoTextureAnimator()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTexture:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTexture:Landroid/view/TextureView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$6;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->currentVideoTextureAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public calculateRecapAnimation(II)Landroid/animation/AnimatorSet;
    .locals 4

    if-nez p1, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getRecapCardXPosition(II)F

    move-result v1

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getRecapCardYPosition(II)F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getCardAnimation(FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method public calculateRecapExitAnimation(II)Landroid/animation/AnimatorSet;
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getRecapExitCardXPosition(II)F

    move-result v1

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getRecapExitCardYPosition(II)F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getCardAnimation(FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method public calculateRecapInitAnimation(II)Landroid/animation/AnimatorSet;
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setScaleX(F)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setScaleY(F)V

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getRecapExitCardXPosition(II)F

    move-result v1

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getRecapExitCardYPosition(II)F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getCardAnimation(FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method public calculateRevealAnimation(II)Landroid/animation/AnimatorSet;
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getCardXPosition(II)F

    move-result v1

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getCardYPosition(II)F

    move-result v2

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getCardRotationValue(II)F

    move-result v3

    const/4 v4, 0x1

    if-ne p2, v4, :cond_0

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->imageView:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getCardAnimation(FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0

    :cond_1
    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0
.end method

.method protected abstract createVideoMask()V
.end method

.method public flip()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setPivotX(F)V

    sget-object v1, Landroid/view/View;->ROTATION_Y:Landroid/util/Property;

    new-array v2, v6, [F

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->imageView:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    aput v0, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sget-object v1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v2, v6, [F

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getRotation()F

    move-result v4

    mul-float/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v3, Lcom/netflix/mediaclient/ui/iko/wordparty/WPConstants;->CARD_FLIP_ALPHA_VALUE_LIST:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$1;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$1;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$2;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->cardListener:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/CardListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->cardListener:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/CardListener;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/CardListener;->onCardClickStart(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    :cond_0
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_1
    const/high16 v0, -0x3ccc0000    # -180.0f

    goto :goto_0
.end method

.method public getCardAnimation(FFFF)Landroid/animation/AnimatorSet;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v1, v8, [F

    aput p1, v1, v7

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v8, [F

    aput p2, v2, v7

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v2, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v3, v8, [F

    aput p3, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v8, [F

    aput p4, v4, v7

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v8, [F

    aput p4, v5, v7

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x5

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v0, v6, v7

    aput-object v1, v6, v8

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v5
.end method

.method public getWiggleAnimation(I)Landroid/animation/ObjectAnimator;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    sget-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getRotation()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getRotation()F

    move-result v2

    aput v2, v1, v5

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    rem-int/lit8 v1, p1, 0x2

    mul-int/lit8 v1, v1, 0x64

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method protected final hideVideo()V
    .locals 4

    const-string/jumbo v0, "WPCardLayout"

    const-string/jumbo v1, "Hiding video"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTextureState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->HIDING:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTextureState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->HIDDEN:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTexture:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTexture:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->HIDING:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTextureState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->endCurrentVideoTextureAnimator()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTexture:Landroid/view/TextureView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$7;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$7;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->currentVideoTextureAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->onHideVideo()V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected initProperties()V
    .locals 2

    const/high16 v0, 0x45fa0000    # 8000.0f

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setCameraDistance(F)V

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->cardRotationValue:F

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->padding:I

    invoke-static {}, Lcom/netflix/mediaclient/ui/iko/wordparty/WPConstants;->getQuintOutInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->HIDDEN:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTextureState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    return-void
.end method

.method protected abstract onHideVideo()V
.end method

.method protected abstract onVideoPlaybackStarted()V
.end method

.method public releaseResources()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "WPCardLayout"

    const-string/jumbo v1, "releaseResources"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->imageView:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->releaseResources()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseResources()V

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->endCurrentVideoTextureAnimator()V

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->currentVideoTextureAnimator:Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->video:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->audio:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    return-void
.end method

.method public reset(Z)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->imageView:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->reset(Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->hideVideo()V

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setScaleX(F)V

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setScaleY(F)V

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setRotationY(F)V

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setRotation(F)V

    return-void
.end method

.method public revealCard()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WPCardLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "revealCard: playing VO for card - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->completedAudioPlaybackForReveal:Z

    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->completedVideoPlaybackForReveal:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->playVideo()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->playVO()V

    return-void
.end method

.method public setAudio(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->audio:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    return-void
.end method

.method public setCardListener(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/CardListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->cardListener:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/CardListener;

    return-void
.end method

.method public setDrawables(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->imageView:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->setDrawables(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoMaskDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public setVOPlayer(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardVOPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->voPlayer:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardVOPlayer;

    return-void
.end method

.method public setVideo(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->video:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;

    return-void
.end method

.method protected showVideo()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "WPCardLayout"

    const-string/jumbo v1, "Showing video"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTexture:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoMaskImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected abstract storeViews(Landroid/content/Context;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPCardLayout{, currentVideoTextureAnimator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->currentVideoTextureAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", audio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->audio:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->video:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cardWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->cardWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cardHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->cardHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", completedAudioPlaybackForReveal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->completedAudioPlaybackForReveal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", completedVideoPlaybackForReveal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->completedVideoPlaybackForReveal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", imageView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->imageView:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", videoTextureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTextureState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
