.class Lo/Se$3;
.super Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Se;->e(Landroidx/recyclerview/widget/RecyclerView;Lo/Se$StateListAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Se$StateListAnimator;

.field final synthetic c:Lo/Se;

.field final synthetic d:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lo/Se;Landroidx/recyclerview/widget/RecyclerView;Lo/Se$StateListAnimator;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lo/Se$3;->c:Lo/Se;

    iput-object p2, p0, Lo/Se$3;->d:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lo/Se$3;->a:Lo/Se$StateListAnimator;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 108
    iget-object p1, p0, Lo/Se$3;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    .line 110
    iget-object p1, p0, Lo/Se$3;->c:Lo/Se;

    const/4 p2, 0x0

    iput-object p2, p1, Lo/Se;->a:Lo/HwBlob;

    .line 111
    iget-object p2, p0, Lo/Se$3;->a:Lo/Se$StateListAnimator;

    invoke-static {p1, p2}, Lo/Se;->d(Lo/Se;Lo/Se$StateListAnimator;)V

    .line 112
    iget-object p1, p0, Lo/Se$3;->c:Lo/Se;

    iget-object p1, p1, Lo/Se;->a:Lo/HwBlob;

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lo/Se$3;->c:Lo/Se;

    iget-object p2, p0, Lo/Se$3;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p1, Lo/Se;->a:Lo/HwBlob;

    invoke-virtual {v0}, Lo/HwBlob;->c()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lo/Se;->a(Lo/Se;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    :cond_0
    return-void
.end method
