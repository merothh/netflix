.class public Landroid/support/design/widget/FloatingActionButton$Behavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<",
        "Landroid/support/design/widget/FloatingActionButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_DEFAULT:Z = true


# instance fields
.field private mAutoHideEnabled:Z

.field private mInternalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 537
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mAutoHideEnabled:Z

    .line 539
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 542
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 543
    sget-object v0, Landroid/support/design/R$styleable;->FloatingActionButton_Behavior_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 545
    sget v1, Landroid/support/design/R$styleable;->FloatingActionButton_Behavior_Layout_behavior_autoHide:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mAutoHideEnabled:Z

    .line 548
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 549
    return-void
.end method

.method private static isBottomSheet(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 597
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 598
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 599
    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 600
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    instance-of v0, v0, Landroid/support/design/widget/BottomSheetBehavior;

    .line 602
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private offsetIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 715
    iget-object v3, p2, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    .line 717
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    if-lez v0, :cond_2

    .line 719
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 723
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    iget v5, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    if-lt v1, v4, :cond_3

    .line 725
    iget v1, v3, Landroid/graphics/Rect;->right:I

    .line 730
    :goto_0
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getBottom()I

    move-result v4

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    iget v6, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_4

    .line 732
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 738
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 739
    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 741
    :cond_1
    if-eqz v1, :cond_2

    .line 742
    invoke-static {p2, v1}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 745
    :cond_2
    return-void

    .line 726
    :cond_3
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v1

    iget v4, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    if-gt v1, v4, :cond_5

    .line 728
    iget v1, v3, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    goto :goto_0

    .line 733
    :cond_4
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v4

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    if-gt v4, v0, :cond_0

    .line 735
    iget v0, v3, Landroid/graphics/Rect;->top:I

    neg-int v2, v0

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method private shouldUpdateVisibility(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 611
    .line 612
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 613
    iget-boolean v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mAutoHideEnabled:Z

    if-nez v2, :cond_0

    move v0, v1

    .line 629
    :goto_0
    return v0

    .line 617
    :cond_0
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getAnchorId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v0, v2, :cond_1

    move v0, v1

    .line 620
    goto :goto_0

    .line 624
    :cond_1
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getUserSetVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 626
    goto :goto_0

    .line 629
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateFabVisibilityForAppBarLayout(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 634
    invoke-direct {p0, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->shouldUpdateVisibility(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 653
    :goto_0
    return v0

    .line 638
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    .line 639
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    .line 643
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    .line 644
    invoke-static {p1, p2, v1}, Landroid/support/design/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 646
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getMinimumHeightForVisibleOverlappingContent()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 648
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mInternalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    invoke-virtual {p3, v1, v0}, Landroid/support/design/widget/FloatingActionButton;->hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    .line 653
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 651
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mInternalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    invoke-virtual {p3, v1, v0}, Landroid/support/design/widget/FloatingActionButton;->show(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    goto :goto_1
.end method

.method private updateFabVisibilityForBottomSheet(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 658
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->shouldUpdateVisibility(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 668
    :goto_0
    return v0

    .line 662
    :cond_0
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 663
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    if-ge v2, v0, :cond_1

    .line 664
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mInternalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    invoke-virtual {p2, v0, v1}, Landroid/support/design/widget/FloatingActionButton;->hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    .line 668
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 666
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mInternalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    invoke-virtual {p2, v0, v1}, Landroid/support/design/widget/FloatingActionButton;->show(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    goto :goto_1
.end method


# virtual methods
.method public getInsetDodgeRect(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/Rect;)Z
    .locals 5

    .prologue
    .line 701
    iget-object v0, p2, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    .line 702
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    .line 703
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    .line 704
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getRight()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 705
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getBottom()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v0

    .line 702
    invoke-virtual {p3, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 706
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getInsetDodgeRect(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 529
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->getInsetDodgeRect(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public isAutoHideEnabled()Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mAutoHideEnabled:Z

    return v0
.end method

.method public onAttachedToLayoutParams(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V
    .locals 1

    .prologue
    .line 576
    iget v0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-nez v0, :cond_0

    .line 579
    const/16 v0, 0x50

    iput v0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 581
    :cond_0
    return-void
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 586
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_1

    .line 589
    check-cast p3, Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0, p1, p3, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->updateFabVisibilityForAppBarLayout(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z

    .line 593
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 590
    :cond_1
    invoke-static {p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->isBottomSheet(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    invoke-direct {p0, p3, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->updateFabVisibilityForBottomSheet(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    goto :goto_0
.end method

.method public bridge synthetic onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 529
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z
    .locals 5

    .prologue
    .line 675
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    .line 676
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 677
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 678
    instance-of v4, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v4, :cond_1

    .line 679
    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->updateFabVisibilityForAppBarLayout(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 690
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 692
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->offsetIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)V

    .line 693
    const/4 v0, 0x1

    return v0

    .line 683
    :cond_1
    invoke-static {v0}, Landroid/support/design/widget/FloatingActionButton$Behavior;->isBottomSheet(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 684
    invoke-direct {p0, v0, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->updateFabVisibilityForBottomSheet(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 676
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 529
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z

    move-result v0

    return v0
.end method

.method public setAutoHideEnabled(Z)V
    .locals 0

    .prologue
    .line 560
    iput-boolean p1, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mAutoHideEnabled:Z

    .line 561
    return-void
.end method

.method setInternalAutoHideListener(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mInternalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    .line 608
    return-void
.end method