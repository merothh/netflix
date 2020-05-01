.class public Lcom/netflix/mediaclient/android/widget/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# instance fields
.field private mHorizontalSpacing:I

.field private mMaxWidth:I

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/FlowLayout;->mMaxWidth:I

    sget-object v0, Lcom/netflix/mediaclient/R$styleable;->FlowLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/FlowLayout;->mHorizontalSpacing:I

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/FlowLayout;->mVerticalSpacing:I

    const/4 v0, 0x2

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/FlowLayout;->mMaxWidth:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/FlowLayout;->mMaxWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;

    return v0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->generateDefaultLayoutParams()Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;
    .locals 3

    new-instance v0, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;

    iget v4, v0, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;->x:I

    iget v5, v0, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;->y:I

    iget v6, v0, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;->x:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget v0, v0, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;->y:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 19

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->getPaddingLeft()I

    move-result v4

    sub-int v5, v3, v4

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->getLayoutDirection()I

    move-result v13

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/netflix/mediaclient/android/widget/FlowLayout;->mMaxWidth:I

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/netflix/mediaclient/android/widget/FlowLayout;->mMaxWidth:I

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v5, v3

    :cond_0
    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->getPaddingTop()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->getPaddingLeft()I

    move-result v9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->getChildCount()I

    move-result v14

    const/4 v3, 0x0

    move v12, v3

    move v3, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    :goto_1
    if-ge v12, v14, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v11, v0, :cond_2

    :goto_2
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    move v4, v3

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/netflix/mediaclient/android/widget/FlowLayout;->mHorizontalSpacing:I

    iget v11, v3, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;->horizontalSpacing:I

    if-ltz v11, :cond_3

    iget v6, v3, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;->horizontalSpacing:I

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v8

    if-le v11, v5, :cond_4

    move-object/from16 v0, p0

    iget v11, v0, Lcom/netflix/mediaclient/android/widget/FlowLayout;->mVerticalSpacing:I

    add-int/2addr v7, v11

    add-int v11, v9, v7

    const/4 v9, 0x0

    sub-int v7, v8, v6

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->getPaddingLeft()I

    move-result v8

    const/4 v7, 0x1

    move/from16 v18, v9

    move v9, v11

    move/from16 v11, v18

    :goto_3
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v13, v0, :cond_5

    sub-int v16, v5, v8

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v3, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;->x:I

    :goto_4
    iput v9, v3, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;->y:I

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v6

    add-int/2addr v8, v3

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v18, v6

    move v6, v7

    move v7, v3

    move/from16 v3, v18

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    move/from16 v18, v11

    move v11, v7

    move/from16 v7, v18

    goto :goto_3

    :cond_5
    iput v8, v3, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;->x:I

    goto :goto_4

    :cond_6
    if-nez v6, :cond_7

    sub-int v3, v8, v3

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->getPaddingRight()I

    move-result v3

    add-int v6, v10, v3

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v7

    add-int v7, v9, v3

    const/4 v3, 0x1

    if-ne v13, v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_8

    if-eq v5, v6, :cond_8

    sub-int/2addr v5, v6

    const/4 v3, 0x0

    move v4, v3

    :goto_5
    if-ge v4, v14, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;

    iget v8, v3, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;->x:I

    sub-int/2addr v8, v5

    iput v8, v3, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;->x:I

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_5

    :cond_8
    move/from16 v0, p1

    invoke-static {v6, v0}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->resolveSize(II)I

    move-result v3

    move/from16 v0, p2

    invoke-static {v7, v0}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->resolveSize(II)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->setMeasuredDimension(II)V

    return-void
.end method
