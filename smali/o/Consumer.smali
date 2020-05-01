.class public Lo/Consumer;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# instance fields
.field private b:Lo/BiConsumer;

.field c:Lcom/airbnb/epoxy/ViewHolderState$ViewState;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lo/TimeUnit;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_0

    .line 30
    new-instance p1, Lcom/airbnb/epoxy/ViewHolderState$ViewState;

    invoke-direct {p1}, Lcom/airbnb/epoxy/ViewHolderState$ViewState;-><init>()V

    iput-object p1, p0, Lo/Consumer;->c:Lcom/airbnb/epoxy/ViewHolderState$ViewState;

    .line 31
    iget-object p1, p0, Lo/Consumer;->c:Lcom/airbnb/epoxy/ViewHolderState$ViewState;

    iget-object p2, p0, Lo/Consumer;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/airbnb/epoxy/ViewHolderState$ViewState;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .line 119
    iget-object v0, p0, Lo/Consumer;->b:Lo/BiConsumer;

    if-eqz v0, :cond_0

    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This holder is not currently bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 1

    .line 78
    iget-object v0, p0, Lo/Consumer;->e:Lo/TimeUnit;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/Consumer;->itemView:Landroid/view/View;

    :goto_0
    return-object v0
.end method

.method public b()Lo/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/BiConsumer<",
            "*>;"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lo/Consumer;->d()V

    .line 115
    iget-object v0, p0, Lo/Consumer;->b:Lo/BiConsumer;

    return-object v0
.end method

.method public c()V
    .locals 2

    .line 36
    iget-object v0, p0, Lo/Consumer;->c:Lcom/airbnb/epoxy/ViewHolderState$ViewState;

    if-eqz v0, :cond_0

    .line 37
    iget-object v1, p0, Lo/Consumer;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/ViewHolderState$ViewState;->e(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 91
    invoke-direct {p0}, Lo/Consumer;->d()V

    .line 93
    iget-object v0, p0, Lo/Consumer;->b:Lo/BiConsumer;

    invoke-virtual {p0}, Lo/Consumer;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public d(Lo/BiConsumer;Lo/BiConsumer;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer;",
            "Lo/BiConsumer<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 43
    iput-object p3, p0, Lo/Consumer;->d:Ljava/util/List;

    .line 45
    iget-object v0, p0, Lo/Consumer;->e:Lo/TimeUnit;

    if-nez v0, :cond_0

    instance-of v0, p1, Lo/IntBinaryOperator;

    if-eqz v0, :cond_0

    .line 46
    move-object v0, p1

    check-cast v0, Lo/IntBinaryOperator;

    invoke-virtual {v0}, Lo/IntBinaryOperator;->n()Lo/TimeUnit;

    move-result-object v0

    iput-object v0, p0, Lo/Consumer;->e:Lo/TimeUnit;

    .line 47
    iget-object v0, p0, Lo/Consumer;->e:Lo/TimeUnit;

    iget-object v1, p0, Lo/Consumer;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lo/TimeUnit;->d(Landroid/view/View;)V

    .line 50
    :cond_0
    instance-of v0, p1, Lo/IntToLongFunction;

    if-eqz v0, :cond_1

    .line 53
    move-object v1, p1

    check-cast v1, Lo/IntToLongFunction;

    invoke-virtual {p0}, Lo/Consumer;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p0, v2, p4}, Lo/IntToLongFunction;->a(Lo/Consumer;Ljava/lang/Object;I)V

    :cond_1
    if-eqz p2, :cond_2

    .line 58
    invoke-virtual {p0}, Lo/Consumer;->a()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lo/BiConsumer;->e(Ljava/lang/Object;Lo/BiConsumer;)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 61
    invoke-virtual {p0}, Lo/Consumer;->a()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {p0}, Lo/Consumer;->a()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lo/BiConsumer;->c(Ljava/lang/Object;Ljava/util/List;)V

    :goto_0
    if-eqz v0, :cond_4

    .line 70
    move-object p2, p1

    check-cast p2, Lo/IntToLongFunction;

    invoke-virtual {p0}, Lo/Consumer;->a()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3, p4}, Lo/IntToLongFunction;->b(Ljava/lang/Object;I)V

    .line 73
    :cond_4
    iput-object p1, p0, Lo/Consumer;->b:Lo/BiConsumer;

    return-void
.end method

.method public e()V
    .locals 2

    .line 82
    invoke-direct {p0}, Lo/Consumer;->d()V

    .line 84
    iget-object v0, p0, Lo/Consumer;->b:Lo/BiConsumer;

    invoke-virtual {p0}, Lo/Consumer;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lo/Consumer;->b:Lo/BiConsumer;

    .line 87
    iput-object v0, p0, Lo/Consumer;->d:Ljava/util/List;

    return-void
.end method

.method public e(FFII)V
    .locals 6

    .line 102
    invoke-direct {p0}, Lo/Consumer;->d()V

    .line 104
    iget-object v0, p0, Lo/Consumer;->b:Lo/BiConsumer;

    .line 105
    invoke-virtual {p0}, Lo/Consumer;->a()Ljava/lang/Object;

    move-result-object v5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 104
    invoke-virtual/range {v0 .. v5}, Lo/BiConsumer;->d(FFIILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EpoxyViewHolder{epoxyModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Consumer;->b:Lo/BiConsumer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Consumer;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", super="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
