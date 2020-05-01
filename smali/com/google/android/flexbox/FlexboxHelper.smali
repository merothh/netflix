.class Lcom/google/android/flexbox/FlexboxHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;,
        Lcom/google/android/flexbox/FlexboxHelper$Order;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mChildrenFrozen:[Z

.field private final mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

.field mIndexToFlexLine:[I

.field mMeasureSpecCache:[J

.field private mMeasuredSizeCache:[J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/google/android/flexbox/FlexContainer;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    return-void
.end method

.method private addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;",
            "Lcom/google/android/flexbox/FlexLine;",
            "II)V"
        }
    .end annotation

    .line 867
    iput p4, p2, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    .line 868
    iget-object p4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p4, p2}, Lcom/google/android/flexbox/FlexContainer;->onNewFlexLineAdded(Lcom/google/android/flexbox/FlexLine;)V

    .line 869
    iput p3, p2, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    .line 870
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkSizeConstraints(Landroid/view/View;I)V
    .locals 6

    .line 883
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 884
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 885
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 887
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    .line 889
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v1

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    .line 890
    :cond_0
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v3

    if-le v1, v3, :cond_1

    .line 892
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 895
    :goto_1
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 897
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v2

    goto :goto_2

    .line 898
    :cond_2
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v5

    if-le v2, v5, :cond_3

    .line 900
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v2

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    if-eqz v4, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    .line 903
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 905
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 906
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 907
    invoke-direct {p0, p2, v1, v0, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 908
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0, p2, p1}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    :cond_4
    return-void
.end method

.method private constructFlexLinesForAlignContentCenter(Ljava/util/List;II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;"
        }
    .end annotation

    sub-int/2addr p2, p3

    .line 1551
    div-int/lit8 p2, p2, 0x2

    .line 1552
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1553
    new-instance v0, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 1554
    iput p2, v0, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1555
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    if-nez v1, :cond_0

    .line 1557
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1559
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    .line 1560
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1561
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1562
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p3
.end method

.method private createOrders(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexboxHelper$Order;",
            ">;"
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 161
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2, v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexItem;

    .line 163
    new-instance v3, Lcom/google/android/flexbox/FlexboxHelper$Order;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/flexbox/FlexboxHelper$Order;-><init>(Lcom/google/android/flexbox/FlexboxHelper$1;)V

    .line 164
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    move-result v2

    iput v2, v3, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    .line 165
    iput v1, v3, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    .line 166
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private ensureChildrenFrozen(I)V
    .locals 2

    .line 985
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    if-nez v0, :cond_1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    const/16 p1, 0xa

    .line 986
    :cond_0
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    goto :goto_0

    .line 987
    :cond_1
    array-length v1, v0

    if-ge v1, p1, :cond_3

    .line 988
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-lt v0, p1, :cond_2

    move p1, v0

    .line 989
    :cond_2
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 991
    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([ZZ)V

    :goto_0
    return-void
.end method

.method private expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 1010
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_15

    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-ge v4, v0, :cond_0

    goto/16 :goto_b

    .line 1013
    :cond_0
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1015
    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v2, v4, v2

    int-to-float v2, v2

    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    div-float/2addr v2, v5

    .line 1016
    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int v5, p5, v5

    iput v5, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-nez p6, :cond_1

    const/high16 v5, -0x80000000

    .line 1029
    iput v5, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1032
    :goto_0
    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-ge v5, v10, :cond_14

    .line 1033
    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v10, v5

    .line 1034
    iget-object v11, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v11, v10}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_13

    .line 1035
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_2

    goto/16 :goto_9

    .line 1038
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/google/android/flexbox/FlexItem;

    .line 1039
    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v13

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const/4 v14, 0x1

    if-eqz v13, :cond_b

    if-ne v13, v14, :cond_3

    goto/16 :goto_4

    .line 1105
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 1106
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v15, :cond_4

    .line 1112
    aget-wide v14, v15, v10

    .line 1113
    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v13

    .line 1115
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1116
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v15, :cond_5

    .line 1118
    aget-wide v14, v15, v10

    .line 1119
    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v14

    .line 1121
    :cond_5
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v15, v15, v10

    if-nez v15, :cond_a

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v15

    cmpl-float v15, v15, v1

    if-lez v15, :cond_a

    int-to-float v13, v13

    .line 1123
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v14

    mul-float v14, v14, v2

    add-float/2addr v13, v14

    .line 1124
    iget v14, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-ne v5, v14, :cond_6

    add-float/2addr v13, v8

    const/4 v8, 0x0

    .line 1128
    :cond_6
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 1129
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v1

    if-le v14, v1, :cond_7

    .line 1137
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v14

    .line 1138
    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aput-boolean v15, v1, v10

    .line 1139
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v6

    sub-float/2addr v1, v6

    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    move v15, v0

    const/4 v6, 0x1

    goto :goto_2

    :cond_7
    int-to-float v1, v14

    sub-float/2addr v13, v1

    add-float/2addr v8, v13

    move v15, v0

    float-to-double v0, v8

    cmpl-double v13, v0, v17

    if-lez v13, :cond_8

    add-int/lit8 v14, v14, 0x1

    sub-double v0, v0, v17

    :goto_1
    double-to-float v0, v0

    move v8, v0

    goto :goto_2

    :cond_8
    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    cmpg-double v13, v0, v19

    if-gez v13, :cond_9

    add-int/lit8 v14, v14, -0x1

    add-double v0, v0, v17

    goto :goto_1

    .line 1150
    :cond_9
    :goto_2
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v1, p1

    invoke-direct {v7, v1, v12, v0}, Lcom/google/android/flexbox/FlexboxHelper;->getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v0

    const/high16 v13, 0x40000000    # 2.0f

    .line 1152
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1154
    invoke-virtual {v11, v0, v13}, Landroid/view/View;->measure(II)V

    .line 1155
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1156
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 1157
    invoke-direct {v7, v10, v0, v13, v11}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1159
    iget-object v0, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0, v10, v11}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    move/from16 v13, v16

    goto :goto_3

    :cond_a
    move/from16 v1, p1

    move v15, v0

    .line 1162
    :goto_3
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v0

    add-int/2addr v14, v0

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v0

    add-int/2addr v14, v0

    iget-object v0, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1163
    invoke-interface {v0, v11}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v0

    add-int/2addr v14, v0

    .line 1161
    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1164
    iget v9, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v10

    add-int/2addr v13, v10

    .line 1165
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v10

    add-int/2addr v13, v10

    add-int/2addr v9, v13

    iput v9, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v13, p2

    move/from16 v21, v15

    goto/16 :goto_8

    :cond_b
    :goto_4
    move/from16 v1, p1

    move v15, v0

    .line 1043
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1044
    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v13, :cond_c

    .line 1050
    aget-wide v0, v13, v10

    invoke-virtual {v7, v0, v1}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v0

    .line 1052
    :cond_c
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1053
    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    move/from16 v21, v15

    if-eqz v13, :cond_d

    .line 1055
    aget-wide v14, v13, v10

    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v1

    .line 1057
    :cond_d
    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v13, v13, v10

    if-nez v13, :cond_12

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_12

    int-to-float v0, v0

    .line 1059
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v1

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    .line 1060
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v13, 0x1

    sub-int/2addr v1, v13

    if-ne v5, v1, :cond_e

    add-float/2addr v0, v8

    const/4 v8, 0x0

    .line 1064
    :cond_e
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1065
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v15

    if-le v1, v15, :cond_f

    .line 1073
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v1

    .line 1074
    iget-object v0, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aput-boolean v13, v0, v10

    .line 1075
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v6

    sub-float/2addr v0, v6

    iput v0, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    const/4 v6, 0x1

    goto :goto_6

    :cond_f
    int-to-float v13, v1

    sub-float/2addr v0, v13

    add-float/2addr v8, v0

    float-to-double v14, v8

    cmpl-double v0, v14, v17

    if-lez v0, :cond_10

    add-int/lit8 v1, v1, 0x1

    sub-double v14, v14, v17

    :goto_5
    double-to-float v0, v14

    move v8, v0

    goto :goto_6

    :cond_10
    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    cmpg-double v0, v14, v19

    if-gez v0, :cond_11

    add-int/lit8 v1, v1, -0x1

    add-double v14, v14, v17

    goto :goto_5

    .line 1086
    :cond_11
    :goto_6
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v13, p2

    invoke-direct {v7, v13, v12, v0}, Lcom/google/android/flexbox/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v0

    const/high16 v14, 0x40000000    # 2.0f

    .line 1088
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1090
    invoke-virtual {v11, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1091
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1092
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 1093
    invoke-direct {v7, v10, v1, v0, v11}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1095
    iget-object v0, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0, v10, v11}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    goto :goto_7

    :cond_12
    move/from16 v13, p2

    move v14, v0

    move v15, v1

    .line 1098
    :goto_7
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v0

    add-int/2addr v15, v0

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v0

    add-int/2addr v15, v0

    iget-object v0, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1099
    invoke-interface {v0, v11}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v0

    add-int/2addr v15, v0

    .line 1097
    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1100
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v9

    add-int/2addr v14, v9

    .line 1101
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v9

    add-int/2addr v14, v9

    add-int/2addr v1, v14

    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1167
    :goto_8
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move v9, v0

    goto :goto_a

    :cond_13
    :goto_9
    move/from16 v13, p2

    move/from16 v21, v0

    :goto_a
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v21

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_14
    move/from16 v13, p2

    move/from16 v21, v0

    if-eqz v6, :cond_15

    .line 1170
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v1, v21

    if-eq v1, v0, :cond_15

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 1173
    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxHelper;->expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    :cond_15
    :goto_b
    return-void
.end method

.method private getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 3

    .line 1377
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1378
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 1379
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    .line 1380
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result p3

    .line 1377
    invoke-interface {v0, p1, v1, p3}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result p1

    .line 1381
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    .line 1382
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 1383
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result p2

    .line 1384
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 1383
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1385
    :cond_0
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 1386
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result p2

    .line 1387
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 1386
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method private getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 3

    .line 1360
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1361
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 1362
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    .line 1363
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result p3

    .line 1360
    invoke-interface {v0, p1, v1, p3}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result p1

    .line 1364
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    .line 1365
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 1366
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result p2

    .line 1367
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 1366
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1368
    :cond_0
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 1369
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result p2

    .line 1370
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 1369
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method private getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 812
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p1

    return p1

    .line 815
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p1

    return p1
.end method

.method private getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 774
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p1

    return p1

    .line 777
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p1

    return p1
.end method

.method private getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 793
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p1

    return p1

    .line 796
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result p1

    return p1
.end method

.method private getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 755
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result p1

    return p1

    .line 758
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p1

    return p1
.end method

.method private getFlexItemSizeCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 735
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result p1

    return p1

    .line 738
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result p1

    return p1
.end method

.method private getFlexItemSizeMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 720
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result p1

    return p1

    .line 723
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result p1

    return p1
.end method

.method private getPaddingEndCross(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 675
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result p1

    return p1

    .line 678
    :cond_0
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingEnd()I

    move-result p1

    return p1
.end method

.method private getPaddingEndMain(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 647
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingEnd()I

    move-result p1

    return p1

    .line 650
    :cond_0
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result p1

    return p1
.end method

.method private getPaddingStartCross(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 661
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result p1

    return p1

    .line 664
    :cond_0
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingStart()I

    move-result p1

    return p1
.end method

.method private getPaddingStartMain(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 633
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingStart()I

    move-result p1

    return p1

    .line 636
    :cond_0
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result p1

    return p1
.end method

.method private getViewMeasuredSizeCross(Landroid/view/View;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 705
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1

    .line 708
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    return p1
.end method

.method private getViewMeasuredSizeMain(Landroid/view/View;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 690
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    return p1

    .line 693
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method private isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z
    .locals 1

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_0

    .line 862
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWrapRequired(Landroid/view/View;IIIILcom/google/android/flexbox/FlexItem;III)Z
    .locals 2

    .line 837
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 840
    :cond_0
    invoke-interface {p6}, Lcom/google/android/flexbox/FlexItem;->isWrapBefore()Z

    move-result p6

    const/4 v0, 0x1

    if-eqz p6, :cond_1

    return v0

    :cond_1
    if-nez p2, :cond_2

    return v1

    .line 846
    :cond_2
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexContainer;->getMaxLine()I

    move-result p2

    const/4 p6, -0x1

    if-eq p2, p6, :cond_3

    add-int/2addr p9, v0

    if-gt p2, p9, :cond_3

    return v1

    .line 852
    :cond_3
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 853
    invoke-interface {p2, p1, p7, p8}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthMainAxis(Landroid/view/View;II)I

    move-result p1

    if-lez p1, :cond_4

    add-int/2addr p5, p1

    :cond_4
    add-int/2addr p4, p5

    if-ge p3, p4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 1193
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1194
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_15

    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-le v4, v1, :cond_0

    goto/16 :goto_9

    .line 1198
    :cond_0
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    div-float/2addr v1, v5

    .line 1200
    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int v5, p5, v5

    iput v5, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-nez p6, :cond_1

    const/high16 v5, -0x80000000

    .line 1213
    iput v5, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1215
    :goto_0
    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-ge v5, v10, :cond_14

    .line 1216
    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v10, v5

    .line 1217
    iget-object v11, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v11, v10}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_13

    .line 1218
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_2

    goto/16 :goto_7

    .line 1221
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/google/android/flexbox/FlexItem;

    .line 1222
    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v13

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const/high16 v19, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    if-eqz v13, :cond_b

    if-ne v13, v14, :cond_3

    goto/16 :goto_3

    .line 1289
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 1290
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v15, :cond_4

    .line 1296
    aget-wide v14, v15, v10

    .line 1297
    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v13

    .line 1299
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1300
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v15, :cond_5

    .line 1302
    aget-wide v14, v15, v10

    .line 1303
    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v14

    .line 1305
    :cond_5
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v15, v15, v10

    if-nez v15, :cond_a

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v15

    cmpl-float v15, v15, v2

    if-lez v15, :cond_a

    int-to-float v13, v13

    .line 1307
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v14

    mul-float v14, v14, v1

    sub-float/2addr v13, v14

    .line 1308
    iget v14, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-ne v5, v14, :cond_6

    add-float/2addr v13, v8

    const/4 v8, 0x0

    .line 1312
    :cond_6
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 1313
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v2

    if-ge v14, v2, :cond_7

    .line 1316
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v14

    .line 1317
    iget-object v2, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aput-boolean v15, v2, v10

    .line 1318
    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v6

    sub-float/2addr v2, v6

    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    move v2, v5

    const/4 v6, 0x1

    goto :goto_1

    :cond_7
    int-to-float v2, v14

    sub-float/2addr v13, v2

    add-float/2addr v8, v13

    move v2, v5

    float-to-double v4, v8

    cmpl-double v13, v4, v17

    if-lez v13, :cond_8

    add-int/lit8 v14, v14, 0x1

    sub-float v8, v8, v19

    goto :goto_1

    :cond_8
    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    cmpg-double v13, v4, v15

    if-gez v13, :cond_9

    add-int/lit8 v14, v14, -0x1

    add-float v8, v8, v19

    .line 1329
    :cond_9
    :goto_1
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v5, p1

    invoke-direct {v7, v5, v12, v4}, Lcom/google/android/flexbox/FlexboxHelper;->getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v4

    const/high16 v13, 0x40000000    # 2.0f

    .line 1332
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1333
    invoke-virtual {v11, v4, v13}, Landroid/view/View;->measure(II)V

    .line 1335
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1336
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 1337
    invoke-direct {v7, v10, v4, v13, v11}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1339
    iget-object v4, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4, v10, v11}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    move v13, v15

    goto :goto_2

    :cond_a
    move v2, v5

    move/from16 v5, p1

    .line 1342
    :goto_2
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v4

    add-int/2addr v14, v4

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v4

    add-int/2addr v14, v4

    iget-object v4, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1343
    invoke-interface {v4, v11}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v4

    add-int/2addr v14, v4

    .line 1341
    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1344
    iget v9, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v10

    add-int/2addr v13, v10

    .line 1345
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v10

    add-int/2addr v13, v10

    add-int/2addr v9, v13

    iput v9, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v14, p2

    goto/16 :goto_6

    :cond_b
    :goto_3
    move v2, v5

    move/from16 v5, p1

    .line 1226
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1227
    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v13, :cond_c

    .line 1233
    aget-wide v14, v13, v10

    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v4

    .line 1235
    :cond_c
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 1236
    iget-object v14, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v14, :cond_d

    .line 1238
    aget-wide v13, v14, v10

    invoke-virtual {v7, v13, v14}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v13

    .line 1240
    :cond_d
    iget-object v14, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v14, v14, v10

    if-nez v14, :cond_12

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_12

    int-to-float v4, v4

    .line 1242
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v13

    mul-float v13, v13, v1

    sub-float/2addr v4, v13

    .line 1243
    iget v13, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    if-ne v2, v13, :cond_e

    add-float/2addr v4, v8

    const/4 v8, 0x0

    .line 1247
    :cond_e
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 1248
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v15

    if-ge v13, v15, :cond_f

    .line 1256
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v13

    .line 1257
    iget-object v4, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aput-boolean v14, v4, v10

    .line 1258
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v6

    sub-float/2addr v4, v6

    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    const/4 v6, 0x1

    goto :goto_4

    :cond_f
    int-to-float v14, v13

    sub-float/2addr v4, v14

    add-float/2addr v8, v4

    float-to-double v14, v8

    cmpl-double v4, v14, v17

    if-lez v4, :cond_10

    add-int/lit8 v13, v13, 0x1

    sub-float v8, v8, v19

    goto :goto_4

    :cond_10
    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    cmpg-double v4, v14, v16

    if-gez v4, :cond_11

    add-int/lit8 v13, v13, -0x1

    add-float v8, v8, v19

    .line 1269
    :cond_11
    :goto_4
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v14, p2

    invoke-direct {v7, v14, v12, v4}, Lcom/google/android/flexbox/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v4

    const/high16 v15, 0x40000000    # 2.0f

    .line 1272
    invoke-static {v13, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1273
    invoke-virtual {v11, v13, v4}, Landroid/view/View;->measure(II)V

    .line 1275
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1276
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 1277
    invoke-direct {v7, v10, v13, v4, v11}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1279
    iget-object v4, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4, v10, v11}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    move/from16 v13, v16

    goto :goto_5

    :cond_12
    move/from16 v14, p2

    move v15, v4

    .line 1282
    :goto_5
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v4

    add-int/2addr v13, v4

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v4

    add-int/2addr v13, v4

    iget-object v4, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1283
    invoke-interface {v4, v11}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v4

    add-int/2addr v13, v4

    .line 1281
    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1284
    iget v9, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v10

    add-int/2addr v15, v10

    .line 1285
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v10

    add-int/2addr v15, v10

    add-int/2addr v9, v15

    iput v9, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1347
    :goto_6
    iget v9, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move v9, v4

    goto :goto_8

    :cond_13
    :goto_7
    move/from16 v14, p2

    move v2, v5

    move/from16 v5, p1

    :goto_8
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, p4

    move v5, v2

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_14
    move/from16 v5, p1

    move/from16 v14, p2

    if-eqz v6, :cond_15

    .line 1350
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-eq v0, v1, :cond_15

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 1353
    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxHelper;->shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    :cond_15
    :goto_9
    return-void
.end method

.method private sortOrdersIntoReorderedIndices(ILjava/util/List;Landroid/util/SparseIntArray;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexboxHelper$Order;",
            ">;",
            "Landroid/util/SparseIntArray;",
            ")[I"
        }
    .end annotation

    .line 197
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 198
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->clear()V

    .line 199
    new-array p1, p1, [I

    .line 201
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/FlexboxHelper$Order;

    .line 202
    iget v2, v1, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    aput v2, p1, v0

    .line 203
    iget v2, v1, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    iget v1, v1, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    invoke-virtual {p3, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private stretchViewHorizontally(Landroid/view/View;II)V
    .locals 3

    .line 1691
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 1692
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v1

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1693
    invoke-interface {v1, p1}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v1

    sub-int/2addr p2, v1

    .line 1694
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1695
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1698
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v0, :cond_0

    .line 1704
    aget-wide v1, v0, p3

    invoke-virtual {p0, v1, v2}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v0

    goto :goto_0

    .line 1706
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 1708
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1710
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1711
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 1713
    invoke-direct {p0, p3, p2, v0, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1714
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p2, p3, p1}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    return-void
.end method

.method private stretchViewVertically(Landroid/view/View;II)V
    .locals 3

    .line 1656
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 1657
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v1

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1658
    invoke-interface {v1, p1}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v1

    sub-int/2addr p2, v1

    .line 1659
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1660
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1663
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v0, :cond_0

    .line 1669
    aget-wide v1, v0, p3

    invoke-virtual {p0, v1, v2}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v0

    goto :goto_0

    .line 1671
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 1673
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1676
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1677
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 1679
    invoke-direct {p0, p3, v0, p2, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1680
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p2, p3, p1}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    return-void
.end method

.method private updateMeasureCache(IIILandroid/view/View;)V
    .locals 1

    .line 1933
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    if-eqz v0, :cond_0

    .line 1934
    invoke-virtual {p0, p2, p3}, Lcom/google/android/flexbox/FlexboxHelper;->makeCombinedLong(II)J

    move-result-wide p2

    aput-wide p2, v0, p1

    .line 1938
    :cond_0
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz p2, :cond_1

    .line 1940
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 1941
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    .line 1939
    invoke-virtual {p0, p3, p4}, Lcom/google/android/flexbox/FlexboxHelper;->makeCombinedLong(II)J

    move-result-wide p3

    aput-wide p3, p2, p1

    :cond_1
    return-void
.end method


# virtual methods
.method calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p6

    .line 387
    iget-object v0, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->isMainAxisDirectionHorizontal()Z

    move-result v15

    .line 389
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 390
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    if-nez p7, :cond_0

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object/from16 v7, p7

    .line 401
    :goto_0
    iput-object v7, v11, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    const/4 v6, -0x1

    if-ne v14, v6, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 405
    :goto_1
    invoke-direct {v10, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingStartMain(Z)I

    move-result v1

    .line 406
    invoke-direct {v10, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingEndMain(Z)I

    move-result v2

    .line 407
    invoke-direct {v10, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingStartCross(Z)I

    move-result v16

    .line 408
    invoke-direct {v10, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingEndCross(Z)I

    move-result v17

    .line 418
    new-instance v3, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v3}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    move/from16 v6, p5

    .line 419
    iput v6, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v2, v1

    .line 420
    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 422
    iget-object v1, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v1

    const/high16 v18, -0x80000000

    move/from16 v22, v0

    const/4 v0, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, -0x80000000

    :goto_2
    if-ge v6, v1, :cond_15

    .line 424
    iget-object v5, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5, v6}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2

    .line 427
    invoke-direct {v10, v6, v1, v3}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 428
    invoke-direct {v10, v7, v3, v6, v0}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    goto :goto_3

    .line 431
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v11, 0x8

    if-ne v4, v11, :cond_4

    .line 432
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    .line 433
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 434
    invoke-direct {v10, v6, v1, v3}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 435
    invoke-direct {v10, v7, v3, v6, v0}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    :cond_3
    :goto_3
    move/from16 v12, p4

    move/from16 v24, v8

    move/from16 v26, v9

    move v5, v13

    move v8, v14

    const/4 v9, -0x1

    const/4 v11, 0x1

    const/16 v27, 0x0

    move-object v14, v7

    move v7, v2

    move v2, v1

    goto/16 :goto_b

    .line 440
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/google/android/flexbox/FlexItem;

    .line 442
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v4

    move/from16 v25, v1

    const/4 v1, 0x4

    if-ne v4, v1, :cond_5

    .line 443
    iget-object v1, v3, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_5
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemSizeMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v1

    .line 448
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getFlexBasisPercent()F

    move-result v4

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v4, v4, v26

    if-eqz v4, :cond_6

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v9, v4, :cond_6

    int-to-float v1, v8

    .line 450
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getFlexBasisPercent()F

    move-result v4

    mul-float v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :cond_6
    if-eqz v15, :cond_7

    .line 459
    iget-object v4, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    const/4 v14, 0x1

    .line 461
    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v24

    add-int v24, v2, v24

    .line 462
    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v26

    add-int v14, v24, v26

    .line 459
    invoke-interface {v4, v12, v14, v1}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v1

    .line 464
    iget-object v4, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    add-int v14, v16, v17

    move/from16 v24, v8

    const/4 v8, 0x1

    .line 466
    invoke-direct {v10, v11, v8}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v26

    add-int v14, v14, v26

    .line 467
    invoke-direct {v10, v11, v8}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v26

    add-int v14, v14, v26

    add-int/2addr v14, v0

    move/from16 v26, v9

    .line 469
    invoke-direct {v10, v11, v8}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemSizeCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    .line 464
    invoke-interface {v4, v13, v14, v9}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v4

    .line 470
    invoke-virtual {v5, v1, v4}, Landroid/view/View;->measure(II)V

    .line 471
    invoke-direct {v10, v6, v1, v4, v5}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    move v9, v1

    const/4 v14, 0x0

    goto :goto_4

    :cond_7
    move/from16 v24, v8

    move/from16 v26, v9

    const/4 v8, 0x1

    .line 473
    iget-object v4, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    add-int v9, v16, v17

    const/4 v14, 0x0

    .line 475
    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v23

    add-int v9, v9, v23

    .line 476
    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v23

    add-int v9, v9, v23

    add-int/2addr v9, v0

    .line 477
    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemSizeCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v8

    .line 473
    invoke-interface {v4, v13, v9, v8}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v4

    .line 478
    iget-object v8, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 480
    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    add-int/2addr v9, v2

    .line 481
    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v23

    add-int v9, v9, v23

    .line 478
    invoke-interface {v8, v12, v9, v1}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v1

    .line 483
    invoke-virtual {v5, v4, v1}, Landroid/view/View;->measure(II)V

    .line 484
    invoke-direct {v10, v6, v4, v1, v5}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    move v9, v1

    .line 486
    :goto_4
    iget-object v1, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1, v6, v5}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 494
    invoke-direct {v10, v5, v6}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    .line 497
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    move/from16 v4, v19

    .line 496
    invoke-static {v4, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v19

    .line 499
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 500
    invoke-direct {v10, v5, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getViewMeasuredSizeMain(Landroid/view/View;Z)I

    move-result v1

    .line 501
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v8

    add-int/2addr v1, v8

    .line 502
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v8

    add-int/2addr v8, v1

    .line 503
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v23

    move v1, v0

    move-object/from16 v0, p0

    move v12, v1

    move/from16 v14, v25

    move-object v1, v5

    move v14, v2

    move/from16 v2, v26

    move-object/from16 v28, v3

    move/from16 v3, v24

    move/from16 v29, v14

    const/4 v14, 0x1

    move-object v14, v5

    const/16 v27, 0x0

    move v5, v8

    move v8, v6

    move-object/from16 p7, v14

    const/4 v14, -0x1

    move-object v6, v11

    move-object v14, v7

    move v7, v8

    move v13, v8

    move/from16 v8, v20

    move/from16 v30, v9

    move/from16 v9, v23

    .line 499
    invoke-direct/range {v0 .. v9}, Lcom/google/android/flexbox/FlexboxHelper;->isWrapRequired(Landroid/view/View;IIIILcom/google/android/flexbox/FlexItem;III)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 504
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v0

    if-lez v0, :cond_9

    if-lez v13, :cond_8

    add-int/lit8 v5, v13, -0x1

    move-object/from16 v3, v28

    goto :goto_5

    :cond_8
    move-object/from16 v3, v28

    const/4 v5, 0x0

    .line 505
    :goto_5
    invoke-direct {v10, v14, v3, v5, v12}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    .line 506
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v0, v12

    goto :goto_6

    :cond_9
    move v0, v12

    :goto_6
    if-eqz v15, :cond_b

    .line 510
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    .line 518
    iget-object v1, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 520
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v2

    iget-object v3, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 521
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 522
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 523
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v3

    move/from16 v5, p3

    move v6, v13

    .line 518
    invoke-interface {v1, v5, v2, v3}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v1

    move-object/from16 v2, p7

    move/from16 v3, v30

    .line 524
    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    .line 525
    invoke-direct {v10, v2, v6}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    goto :goto_7

    :cond_a
    move/from16 v5, p3

    move-object/from16 v2, p7

    move v6, v13

    goto :goto_7

    :cond_b
    move/from16 v5, p3

    move-object/from16 v2, p7

    move v6, v13

    move/from16 v3, v30

    .line 528
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_c

    .line 536
    iget-object v1, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 538
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    move-result v4

    iget-object v7, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v7}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    move-result v7

    add-int/2addr v4, v7

    .line 539
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v7

    add-int/2addr v4, v7

    .line 540
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v7

    add-int/2addr v4, v7

    add-int/2addr v4, v0

    .line 541
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v7

    .line 536
    invoke-interface {v1, v5, v4, v7}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v1

    .line 542
    invoke-virtual {v2, v1, v3}, Landroid/view/View;->measure(II)V

    .line 543
    invoke-direct {v10, v2, v6}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    .line 547
    :cond_c
    :goto_7
    new-instance v3, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v3}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    const/4 v1, 0x1

    .line 548
    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    move/from16 v7, v29

    .line 549
    iput v7, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 550
    iput v6, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    move v12, v0

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    goto :goto_8

    :cond_d
    move/from16 v5, p3

    move-object/from16 v2, p7

    move v6, v13

    move-object/from16 v3, v28

    move/from16 v7, v29

    const/4 v1, 0x1

    .line 554
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/2addr v0, v1

    iput v0, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v0, v20, 0x1

    move/from16 v1, v21

    .line 557
    :goto_8
    iget-object v4, v10, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v4, :cond_e

    .line 558
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v8

    aput v8, v4, v6

    .line 560
    :cond_e
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-direct {v10, v2, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getViewMeasuredSizeMain(Landroid/view/View;Z)I

    move-result v8

    .line 561
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    add-int/2addr v8, v9

    .line 562
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 563
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v8

    add-float/2addr v4, v8

    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 564
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v8

    add-float/2addr v4, v8

    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 566
    iget-object v4, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4, v2, v6, v0, v3}, Lcom/google/android/flexbox/FlexContainer;->onNewFlexItemAdded(Landroid/view/View;IILcom/google/android/flexbox/FlexLine;)V

    .line 569
    invoke-direct {v10, v2, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getViewMeasuredSizeCross(Landroid/view/View;Z)I

    move-result v4

    .line 570
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v8

    add-int/2addr v4, v8

    .line 571
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v8

    add-int/2addr v4, v8

    iget-object v8, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 572
    invoke-interface {v8, v2}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v8

    add-int/2addr v4, v8

    .line 568
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 576
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    if-eqz v15, :cond_10

    .line 579
    iget-object v4, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v4

    const/4 v8, 0x2

    if-eq v4, v8, :cond_f

    .line 580
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 581
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v2

    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v8

    add-int/2addr v2, v8

    .line 580
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    goto :goto_9

    .line 586
    :cond_f
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 587
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v2

    sub-int/2addr v8, v2

    .line 588
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v2

    add-int/2addr v8, v2

    .line 586
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    :cond_10
    :goto_9
    move/from16 v2, v25

    .line 592
    invoke-direct {v10, v6, v2, v3}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 593
    invoke-direct {v10, v14, v3, v6, v12}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    .line 594
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v12, v4

    :cond_11
    move/from16 v8, p6

    const/4 v9, -0x1

    if-eq v8, v9, :cond_12

    .line 598
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_12

    .line 599
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    const/4 v11, 0x1

    sub-int/2addr v4, v11

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexLine;

    iget v4, v4, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    if-lt v4, v8, :cond_13

    if-lt v6, v8, :cond_13

    if-nez v22, :cond_13

    .line 607
    invoke-virtual {v3}, Lcom/google/android/flexbox/FlexLine;->getCrossSize()I

    move-result v4

    neg-int v12, v4

    move v4, v12

    const/16 v22, 0x1

    goto :goto_a

    :cond_12
    const/4 v11, 0x1

    :cond_13
    move v4, v12

    :goto_a
    move/from16 v12, p4

    if-le v4, v12, :cond_14

    if-eqz v22, :cond_14

    move-object/from16 v0, p1

    move/from16 v4, v19

    goto :goto_c

    :cond_14
    move/from16 v20, v0

    move/from16 v21, v1

    move v0, v4

    :goto_b
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v11, p1

    move/from16 v12, p2

    move v1, v2

    move v13, v5

    move v2, v7

    move-object v7, v14

    move/from16 v9, v26

    move v14, v8

    move/from16 v8, v24

    goto/16 :goto_2

    :cond_15
    move/from16 v4, v19

    move-object/from16 v0, p1

    .line 622
    :goto_c
    iput v4, v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mChildState:I

    return-void
.end method

.method calculateHorizontalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;II)V
    .locals 8

    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 217
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    return-void
.end method

.method calculateHorizontalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    .line 244
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    return-void
.end method

.method calculateHorizontalFlexLinesToIndex(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    .line 275
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    return-void
.end method

.method calculateVerticalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;II)V
    .locals 8

    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    .line 291
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    return-void
.end method

.method calculateVerticalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move v5, p5

    move-object v7, p6

    .line 318
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    return-void
.end method

.method calculateVerticalFlexLinesToIndex(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move v6, p5

    move-object v7, p6

    .line 349
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    return-void
.end method

.method clearFlexLines(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;I)V"
        }
    .end annotation

    .line 1965
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v0, v0, p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1972
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-lt v2, v0, :cond_1

    .line 1973
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1976
    :cond_1
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_2

    .line 1978
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_1

    .line 1980
    :cond_2
    invoke-static {p1, p2, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 1983
    :goto_1
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    if-le p2, v0, :cond_3

    .line 1985
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_2

    .line 1987
    :cond_3
    invoke-static {p1, p2, v0, v1, v2}, Ljava/util/Arrays;->fill([JIIJ)V

    :goto_2
    return-void
.end method

.method createReorderedIndices(Landroid/util/SparseIntArray;)[I
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    .line 153
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxHelper;->createOrders(I)Ljava/util/List;

    move-result-object v1

    .line 154
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxHelper;->sortOrdersIntoReorderedIndices(ILjava/util/List;Landroid/util/SparseIntArray;)[I

    move-result-object p1

    return-object p1
.end method

.method createReorderedIndices(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Landroid/util/SparseIntArray;)[I
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    .line 118
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxHelper;->createOrders(I)Ljava/util/List;

    move-result-object v1

    .line 119
    new-instance v2, Lcom/google/android/flexbox/FlexboxHelper$Order;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/flexbox/FlexboxHelper$Order;-><init>(Lcom/google/android/flexbox/FlexboxHelper$1;)V

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 120
    instance-of p1, p3, Lcom/google/android/flexbox/FlexItem;

    if-eqz p1, :cond_0

    .line 122
    check-cast p3, Lcom/google/android/flexbox/FlexItem;

    .line 123
    invoke-interface {p3}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    move-result p1

    iput p1, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    goto :goto_0

    .line 125
    :cond_0
    iput v3, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    :goto_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_3

    if-ne p2, v0, :cond_1

    goto :goto_2

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 131
    iput p2, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    :goto_1
    if-ge p2, v0, :cond_4

    .line 133
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/flexbox/FlexboxHelper$Order;

    iget p3, p1, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    add-int/2addr p3, v3

    iput p3, p1, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 138
    :cond_2
    iput v0, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    goto :goto_3

    .line 129
    :cond_3
    :goto_2
    iput v0, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    .line 140
    :cond_4
    :goto_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v3

    .line 142
    invoke-direct {p0, v0, v1, p4}, Lcom/google/android/flexbox/FlexboxHelper;->sortOrdersIntoReorderedIndices(ILjava/util/List;Landroid/util/SparseIntArray;)[I

    move-result-object p1

    return-object p1
.end method

.method determineCrossSize(III)V
    .locals 11

    .line 1411
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1424
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid flex direction: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1420
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 1421
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    move v10, p2

    move p2, p1

    move p1, v10

    goto :goto_1

    .line 1415
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 1416
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1426
    :goto_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne p1, v4, :cond_15

    .line 1428
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getSumOfCrossSize()I

    move-result p1

    add-int/2addr p1, p3

    .line 1429
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v3, :cond_3

    .line 1430
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/flexbox/FlexLine;

    sub-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    goto/16 :goto_8

    .line 1432
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    if-lt p3, v2, :cond_15

    .line 1433
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p3}, Lcom/google/android/flexbox/FlexContainer;->getAlignContent()I

    move-result p3

    if-eq p3, v3, :cond_14

    if-eq p3, v2, :cond_13

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eq p3, v1, :cond_c

    const/4 v1, 0x4

    if-eq p3, v1, :cond_9

    const/4 v1, 0x5

    if-eq p3, v1, :cond_4

    goto/16 :goto_8

    :cond_4
    if-lt p1, p2, :cond_5

    goto/16 :goto_8

    :cond_5
    sub-int/2addr p2, p1

    int-to-float p1, p2

    .line 1438
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 1440
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_2
    if-ge v5, p2, :cond_15

    .line 1441
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/FlexLine;

    .line 1442
    iget v2, v1, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    int-to-float v2, v2

    add-float/2addr v2, p1

    .line 1443
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    if-ne v5, v8, :cond_6

    add-float/2addr v2, p3

    const/4 p3, 0x0

    .line 1447
    :cond_6
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v9, v8

    sub-float/2addr v2, v9

    add-float/2addr p3, v2

    cmpl-float v2, p3, v7

    if-lez v2, :cond_7

    add-int/lit8 v8, v8, 0x1

    sub-float/2addr p3, v7

    goto :goto_3

    :cond_7
    cmpg-float v2, p3, v4

    if-gez v2, :cond_8

    add-int/lit8 v8, v8, -0x1

    add-float/2addr p3, v7

    .line 1456
    :cond_8
    :goto_3
    iput v8, v1, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    if-lt p1, p2, :cond_a

    .line 1464
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1465
    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/flexbox/FlexboxHelper;->constructFlexLinesForAlignContentCenter(Ljava/util/List;II)Ljava/util/List;

    move-result-object p1

    .line 1464
    invoke-interface {p3, p1}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    goto/16 :goto_8

    :cond_a
    sub-int/2addr p2, p1

    .line 1473
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    .line 1474
    div-int/2addr p2, p1

    .line 1475
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1476
    new-instance p3, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {p3}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 1477
    iput p2, p3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1478
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexLine;

    .line 1479
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1480
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1481
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1483
    :cond_b
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p2, p1}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    goto/16 :goto_8

    :cond_c
    if-lt p1, p2, :cond_d

    goto/16 :goto_8

    :cond_d
    sub-int/2addr p2, p1

    int-to-float p1, p2

    .line 1492
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 1495
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1496
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    const/4 v1, 0x0

    :goto_5
    if-ge v5, p3, :cond_12

    .line 1497
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/flexbox/FlexLine;

    .line 1498
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1500
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    if-eq v5, v8, :cond_11

    .line 1501
    new-instance v8, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v8}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 1502
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v2

    if-ne v5, v9, :cond_e

    add-float/2addr v1, p1

    .line 1506
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    const/4 v1, 0x0

    goto :goto_6

    .line 1510
    :cond_e
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1512
    :goto_6
    iget v9, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    int-to-float v9, v9

    sub-float v9, p1, v9

    add-float/2addr v1, v9

    cmpl-float v9, v1, v7

    if-lez v9, :cond_f

    .line 1515
    iget v9, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v9, v3

    iput v9, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    sub-float/2addr v1, v7

    goto :goto_7

    :cond_f
    cmpg-float v9, v1, v4

    if-gez v9, :cond_10

    .line 1518
    iget v9, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    sub-int/2addr v9, v3

    iput v9, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-float/2addr v1, v7

    .line 1521
    :cond_10
    :goto_7
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1524
    :cond_12
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p1, p2}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    goto :goto_8

    .line 1528
    :cond_13
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1529
    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/flexbox/FlexboxHelper;->constructFlexLinesForAlignContentCenter(Ljava/util/List;II)Ljava/util/List;

    move-result-object p1

    .line 1528
    invoke-interface {p3, p1}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    goto :goto_8

    :cond_14
    sub-int/2addr p2, p1

    .line 1535
    new-instance p1, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {p1}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 1536
    iput p2, p1, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1537
    invoke-interface {v0, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_15
    :goto_8
    return-void
.end method

.method determineMainSize(II)V
    .locals 1

    const/4 v0, 0x0

    .line 916
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(III)V

    return-void
.end method

.method determineMainSize(III)V
    .locals 11

    .line 931
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxHelper;->ensureChildrenFrozen(I)V

    .line 932
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    if-lt p3, v0, :cond_0

    return-void

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v0

    .line 938
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 964
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid flex direction: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 953
    :cond_2
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 954
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-ne v0, v2, :cond_3

    goto :goto_1

    .line 958
    :cond_3
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getLargestMainSize()I

    move-result v1

    .line 960
    :goto_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 961
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v2

    goto :goto_3

    .line 941
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 942
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-ne v0, v2, :cond_5

    goto :goto_2

    .line 946
    :cond_5
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getLargestMainSize()I

    move-result v0

    move v1, v0

    .line 948
    :goto_2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 949
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    const/4 v2, 0x0

    .line 968
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v3, :cond_6

    .line 969
    aget v2, v3, p3

    .line 971
    :cond_6
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p3}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object p3

    .line 972
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v9

    move v10, v2

    :goto_4
    if-ge v10, v9, :cond_8

    .line 973
    invoke-interface {p3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/flexbox/FlexLine;

    .line 974
    iget v2, v5, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-ge v2, v1, :cond_7

    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v6, v1

    move v7, v0

    .line 975
    invoke-direct/range {v2 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v6, v1

    move v7, v0

    .line 978
    invoke-direct/range {v2 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method ensureIndexToFlexLine(I)V
    .locals 2

    .line 1946
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-nez v0, :cond_1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    const/16 p1, 0xa

    .line 1947
    :cond_0
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    goto :goto_0

    .line 1948
    :cond_1
    array-length v1, v0

    if-ge v1, p1, :cond_3

    .line 1949
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-lt v0, p1, :cond_2

    move p1, v0

    .line 1951
    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    :cond_3
    :goto_0
    return-void
.end method

.method ensureMeasureSpecCache(I)V
    .locals 2

    .line 1887
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    if-nez v0, :cond_1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    const/16 p1, 0xa

    .line 1888
    :cond_0
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    goto :goto_0

    .line 1889
    :cond_1
    array-length v1, v0

    if-ge v1, p1, :cond_3

    .line 1890
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-lt v0, p1, :cond_2

    move p1, v0

    .line 1892
    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    :cond_3
    :goto_0
    return-void
.end method

.method ensureMeasuredSizeCache(I)V
    .locals 2

    .line 1877
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-nez v0, :cond_1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    const/16 p1, 0xa

    .line 1878
    :cond_0
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    goto :goto_0

    .line 1879
    :cond_1
    array-length v1, v0

    if-ge v1, p1, :cond_3

    .line 1880
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-lt v0, p1, :cond_2

    move p1, v0

    .line 1882
    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    :cond_3
    :goto_0
    return-void
.end method

.method extractHigherInt(J)I
    .locals 1

    const/16 v0, 0x20

    shr-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method extractLowerInt(J)I
    .locals 0

    long-to-int p2, p1

    return p2
.end method

.method isOrderChangedFromLastMeasurement(Landroid/util/SparseIntArray;)Z
    .locals 6

    .line 178
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    .line 179
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 183
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4, v3}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 187
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexItem;

    .line 188
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_2

    return v2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V
    .locals 5

    .line 1740
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 1741
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    move-result v1

    .line 1742
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1745
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v1

    .line 1747
    :cond_0
    iget v2, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    const/4 v3, 0x2

    if-eqz v1, :cond_7

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 p2, 0x4

    if-eq v1, p2, :cond_7

    goto/16 :goto_0

    .line 1760
    :cond_1
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 1761
    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v1

    sub-int/2addr p2, v1

    .line 1762
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr p4, p2

    add-int/2addr p6, p2

    .line 1763
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 1765
    :cond_2
    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p2, v1

    .line 1766
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v1

    add-int/2addr p2, v1

    .line 1767
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p4, p2

    sub-int/2addr p6, p2

    .line 1768
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 1786
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr v2, p2

    .line 1787
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p2

    add-int/2addr v2, p2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p2

    sub-int/2addr v2, p2

    div-int/2addr v2, v3

    .line 1788
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result p2

    if-eq p2, v3, :cond_4

    add-int/2addr p4, v2

    .line 1790
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p4

    .line 1789
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_4
    sub-int/2addr p4, v2

    .line 1793
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p4

    .line 1792
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1772
    :cond_5
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result p2

    if-eq p2, v3, :cond_6

    add-int/2addr p4, v2

    .line 1774
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int p2, p4, p2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p6

    sub-int/2addr p2, p6

    .line 1775
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p6

    sub-int/2addr p4, p6

    .line 1773
    invoke-virtual {p1, p3, p2, p5, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_6
    sub-int/2addr p4, v2

    .line 1780
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p4, p2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p2

    add-int/2addr p4, p2

    sub-int/2addr p6, v2

    .line 1781
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p6, p2

    .line 1782
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p2

    add-int/2addr p6, p2

    .line 1779
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1751
    :cond_7
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result p2

    if-eq p2, v3, :cond_8

    .line 1752
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p2

    add-int/2addr p4, p2

    .line 1753
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p2

    add-int/2addr p6, p2

    .line 1752
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1755
    :cond_8
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p2

    sub-int/2addr p4, p2

    .line 1756
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p2

    sub-int/2addr p6, p2

    .line 1755
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V
    .locals 4

    .line 1824
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 1825
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    move-result v1

    .line 1826
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1829
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v1

    .line 1831
    :cond_0
    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 p2, 0x3

    if-eq v1, p2, :cond_5

    const/4 p2, 0x4

    if-eq v1, p2, :cond_5

    goto/16 :goto_0

    .line 1863
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1864
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p2, v1

    .line 1865
    invoke-static {v0}, Lo/Externalizable;->e(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    add-int/2addr p2, v1

    .line 1866
    invoke-static {v0}, Lo/Externalizable;->c(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    sub-int/2addr p2, v0

    div-int/2addr p2, v2

    if-nez p3, :cond_2

    add-int/2addr p4, p2

    add-int/2addr p6, p2

    .line 1868
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_2
    sub-int/2addr p4, p2

    sub-int/2addr p6, p2

    .line 1870
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    add-int/2addr p4, p2

    .line 1847
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p4, p3

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p3

    sub-int/2addr p4, p3

    add-int/2addr p6, p2

    .line 1849
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p6, p2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p2

    sub-int/2addr p6, p2

    .line 1846
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_4
    sub-int/2addr p4, p2

    .line 1855
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p4, p3

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result p3

    add-int/2addr p4, p3

    sub-int/2addr p6, p2

    .line 1857
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p6, p2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result p2

    add-int/2addr p6, p2

    .line 1854
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_5
    if-nez p3, :cond_6

    .line 1837
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result p2

    add-int/2addr p4, p2

    .line 1838
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result p2

    add-int/2addr p6, p2

    .line 1837
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1840
    :cond_6
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p2

    sub-int/2addr p4, p2

    .line 1841
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p2

    sub-int/2addr p6, p2

    .line 1840
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method makeCombinedLong(II)J
    .locals 4

    int-to-long v0, p2

    const/16 p2, 0x20

    shl-long/2addr v0, p2

    int-to-long p1, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method stretchViews()V
    .locals 1

    const/4 v0, 0x0

    .line 1569
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews(I)V

    return-void
.end method

.method stretchViews(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1585
    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    .line 1588
    :cond_0
    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v2

    .line 1589
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    move-result v3

    const-string v4, "Invalid flex direction: "

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v3, v7, :cond_a

    .line 1591
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v3, :cond_1

    .line 1592
    aget v1, v3, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1594
    :goto_0
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v3

    .line 1595
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    :goto_1
    if-ge v1, v10, :cond_f

    .line 1596
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/flexbox/FlexLine;

    .line 1597
    iget v12, v11, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_9

    .line 1598
    iget v14, v11, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v14, v13

    .line 1599
    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v15}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v15

    if-lt v13, v15, :cond_2

    goto :goto_4

    .line 1602
    :cond_2
    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v15, v14}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 1603
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v5, 0x8

    if-ne v9, v5, :cond_3

    goto :goto_4

    .line 1606
    :cond_3
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/FlexItem;

    .line 1607
    invoke-interface {v5}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v9

    const/4 v6, -0x1

    if-eq v9, v6, :cond_4

    .line 1608
    invoke-interface {v5}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v5

    if-eq v5, v7, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_7

    if-eq v2, v8, :cond_7

    const/4 v5, 0x2

    if-eq v2, v5, :cond_6

    const/4 v5, 0x3

    if-ne v2, v5, :cond_5

    goto :goto_3

    .line 1621
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1618
    :cond_6
    :goto_3
    iget v5, v11, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-direct {v0, v15, v5, v14}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewHorizontally(Landroid/view/View;II)V

    goto :goto_4

    .line 1614
    :cond_7
    iget v5, v11, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-direct {v0, v15, v5, v14}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewVertically(Landroid/view/View;II)V

    :cond_8
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1627
    :cond_a
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexLine;

    .line 1628
    iget-object v5, v3, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1629
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v7, v9}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v2, :cond_e

    if-eq v2, v8, :cond_e

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eq v2, v9, :cond_d

    if-ne v2, v10, :cond_c

    goto :goto_6

    .line 1640
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1637
    :cond_d
    :goto_6
    iget v11, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v0, v7, v11, v6}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewHorizontally(Landroid/view/View;II)V

    goto :goto_5

    :cond_e
    const/4 v9, 0x2

    const/4 v10, 0x3

    .line 1633
    iget v11, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v0, v7, v11, v6}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewVertically(Landroid/view/View;II)V

    goto :goto_5

    :cond_f
    return-void
.end method
