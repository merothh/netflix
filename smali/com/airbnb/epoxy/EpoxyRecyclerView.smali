.class public Lcom/airbnb/epoxy/EpoxyRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/epoxy/EpoxyRecyclerView$Application;,
        Lcom/airbnb/epoxy/EpoxyRecyclerView$WithModelsController;,
        Lcom/airbnb/epoxy/EpoxyRecyclerView$ModelBuilderCallbackController;,
        Lcom/airbnb/epoxy/EpoxyRecyclerView$StateListAnimator;,
        Lcom/airbnb/epoxy/EpoxyRecyclerView$TaskDescription;
    }
.end annotation


# static fields
.field public static final e:Lcom/airbnb/epoxy/EpoxyRecyclerView$TaskDescription;

.field private static final k:Lo/List;


# instance fields
.field private a:Z

.field private b:Landroidx/recyclerview/widget/RecyclerView$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Activity<",
            "*>;"
        }
    .end annotation
.end field

.field private c:Lo/OfPrimitive;

.field private final d:Lo/BinaryOperator;

.field private f:I

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/epoxy/EpoxyRecyclerView$Application<",
            "***>;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Runnable;

.field private i:Z

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Mac<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/airbnb/epoxy/EpoxyRecyclerView$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView$TaskDescription;

    .line 642
    new-instance v0, Lo/List;

    invoke-direct {v0}, Lo/List;-><init>()V

    sput-object v0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->k:Lo/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/epoxy/EpoxyRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/epoxy/EpoxyRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance v0, Lo/BinaryOperator;

    invoke-direct {v0}, Lo/BinaryOperator;-><init>()V

    iput-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->d:Lo/BinaryOperator;

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->a:Z

    const/16 v0, 0x7d0

    .line 80
    iput v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->f:I

    .line 88
    new-instance v0, Lcom/airbnb/epoxy/EpoxyRecyclerView$ActionBar;

    invoke-direct {v0, p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView$ActionBar;-><init>(Lcom/airbnb/epoxy/EpoxyRecyclerView;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->h:Ljava/lang/Runnable;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->j:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->g:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 216
    sget-object v0, Lo/AppGlobals$Application;->F:[I

    const/4 v1, 0x0

    .line 215
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 221
    sget p2, Lo/AppGlobals$Application;->H:I

    .line 220
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 219
    invoke-virtual {p0, p2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setItemSpacingPx(I)V

    .line 225
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->d()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 54
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 55
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/epoxy/EpoxyRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a()V
    .locals 3

    .line 245
    invoke-virtual {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->j()Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;)V

    return-void

    .line 251
    :cond_0
    sget-object v0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->k:Lo/List;

    .line 252
    invoke-virtual {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    new-instance v2, Lcom/airbnb/epoxy/EpoxyRecyclerView$initViewPool$1;

    invoke-direct {v2, p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView$initViewPool$1;-><init>(Lcom/airbnb/epoxy/EpoxyRecyclerView;)V

    check-cast v2, Lo/alB;

    .line 251
    invoke-virtual {v0, v1, v2}, Lo/List;->a(Landroid/content/Context;Lo/alB;)Lcom/airbnb/epoxy/PoolReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/epoxy/PoolReference;->b()Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    move-result-object v0

    .line 250
    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;)V

    return-void
.end method

.method public static final synthetic a(Lcom/airbnb/epoxy/EpoxyRecyclerView;Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->i:Z

    return-void
.end method

.method public static final synthetic b(Lcom/airbnb/epoxy/EpoxyRecyclerView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->i:Z

    return p0
.end method

.method private final c()V
    .locals 10

    .line 148
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->j:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 646
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Mac;

    .line 148
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    invoke-virtual {p0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 150
    invoke-virtual {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "adapter ?: return"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->g:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 648
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/epoxy/EpoxyRecyclerView$Application;

    .line 154
    instance-of v3, v0, Lo/OfInt;

    if-eqz v3, :cond_2

    .line 155
    sget-object v4, Lo/Mac;->e:Lo/Mac$TaskDescription;

    .line 156
    move-object v5, v0

    check-cast v5, Lo/OfInt;

    .line 157
    invoke-virtual {v2}, Lcom/airbnb/epoxy/EpoxyRecyclerView$Application;->d()Lo/alB;

    move-result-object v6

    .line 158
    invoke-virtual {v2}, Lcom/airbnb/epoxy/EpoxyRecyclerView$Application;->b()Lo/alN;

    move-result-object v7

    .line 159
    invoke-virtual {v2}, Lcom/airbnb/epoxy/EpoxyRecyclerView$Application;->a()I

    move-result v8

    .line 160
    invoke-virtual {v2}, Lcom/airbnb/epoxy/EpoxyRecyclerView$Application;->e()Lo/ExemptionMechanism;

    move-result-object v2

    invoke-static {v2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 155
    invoke-virtual/range {v4 .. v9}, Lo/Mac$TaskDescription;->b(Lo/OfInt;Lo/alB;Lo/alN;ILjava/util/List;)Lo/Mac;

    move-result-object v2

    goto :goto_2

    .line 163
    :cond_2
    iget-object v4, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->c:Lo/OfPrimitive;

    if-eqz v4, :cond_3

    .line 164
    sget-object v3, Lo/Mac;->e:Lo/Mac$TaskDescription;

    .line 166
    invoke-virtual {v2}, Lcom/airbnb/epoxy/EpoxyRecyclerView$Application;->d()Lo/alB;

    move-result-object v5

    .line 167
    invoke-virtual {v2}, Lcom/airbnb/epoxy/EpoxyRecyclerView$Application;->b()Lo/alN;

    move-result-object v6

    .line 168
    invoke-virtual {v2}, Lcom/airbnb/epoxy/EpoxyRecyclerView$Application;->a()I

    move-result v7

    .line 169
    invoke-virtual {v2}, Lcom/airbnb/epoxy/EpoxyRecyclerView$Application;->e()Lo/ExemptionMechanism;

    move-result-object v2

    invoke-static {v2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 164
    invoke-virtual/range {v3 .. v8}, Lo/Mac$TaskDescription;->d(Lo/OfPrimitive;Lo/alB;Lo/alN;ILjava/util/List;)Lo/Mac;

    move-result-object v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_1

    .line 173
    iget-object v3, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    invoke-virtual {p0, v2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static final synthetic d(Lcom/airbnb/epoxy/EpoxyRecyclerView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->f()V

    return-void
.end method

.method private final f()V
    .locals 3

    .line 603
    invoke-virtual {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 608
    invoke-virtual {p0, v1, v2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;Z)V

    .line 611
    iput-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$Activity;

    .line 615
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->n()V

    return-void
.end method

.method private final h()V
    .locals 4

    .line 328
    invoke-virtual {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->c:Lo/OfPrimitive;

    .line 330
    instance-of v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 332
    invoke-virtual {v1}, Lo/OfPrimitive;->getSpanCount()I

    move-result v2

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->a()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->e()Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;

    move-result-object v2

    invoke-virtual {v1}, Lo/OfPrimitive;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 333
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/OfPrimitive;->setSpanCount(I)V

    .line 334
    invoke-virtual {v1}, Lo/OfPrimitive;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;)V

    :cond_1
    return-void
.end method

.method private final l()V
    .locals 1

    const/4 v0, 0x0

    .line 619
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Activity;

    iput-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$Activity;

    .line 620
    iget-boolean v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->i:Z

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->h:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 622
    iput-boolean v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->i:Z

    :cond_0
    return-void
.end method

.method private final n()V
    .locals 1

    .line 630
    invoke-virtual {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/Hashtable;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->d()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(I)I
    .locals 1

    .line 556
    invoke-virtual {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1
.end method

.method protected final b()Lo/BinaryOperator;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->d:Lo/BinaryOperator;

    return-object v0
.end method

.method protected final d(I)I
    .locals 2

    int-to-float p1, p1

    .line 550
    invoke-virtual {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "resources"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 548
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method protected d()V
    .locals 1

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setClipToPadding(Z)V

    .line 234
    invoke-direct {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->a()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->c:Lo/OfPrimitive;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/OfPrimitive;->cancelPendingModelBuild()V

    :cond_0
    const/4 v0, 0x0

    .line 537
    move-object v1, v0

    check-cast v1, Lo/OfPrimitive;

    iput-object v1, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->c:Lo/OfPrimitive;

    const/4 v1, 0x1

    .line 542
    invoke-virtual {p0, v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;Z)V

    return-void
.end method

.method protected g()Landroidx/recyclerview/widget/RecyclerView$Fragment;
    .locals 3

    .line 299
    invoke-virtual {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 302
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    return-object v0

    .line 304
    :cond_1
    :goto_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, v2, :cond_2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 306
    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setHasFixedSize(Z)V

    .line 310
    :cond_3
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    return-object v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected j()Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;
    .locals 1

    .line 261
    new-instance v0, Lo/IllegalBlockSizeException;

    invoke-direct {v0}, Lo/IllegalBlockSizeException;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 577
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 579
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$Activity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 581
    invoke-virtual {p0, v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;Z)V

    .line 583
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->l()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .line 587
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    .line 588
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->j:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 650
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Mac;

    .line 588
    invoke-virtual {v1}, Lo/Mac;->b()V

    goto :goto_0

    .line 590
    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->a:Z

    if-eqz v0, :cond_2

    .line 591
    iget v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->f:I

    if-lez v0, :cond_1

    const/4 v1, 0x1

    .line 593
    iput-boolean v1, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->i:Z

    .line 594
    iget-object v1, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->h:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 596
    :cond_1
    invoke-direct {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->f()V

    .line 599
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->n()V

    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 342
    invoke-direct {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->h()V

    .line 343
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Activity<",
            "*>;)V"
        }
    .end annotation

    .line 560
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 562
    invoke-direct {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->l()V

    .line 563
    invoke-direct {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->c()V

    return-void
.end method

.method public final setController(Lo/OfPrimitive;)V
    .locals 1

    const-string v0, "controller"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    iput-object p1, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->c:Lo/OfPrimitive;

    .line 415
    invoke-virtual {p1}, Lo/OfPrimitive;->getAdapter()Lo/OfLong;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 416
    invoke-direct {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->h()V

    return-void
.end method

.method public final setControllerAndBuildModels(Lo/OfPrimitive;)V
    .locals 1

    const-string v0, "controller"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    invoke-virtual {p1}, Lo/OfPrimitive;->requestModelBuild()V

    .line 431
    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lo/OfPrimitive;)V

    return-void
.end method

.method public final setDelayMsWhenRemovingAdapterOnDetach(I)V
    .locals 0

    .line 209
    iput p1, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->f:I

    return-void
.end method

.method public final setItemSpacingDp(I)V
    .locals 0

    .line 351
    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setItemSpacingPx(I)V

    return-void
.end method

.method public final setItemSpacingPx(I)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->d:Lo/BinaryOperator;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;

    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    .line 369
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->d:Lo/BinaryOperator;

    invoke-virtual {v0, p1}, Lo/BinaryOperator;->e(I)V

    if-lez p1, :cond_0

    .line 372
    iget-object p1, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->d:Lo/BinaryOperator;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    :cond_0
    return-void
.end method

.method public final setItemSpacingRes(I)V
    .locals 0

    .line 347
    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setItemSpacingPx(I)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V
    .locals 0

    .line 319
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 320
    invoke-direct {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->h()V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 274
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object p1

    if-nez p1, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->g()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    :cond_1
    return-void
.end method

.method public setModels(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "models"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->c:Lo/OfPrimitive;

    instance-of v1, v0, Lcom/airbnb/epoxy/SimpleEpoxyController;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/airbnb/epoxy/SimpleEpoxyController;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 389
    :cond_1
    new-instance v0, Lcom/airbnb/epoxy/SimpleEpoxyController;

    invoke-direct {v0}, Lcom/airbnb/epoxy/SimpleEpoxyController;-><init>()V

    .line 390
    move-object v1, v0

    check-cast v1, Lo/OfPrimitive;

    invoke-virtual {p0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lo/OfPrimitive;)V

    .line 393
    :goto_0
    invoke-virtual {v0, p1}, Lcom/airbnb/epoxy/SimpleEpoxyController;->setModels(Ljava/util/List;)V

    return-void
.end method

.method public final setRemoveAdapterWhenDetachedFromWindow(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView;->a:Z

    return-void
.end method

.method public swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Activity<",
            "*>;Z)V"
        }
    .end annotation

    .line 570
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;Z)V

    .line 572
    invoke-direct {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->l()V

    .line 573
    invoke-direct {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->c()V

    return-void
.end method
