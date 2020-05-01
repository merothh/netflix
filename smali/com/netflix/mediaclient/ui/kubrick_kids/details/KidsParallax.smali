.class Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;
.super Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;
.source "KidsParallax.java"


# static fields
.field private static final TOOLBAR_FADE_DURATION_MS:I = 0x12c

.field private static final TRACKER_VIEW_FADE_INTO_ACTIONBAR_FADEIN_DURATION_MS:I = 0x12c

.field private static final TRACKER_VIEW_FADE_INTO_ACTIONBAR_FADEOUT_DURATION_MS:I = 0x12c

.field private static final TRACKING_VIEW_FINAL_X_POS:I = -0x3c


# instance fields
.field private animating:Z

.field private isLatched:Z

.field private shadow:Landroid/view/View;

.field private toolbarView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 9

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, v6

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;-><init>(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;IIILandroid/view/View;)V

    invoke-virtual {p0, v6}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->setApplyToolBarGradientTransform(Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->isLatched:Z

    return p1
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->animating:Z

    return p1
.end method

.method private fadeInActionBarColor()V
    .locals 6

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->isLatched:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->animating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->animating:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    new-instance v2, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax$1;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax$1;-><init>(Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;Landroid/graphics/drawable/TransitionDrawable;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method private fadeOutActionbarColor()V
    .locals 2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->isLatched:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->animating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->isLatched:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method


# virtual methods
.method protected getLatchPosition()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->trackingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->trackingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->trackingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->getDefaultActionBarHeight(Landroid/content/Context;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTrackerViewFinalXPosition()I
    .locals 1

    const/16 v0, -0x3c

    return v0
.end method

.method protected getTrackerViewLatchFadeinDuration()I
    .locals 1

    const/16 v0, 0x12c

    return v0
.end method

.method protected getTrackerViewLatchFadeoutDuration()I
    .locals 1

    const/16 v0, 0x12c

    return v0
.end method

.method protected onHeaderShown()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->trackingView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->fadeOutActionbarColor()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->shadow:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->shadow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected onItemsShown()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->trackingView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->fadeInActionBarColor()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->shadow:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->shadow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected onTrackingViewLatched()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->trackingView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->fadeInActionBarColor()V

    :cond_0
    return-void
.end method

.method protected onTrackingViewUnlatched()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->trackingView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->fadeOutActionbarColor()V

    :cond_0
    return-void
.end method

.method protected setInitialToolbarColor()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->shadow:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/api/Api16Util;->setBackgroundDrawableCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected setToolbarColor()V
    .locals 0

    return-void
.end method

.method public setToolbarColor(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->onHeaderShown()V

    :cond_0
    return-void
.end method
