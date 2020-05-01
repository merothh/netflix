.class Lo/DoubleBinaryOperator$ActionBar;
.super Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DoubleBinaryOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic b:Lo/DoubleBinaryOperator;


# direct methods
.method constructor <init>(Lo/DoubleBinaryOperator;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lo/DoubleBinaryOperator$ActionBar;->b:Lo/DoubleBinaryOperator;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;-><init>()V

    return-void
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 465
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object p1

    instance-of p1, p1, Lo/Locale;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private d(II)V
    .locals 4

    .line 429
    iget-object v0, p0, Lo/DoubleBinaryOperator$ActionBar;->b:Lo/DoubleBinaryOperator;

    invoke-static {v0}, Lo/DoubleBinaryOperator;->a(Lo/DoubleBinaryOperator;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/DoubleBinaryOperator$ActionBar;->b(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lo/DoubleBinaryOperator$ActionBar;->b:Lo/DoubleBinaryOperator;

    invoke-static {v0}, Lo/DoubleBinaryOperator;->b(Lo/DoubleBinaryOperator;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Function;

    .line 437
    invoke-virtual {v1}, Lo/Function;->d()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, p1, :cond_2

    sub-int v2, p2, p1

    .line 440
    invoke-virtual {v1, v2}, Lo/Function;->d(I)V

    .line 441
    iget-object v1, p0, Lo/DoubleBinaryOperator$ActionBar;->b:Lo/DoubleBinaryOperator;

    invoke-static {v1, v3}, Lo/DoubleBinaryOperator;->b(Lo/DoubleBinaryOperator;Z)Z

    goto :goto_0

    :cond_2
    if-ge p1, p2, :cond_3

    if-le v2, p1, :cond_1

    if-gt v2, p2, :cond_1

    const/4 v2, -0x1

    .line 446
    invoke-virtual {v1, v2}, Lo/Function;->d(I)V

    .line 447
    iget-object v1, p0, Lo/DoubleBinaryOperator$ActionBar;->b:Lo/DoubleBinaryOperator;

    invoke-static {v1, v3}, Lo/DoubleBinaryOperator;->b(Lo/DoubleBinaryOperator;Z)Z

    goto :goto_0

    :cond_3
    if-le p1, p2, :cond_1

    if-lt v2, p2, :cond_1

    if-ge v2, p1, :cond_1

    .line 453
    invoke-virtual {v1, v3}, Lo/Function;->d(I)V

    .line 454
    iget-object v1, p0, Lo/DoubleBinaryOperator$ActionBar;->b:Lo/DoubleBinaryOperator;

    invoke-static {v1, v3}, Lo/DoubleBinaryOperator;->b(Lo/DoubleBinaryOperator;Z)Z

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 4

    .line 397
    iget-object v0, p0, Lo/DoubleBinaryOperator$ActionBar;->b:Lo/DoubleBinaryOperator;

    invoke-static {v0}, Lo/DoubleBinaryOperator;->a(Lo/DoubleBinaryOperator;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/DoubleBinaryOperator$ActionBar;->b(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lo/DoubleBinaryOperator$ActionBar;->b:Lo/DoubleBinaryOperator;

    invoke-static {v0}, Lo/DoubleBinaryOperator;->b(Lo/DoubleBinaryOperator;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Function;

    .line 404
    invoke-virtual {v1}, Lo/Function;->d()I

    move-result v2

    if-lt v2, p1, :cond_1

    .line 405
    iget-object v2, p0, Lo/DoubleBinaryOperator$ActionBar;->b:Lo/DoubleBinaryOperator;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lo/DoubleBinaryOperator;->b(Lo/DoubleBinaryOperator;Z)Z

    neg-int v2, p2

    .line 406
    invoke-virtual {v1, v2}, Lo/Function;->d(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(III)V
    .locals 3

    .line 420
    iget-object v0, p0, Lo/DoubleBinaryOperator$ActionBar;->b:Lo/DoubleBinaryOperator;

    invoke-static {v0}, Lo/DoubleBinaryOperator;->a(Lo/DoubleBinaryOperator;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/DoubleBinaryOperator$ActionBar;->b(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p1, v0

    add-int v2, p2, v0

    .line 424
    invoke-direct {p0, v1, v2}, Lo/DoubleBinaryOperator$ActionBar;->d(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    .line 360
    iget-object v0, p0, Lo/DoubleBinaryOperator$ActionBar;->b:Lo/DoubleBinaryOperator;

    invoke-static {v0}, Lo/DoubleBinaryOperator;->a(Lo/DoubleBinaryOperator;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/DoubleBinaryOperator$ActionBar;->b(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lo/DoubleBinaryOperator$ActionBar;->b:Lo/DoubleBinaryOperator;

    invoke-static {v0}, Lo/DoubleBinaryOperator;->e(Lo/DoubleBinaryOperator;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 367
    iget-object v0, p0, Lo/DoubleBinaryOperator$ActionBar;->b:Lo/DoubleBinaryOperator;

    invoke-static {v0}, Lo/DoubleBinaryOperator;->b(Lo/DoubleBinaryOperator;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 368
    iget-object v0, p0, Lo/DoubleBinaryOperator$ActionBar;->b:Lo/DoubleBinaryOperator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/DoubleBinaryOperator;->b(Lo/DoubleBinaryOperator;Z)Z

    return-void
.end method

.method public e(II)V
    .locals 4

    .line 377
    iget-object v0, p0, Lo/DoubleBinaryOperator$ActionBar;->b:Lo/DoubleBinaryOperator;

    invoke-static {v0}, Lo/DoubleBinaryOperator;->a(Lo/DoubleBinaryOperator;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/DoubleBinaryOperator$ActionBar;->b(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lo/DoubleBinaryOperator$ActionBar;->b:Lo/DoubleBinaryOperator;

    invoke-static {v0}, Lo/DoubleBinaryOperator;->b(Lo/DoubleBinaryOperator;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Function;

    .line 384
    invoke-virtual {v1}, Lo/Function;->d()I

    move-result v2

    if-lt v2, p1, :cond_1

    .line 385
    iget-object v2, p0, Lo/DoubleBinaryOperator$ActionBar;->b:Lo/DoubleBinaryOperator;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lo/DoubleBinaryOperator;->b(Lo/DoubleBinaryOperator;Z)Z

    .line 386
    invoke-virtual {v1, p2}, Lo/Function;->d(I)V

    goto :goto_0

    :cond_2
    return-void
.end method
