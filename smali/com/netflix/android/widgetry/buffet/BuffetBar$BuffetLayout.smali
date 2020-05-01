.class public Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;
.super Landroid/widget/LinearLayout;
.source "BuffetBar.java"


# instance fields
.field private mActionView:Landroid/widget/Button;

.field private mMaxInlineActionWidth:I

.field private mMaxWidth:I

.field private mMessageView:Landroid/widget/TextView;

.field private mOnAttachStateChangeListener:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnAttachStateChangeListener;

.field private mOnLayoutChangeListener:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 727
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 730
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 731
    sget-object v0, Lcom/netflix/android/widgetry/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 732
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->SnackbarLayout_android_maxWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMaxWidth:I

    .line 733
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->SnackbarLayout_maxActionInlineWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMaxInlineActionWidth:I

    .line 735
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->SnackbarLayout_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->SnackbarLayout_elevation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 739
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 741
    invoke-virtual {p0, v3}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->setClickable(Z)V

    .line 746
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netflix/android/widgetry/R$layout;->design_layout_buffet_include:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 748
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 750
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 754
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 755
    new-instance v0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$1;

    invoke-direct {v0, p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$1;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 766
    return-void
.end method

.method private static updateTopBottomPadding(Landroid/view/View;II)V
    .locals 2

    .prologue
    .line 891
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isPaddingRelative(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    .line 894
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    .line 892
    invoke-static {p0, v0, p1, v1, p2}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 899
    :goto_0
    return-void

    .line 896
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 897
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 896
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private updateViewsWithinLayout(III)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 877
    const/4 v0, 0x0

    .line 878
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getOrientation()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 879
    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->setOrientation(I)V

    move v0, v1

    .line 882
    :cond_0
    iget-object v2, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    if-ne v2, p2, :cond_1

    iget-object v2, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMessageView:Landroid/widget/TextView;

    .line 883
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    if-eq v2, p3, :cond_2

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMessageView:Landroid/widget/TextView;

    invoke-static {v0, p2, p3}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->updateTopBottomPadding(Landroid/view/View;II)V

    move v0, v1

    .line 887
    :cond_2
    return v0
.end method


# virtual methods
.method animateChildrenIn(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 818
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMessageView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 819
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMessageView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p1

    .line 820
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 822
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mActionView:Landroid/widget/Button;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 824
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mActionView:Landroid/widget/Button;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p1

    .line 825
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 827
    :cond_0
    return-void
.end method

.method animateChildrenOut(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 830
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMessageView:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 831
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMessageView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p1

    .line 832
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 834
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mActionView:Landroid/widget/Button;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 836
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mActionView:Landroid/widget/Button;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p1

    .line 837
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 839
    :cond_0
    return-void
.end method

.method getActionView()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mActionView:Landroid/widget/Button;

    return-object v0
.end method

.method getMessageView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 851
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 852
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mOnAttachStateChangeListener:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mOnAttachStateChangeListener:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnAttachStateChangeListener;

    invoke-interface {v0, p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 856
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 857
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 861
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 862
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mOnAttachStateChangeListener:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mOnAttachStateChangeListener:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnAttachStateChangeListener;

    invoke-interface {v0, p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    .line 865
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 770
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 771
    sget v0, Lcom/netflix/android/widgetry/R$id;->snackbar_text:I

    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMessageView:Landroid/widget/TextView;

    .line 772
    sget v0, Lcom/netflix/android/widgetry/R$id;->snackbar_action:I

    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mActionView:Landroid/widget/Button;

    .line 773
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 843
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 844
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mOnLayoutChangeListener:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mOnLayoutChangeListener:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnLayoutChangeListener;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIII)V

    .line 847
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 785
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 787
    iget v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMaxWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMaxWidth:I

    if-le v0, v1, :cond_0

    .line 788
    iget v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMaxWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 789
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 792
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/android/widgetry/R$dimen;->buffetbar_padding_vertical_2lines:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 794
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/netflix/android/widgetry/R$dimen;->buffetbar_padding_vertical:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 796
    iget-object v4, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    if-le v4, v2, :cond_2

    move v4, v2

    .line 799
    :goto_0
    if-eqz v4, :cond_3

    iget v5, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMaxInlineActionWidth:I

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mActionView:Landroid/widget/Button;

    .line 800
    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mMaxInlineActionWidth:I

    if-le v5, v6, :cond_3

    .line 801
    sub-int v1, v0, v1

    invoke-direct {p0, v2, v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->updateViewsWithinLayout(III)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 812
    :goto_1
    if-eqz v0, :cond_1

    .line 813
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 815
    :cond_1
    return-void

    :cond_2
    move v4, v3

    .line 796
    goto :goto_0

    .line 806
    :cond_3
    if-eqz v4, :cond_4

    .line 807
    :goto_2
    invoke-direct {p0, v3, v0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->updateViewsWithinLayout(III)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 808
    goto :goto_1

    :cond_4
    move v0, v1

    .line 806
    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method setOnAttachStateChangeListener(Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnAttachStateChangeListener;)V
    .locals 0

    .prologue
    .line 872
    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mOnAttachStateChangeListener:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnAttachStateChangeListener;

    .line 873
    return-void
.end method

.method setOnLayoutChangeListener(Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnLayoutChangeListener;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->mOnLayoutChangeListener:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnLayoutChangeListener;

    .line 869
    return-void
.end method
