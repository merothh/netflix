.class final Lo/Predicate;
.super Landroidx/recyclerview/widget/RecyclerView$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Activity<",
        "Lo/Consumer;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Lo/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BiConsumer<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lo/BiConsumer;Landroid/view/ViewGroup;I)Lo/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lo/Consumer;"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iput-object p1, p0, Lo/Predicate;->c:Lo/BiConsumer;

    .line 234
    invoke-virtual {p0, p2, p3}, Lo/Predicate;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;

    move-result-object p1

    const-string p2, "createViewHolder(parent, viewType)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/Consumer;

    const/4 p2, 0x0

    .line 235
    check-cast p2, Lo/BiConsumer;

    iput-object p2, p0, Lo/Predicate;->c:Lo/BiConsumer;

    return-object p1
.end method

.method public e(Landroid/view/ViewGroup;I)Lo/Consumer;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    new-instance p2, Lo/Consumer;

    iget-object v0, p0, Lo/Predicate;->c:Lo/BiConsumer;

    if-nez v0, :cond_0

    invoke-static {}, Lo/amh;->c()V

    :cond_0
    invoke-virtual {v0, p1}, Lo/BiConsumer;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lo/Predicate;->c:Lo/BiConsumer;

    if-nez v0, :cond_1

    invoke-static {}, Lo/amh;->c()V

    :cond_1
    invoke-virtual {v0}, Lo/BiConsumer;->g()Z

    move-result v0

    invoke-direct {p2, p1, v0}, Lo/Consumer;-><init>(Landroid/view/View;Z)V

    return-object p2
.end method

.method public e(Lo/Consumer;I)V
    .locals 0

    const-string p2, "holder"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 0

    .line 228
    check-cast p1, Lo/Consumer;

    invoke-virtual {p0, p1, p2}, Lo/Predicate;->e(Lo/Consumer;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 228
    invoke-virtual {p0, p1, p2}, Lo/Predicate;->e(Landroid/view/ViewGroup;I)Lo/Consumer;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p1
.end method
