.class Lo/ServiceManager$4;
.super Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/ServiceManager;


# direct methods
.method constructor <init>(Lo/ServiceManager;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lo/ServiceManager$4;->c:Lo/ServiceManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 5

    .line 59
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;->e(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 60
    iget-object p1, p0, Lo/ServiceManager$4;->c:Lo/ServiceManager;

    invoke-static {p1}, Lo/ServiceManager;->e(Lo/ServiceManager;)Lo/ServiceManager$StateListAnimator;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "GravitySnapHelper"

    const/4 v2, -0x1

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 62
    iget-object p1, p0, Lo/ServiceManager$4;->c:Lo/ServiceManager;

    invoke-static {p1}, Lo/ServiceManager;->c(Lo/ServiceManager;)I

    move-result p1

    if-eq p1, v2, :cond_0

    .line 63
    iget-object p1, p0, Lo/ServiceManager$4;->c:Lo/ServiceManager;

    invoke-static {p1}, Lo/ServiceManager;->b(Lo/ServiceManager;)I

    move-result p1

    iget-object v3, p0, Lo/ServiceManager$4;->c:Lo/ServiceManager;

    invoke-static {v3}, Lo/ServiceManager;->c(Lo/ServiceManager;)I

    move-result v3

    if-eq p1, v3, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 64
    iget-object v4, p0, Lo/ServiceManager$4;->c:Lo/ServiceManager;

    invoke-static {v4}, Lo/ServiceManager;->c(Lo/ServiceManager;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v3

    const-string v3, "onSnap at %s"

    invoke-static {v1, v3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 65
    iget-object p1, p0, Lo/ServiceManager$4;->c:Lo/ServiceManager;

    invoke-static {p1}, Lo/ServiceManager;->e(Lo/ServiceManager;)Lo/ServiceManager$StateListAnimator;

    move-result-object v3

    iget-object v4, p0, Lo/ServiceManager$4;->c:Lo/ServiceManager;

    invoke-static {v4}, Lo/ServiceManager;->c(Lo/ServiceManager;)I

    move-result v4

    invoke-interface {v3, v4}, Lo/ServiceManager$StateListAnimator;->d(I)I

    move-result v3

    invoke-static {p1, v3}, Lo/ServiceManager;->c(Lo/ServiceManager;I)I

    goto :goto_0

    :cond_0
    const-string p1, "No snap"

    .line 68
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-ne p2, v0, :cond_2

    .line 73
    iget-object p1, p0, Lo/ServiceManager$4;->c:Lo/ServiceManager;

    invoke-static {p1, v2}, Lo/ServiceManager;->b(Lo/ServiceManager;I)I

    const-string p1, "Reset mSnappedPosition"

    .line 74
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p1, p0, Lo/ServiceManager$4;->c:Lo/ServiceManager;

    invoke-static {p1}, Lo/ServiceManager;->a(Lo/ServiceManager;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->h()I

    move-result p1

    if-eq p1, v2, :cond_2

    .line 77
    iget-object p2, p0, Lo/ServiceManager$4;->c:Lo/ServiceManager;

    invoke-static {p2, p1}, Lo/ServiceManager;->e(Lo/ServiceManager;I)I

    :cond_2
    return-void
.end method
