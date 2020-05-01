.class public Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "DetailsPageParallaxScrollListener.java"


# static fields
.field public static final DEFAULT_ACTION_BAR_ALPHA_RANGE:I = 0x4c

.field public static final OPAQUE:I = 0xff

.field static final PARALLAX_EFFECT_PERCENT:F = 40.0f

.field private static final TAG:Ljava/lang/String; = "DetailsPageParallaxScrollListener"

.field private static final TRACKER_VIEW_FADE_INTO_ACTIONBAR_DURATION_FASTSCROLL:I = 0x64

.field private static final TRACKER_VIEW_FADE_INTO_ACTIONBAR_FADEIN_DURATION:I = 0x12c

.field private static final TRACKER_VIEW_FADE_INTO_ACTIONBAR_FADEOUT_DURATION:I = 0x12c

.field public static final TRANSPARENT:I


# instance fields
.field private actionBarFadeRatio:F

.field private actionBarPosition:I

.field private anchorView:Landroid/view/View;

.field private animating:Z

.field private applyToolBarGradientTransform:Z

.field private currentVelocity:J

.field private dy:I

.field private endingAlpha:I

.field private fadeOutDuration:I

.field protected initialBottomColor:I

.field protected initialTopColor:I

.field private islatched:Z

.field lastParallaxPosition:F

.field private lastTime:J

.field private latchPosition:I

.field private originalTrackingViewParent:Landroid/view/ViewGroup;

