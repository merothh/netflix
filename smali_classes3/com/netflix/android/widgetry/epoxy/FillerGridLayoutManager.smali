.class public final Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager$TaskDescription;
    }
.end annotation


# static fields
.field private static final p:Z = false

.field public static final r:Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager$TaskDescription;

.field private static final s:I

.field private static final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->r:Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager$TaskDescription;

    .line 51
    sget v0, Lo/IHwInterface$FragmentManager;->h:I

    sput v0, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->t:I

    .line 53
    sget v0, Lo/IHwInterface$FragmentManager;->w:I

    sput v0, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->s:I

    return-void
.end method

.method private final d(Landroid/view/View;)Ljava/lang/Float;
    .locals 1

    .line 150
    sget v0, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->t:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    return-object p1
.end method


# virtual methods
.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$ClipData;Landroidx/recyclerview/widget/RecyclerView$ComponentName;)V
    .locals 11

    .line 61
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 62
    invoke-virtual {p0, v2}, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->s:I

    if-ne v4, v5, :cond_0

    .line 65
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$ClipData;Landroidx/recyclerview/widget/RecyclerView$ComponentName;)V

    .line 72
    sget-boolean v0, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->p:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->r:Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v3, v0, :cond_5

    .line 80
    invoke-virtual {p0, v3}, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 82
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    sget v9, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->s:I

    if-ne v8, v9, :cond_4

    .line 83
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v1, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v5, v5, 0x1

    .line 85
    invoke-direct {p0, v7}, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->d(Landroid/view/View;)Ljava/lang/Float;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 87
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpg-float v8, v8, v2

    if-lez v8, :cond_3

    add-int/lit8 v4, v4, 0x1

    .line 91
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v6, v7

    goto :goto_2

    .line 88
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Filler\'s weight need to be a positive number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    if-lez v4, :cond_7

    if-ne v4, v5, :cond_6

    goto :goto_3

    .line 98
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "When using filler\'s weight all the fillers in the layout need a weight"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_7
    :goto_3
    if-lez v5, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_12

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 107
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 109
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_5
    if-ge v5, v4, :cond_e

    .line 110
    invoke-virtual {p0, v5}, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 112
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v9

    sget v10, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->s:I

    if-ne v9, v10, :cond_9

    .line 113
    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 116
    :cond_9
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 158
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v10, :cond_a

    const/4 v8, 0x0

    :cond_a
    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_b

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    :goto_6
    int-to-float v8, v8

    add-float/2addr v9, v8

    int-to-float v8, v7

    cmpl-float v8, v9, v8

    if-lez v8, :cond_c

    float-to-int v7, v9

    .line 121
    :cond_c
    :goto_7
    sget-boolean v8, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->p:Z

    if-eqz v8, :cond_d

    sget-object v8, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->r:Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager$TaskDescription;

    check-cast v8, Lo/MessagePdu;

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_e
    if-le v3, v7, :cond_12

    sub-int/2addr v3, v7

    .line 131
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 164
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 133
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    cmpl-float v7, v6, v2

    if-lez v7, :cond_10

    int-to-float v7, v3

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float v7, v7, v8

    div-float/2addr v7, v6

    .line 135
    invoke-direct {p0, v4}, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->d(Landroid/view/View;)Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_f

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    mul-float v7, v7, v4

    float-to-int v4, v7

    goto :goto_9

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value was null."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 138
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    div-int v4, v3, v4

    .line 133
    :goto_9
    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_8

    .line 143
    :cond_11
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$ClipData;Landroidx/recyclerview/widget/RecyclerView$ComponentName;)V

    .line 144
    sget-boolean p1, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->p:Z

    if-eqz p1, :cond_12

    sget-object p1, Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager;->r:Lcom/netflix/android/widgetry/epoxy/FillerGridLayoutManager$TaskDescription;

    check-cast p1, Lo/MessagePdu;

    :cond_12
    return-void
.end method
