.class public abstract Lo/Array;
.super Landroidx/recyclerview/widget/RecyclerView$FragmentManager;
.source ""


# instance fields
.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lo/Array;->g:Z

    return-void
.end method


# virtual methods
.method public b(Landroidx/recyclerview/widget/RecyclerView$Intent;Z)V
    .locals 0

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)Z
    .locals 6

    .line 133
    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->a:I

    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->a:I

    if-ne v0, v1, :cond_1

    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->b:I

    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->b:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Lo/Array;->j(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    const/4 p1, 0x0

    return p1

    .line 138
    :cond_1
    :goto_0
    iget v2, p2, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->a:I

    iget v3, p2, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->b:I

    iget v4, p3, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->a:I

    iget v5, p3, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->b:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lo/Array;->c(Landroidx/recyclerview/widget/RecyclerView$Intent;IIII)Z

    move-result p1

    return p1
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView$Intent;Z)V
    .locals 0

    .line 357
    invoke-virtual {p0, p1, p2}, Lo/Array;->e(Landroidx/recyclerview/widget/RecyclerView$Intent;Z)V

    return-void
.end method

.method public abstract c(Landroidx/recyclerview/widget/RecyclerView$Intent;IIII)Z
.end method

.method public abstract c(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$Intent;IIII)Z
.end method

.method public final d(Landroidx/recyclerview/widget/RecyclerView$Intent;Z)V
    .locals 0

    .line 316
    invoke-virtual {p0, p1, p2}, Lo/Array;->b(Landroidx/recyclerview/widget/RecyclerView$Intent;Z)V

    .line 317
    invoke-virtual {p0, p1}, Lo/Array;->g(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    return-void
.end method

.method public abstract d(Landroidx/recyclerview/widget/RecyclerView$Intent;)Z
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)Z
    .locals 6

    .line 90
    iget v2, p2, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->a:I

    .line 91
    iget v3, p2, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->b:I

    .line 92
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$Intent;->itemView:Landroid/view/View;

    if-nez p3, :cond_0

    .line 93
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p3, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->a:I

    :goto_0
    move v4, v0

    if-nez p3, :cond_1

    .line 94
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    goto :goto_1

    :cond_1
    iget p3, p3, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->b:I

    :goto_1
    move v5, p3

    .line 95
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Intent;->isRemoved()Z

    move-result p3

    if-nez p3, :cond_3

    if-ne v2, v4, :cond_2

    if-eq v3, v5, :cond_3

    .line 97
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v4

    .line 98
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    .line 96
    invoke-virtual {p2, v4, v5, p3, v0}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    .line 102
    invoke-virtual/range {v0 .. v5}, Lo/Array;->c(Landroidx/recyclerview/widget/RecyclerView$Intent;IIII)Z

    move-result p1

    return p1

    .line 107
    :cond_3
    invoke-virtual {p0, p1}, Lo/Array;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;)Z

    move-result p1

    return p1
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$Intent;Z)V
    .locals 0

    return-void
.end method

.method public abstract e(Landroidx/recyclerview/widget/RecyclerView$Intent;)Z
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)Z
    .locals 8

    if-eqz p2, :cond_1

    .line 114
    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->a:I

    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->b:I

    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->b:I

    if-eq v0, v1, :cond_1

    .line 120
    :cond_0
    iget v4, p2, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->a:I

    iget v5, p2, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->b:I

    iget v6, p3, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->a:I

    iget v7, p3, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->b:I

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lo/Array;->c(Landroidx/recyclerview/widget/RecyclerView$Intent;IIII)Z

    move-result p1

    return p1

    .line 126
    :cond_1
    invoke-virtual {p0, p1}, Lo/Array;->e(Landroidx/recyclerview/widget/RecyclerView$Intent;)Z

    move-result p1

    return p1
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)Z
    .locals 7

    .line 151
    iget v3, p3, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->a:I

    .line 152
    iget v4, p3, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->b:I

    .line 154
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Intent;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget p4, p3, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->a:I

    .line 156
    iget p3, p3, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->b:I

    move v6, p3

    move v5, p4

    goto :goto_0

    .line 158
    :cond_0
    iget p3, p4, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->a:I

    .line 159
    iget p4, p4, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->b:I

    move v5, p3

    move v6, p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 161
    invoke-virtual/range {v0 .. v6}, Lo/Array;->c(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$Intent;IIII)Z

    move-result p1

    return p1
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView$Intent;)Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lo/Array;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Intent;->isInvalid()Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public final i(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 276
    invoke-virtual {p0, p1}, Lo/Array;->r(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    .line 277
    invoke-virtual {p0, p1}, Lo/Array;->g(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    return-void
.end method

.method public final j(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 291
    invoke-virtual {p0, p1}, Lo/Array;->t(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    .line 292
    invoke-virtual {p0, p1}, Lo/Array;->g(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    return-void
.end method

.method public final k(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lo/Array;->q(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    .line 302
    invoke-virtual {p0, p1}, Lo/Array;->g(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    return-void
.end method

.method public final l(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 326
    invoke-virtual {p0, p1}, Lo/Array;->n(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    return-void
.end method

.method public final m(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 335
    invoke-virtual {p0, p1}, Lo/Array;->s(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    return-void
.end method

.method public n(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    return-void
.end method

.method public final o(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 344
    invoke-virtual {p0, p1}, Lo/Array;->p(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    return-void
.end method

.method public p(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    return-void
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    return-void
.end method

.method public r(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    return-void
.end method

.method public s(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    return-void
.end method

.method public t(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    return-void
.end method
