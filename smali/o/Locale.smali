.class public abstract Lo/Locale;
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
.field private final a:Lo/KeyAgreement;

.field private b:Lcom/airbnb/epoxy/ViewHolderState;

.field private final c:Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;

.field private final d:Lo/Set;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Activity;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lo/Locale;->e:I

    .line 21
    new-instance v1, Lo/KeyAgreement;

    invoke-direct {v1}, Lo/KeyAgreement;-><init>()V

    iput-object v1, p0, Lo/Locale;->a:Lo/KeyAgreement;

    .line 26
    new-instance v1, Lo/Set;

    invoke-direct {v1}, Lo/Set;-><init>()V

    iput-object v1, p0, Lo/Locale;->d:Lo/Set;

    .line 27
    new-instance v1, Lcom/airbnb/epoxy/ViewHolderState;

    invoke-direct {v1}, Lcom/airbnb/epoxy/ViewHolderState;-><init>()V

    iput-object v1, p0, Lo/Locale;->b:Lcom/airbnb/epoxy/ViewHolderState;

    .line 29
    new-instance v1, Lo/Locale$3;

    invoke-direct {v1, p0}, Lo/Locale$3;-><init>(Lo/Locale;)V

    iput-object v1, p0, Lo/Locale;->c:Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;

    .line 53
    invoke-virtual {p0, v0}, Lo/Locale;->setHasStableIds(Z)V

    .line 54
    iget-object v1, p0, Lo/Locale;->c:Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;->a(Z)V

    return-void
.end method

.method static synthetic a(Lo/Locale;)I
    .locals 0

    .line 15
    iget p0, p0, Lo/Locale;->e:I

    return p0
.end method


# virtual methods
.method public a(Lo/Consumer;)V
    .locals 1

    .line 204
    invoke-virtual {p1}, Lo/Consumer;->b()Lo/BiConsumer;

    move-result-object v0

    invoke-virtual {p1}, Lo/Consumer;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/BiConsumer;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lo/Consumer;I)V
    .locals 1

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lo/Locale;->e(Lo/Consumer;ILjava/util/List;)V

    return-void
.end method

.method a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    .line 280
    iget v0, p0, Lo/Locale;->e:I

    return v0
.end method

.method b(I)Lo/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/BiConsumer<",
            "*>;"
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Lo/Locale;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    return-object p1
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lo/Locale;->d:Lo/Set;

    invoke-virtual {v0}, Lo/Set;->a()I

    move-result v0

    if-gtz v0, :cond_2

    if-eqz p1, :cond_1

    const-string v0, "saved_state_view_holders"

    .line 232
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/airbnb/epoxy/ViewHolderState;

    iput-object p1, p0, Lo/Locale;->b:Lcom/airbnb/epoxy/ViewHolderState;

    .line 233
    iget-object p1, p0, Lo/Locale;->b:Lcom/airbnb/epoxy/ViewHolderState;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Tried to restore instance state, but onSaveInstanceState was never called."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 226
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "State cannot be restored once views have been bound. It should be done before adding the adapter to the recycler view."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected b(Ljava/lang/RuntimeException;)V
    .locals 0

    return-void
.end method

.method public b(Lo/Consumer;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lo/Locale;->b:Lcom/airbnb/epoxy/ViewHolderState;

    invoke-virtual {v0, p1}, Lcom/airbnb/epoxy/ViewHolderState;->e(Lo/Consumer;)V

    .line 171
    iget-object v0, p0, Lo/Locale;->d:Lo/Set;

    invoke-virtual {v0, p1}, Lo/Set;->e(Lo/Consumer;)V

    .line 173
    invoke-virtual {p1}, Lo/Consumer;->b()Lo/BiConsumer;

    move-result-object v0

    .line 174
    invoke-virtual {p1}, Lo/Consumer;->e()V

    .line 175
    invoke-virtual {p0, p1, v0}, Lo/Locale;->b(Lo/Consumer;Lo/BiConsumer;)V

    return-void
.end method

.method protected b(Lo/Consumer;Lo/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Consumer;",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method protected b(Lo/Consumer;Lo/BiConsumer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Consumer;",
            "Lo/BiConsumer<",
            "*>;I)V"
        }
    .end annotation

    return-void
.end method

.method public c()Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;
    .locals 1

    .line 265
    iget-object v0, p0, Lo/Locale;->c:Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;

    return-object v0
.end method

.method public c(Lo/Consumer;)V
    .locals 1

    .line 197
    invoke-virtual {p1}, Lo/Consumer;->b()Lo/BiConsumer;

    move-result-object v0

    invoke-virtual {p1}, Lo/Consumer;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/BiConsumer;->e(Ljava/lang/Object;)V

    return-void
.end method

.method abstract d()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;"
        }
    .end annotation
.end method

.method public d(Landroid/view/ViewGroup;I)Lo/Consumer;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/Locale;->a:Lo/KeyAgreement;

    invoke-virtual {v0, p0, p2}, Lo/KeyAgreement;->a(Lo/Locale;I)Lo/BiConsumer;

    move-result-object p2

    .line 80
    invoke-virtual {p2, p1}, Lo/BiConsumer;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 81
    new-instance v0, Lo/Consumer;

    invoke-virtual {p2}, Lo/BiConsumer;->g()Z

    move-result p2

    invoke-direct {v0, p1, p2}, Lo/Consumer;-><init>(Landroid/view/View;Z)V

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .line 276
    iput p1, p0, Lo/Locale;->e:I

    return-void
