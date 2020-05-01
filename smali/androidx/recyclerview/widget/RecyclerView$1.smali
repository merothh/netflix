.class Landroidx/recyclerview/widget/RecyclerView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Executable$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 610
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$1;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)V
    .locals 1

    .line 620
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$1;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->animateAppearance(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)V

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)V
    .locals 1

    const/4 v0, 0x0

    .line 626
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Intent;->setIsRecyclable(Z)V

    .line 627
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$1;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$1;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$FragmentManager;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;->e(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 633
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$1;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    goto :goto_0

    .line 635
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$1;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$FragmentManager;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;->b(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 636
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$1;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)V
    .locals 1

    .line 614
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$1;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$ClipData;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$ClipData;->c(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    .line 615
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$1;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->animateDisappearance(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)V

    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 2

    .line 641
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$1;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$Intent;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$1;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$ClipData;

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ClipData;)V

    return-void
.end method
