.class public final Lo/OfLong;
.super Lo/Locale;
.source ""

# interfaces
.implements Lo/Iterator$TaskDescription;


# static fields
.field private static final i:Lo/State$StateListAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/State$StateListAnimator<",
            "Lo/BiConsumer<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lo/OfPrimitive;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/BadPaddingException;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lo/Inflater;

.field private final d:Lo/Iterator;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 191
    new-instance v0, Lo/OfLong$2;

    invoke-direct {v0}, Lo/OfLong$2;-><init>()V

    sput-object v0, Lo/OfLong;->i:Lo/State$StateListAnimator;

    return-void
.end method

.method constructor <init>(Lo/OfPrimitive;Landroid/os/Handler;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Lo/Locale;-><init>()V

    .line 17
    new-instance v0, Lo/Inflater;

    invoke-direct {v0}, Lo/Inflater;-><init>()V

    iput-object v0, p0, Lo/OfLong;->c:Lo/Inflater;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/OfLong;->b:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lo/OfLong;->a:Lo/OfPrimitive;

    .line 25
    new-instance p1, Lo/Iterator;

    sget-object v0, Lo/OfLong;->i:Lo/State$StateListAnimator;

    invoke-direct {p1, p2, p0, v0}, Lo/Iterator;-><init>(Landroid/os/Handler;Lo/Iterator$TaskDescription;Lo/State$StateListAnimator;)V

    iput-object p1, p0, Lo/OfLong;->d:Lo/Iterator;

    .line 30
    iget-object p1, p0, Lo/OfLong;->c:Lo/Inflater;

    invoke-virtual {p0, p1}, Lo/OfLong;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;)V

    return-void
.end method


# virtual methods
.method public a(Lo/Consumer;)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Lo/Locale;->a(Lo/Consumer;)V

    .line 109
    iget-object v0, p0, Lo/OfLong;->a:Lo/OfPrimitive;

    invoke-virtual {p1}, Lo/Consumer;->b()Lo/BiConsumer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/OfPrimitive;->onViewDetachedFromWindow(Lo/Consumer;Lo/BiConsumer;)V

    return-void
.end method

.method a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method b(II)V
    .locals 2

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lo/OfLong;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 177
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 178
    iget-object v1, p0, Lo/OfLong;->c:Lo/Inflater;

    invoke-virtual {v1}, Lo/Inflater;->e()V

    .line 179
    invoke-virtual {p0, p1, p2}, Lo/OfLong;->notifyItemMoved(II)V

    .line 180
    iget-object p1, p0, Lo/OfLong;->c:Lo/Inflater;

    invoke-virtual {p1}, Lo/Inflater;->b()V

    .line 182
    iget-object p1, p0, Lo/OfLong;->d:Lo/Iterator;

    invoke-virtual {p1, v0}, Lo/Iterator;->a(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lo/OfLong;->a:Lo/OfPrimitive;

    invoke-virtual {p1}, Lo/OfPrimitive;->requestModelBuild()V

    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/RuntimeException;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lo/OfLong;->a:Lo/OfPrimitive;

    invoke-virtual {v0, p1}, Lo/OfPrimitive;->onExceptionSwallowed(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public b(Lo/BadPaddingException;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lo/OfLong;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lo/Consumer;Lo/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Consumer;",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lo/OfLong;->a:Lo/OfPrimitive;

    invoke-virtual {v0, p1, p2}, Lo/OfPrimitive;->onModelUnbound(Lo/Consumer;Lo/BiConsumer;)V

    return-void
.end method

.method public c(I)Lo/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/BiConsumer<",
            "*>;"
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lo/OfLong;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    return-object p1
.end method

.method public c(Lo/BadPaddingException;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lo/OfLong;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lo/Consumer;)V
    .locals 2

    .line 102
    invoke-super {p0, p1}, Lo/Locale;->c(Lo/Consumer;)V

    .line 103
    iget-object v0, p0, Lo/OfLong;->a:Lo/OfPrimitive;

    invoke-virtual {p1}, Lo/Consumer;->b()Lo/BiConsumer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/OfPrimitive;->onViewAttachedToWindow(Lo/Consumer;Lo/BiConsumer;)V

    return-void
.end method

.method d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lo/OfLong;->d:Lo/Iterator;

    invoke-virtual {v0}, Lo/Iterator;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method d(Lcom/airbnb/epoxy/ControllerModelList;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lo/OfLong;->d:Lo/Iterator;

    invoke-virtual {v0, p1}, Lo/Iterator;->c(Ljava/util/List;)V

    return-void
.end method

.method protected d(Lo/Consumer;Lo/BiConsumer;ILo/BiConsumer;)V
    .locals 1
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

    .line 115
    iget-object v0, p0, Lo/OfLong;->a:Lo/OfPrimitive;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/OfPrimitive;->onModelBound(Lo/Consumer;Lo/BiConsumer;ILo/BiConsumer;)V

    return-void
.end method

.method public d(Lo/Spliterator;)V
    .locals 2

    .line 67
    iget-object v0, p1, Lo/Spliterator;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lo/OfLong;->e:I

    .line 68
    iget-object v0, p0, Lo/OfLong;->c:Lo/Inflater;

    invoke-virtual {v0}, Lo/Inflater;->e()V

    .line 69
    invoke-virtual {p1, p0}, Lo/Spliterator;->d(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 70
    iget-object v0, p0, Lo/OfLong;->c:Lo/Inflater;

    invoke-virtual {v0}, Lo/Inflater;->b()V

    .line 72
    iget-object v0, p0, Lo/OfLong;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 73
    iget-object v1, p0, Lo/OfLong;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/BadPaddingException;

    invoke-interface {v1, p1}, Lo/BadPaddingException;->c(Lo/Spliterator;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Lo/BiConsumer;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;)I"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lo/OfLong;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 158
    invoke-virtual {p0}, Lo/OfLong;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/BiConsumer;

    .line 159
    invoke-virtual {v2}, Lo/BiConsumer;->d()J

    move-result-wide v2

    invoke-virtual {p1}, Lo/BiConsumer;->d()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public e()Lo/Set;
    .locals 1

    .line 170
    invoke-super {p0}, Lo/Locale;->e()Lo/Set;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/BiConsumer<",
            "*>;>;"
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lo/OfLong;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 49
    iget v0, p0, Lo/OfLong;->e:I

    return v0
.end method

.method public j()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lo/OfLong;->d:Lo/Iterator;

    invoke-virtual {v0}, Lo/Iterator;->a()Z

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lo/OfLong;->a:Lo/OfPrimitive;

    invoke-virtual {v0, p1}, Lo/OfPrimitive;->onAttachedToRecyclerViewInternal(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lo/OfLong;->a:Lo/OfPrimitive;

    invoke-virtual {v0, p1}, Lo/OfPrimitive;->onDetachedFromRecyclerViewInternal(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 16
    check-cast p1, Lo/Consumer;

    invoke-virtual {p0, p1}, Lo/OfLong;->c(Lo/Consumer;)V

    return-void
.end method

.method public synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 16
    check-cast p1, Lo/Consumer;

    invoke-virtual {p0, p1}, Lo/OfLong;->a(Lo/Consumer;)V

    return-void
.end method
