.class public Landroid/support/design/widget/AppBarLayout$Behavior;
.super Landroid/support/design/widget/HeaderBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/HeaderBehavior",
        "<",
        "Landroid/support/design/widget/AppBarLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final MAX_OFFSET_ANIMATION_DURATION:I = 0x258


# instance fields
.field private mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private mOffsetDelta:I

.field private mOffsetToChildIndexOnLayout:I

.field private mOffsetToChildIndexOnLayoutIsMinHeight:Z

.field private mOffsetToChildIndexOnLayoutPerc:F

.field private mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

.field private mSkipNestedPreScroll:Z

.field private mWasNestedFlung:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 789
    invoke-direct {p0}, Landroid/support/design/widget/HeaderBehavior;-><init>()V

    .line 782
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 789
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 792
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 782
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 793
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/AppBarLayout$Behavior;)I
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    return v0
.end method

.method private animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V
    .locals 3

    .prologue
    .line 915
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 918
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 919
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 920
    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float v0, v0

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 926
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetWithDuration(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;II)V

    .line 927
    return-void

    .line 922
    :cond_0
    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 923
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x43160000    # 150.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private animateOffsetWithDuration(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;II)V
    .locals 4

    .prologue
    .line 931
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 932
    if-ne v0, p3, :cond_1

    .line 933
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 956
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-nez v1, :cond_2

    .line 940
    invoke-static {}, Landroid/support/design/widget/ViewUtils;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 941
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    sget-object v2, Landroid/support/design/widget/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 942
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    new-instance v2, Landroid/support/design/widget/AppBarLayout$Behavior$1;

    invoke-direct {v2, p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior$1;-><init>(Landroid/support/design/widget/AppBarLayout$Behavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/ValueAnimatorCompat;->addUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 953
    :goto_1
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    const/16 v2, 0x258

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(J)V

    .line 954
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v1, v0, p3}, Landroid/support/design/widget/ValueAnimatorCompat;->setIntValues(II)V

    .line 955
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    goto :goto_0

    .line 950
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    goto :goto_1
.end method

.method private static checkFlag(II)Z
    .locals 1

    .prologue
    .line 1011
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getAppBarChildOnOffset(Landroid/support/design/widget/AppBarLayout;I)Landroid/view/View;
    .locals 5

    .prologue
    .line 1267
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1268
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 1269
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1270
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v2, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v2, v4, :cond_0

    .line 1274
    :goto_1
    return-object v0

    .line 1268
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1274
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getChildIndexOnOffset(Landroid/support/design/widget/AppBarLayout;I)I
    .locals 5

    .prologue
    .line 959
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 960
    invoke-virtual {p1, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 961
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v4, p2

    if-gt v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    neg-int v3, p2

    if-lt v2, v3, :cond_0

    .line 965
    :goto_1
    return v0

    .line 959
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 965
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private interpolateOffset(Landroid/support/design/widget/AppBarLayout;I)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1169
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1171
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    .line 1172
    invoke-virtual {p1, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1173
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 1174
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 1176
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v3, v7, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    if-gt v3, v7, :cond_3

    .line 1177
    if-eqz v6, :cond_2

    .line 1179
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v2

    .line 1180
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_4

    .line 1182
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v7, v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v7

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    add-int/2addr v0, v1

    .line 1185
    and-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_0

    .line 1188
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1192
    :cond_0
    :goto_1
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1193
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1196
    :cond_1
    if-lez v0, :cond_2

    .line 1197
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v3, v1

    .line 1198
    int-to-float v2, v0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 1199
    invoke-interface {v6, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v2

    .line 1198
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1202
    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v0, v2

    mul-int p2, v1, v0

    .line 1212
    :cond_2
    return p2

    .line 1171
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private shouldJumpElevationState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1252
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    .line 1253
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    .line 1254
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1256
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1257
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1259
    instance-of v5, v0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;

    if-eqz v5, :cond_1

    .line 1260
    check-cast v0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getOverlayTop()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1263
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 1260
    goto :goto_1

    .line 1253
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1263
    goto :goto_1
.end method

.method private snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .locals 7

    .prologue
    .line 969
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v3

    .line 970
    invoke-direct {p0, p2, v3}, Landroid/support/design/widget/AppBarLayout$Behavior;->getChildIndexOnOffset(Landroid/support/design/widget/AppBarLayout;I)I

    move-result v1

    .line 971
    if-ltz v1, :cond_2

    .line 972
    invoke-virtual {p2, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 973
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 974
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v5

    .line 976
    and-int/lit8 v0, v5, 0x11

    const/16 v2, 0x11

    if-ne v0, v2, :cond_2

    .line 978
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v2, v0

    .line 979
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    neg-int v0, v0

    .line 981
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_0

    .line 983
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v1

    add-int/2addr v0, v1

    .line 986
    :cond_0
    const/4 v1, 0x2

    invoke-static {v5, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->checkFlag(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 988
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    move v1, v2

    .line 1001
    :cond_1
    :goto_0
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    if-ge v3, v2, :cond_4

    .line 1005
    :goto_1
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v0

    const/4 v1, 0x0

    .line 1004
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    .line 1008
    :cond_2
    return-void

    .line 989
    :cond_3
    const/4 v1, 0x5

    invoke-static {v5, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->checkFlag(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 993
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    .line 994
    if-lt v3, v1, :cond_1

    move v0, v1

    move v1, v2

    .line 997
    goto :goto_0

    :cond_4
    move v0, v1

    .line 1001
    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method private updateAppBarLayoutDrawableState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;II)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1217
    invoke-static {p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->getAppBarChildOnOffset(Landroid/support/design/widget/AppBarLayout;I)Landroid/view/View;

    move-result-object v3

    .line 1218
    if-eqz v3, :cond_1

    .line 1219
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 1220
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v0

    .line 1223
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    .line 1224
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v4

    .line 1226
    if-lez p4, :cond_3

    and-int/lit8 v5, v0, 0xc

    if-eqz v5, :cond_3

    .line 1230
    neg-int v0, p3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v0, v3, :cond_2

    move v0, v1

    :goto_0
    move v2, v0

    .line 1238
    :cond_0
    :goto_1
    invoke-virtual {p2, v2}, Landroid/support/design/widget/AppBarLayout;->setCollapsedState(Z)Z

    move-result v0

    .line 1240
    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 1241
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->shouldJumpElevationState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1244
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->jumpDrawablesToCurrentState()V

    .line 1247
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1230
    goto :goto_0

    .line 1231
    :cond_3
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1234
    neg-int v0, p3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v0, v3, :cond_4

    :goto_2
    move v2, v1

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method canDragView(Landroid/support/design/widget/AppBarLayout;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1085
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;->canDrag(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v0

    .line 1098
    :goto_0
    return v0

    .line 1091
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 1093
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1094
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    .line 1095
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1098
    goto :goto_0
.end method

.method bridge synthetic canDragView(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 755
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior;->canDragView(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .locals 1

    .prologue
    .line 755
    invoke-super {p0}, Landroid/support/design/widget/HeaderBehavior;->getLeftAndRightOffset()I

    move-result v0

    return v0
.end method

.method getMaxDragOffset(Landroid/support/design/widget/AppBarLayout;)I
    .locals 1

    .prologue
    .line 1110
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 755
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior;->getMaxDragOffset(Landroid/support/design/widget/AppBarLayout;)I

    move-result v0

    return v0
.end method

.method getScrollRangeForDragFling(Landroid/support/design/widget/AppBarLayout;)I
    .locals 1

    .prologue
    .line 1115
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method bridge synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 755
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior;->getScrollRangeForDragFling(Landroid/support/design/widget/AppBarLayout;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .locals 1

    .prologue
    .line 755
    invoke-super {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 2

    .prologue
    .line 1279
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    add-int/2addr v0, v1

    return v0
.end method

.method isOffsetAnimatorRunning()Z
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .locals 0

    .prologue
    .line 1105
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    .line 1106
    return-void
.end method

.method bridge synthetic onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 755
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    return-void
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1038
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/HeaderBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v2

    .line 1040
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getPendingAction()I

    move-result v3

    .line 1041
    if-eqz v3, :cond_5

    .line 1042
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1043
    :goto_0
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_3

    .line 1044
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v3

    neg-int v3, v3

    .line 1045
    if-eqz v0, :cond_2

    .line 1046
    invoke-direct {p0, p1, p2, v3, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    .line 1069
    :cond_0
    :goto_1
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->resetPendingAction()V

    .line 1070
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 1075
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v3

    neg-int v3, v3

    invoke-static {v0, v3, v1}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v0

    .line 1074
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    .line 1078
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->dispatchOffsetUpdates(I)V

    .line 1080
    return v2

    :cond_1
    move v0, v1

    .line 1042
    goto :goto_0

    .line 1048
    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_1

    .line 1050
    :cond_3
    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 1051
    if-eqz v0, :cond_4

    .line 1052
    invoke-direct {p0, p1, p2, v1, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    goto :goto_1

    .line 1054
    :cond_4
    invoke-virtual {p0, p1, p2, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_1

    .line 1057
    :cond_5
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    if-ltz v0, :cond_0

    .line 1058
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1059
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    neg-int v3, v3

    .line 1060
    iget-boolean v4, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    if-eqz v4, :cond_6

    .line 1061
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    .line 1065
    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    goto :goto_1

    .line 1063
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_2
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 755
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z

    move-result v0

    return v0
.end method

.method public onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIII)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1018
    .line 1019
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1020
    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 1026
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    .line 1025
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 1027
    const/4 v0, 0x1

    .line 1031
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/HeaderBehavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 7

    .prologue
    .line 755
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIII)Z

    move-result v0

    return v0
.end method

.method public onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 869
    .line 871
    if-nez p6, :cond_1

    .line 873
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v3, v0

    neg-float v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->fling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    move-result v4

    .line 900
    :cond_0
    :goto_0
    iput-boolean v4, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mWasNestedFlung:Z

    .line 901
    return v4

    .line 878
    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, p5, v1

    if-gez v1, :cond_2

    .line 880
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    .line 881
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v2

    add-int/2addr v1, v2

    .line 882
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 885
    invoke-direct {p0, p1, p2, v1, p5}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    move v4, v0

    .line 886
    goto :goto_0

    .line 890
    :cond_2
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v1

    neg-int v1, v1

    .line 891
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 894
    invoke-direct {p0, p1, p2, v1, p5}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    move v4, v0

    .line 895
    goto :goto_0
.end method

.method public bridge synthetic onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 7

    .prologue
    .line 755
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[I)V
    .locals 7

    .prologue
    .line 818
    if-eqz p5, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    if-nez v0, :cond_0

    .line 820
    if-gez p5, :cond_1

    .line 822
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v4, v0

    .line 823
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v0

    add-int v5, v4, v0

    .line 829
    :goto_0
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    aput v0, p6, v6

    .line 831
    :cond_0
    return-void

    .line 826
    :cond_1
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v4, v0

    .line 827
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 7

    .prologue
    .line 755
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIII)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 837
    if-gez p7, :cond_0

    .line 841
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    .line 840
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 843
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    .line 848
    :goto_0
    return-void

    .line 846
    :cond_0
    iput-boolean v5, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    goto :goto_0
.end method

.method public bridge synthetic onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 8

    .prologue
    .line 755
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIII)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1309
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    if-eqz v0, :cond_0

    .line 1310
    check-cast p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    .line 1311
    invoke-virtual {p3}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroid/support/design/widget/HeaderBehavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1312
    iget v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 1313
    iget v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    .line 1314
    iget-boolean v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    .line 1319
    :goto_0
    return-void

    .line 1316
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/HeaderBehavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1317
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    goto :goto_0
.end method

.method public bridge synthetic onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 755
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1284
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/HeaderBehavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v2

    .line 1285
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v4

    .line 1288
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v5

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_2

    .line 1289
    invoke-virtual {p2, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1290
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int v7, v1, v4

    .line 1292
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v4

    if-gtz v1, :cond_1

    if-ltz v7, :cond_1

    .line 1293
    new-instance v1, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    invoke-direct {v1, v2}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1294
    iput v3, v1, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    .line 1296
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    if-ne v7, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, v1, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    .line 1297
    int-to-float v0, v7

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, v1, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    move-object v0, v1

    .line 1303
    :goto_1
    return-object v0

    .line 1288
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 1303
    goto :goto_1
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 755
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;I)Z
    .locals 2

    .prologue
    .line 800
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    .line 801
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->hasScrollableChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 804
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v1, :cond_0

    .line 806
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 810
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 812
    return v0

    .line 802
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 755
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 853
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mWasNestedFlung:Z

    if-nez v0, :cond_0

    .line 855
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    .line 859
    :cond_0
    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    .line 860
    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mWasNestedFlung:Z

    .line 862
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 863
    return-void
.end method

.method public bridge synthetic onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 755
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;)V

    return-void
.end method

.method public setDragCallback(Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;)V
    .locals 0

    .prologue
    .line 910
    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

    .line 911
    return-void
.end method

.method setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1121
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v3

    .line 1124
    if-eqz p4, :cond_4

    if-lt v3, p4, :cond_4

    if-gt v3, p5, :cond_4

    .line 1127
    invoke-static {p3, p4, p5}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v1

    .line 1128
    if-eq v3, v1, :cond_1

    .line 1129
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1130
    invoke-direct {p0, p2, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->interpolateOffset(Landroid/support/design/widget/AppBarLayout;I)I

    move-result v0

    .line 1133
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    move-result v4

    .line 1136
    sub-int v2, v3, v1

    .line 1138
    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    .line 1140
    if-nez v4, :cond_0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1145
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 1149
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->dispatchOffsetUpdates(I)V

    .line 1152
    if-ge v1, v3, :cond_3

    const/4 v0, -0x1

    :goto_1
    invoke-direct {p0, p1, p2, v1, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->updateAppBarLayoutDrawableState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;II)V

    move v0, v2

    .line 1160
    :cond_1
    :goto_2
    return v0

    :cond_2
    move v0, v1

    .line 1130
    goto :goto_0

    .line 1152
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 1157
    :cond_4
    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    goto :goto_2
.end method

.method bridge synthetic setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 6

    .prologue
    .line 755
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I

    move-result v0

    return v0
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .locals 1

    .prologue
    .line 755
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderBehavior;->setLeftAndRightOffset(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .locals 1

    .prologue
    .line 755
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderBehavior;->setTopAndBottomOffset(I)Z

    move-result v0

    return v0
.end method
