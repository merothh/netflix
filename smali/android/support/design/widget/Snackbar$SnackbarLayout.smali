.class public Landroid/support/design/widget/Snackbar$SnackbarLayout;
.super Landroid/widget/LinearLayout;
.source "Snackbar.java"


# instance fields
.field private mActionView:Landroid/widget/Button;

.field private mMaxInlineActionWidth:I

.field private mMaxWidth:I

.field private mMessageView:Landroid/widget/TextView;

.field private mOnAttachStateChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;

.field private mOnLayoutChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 680
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 681
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 684
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 685
    sget-object v0, Landroid/support/design/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 686
    sget v1, Landroid/support/design/R$styleable;->SnackbarLayout_android_maxWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMaxWidth:I

    .line 687
    sget v1, Landroid/support/design/R$styleable;->SnackbarLayout_maxActionInlineWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMaxInlineActionWidth:I

    .line 689
    sget v1, Landroid/support/design/R$styleable;->SnackbarLayout_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    sget v1, Landroid/support/design/R$styleable;->SnackbarLayout_elevation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 693
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 695
    invoke-virtual {p0, v3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setClickable(Z)V

    .line 700
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/design/R$layout;->design_layout_snackbar_include:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 702
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 704
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 708
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 709
    new-instance v0, Landroid/support/design/widget/Snackbar$SnackbarLayout$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout$1;-><init>(Landroid/support/design/widget/Snackbar$SnackbarLayout;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 720
    return-void
.end method

.method private static updateTopBottomPadding(Landroid/view/View;II)V
    .locals 2

    .prologue
    .line 845
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isPaddingRelative(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    .line 848
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    .line 846
    invoke-static {p0, v0, p1, v1, p2}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 853
    :goto_0
    return-void

    .line 850
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 851
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 850
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private updateViewsWithinLayout(III)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 831
    const/4 v0, 0x0

    .line 832
    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getOrientation()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 833
    invoke-virtual {p0, p1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setOrientation(I)V

    move v0, v1

    .line 836
    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    if-ne v2, p2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    .line 837
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    if-eq v2, p3, :cond_2

    .line 838
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-static {v0, p2, p3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->updateTopBottomPadding(Landroid/view/View;II)V

    move v0, v1

    .line 841
    :cond_2
    return v0
.end method


# virtual methods
.method animateChildrenIn(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 772
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 773
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p1

    .line 774
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 776
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 777
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 778
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p1

    .line 779
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 781
    :cond_0
    return-void
.end method

.method animateChildrenOut(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 784
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 785
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p1

    .line 786
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 788
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 789
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 790
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p1

    .line 791
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 793
    :cond_0
    return-void
.end method

.method getActionView()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    return-object v0
.end method

.method getMessageView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 805
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 806
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnAttachStateChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnAttachStateChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;

    invoke-interface {v0, p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 810
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 811
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 815
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 816
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnAttachStateChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnAttachStateChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;

    invoke-interface {v0, p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    .line 819
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 724
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 725
    sget v0, Landroid/support/design/R$id;->snackbar_text:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    .line 726
    sget v0, Landroid/support/design/R$id;->snackbar_action:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    .line 727
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 797
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 798
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnLayoutChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnLayoutChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIII)V

    .line 801
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 739
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 741
    iget v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMaxWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMaxWidth:I

    if-le v0, v1, :cond_0

    .line 742
    iget v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMaxWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 743
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 746
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->design_snackbar_padding_vertical_2lines:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 748
    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Landroid/support/design/R$dimen;->design_snackbar_padding_vertical:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 750
    iget-object v4, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    if-le v4, v2, :cond_2

    move v4, v2

    .line 753
    :goto_0
    if-eqz v4, :cond_3

    iget v5, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMaxInlineActionWidth:I

    if-lez v5, :cond_3

    iget-object v5, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    .line 754
    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMaxInlineActionWidth:I

    if-le v5, v6, :cond_3

    .line 755
    sub-int v1, v0, v1

    invoke-direct {p0, v2, v0, v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->updateViewsWithinLayout(III)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 766
    :goto_1
    if-eqz v0, :cond_1

    .line 767
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 769
    :cond_1
    return-void

    :cond_2
    move v4, v3

    .line 750
    goto :goto_0

    .line 760
    :cond_3
    if-eqz v4, :cond_4

    .line 761
    :goto_2
    invoke-direct {p0, v3, v0, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->updateViewsWithinLayout(III)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 762
    goto :goto_1

    :cond_4
    move v0, v1

    .line 760
    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method setOnAttachStateChangeListener(Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnAttachStateChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;

    .line 827
    return-void
.end method

.method setOnLayoutChangeListener(Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnLayoutChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;

    .line 823
    return-void
.end method
