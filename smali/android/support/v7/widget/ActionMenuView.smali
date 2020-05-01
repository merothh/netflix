.class public Landroid/support/v7/widget/ActionMenuView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;
.implements Landroid/support/v7/view/menu/MenuView;


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 80
    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    .line 81
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 82
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 83
    iput v2, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    .line 84
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 400
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 402
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    .line 404
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 405
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 407
    instance-of v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Landroid/support/v7/view/menu/ActionMenuItemView;

    .line 409
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v1

    if-eqz v1, :cond_5

    move v5, v4

    .line 412
    :goto_1
    if-lez p2, :cond_6

    if-eqz v5, :cond_0

    if-lt p2, v3, :cond_6

    .line 413
    :cond_0
    mul-int v1, p1, p2

    const/high16 v7, -0x80000000

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 415
    invoke-virtual {p0, v1, v6}, Landroid/view/View;->measure(II)V

    .line 417
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 418
    div-int v1, v7, p1

    .line 419
    rem-int/2addr v7, p1

    if-eqz v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 420
    :cond_1
    if-eqz v5, :cond_2

    if-ge v1, v3, :cond_2

    move v1, v3

    .line 423
    :cond_2
    :goto_2
    iget-boolean v3, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v3, :cond_3

    if-eqz v5, :cond_3

    move v2, v4

    .line 424
    :cond_3
    iput-boolean v2, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 426
    iput v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 427
    mul-int v0, v1, p1

    .line 428
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Landroid/view/View;->measure(II)V

    .line 430
    return v1

    .line 407
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    move v5, v2

    .line 409
    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 34

    .prologue
    .line 174
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 175
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 176
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 178
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    .line 179
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingBottom()I

    move-result v9

    add-int v19, v8, v9

    .line 181
    const/4 v8, -0x2

    move/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/support/v7/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v24

    .line 184
    sub-int v25, v6, v7

    .line 187
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    div-int v9, v25, v6

    .line 188
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    rem-int v6, v25, v6

    .line 190
    if-nez v9, :cond_0

    .line 192
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 383
    :goto_0
    return-void

    .line 196
    :cond_0
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    div-int/2addr v6, v9

    add-int v26, v7, v6

    .line 199
    const/16 v16, 0x0

    .line 200
    const/4 v15, 0x0

    .line 201
    const/4 v10, 0x0

    .line 202
    const/4 v7, 0x0

    .line 203
    const/4 v11, 0x0

    .line 206
    const-wide/16 v12, 0x0

    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v27

    .line 209
    const/4 v6, 0x0

    move/from16 v18, v6

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 210
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 211
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v14, 0x8

    if-ne v6, v14, :cond_1

    move v8, v7

    move-wide v6, v12

    move/from16 v12, v16

    move v13, v9

    move v9, v15

    .line 209
    :goto_2
    add-int/lit8 v14, v18, 0x1

    move/from16 v18, v14

    move v15, v9

    move/from16 v16, v12

    move v9, v13

    move-wide v12, v6

    move v7, v8

    goto :goto_1

    .line 213
    :cond_1
    instance-of v0, v8, Landroid/support/v7/view/menu/ActionMenuItemView;

    move/from16 v20, v0

    .line 214
    add-int/lit8 v14, v7, 0x1

    .line 216
    if-eqz v20, :cond_2

    .line 219
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v6, v7, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 222
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 223
    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 224
    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 225
    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 226
    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 227
    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 228
    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 229
    if-eqz v20, :cond_3

    move-object v7, v8

    check-cast v7, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v7}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 232
    iget-boolean v7, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    .line 234
    :goto_4
    move/from16 v0, v26

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v8, v0, v7, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v20

    .line 237
    move/from16 v0, v20

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 238
    iget-boolean v7, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v7, :cond_23

    add-int/lit8 v7, v10, 0x1

    .line 239
    :goto_5
    iget-boolean v6, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v6, :cond_22

    const/4 v6, 0x1

    .line 241
    :goto_6
    sub-int v11, v9, v20

    .line 242
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move/from16 v0, v16

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 243
    const/4 v8, 0x1

    move/from16 v0, v20

    if-ne v0, v8, :cond_21

    const/4 v8, 0x1

    shl-int v8, v8, v18

    int-to-long v8, v8

    or-long/2addr v8, v12

    move v12, v10

    move v13, v11

    move v10, v7

    move v11, v6

    move-wide v6, v8

    move v9, v15

    move v8, v14

    goto/16 :goto_2

    .line 229
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    move v7, v9

    .line 232
    goto :goto_4

    .line 248
    :cond_5
    if-eqz v11, :cond_6

    const/4 v6, 0x2

    if-ne v7, v6, :cond_6

    const/4 v6, 0x1

    move v8, v6

    .line 253
    :goto_7
    const/16 v18, 0x0

    move-wide/from16 v20, v12

    move/from16 v19, v9

    .line 254
    :goto_8
    if-lez v10, :cond_20

    if-lez v19, :cond_20

    .line 255
    const v14, 0x7fffffff

    .line 256
    const-wide/16 v12, 0x0

    .line 257
    const/4 v9, 0x0

    .line 258
    const/4 v6, 0x0

    move/from16 v22, v6

    :goto_9
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    .line 259
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 260
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 263
    iget-boolean v0, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v28, v0

    if-nez v28, :cond_7

    move v6, v9

    move v9, v14

    .line 258
    :goto_a
    add-int/lit8 v14, v22, 0x1

    move/from16 v22, v14

    move v14, v9

    move v9, v6

    goto :goto_9

    .line 248
    :cond_6
    const/4 v6, 0x0

    move v8, v6

    goto :goto_7

    .line 266
    :cond_7
    iget v0, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v0, v14, :cond_8

    .line 267
    iget v9, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 268
    const/4 v6, 0x1

    shl-int v6, v6, v22

    int-to-long v12, v6

    .line 269
    const/4 v6, 0x1

    goto :goto_a

    .line 270
    :cond_8
    iget v6, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v6, v14, :cond_1f

    .line 271
    const/4 v6, 0x1

    shl-int v6, v6, v22

    int-to-long v0, v6

    move-wide/from16 v28, v0

    or-long v12, v12, v28

    .line 272
    add-int/lit8 v6, v9, 0x1

    move v9, v14

    goto :goto_a

    .line 277
    :cond_9
    or-long v20, v20, v12

    .line 279
    move/from16 v0, v19

    if-le v9, v0, :cond_c

    move-wide/from16 v12, v20

    .line 308
    :goto_b
    if-nez v11, :cond_10

    const/4 v6, 0x1

    if-ne v7, v6, :cond_10

    const/4 v6, 0x1

    .line 309
    :goto_c
    if-lez v19, :cond_18

    const-wide/16 v8, 0x0

    cmp-long v8, v12, v8

    if-eqz v8, :cond_18

    add-int/lit8 v7, v7, -0x1

    move/from16 v0, v19

    if-lt v0, v7, :cond_a

    if-nez v6, :cond_a

    const/4 v7, 0x1

    if-le v15, v7, :cond_18

    .line 311
    :cond_a
    invoke-static {v12, v13}, Ljava/lang/Long;->bitCount(J)I

    move-result v7

    int-to-float v7, v7

    .line 313
    if-nez v6, :cond_1d

    .line 315
    const-wide/16 v8, 0x1

    and-long/2addr v8, v12

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_b

    .line 316
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 317
    iget-boolean v6, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v6, :cond_b

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v7, v6

    .line 319
    :cond_b
    const/4 v6, 0x1

    add-int/lit8 v8, v27, -0x1

    shl-int/2addr v6, v8

    int-to-long v8, v6

    and-long/2addr v8, v12

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_1d

    .line 320
    add-int/lit8 v6, v27, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 321
    iget-boolean v6, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v6, :cond_1d

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float v6, v7, v6

    .line 325
    :goto_d
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_11

    mul-int v7, v19, v26

    int-to-float v7, v7

    div-float v6, v7, v6

    float-to-int v6, v6

    move v7, v6

    .line 328
    :goto_e
    const/4 v6, 0x0

    move v9, v6

    move/from16 v8, v18

    :goto_f
    move/from16 v0, v27

    if-ge v9, v0, :cond_19

    .line 329
    const/4 v6, 0x1

    shl-int/2addr v6, v9

    int-to-long v10, v6

    and-long/2addr v10, v12

    const-wide/16 v14, 0x0

    cmp-long v6, v10, v14

    if-nez v6, :cond_12

    move v6, v8

    .line 328
    :goto_10
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move v8, v6

    goto :goto_f

    .line 282
    :cond_c
    add-int/lit8 v22, v14, 0x1

    .line 284
    const/4 v6, 0x0

    move v14, v6

    move/from16 v9, v19

    move-wide/from16 v18, v20

    :goto_11
    move/from16 v0, v27

    if-ge v14, v0, :cond_f

    .line 285
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 286
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 287
    const/16 v21, 0x1

    shl-int v21, v21, v14

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v28, v0

    and-long v28, v28, v12

    const-wide/16 v30, 0x0

    cmp-long v21, v28, v30

    if-nez v21, :cond_d

    .line 289
    iget v6, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v0, v22

    if-ne v6, v0, :cond_1e

    const/4 v6, 0x1

    shl-int/2addr v6, v14

    int-to-long v0, v6

    move-wide/from16 v20, v0

    or-long v18, v18, v20

    move v6, v9

    .line 284
    :goto_12
    add-int/lit8 v9, v14, 0x1

    move v14, v9

    move v9, v6

    goto :goto_11

    .line 293
    :cond_d
    if-eqz v8, :cond_e

    iget-boolean v0, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_e

    .line 295
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v21, v0

    add-int v21, v21, v26

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 297
    :cond_e
    iget v0, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    iput v0, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 298
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 299
    add-int/lit8 v6, v9, -0x1

    goto :goto_12

    .line 302
    :cond_f
    const/4 v6, 0x1

    move-wide/from16 v20, v18

    move/from16 v18, v6

    move/from16 v19, v9

    .line 303
    goto/16 :goto_8

    .line 308
    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_c

    .line 325
    :cond_11
    const/4 v6, 0x0

    move v7, v6

    goto/16 :goto_e

    .line 331
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 332
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 333
    instance-of v10, v10, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v10, :cond_14

    .line 335
    iput v7, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 336
    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 337
    if-nez v9, :cond_13

    iget-boolean v8, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v8, :cond_13

    .line 340
    neg-int v8, v7

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 342
    :cond_13
    const/4 v6, 0x1

    goto/16 :goto_10

    .line 343
    :cond_14
    iget-boolean v10, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v10, :cond_15

    .line 344
    iput v7, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 345
    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 346
    neg-int v8, v7

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 347
    const/4 v6, 0x1

    goto/16 :goto_10

    .line 352
    :cond_15
    if-eqz v9, :cond_16

    .line 353
    div-int/lit8 v10, v7, 0x2

    iput v10, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 355
    :cond_16
    add-int/lit8 v10, v27, -0x1

    if-eq v9, v10, :cond_17

    .line 356
    div-int/lit8 v10, v7, 0x2

    iput v10, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    :cond_17
    move v6, v8

    goto/16 :goto_10

    :cond_18
    move/from16 v8, v18

    .line 365
    :cond_19
    if-eqz v8, :cond_1b

    .line 366
    const/4 v6, 0x0

    move v7, v6

    :goto_13
    move/from16 v0, v27

    if-ge v7, v0, :cond_1b

    .line 367
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 368
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 370
    iget-boolean v9, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v9, :cond_1a

    .line 366
    :goto_14
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_13

    .line 372
    :cond_1a
    iget v9, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int v9, v9, v26

    iget v6, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v6, v9

    .line 373
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move/from16 v0, v24

    invoke-virtual {v8, v6, v0}, Landroid/view/View;->measure(II)V

    goto :goto_14

    .line 378
    :cond_1b
    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v6, :cond_1c

    .line 382
    :goto_15
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    :cond_1c
    move/from16 v16, v17

    goto :goto_15

    :cond_1d
    move v6, v7

    goto/16 :goto_d

    :cond_1e
    move v6, v9

    goto/16 :goto_12

    :cond_1f
    move v6, v9

    move v9, v14

    goto/16 :goto_a

    :cond_20
    move-wide/from16 v12, v20

    goto/16 :goto_b

    :cond_21
    move v8, v14

    move v9, v15

    move-wide/from16 v32, v12

    move v12, v10

    move v13, v11

    move v11, v6

    move v10, v7

    move-wide/from16 v6, v32

    goto/16 :goto_2

    :cond_22
    move v6, v11

    goto/16 :goto_6

    :cond_23
    move v7, v10

    goto/16 :goto_5
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 604
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 710
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 732
    const/4 v0, 0x0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 577
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 579
    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 580
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 585
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 590
    if-eqz p1, :cond_2

    .line 591
    instance-of v0, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    check-cast p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/support/v7/widget/ActionMenuView$LayoutParams;)V

    .line 594
    :goto_0
    iget v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 595
    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 599
    :cond_0
    :goto_1
    return-object v0

    .line 591
    :cond_1
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 599
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 609
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 610
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 611
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 3

    .prologue
    .line 638
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v0, :cond_0

    .line 639
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 640
    new-instance v1, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 641
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    new-instance v2, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/support/v7/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 642
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 643
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 644
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionMenuPresenter;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 646
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 647
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->setMenuView(Landroid/support/v7/widget/ActionMenuView;)V

    .line 650
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0

    .line 644
    :cond_1
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/widget/ActionMenuView;)V

    goto :goto_0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 561
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 562
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 716
    if-nez p1, :cond_0

    move v0, v2

    .line 728
    :goto_0
    return v0

    .line 719
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 720
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 722
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    instance-of v3, v0, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_1

    .line 723
    check-cast v0, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v0}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v0

    or-int/2addr v2, v0

    .line 725
    :cond_1
    if-lez p1, :cond_2

    instance-of v0, v1, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 726
    check-cast v0, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v0}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v0

    or-int/2addr v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 627
    return-void