.field private final parallaxViews:[Landroid/view/View;

.field protected final recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private scrollStateChanged:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$IScrollStateChanged;

.field private final seasonsSpinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

.field protected final trackingView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;IIILandroid/view/View;)V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->applyToolBarGradientTransform:Z

    .line 126
    iput p7, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->endingAlpha:I

    .line 127
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->seasonsSpinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    .line 128
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->parallaxViews:[Landroid/view/View;

    .line 129
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    .line 130
    iput-object p8, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->anchorView:Landroid/view/View;

    .line 132
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 133
    iput p5, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->initialTopColor:I

    .line 134
    iput p6, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->initialBottomColor:I

    .line 136
    if-eqz p4, :cond_0

    .line 137
    invoke-virtual {p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->originalTrackingViewParent:Landroid/view/ViewGroup;

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->init()V

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->detachTrackingViewFromOriginalParent()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->reAttachTrackingViewOriginalParent()V

    return-void
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->animating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;)Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->seasonsSpinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    return-object v0
.end method

.method private adjustAlpha(II)I
    .locals 4

    .prologue
    .line 415
    int-to-float v0, p2

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 416
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 418
    rsub-int v2, v1, 0xff

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 419
    add-int/2addr v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private adjustForParallax(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 521
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    neg-int v0, p2

    int-to-float v0, v0

    int-to-float v1, p2

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 528
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->lastParallaxPosition:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 529
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 530
    iput v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->lastParallaxPosition:F

    goto :goto_0
.end method

.method private animateTrackingView(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$ItrackingViewAnimationActions;)V
    .locals 4

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->getTrackerViewLatchFadeoutDuration()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->fadeOutDuration:I

    .line 291
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->currentVelocity:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 292
    const/16 v0, 0x64

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->fadeOutDuration:I

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 296
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->fadeOutDuration:I

    int-to-long v2, v1

    .line 297
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 298
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$3;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$ItrackingViewAnimationActions;)V

    .line 299
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 332
    return-void
.end method

.method private calculateActionBarFadeRatio()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 437
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 440
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->endingAlpha:I

    int-to-float v1, v1

    div-float v0, v1, v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->actionBarFadeRatio:F

    .line 441
    return-void
.end method

.method public static createDefault(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;)Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;
    .locals 9

    .prologue
    .line 94
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    .line 99
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0xff

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;-><init>(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;IIILandroid/view/View;)V

    .line 94
    return-object v0
.end method

.method public static createParallaxOnly(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;)Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 111
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    .line 116
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v7, v6

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;-><init>(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;IIILandroid/view/View;)V

    .line 111
    return-object v0
.end method

.method private detachTrackingViewFromOriginalParent()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 339
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    .line 344
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 345
    if-eqz v0, :cond_0

    .line 346
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    new-instance v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    const/16 v3, 0x30

    invoke-direct {v2, v4, v4, v3}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->islatched:Z

    .line 349
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->getTrackerViewFinalXPosition()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method

.method private getActionBarPosition()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    .line 156
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 157
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->getLocationOnScreen([I)V

    .line 158
    const/4 v0, 0x1

    aget v0, v1, v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->actionBarPosition:I

    goto :goto_0
.end method

.method private getScrollY()I
    .locals 8

    .prologue
    const v4, 0x7f0f0014

    const/4 v2, 0x0

    .line 444
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 477
    :goto_0
    return v2

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 452
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 453
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->isViewHeader(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    .line 455
    if-nez v0, :cond_2

    .line 456
    iget v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->endingAlpha:I

    .line 457
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->seasonsSpinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    if-eqz v0, :cond_1

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 458
    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 459
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->postSetSpinnerSelectionRunnable(I)V

    .line 462
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->onItemsShown()V

    move v0, v1

    .line 477
    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 464
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->actionBarFadeRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 466
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->parallaxViews:[Landroid/view/View;

    array-length v5, v4

    move v1, v2

    :goto_2
    if-ge v1, v5, :cond_4

    aget-object v6, v4, v1

    .line 467
    if-eqz v6, :cond_3

    .line 468
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->adjustForParallax(Landroid/view/View;I)V

    .line 466
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 472
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->onHeaderShown()V

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private init()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->setLatchPosition()V

    .line 145
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->getActionBarPosition()V

    .line 146
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->calculateActionBarFadeRatio()V

    .line 147
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->setInitialToolbarColor()V

    .line 148
    return-void
.end method

.method private postSetSpinnerSelectionRunnable(I)V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->seasonsSpinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    if-nez v0, :cond_0

    .line 516
    :goto_0
    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->seasonsSpinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$4;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$4;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;I)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private reAttachTrackingViewOriginalParent()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 358
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->originalTrackingViewParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 363
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->originalTrackingViewParent:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 365
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->originalTrackingViewParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x10

    invoke-direct {v2, v5, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 367
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->islatched:Z

    goto :goto_0
.end method

.method private setLatchPosition()V
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->getLatchPosition()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->latchPosition:I

    .line 167
    return-void
.end method

.method private setTrackerViewPos()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->anchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 223
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->anchorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 225
    aget v1, v0, v3

    iget v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->latchPosition:I

    if-lt v1, v2, :cond_1

    .line 226
    aget v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->setTrackingViewUnlatchedPosition(I)V

    .line 227
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->onTrackingViewUnlatched()V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->setTrackingViewLatchedPosition()V

    .line 231
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->onTrackingViewLatched()V

    goto :goto_0
.end method


# virtual methods
.method protected getLatchPosition()I
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->actionBarPosition:I

    add-int/2addr v0, v1

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScrollDeltaY()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->dy:I

    return v0
.end method

.method protected getTrackerViewFinalXPosition()I
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method protected getTrackerViewFinalYPosition()I
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 184
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->actionBarPosition:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method protected getTrackerViewLatchFadeinDuration()I
    .locals 1

    .prologue
    .line 240
    const/16 v0, 0x12c

    return v0
.end method

.method protected getTrackerViewLatchFadeoutDuration()I
    .locals 1

    .prologue
    .line 244
    const/16 v0, 0x12c

    return v0
.end method

.method protected onHeaderShown()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method protected onItemsShown()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .prologue
    .line 374
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 376
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->scrollStateChanged:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$IScrollStateChanged;

    if-eqz v0, :cond_0

    .line 377
    packed-switch p2, :pswitch_data_0

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 379
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->scrollStateChanged:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$IScrollStateChanged;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$IScrollStateChanged;->onScrollStop()V

    goto :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 6

    .prologue
    .line 197
    if-eqz p3, :cond_0

    .line 198
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->dy:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->dy:I

    .line 201
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 202
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->lastTime:J

    sub-long v2, v0, v2

    int-to-long v4, p3

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->currentVelocity:J

    .line 203
    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->lastTime:J

    .line 206
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->applyToolBarGradientTransform:Z

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->setToolbarColor()V

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->setListenerScrollState()V

    .line 211
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->setTrackerViewPos()V

    .line 212
    return-void
.end method

.method protected onTrackingViewLatched()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method protected onTrackingViewUnlatched()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public resetDynamicViewsYPosition()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 481
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->parallaxViews:[Landroid/view/View;

    array-length v1, v1

    if-ge v1, v2, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    const-string/jumbo v1, "DetailsPageParallaxScrollListener"

    const-string/jumbo v2, "Resetting dynamic views\' Y-position"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 487
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->parallaxViews:[Landroid/view/View;

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 488
    if-eqz v4, :cond_2

    .line 489
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->adjustForParallax(Landroid/view/View;I)V

    .line 487
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 493
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->setTrackerViewPos()V

    goto :goto_0
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->anchorView:Landroid/view/View;

    .line 73
    return-void
.end method

.method public setApplyToolBarGradientTransform(Z)V
    .locals 0

    .prologue
    .line 535
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->applyToolBarGradientTransform:Z

    .line 536
    return-void
.end method

.method protected setInitialToolbarColor()V
    .locals 0

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->setToolbarColor()V

    .line 216
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->setListenerScrollState()V

    .line 217
    return-void
.end method

.method protected setListenerScrollState()V
    .locals 1

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->scrollStateChanged:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$IScrollStateChanged;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->scrollStateChanged:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$IScrollStateChanged;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$IScrollStateChanged;->onScrollStart()V

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->scrollStateChanged:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$IScrollStateChanged;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->scrollStateChanged:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$IScrollStateChanged;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$IScrollStateChanged;->onScrollMinReached()V

    goto :goto_0
.end method

.method public setOnScrollStateChangedListener(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$IScrollStateChanged;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->scrollStateChanged:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$IScrollStateChanged;

    .line 189
    return-void
.end method

.method protected setToolbarColor()V
    .locals 1

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->setToolbarColor(I)V

    .line 407
    return-void
.end method

.method public setToolbarColor(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 388
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->initialTopColor:I

    aput v1, v0, v5

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->initialBottomColor:I

    aput v1, v0, v6

    .line 390
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 393
    iget v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->endingAlpha:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 395
    iget v3, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->initialTopColor:I

    invoke-direct {p0, v3, v2}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->adjustAlpha(II)I

    move-result v3

    .line 396
    iget v4, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->initialBottomColor:I

    invoke-direct {p0, v4, v2}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->adjustAlpha(II)I

    move-result v2

    .line 398
    aput v3, v0, v5

    .line 399
    aput v2, v0, v6

    .line 401
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 402
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 403
    return-void
.end method

.method protected setTrackingViewLatchedPosition()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->islatched:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->animating:Z

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$1;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->animateTrackingView(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$ItrackingViewAnimationActions;)V

    goto :goto_0
.end method

.method protected setTrackingViewUnlatchedPosition(I)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->trackingView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->islatched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->animating:Z

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$2;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->animateTrackingView(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$ItrackingViewAnimationActions;)V

    goto :goto_0
.end method
