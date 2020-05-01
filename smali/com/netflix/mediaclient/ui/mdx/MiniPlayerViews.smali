.class public Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;
.super Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;
.source "MiniPlayerViews.java"


# instance fields
.field indicator:Lcom/viewpagerindicator/CirclePageIndicator;

.field mementoGroup:Landroid/view/View;

.field mementoTabs:Landroid/view/View;

.field pager:Lcom/viewpagerindicator/android/osp/ViewPager;

.field puller:Landroid/view/View;

.field pullerContainer:Landroid/view/View;

.field titleExpanded:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)V

    .line 25
    return-void
.end method

.method public static colorWithAlpha(IF)I
    .locals 1

    .prologue
    .line 124
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, p0

    return v0
.end method

.method private fadePullerContainer(F)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->pullerContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 115
    const/16 v0, 0x99

    .line 116
    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 118
    shl-int/lit8 v0, v0, 0x18

    or-int/lit8 v0, v0, 0x0

    .line 119
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->pullerContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method protected findViews()V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->findViews()V

    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f021a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/android/osp/ViewPager;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f021b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f0221

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->mementoGroup:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f022b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->puller:Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f0222

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->titleExpanded:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->content:Landroid/view/ViewGroup;

    const v1, 0x7f0f021c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->mementoTabs:Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f0f01f3

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->pullerContainer:Landroid/view/View;

    .line 36
    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f0300aa

    return v0
.end method

.method public getSlidingPanelDragView()Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->puller:Landroid/view/View;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->init()V

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->titleGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->titleGroup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/kubrick/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->titleGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->titleGroup:Landroid/view/View;

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->titleExpanded:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48
    :cond_0
    return-void
.end method

.method protected setBifHeight(I)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method protected setBifWidth(I)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method protected translateTitleGroup(F)V
    .locals 7

    .prologue
    const v6, 0x7f0a01d5

    const/high16 v5, 0x3f800000    # 1.0f

    .line 75
    sub-float v0, v5, p1

    .line 76
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    .line 79
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/kubrick/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 82
    neg-int v2, v2

    int-to-float v2, v2

    sub-float v3, v5, p1

    mul-float/2addr v2, v3

    .line 83
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    const v4, 0x3db851ec    # 0.09f

    mul-float/2addr v3, v4

    .line 85
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->mementoGroup:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 86
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->mementoGroup:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setY(F)V

    .line 87
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->mementoGroup:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->title:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->title:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->subtitle:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->playcardCaret:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 94
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->playcardCaret:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 95
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_5

    .line 96
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->playcardCaret:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->playcardCaret:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a01d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setY(F)V

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->puller:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->puller:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 106
    :cond_4
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->fadePullerContainer(F)V

    .line 107
    return-void

    .line 98
    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->playcardCaret:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method

.method protected updateViewsForSeekBarUsage(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    if-eqz p1, :cond_1

    .line 129
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->auxControlsGroup:Landroid/view/View;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->playcardControlsGroup:Landroid/view/View;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->titleGroup:Landroid/view/View;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->deviceNameGroup:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->playcardCaret:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->titleExpanded:Landroid/view/View;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->mementoTabs:Landroid/view/View;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->fadeOut([Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->deviceNameGroup:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 141
    new-array v0, v4, [Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->deviceNameGroup:Landroid/view/View;

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->fadeOutAndHide([Landroid/view/View;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->auxControlsGroup:Landroid/view/View;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->playcardControlsGroup:Landroid/view/View;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->titleGroup:Landroid/view/View;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->pager:Lcom/viewpagerindicator/android/osp/ViewPager;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->deviceNameGroup:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->playcardCaret:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->titleExpanded:Landroid/view/View;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->mementoTabs:Landroid/view/View;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;->fadeInAndShow([Landroid/view/View;)V

    goto :goto_0
.end method