.end method

.method protected d(Lo/Consumer;Lo/BiConsumer;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Consumer;",
            "Lo/BiConsumer<",
            "*>;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1, p2, p3}, Lo/Locale;->b(Lo/Consumer;Lo/BiConsumer;I)V

    return-void
.end method

.method d(Lo/Consumer;Lo/BiConsumer;ILo/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Consumer;",
            "Lo/BiConsumer<",
            "*>;I",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    .line 131
    invoke-virtual {p0, p1, p2, p3}, Lo/Locale;->b(Lo/Consumer;Lo/BiConsumer;I)V

    return-void
.end method

.method protected e(Lo/BiConsumer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;)I"
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Lo/Locale;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 250
    invoke-virtual {p0}, Lo/Locale;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected e()Lo/Set;
    .locals 1

    .line 148
    iget-object v0, p0, Lo/Locale;->d:Lo/Set;

    return-object v0
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 3

    .line 211
    iget-object v0, p0, Lo/Locale;->d:Lo/Set;

    invoke-virtual {v0}, Lo/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Consumer;

    .line 212
    iget-object v2, p0, Lo/Locale;->b:Lcom/airbnb/epoxy/ViewHolderState;

    invoke-virtual {v2, v1}, Lcom/airbnb/epoxy/ViewHolderState;->e(Lo/Consumer;)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lo/Locale;->b:Lcom/airbnb/epoxy/ViewHolderState;

    invoke-virtual {v0}, Lcom/airbnb/epoxy/ViewHolderState;->a()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lo/Locale;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 216
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must have stable ids when saving view holder state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 219
    :cond_2
    :goto_1
    iget-object v0, p0, Lo/Locale;->b:Lcom/airbnb/epoxy/ViewHolderState;

    const-string v1, "saved_state_view_holders"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public e(Lo/Consumer;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Consumer;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p2}, Lo/Locale;->b(I)Lo/BiConsumer;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lo/Locale;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p0, p2}, Lo/Locale;->getItemId(I)J

    move-result-wide v1

    invoke-static {p3, v1, v2}, Lo/Map;->c(Ljava/util/List;J)Lo/BiConsumer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 98
    :goto_0
    invoke-virtual {p1, v0, v1, p3, p2}, Lo/Consumer;->d(Lo/BiConsumer;Lo/BiConsumer;Ljava/util/List;I)V

    .line 100
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    iget-object v2, p0, Lo/Locale;->b:Lcom/airbnb/epoxy/ViewHolderState;

    invoke-virtual {v2, p1}, Lcom/airbnb/epoxy/ViewHolderState;->b(Lo/Consumer;)V

    .line 107
    :cond_1
    iget-object v2, p0, Lo/Locale;->d:Lo/Set;

    invoke-virtual {v2, p1}, Lo/Set;->b(Lo/Consumer;)V

    .line 109
    invoke-virtual {p0}, Lo/Locale;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    invoke-virtual {p0, p1, v0, p2, v1}, Lo/Locale;->d(Lo/Consumer;Lo/BiConsumer;ILo/BiConsumer;)V

    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {p0, p1, v0, p2, p3}, Lo/Locale;->d(Lo/Consumer;Lo/BiConsumer;ILjava/util/List;)V

    :goto_1
    return-void
.end method

.method public e(Lo/Consumer;)Z
    .locals 1

    .line 190
    invoke-virtual {p1}, Lo/Consumer;->b()Lo/BiConsumer;

    move-result-object v0

    invoke-virtual {p1}, Lo/Consumer;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/BiConsumer;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getItemCount()I
    .locals 1

    .line 67
    invoke-virtual {p0}, Lo/Locale;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 161
    invoke-virtual {p0}, Lo/Locale;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    invoke-virtual {p1}, Lo/BiConsumer;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 153
    iget-object v0, p0, Lo/Locale;->a:Lo/KeyAgreement;

    invoke-virtual {p0, p1}, Lo/Locale;->b(I)Lo/BiConsumer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/KeyAgreement;->b(Lo/BiConsumer;)I

    move-result p1

    return p1
.end method

.method public h()Z
    .locals 2

    .line 284
    iget v0, p0, Lo/Locale;->e:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 0

    .line 15
    check-cast p1, Lo/Consumer;

    invoke-virtual {p0, p1, p2}, Lo/Locale;->a(Lo/Consumer;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;ILjava/util/List;)V
    .locals 0

    .line 15
    check-cast p1, Lo/Consumer;

    invoke-virtual {p0, p1, p2, p3}, Lo/Locale;->e(Lo/Consumer;ILjava/util/List;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lo/Locale;->d(Landroid/view/ViewGroup;I)Lo/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$Intent;)Z
    .locals 0

    .line 15
    check-cast p1, Lo/Consumer;

    invoke-virtual {p0, p1}, Lo/Locale;->e(Lo/Consumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 15
    check-cast p1, Lo/Consumer;

    invoke-virtual {p0, p1}, Lo/Locale;->c(Lo/Consumer;)V

    return-void
.end method

.method public synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 15
    check-cast p1, Lo/Consumer;

    invoke-virtual {p0, p1}, Lo/Locale;->a(Lo/Consumer;)V

    return-void
.end method

.method public synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 15
    check-cast p1, Lo/Consumer;

    invoke-virtual {p0, p1}, Lo/Locale;->b(Lo/Consumer;)V

    return-void
.end method