.end method

.method public invokeItem(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 126
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 129
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 131
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 134
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 540
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 541
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->dismissPopupMenus()V

    .line 542
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 15

    .prologue
    .line 435
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-nez v0, :cond_1

    .line 436
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v7

    .line 441
    sub-int v0, p5, p3

    div-int/lit8 v8, v0, 0x2

    .line 442
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getDividerWidth()I

    move-result v9

    .line 444
    const/4 v5, 0x0

    .line 445
    const/4 v4, 0x0

    .line 446
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v1

    sub-int v3, v0, v1

    .line 447
    const/4 v1, 0x0

    .line 448
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v10

    .line 449
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_7

    .line 450
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 451
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    move v0, v1

    move v2, v4

    move v1, v3

    move v3, v5

    .line 449
    :goto_2
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v5, v3

    move v3, v1

    move v4, v2

    move v1, v0

    goto :goto_1

    .line 455
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 456
    iget-boolean v2, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v2, :cond_5

    .line 457
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 458
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 459
    add-int/2addr v1, v9

    .line 461
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 464
    if-eqz v10, :cond_4

    .line 465
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v2

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    .line 466
    add-int v2, v0, v1

    .line 471
    :goto_3
    div-int/lit8 v13, v12, 0x2

    sub-int v13, v8, v13

    .line 472
    add-int/2addr v12, v13

    .line 473
    invoke-virtual {v11, v0, v13, v2, v12}, Landroid/view/View;->layout(IIII)V

    .line 475
    sub-int v1, v3, v1

    .line 476
    const/4 v0, 0x1

    move v2, v4

    move v3, v5

    .line 477
    goto :goto_2

    .line 468
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v13

    sub-int/2addr v2, v13

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v0

    .line 469
    sub-int v0, v2, v1

    goto :goto_3

    .line 478
    :cond_5
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v11, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v11

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v2, v0

    .line 479
    add-int v0, v5, v2

    .line 480
    sub-int v2, v3, v2

    .line 481
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 482
    add-int/2addr v0, v9

    .line 484
    :cond_6
    add-int/lit8 v3, v4, 0x1

    move v14, v1

    move v1, v2

    move v2, v3

    move v3, v0

    move v0, v14

    goto :goto_2

    .line 488
    :cond_7
    const/4 v0, 0x1

    if-ne v7, v0, :cond_8

    if-nez v1, :cond_8

    .line 490
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 492
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 493
    sub-int v3, p4, p2

    div-int/lit8 v3, v3, 0x2

    .line 494
    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    .line 495
    div-int/lit8 v4, v2, 0x2

    sub-int v4, v8, v4

    .line 496
    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 500
    :cond_8
    if-eqz v1, :cond_9

    const/4 v0, 0x0

    :goto_4
    sub-int v0, v4, v0

    .line 501
    const/4 v1, 0x0

    if-lez v0, :cond_a

    div-int v0, v3, v0

    :goto_5
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 503
    if-eqz v10, :cond_c

    .line 504
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    .line 505
    const/4 v0, 0x0

    move v2, v0

    :goto_6
    if-ge v2, v7, :cond_0

    .line 506
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 507
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 508
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_f

    iget-boolean v5, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v5, :cond_b

    move v0, v1

    .line 505
    :goto_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_6

    .line 500
    :cond_9
    const/4 v0, 0x1

    goto :goto_4

    .line 501
    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    .line 512
    :cond_b
    iget v5, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v5

    .line 513
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 514
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 515
    div-int/lit8 v9, v6, 0x2

    sub-int v9, v8, v9

    .line 516
    sub-int v10, v1, v5

    add-int/2addr v6, v9

    invoke-virtual {v4, v10, v9, v1, v6}, Landroid/view/View;->layout(IIII)V

    .line 517
    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v0, v5

    add-int/2addr v0, v3

    sub-int v0, v1, v0

    goto :goto_7

    .line 520
    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v1

    .line 521
    const/4 v0, 0x0

    move v2, v0

    :goto_8
    if-ge v2, v7, :cond_0

    .line 522
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 523
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 524
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_e

    iget-boolean v5, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v5, :cond_d

    move v0, v1

    .line 521
    :goto_9
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_8

    .line 528
    :cond_d
    iget v5, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    .line 529
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 530
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 531
    div-int/lit8 v9, v6, 0x2

    sub-int v9, v8, v9

    .line 532
    add-int v10, v1, v5

    add-int/2addr v6, v9

    invoke-virtual {v4, v1, v9, v10, v6}, Landroid/view/View;->layout(IIII)V

    .line 533
    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v0, v5

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    goto :goto_9

    :cond_e
    move v0, v1

    goto :goto_9

    :cond_f
    move v0, v1

    goto :goto_7
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    iget-boolean v3, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    .line 144
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    .line 146
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eq v3, v0, :cond_0

    .line 147
    iput v2, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 152
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 153
    iget-boolean v3, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v0, v3, :cond_1

    .line 154
    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 155
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 158
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v3

    .line 159
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v0, :cond_3

    if-lez v3, :cond_3

    .line 160
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ActionMenuView;->onMeasureExactFormat(II)V

    .line 170
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 144
    goto :goto_0

    :cond_3
    move v1, v2

    .line 163
    :goto_2
    if-ge v1, v3, :cond_4

    .line 164
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 166
    iput v2, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v2, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 163
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 168
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    goto :goto_1
.end method

.method public peekMenu()Landroid/support/v7/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 738
    return-void
.end method

.method public setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 659
    iput-object p2, p0, Landroid/support/v7/widget/ActionMenuView;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .line 660
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    .line 138
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 550
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 551
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 552
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    .prologue
    .line 572
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuView;->mReserveOverflow:Z

    .line 573
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 95
    iput p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    .line 96
    if-nez p1, :cond_1

    .line 97
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 1

    .prologue
    .line 118
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 119
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->setMenuView(Landroid/support/v7/widget/ActionMenuView;)V

    .line 120
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
