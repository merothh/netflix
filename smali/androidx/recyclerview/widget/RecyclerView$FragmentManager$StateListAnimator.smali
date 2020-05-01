.class public Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateListAnimator"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroidx/recyclerview/widget/RecyclerView$Intent;)Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;
    .locals 1

    const/4 v0, 0x0

    .line 13437
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;
    .locals 0

    .line 13453
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$Intent;->itemView:Landroid/view/View;

    .line 13454
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->a:I

    .line 13455
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->b:I

    .line 13456
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->e:I

    .line 13457
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;->c:I

    return-object p0
.end method
