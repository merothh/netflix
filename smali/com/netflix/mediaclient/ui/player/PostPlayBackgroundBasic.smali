.class public Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;
.super Lcom/netflix/mediaclient/ui/player/PostPlayBackground;
.source "PostPlayBackgroundBasic.java"


# static fields
.field private static final DEFAULT_OFFSET_MS:I = 0x2710

.field private static final SIXTY_PERCENT:D = 0.6


# instance fields
.field protected background:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

.field protected mOffsetMs:I

.field private final mPanAnimationInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private playAction:Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

.field protected playButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PostPlayBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->mPanAnimationInterpolator:Landroid/view/animation/DecelerateInterpolator;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->mOffsetMs:I

    return-void
.end method


# virtual methods
.method protected findViews()V
    .locals 1

    const v0, 0x7f0f02ac

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->background:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    const v0, 0x7f0f02b0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->playButton:Landroid/widget/ImageView;

    return-void
.end method

.method public startBackgroundAutoPan()V
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->background:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->background:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->background:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenHeightInPixels(Landroid/content/Context;)I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->background:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->background:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    const v2, 0x3fe39581    # 1.778f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->background:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->background:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->background:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->mOffsetMs:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->mPanAnimationInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method protected startTimer()V
    .locals 0

    return-void
.end method

.method protected stopTimer()V
    .locals 0

    return-void
.end method

.method public updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x1

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->background:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->background:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->MDX:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    invoke-virtual {p4, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v6

    :goto_0
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setCutomCroppingEnabled(Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getBackgroundAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getBackgroundAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->background:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getBackgroundAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->merchStill:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->playButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v3

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->playButton:Landroid/widget/ImageView;

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/model/leafs/PostPlayAction;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Landroid/view/View;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->playAction:Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    move v0, v8

    goto :goto_0
.end method
