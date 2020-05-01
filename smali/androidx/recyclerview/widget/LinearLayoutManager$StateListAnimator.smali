.class Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Z

.field e:I

.field f:I

.field g:Z

.field h:I

.field i:I

.field j:I

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$Intent;",
            ">;"
        }
    .end annotation
.end field

.field n:Z

.field o:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2212
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->d:Z

    const/4 v0, 0x0

    .line 2253
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->j:I

    .line 2260
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->h:I

    .line 2267
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->g:Z

    const/4 v0, 0x0

    .line 2279
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->m:Ljava/util/List;

    return-void
.end method

.method private a()Landroid/view/View;
    .locals 5

    .line 2316
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2318
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Intent;->itemView:Landroid/view/View;

    .line 2319
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    .line 2320
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Dialog;->isItemRemoved()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 2323
    :cond_0
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->c:I

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Dialog;->getViewLayoutPosition()I

    move-result v3

    if-ne v4, v3, :cond_1

    .line 2324
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->c(Landroid/view/View;)V

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 2332
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->c(Landroid/view/View;)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    .line 2336
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->d(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 2338
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->c:I

    goto :goto_0

    .line 2340
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    .line 2341
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Dialog;->getViewLayoutPosition()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->c:I

    :goto_0
    return-void
.end method

.method c(Landroidx/recyclerview/widget/RecyclerView$ComponentName;)Z
    .locals 1

    .line 2290
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->c:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ComponentName;->i()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Landroid/view/View;)Landroid/view/View;
    .locals 7

    .line 2346
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 2353
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->m:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$Intent;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$Intent;->itemView:Landroid/view/View;

    .line 2354
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    if-eq v4, p1, :cond_3

    .line 2355
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Dialog;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 2358
    :cond_0
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Dialog;->getViewLayoutPosition()I

    move-result v5

    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->c:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->b:I

    mul-int v5, v5, v6

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    if-ge v5, v2, :cond_3

    move-object v1, v4

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move v2, v5

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v1
.end method

.method d(Landroidx/recyclerview/widget/RecyclerView$ClipData;)Landroid/view/View;
    .locals 2

    .line 2300
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2301
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->a()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 2303
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->c:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ClipData;->d(I)Landroid/view/View;

    move-result-object p1

    .line 2304
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->c:I

    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$StateListAnimator;->c:I

    return-object p1
.end method
