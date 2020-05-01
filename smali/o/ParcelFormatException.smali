.class public abstract Lo/ParcelFormatException;
.super Landroidx/recyclerview/widget/RecyclerView$Activity;
.source ""

# interfaces
.implements Lo/PatternMatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ParcelFormatException$StateListAnimator;,
        Lo/ParcelFormatException$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/ParcelFormatException$Activity;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Activity<",
        "TT;>;",
        "Lo/PatternMatcher;"
    }
.end annotation


# instance fields
.field private a:Lo/PooledStringWriter;

.field private b:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final c:I

.field private d:Landroidx/recyclerview/widget/RecyclerView;

.field protected final e:Landroid/view/LayoutInflater;

.field private final g:Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

.field private final h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/PooledStringWriter;I)V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Activity;-><init>()V

    .line 53
    new-instance v0, Lo/ParcelFormatException$4;

    invoke-direct {v0, p0}, Lo/ParcelFormatException$4;-><init>(Lo/ParcelFormatException;)V

    iput-object v0, p0, Lo/ParcelFormatException;->g:Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    .line 68
    iput-object p1, p0, Lo/ParcelFormatException;->h:Landroid/content/Context;

    .line 69
    iget-object p1, p0, Lo/ParcelFormatException;->h:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lo/ParcelFormatException;->e:Landroid/view/LayoutInflater;

    .line 70
    iput-object p2, p0, Lo/ParcelFormatException;->a:Lo/PooledStringWriter;

    .line 71
    iput p3, p0, Lo/ParcelFormatException;->c:I

    return-void
.end method

.method public static b(Landroid/content/Context;I)Lo/ParcelFormatException$StateListAnimator;
    .locals 1

    .line 462
    new-instance v0, Lo/ParcelFormatException$StateListAnimator;

    invoke-direct {v0, p0, p1}, Lo/ParcelFormatException$StateListAnimator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    return-void
.end method

.method public a(Lo/ParcelFormatException$Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Lo/ParcelFormatException$Activity;->e()V

    .line 99
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Activity;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected b()Landroid/content/Context;
    .locals 1

    .line 76
    iget-object v0, p0, Lo/ParcelFormatException;->h:Landroid/content/Context;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method protected b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;)V
    .locals 0

    .line 223
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p2, p0, Lo/ParcelFormatException;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 224
    iput-object p1, p0, Lo/ParcelFormatException;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 225
    iget-object p2, p0, Lo/ParcelFormatException;->g:Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    return-void
.end method

.method public b(Lo/ParcelFormatException$Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 175
    invoke-virtual {p1}, Lo/ParcelFormatException$Activity;->b()V

    .line 176
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Activity;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    return-void
.end method

.method public abstract b(Lo/ParcelFormatException$Activity;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public final b(Lo/ParcelFormatException$Activity;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1, p2}, Lo/ParcelFormatException;->e(Lo/ParcelFormatException$Activity;I)V

    return-void
.end method

.method public c()I
    .locals 1

    .line 92
    iget v0, p0, Lo/ParcelFormatException;->c:I

    return v0
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public c(Lo/ParcelFormatException$Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 162
    iget-object v0, p1, Lo/ParcelFormatException$Activity;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p1, v0}, Lo/ParcelFormatException$Activity;->b(Landroid/view/ViewGroup;)V

    .line 167
    :cond_0
    invoke-virtual {p0}, Lo/ParcelFormatException;->e()Lo/PooledStringWriter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/ParcelFormatException$Activity;->e(Lo/PooledStringWriter;)V

    .line 168
    invoke-virtual {p1}, Lo/ParcelFormatException$Activity;->d()V

    .line 169
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Activity;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    return-void
.end method

.method public d()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 120
    iget-object v0, p0, Lo/ParcelFormatException;->d:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public d(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public d(Lo/ParcelFormatException$Activity;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 153
    invoke-virtual {p1}, Lo/ParcelFormatException$Activity;->a()V

    .line 154
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Activity;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$Intent;)Z

    move-result p1

    return p1
.end method

.method public e()Lo/PooledStringWriter;
    .locals 1

    .line 88
    iget-object v0, p0, Lo/ParcelFormatException;->a:Lo/PooledStringWriter;

    return-object v0
.end method

.method public e(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method protected e(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView;Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;)V
    .locals 0

    const/4 p2, 0x0

    .line 233
    iput-object p2, p0, Lo/ParcelFormatException;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 234
    iput-object p2, p0, Lo/ParcelFormatException;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 235
    iget-object p2, p0, Lo/ParcelFormatException;->g:Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    return-void
.end method

.method public e(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final e(Lo/ParcelFormatException$Activity;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 145
    invoke-virtual {p0, p1, p2}, Lo/ParcelFormatException;->b(Lo/ParcelFormatException$Activity;I)V

    .line 146
    invoke-virtual {p0}, Lo/ParcelFormatException;->e()Lo/PooledStringWriter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/ParcelFormatException$Activity;->e(Lo/PooledStringWriter;)V

    .line 147
    invoke-virtual {p1, p2}, Lo/ParcelFormatException$Activity;->d(I)V

    return-void
.end method

.method public e(Lo/PooledStringWriter;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lo/ParcelFormatException;->a:Lo/PooledStringWriter;

    if-eq v0, p1, :cond_0

    .line 81
    iput-object p1, p0, Lo/ParcelFormatException;->a:Lo/PooledStringWriter;

    .line 82
    invoke-virtual {p0}, Lo/ParcelFormatException;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 0

    .line 33
    check-cast p1, Lo/ParcelFormatException$Activity;

    invoke-virtual {p0, p1, p2}, Lo/ParcelFormatException;->e(Lo/ParcelFormatException$Activity;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;ILjava/util/List;)V
    .locals 0

    .line 33
    check-cast p1, Lo/ParcelFormatException$Activity;

    invoke-virtual {p0, p1, p2, p3}, Lo/ParcelFormatException;->b(Lo/ParcelFormatException$Activity;ILjava/util/List;)V

    return-void
.end method

.method public synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$Intent;)Z
    .locals 0

    .line 33
    check-cast p1, Lo/ParcelFormatException$Activity;

    invoke-virtual {p0, p1}, Lo/ParcelFormatException;->d(Lo/ParcelFormatException$Activity;)Z

    move-result p1

    return p1
.end method

.method public synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 33
    check-cast p1, Lo/ParcelFormatException$Activity;

    invoke-virtual {p0, p1}, Lo/ParcelFormatException;->c(Lo/ParcelFormatException$Activity;)V

    return-void
.end method

.method public synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 33
    check-cast p1, Lo/ParcelFormatException$Activity;

    invoke-virtual {p0, p1}, Lo/ParcelFormatException;->b(Lo/ParcelFormatException$Activity;)V

    return-void
.end method

.method public synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 33
    check-cast p1, Lo/ParcelFormatException$Activity;

    invoke-virtual {p0, p1}, Lo/ParcelFormatException;->a(Lo/ParcelFormatException$Activity;)V

    return-void
.end method
