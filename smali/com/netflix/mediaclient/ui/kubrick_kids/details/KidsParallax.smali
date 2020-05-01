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

    .prologue
    const/4 v6, 0x0

    .line 28
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

    .line 31
    invoke-virtual {p0, v6}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->setApplyToolBarGradientTransform(Z)V

    .line 32
    return-void
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;Z)Z
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->isLatched:Z

    return p1
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;Z)Z
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->animating:Z

    return p1
.end method

.method private fadeInActionBarColor()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 109
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->isLatched:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->animating:Z

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 112
    if-eqz v0, :cond_0

    .line 113
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->animating:Z

    .line 114
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 115
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    new-instance v2, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax$1;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax$1;-><init>(Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;Landroid/graphics/drawable/TransitionDrawable;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method private fadeOutActionbarColor()V
    .locals 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->isLatched:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->animating:Z

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 139
    if-eqz v0, :cond_0

    .line 140
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 141
    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->isLatched:Z

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method


# virtual methods
.method protected getLatchPosition()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->trackingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->trackingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->trackingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->getDefaultActionBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTrackerViewFinalXPosition()I
    .locals 1

    .prologue
    .line 102
    const/16 v0, -0x3c

    return v0
.end method

.method protected getTrackerViewLatchFadeinDuration()I
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x12c

    return v0
.end method

.method protected getTrackerViewLatchFadeoutDuration()I
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0x12c

    return v0
.end method

.method protected onHeaderShown()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->trackingView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->fadeOutActionbarColor()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->shadow:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->shadow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :cond_1
    return-void
.end method

.method protected onItemsShown()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->trackingView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->fadeInActionBarColor()V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->shadow:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->shadow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :cond_1
    return-void
.end method

.method protected onTrackingViewLatched()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->trackingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->fadeInActionBarColor()V

    .line 73
    :cond_0
    return-void
.end method

.method protected onTrackingViewUnlatched()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->trackingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->fadeOutActionbarColor()V

    .line 79
    :cond_0
    return-void
.end method

.method protected setInitialToolbarColor()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->shadow:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/api/Api16Util;->setBackgroundDrawableCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 42
    :cond_0
    return-void
.end method

.method protected setToolbarColor()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public setToolbarColor(I)V
    .locals 0

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->onHeaderShown()V

    .line 67
    :cond_0
    return-void
.end method
