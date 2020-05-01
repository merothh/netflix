.class public Lo/Executor;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Executor$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/DoubleStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z

.field protected final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0}, Lo/Executor;-><init>(ILjava/util/List;)V

    return-void
.end method

.method private constructor <init>(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    .line 87
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    iput-object p2, p0, Lo/Executor;->b:Ljava/util/List;

    .line 92
    invoke-virtual {p0, p1}, Lo/Executor;->a(I)Lo/BiConsumer;

    const/4 p1, 0x0

    .line 93
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BiConsumer;

    invoke-virtual {v0}, Lo/BiConsumer;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lo/Executor;->b(J)Lo/BiConsumer;

    .line 96
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BiConsumer;

    .line 97
    invoke-virtual {v0}, Lo/BiConsumer;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 103
    :cond_1
    iput-boolean p1, p0, Lo/Executor;->a:Z

    return-void

    .line 88
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Models cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic b(Lo/BiConsumer;Lo/Consumer;)V
    .locals 0

    .line 60
    invoke-static {p0, p1}, Lo/Executor;->c(Lo/BiConsumer;Lo/Consumer;)V

    return-void
.end method

.method private static c(Lo/BiConsumer;Lo/Consumer;)V
    .locals 0

    .line 158
    invoke-virtual {p0}, Lo/BiConsumer;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 159
    iget-object p0, p1, Lo/Consumer;->itemView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p0, p1, Lo/Consumer;->itemView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private e(Lo/DoubleStream;Lo/Executor$Application;)V
    .locals 4

    .line 196
    invoke-virtual {p1, p0}, Lo/DoubleStream;->c(Lo/Executor;)V

    .line 197
    iget-object v0, p0, Lo/Executor;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 200
    iget-object v2, p0, Lo/Executor;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/BiConsumer;

    invoke-virtual {p1}, Lo/DoubleStream;->d()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Consumer;

    invoke-interface {p2, v2, v3, v1}, Lo/Executor$Application;->a(Lo/BiConsumer;Lo/Consumer;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lo/DoubleStream;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DoubleStream;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 121
    new-instance p2, Lo/Executor$2;

    invoke-direct {p2, p0}, Lo/Executor$2;-><init>(Lo/Executor;)V

    invoke-direct {p0, p1, p2}, Lo/Executor;->e(Lo/DoubleStream;Lo/Executor$Application;)V

    return-void
.end method

.method public synthetic a(Lo/TimeUnit;)V
    .locals 0

    .line 59
    check-cast p1, Lo/DoubleStream;

    invoke-virtual {p0, p1}, Lo/Executor;->d(Lo/DoubleStream;)V

    return-void
.end method

.method public synthetic a(Lo/TimeUnit;Lo/BiConsumer;)V
    .locals 0

    .line 59
    check-cast p1, Lo/DoubleStream;

    invoke-virtual {p0, p1, p2}, Lo/Executor;->e(Lo/DoubleStream;Lo/BiConsumer;)V

    return-void
.end method

.method protected a(Lo/BiConsumer;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method protected final b()I
    .locals 2

    .line 216
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You should set a layout with layout(...) instead of using this."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Lo/DoubleStream;

    invoke-virtual {p0, p1}, Lo/Executor;->d(Lo/DoubleStream;)V

    return-void
.end method

.method public b(Lo/DoubleStream;)V
    .locals 0

    .line 168
    invoke-virtual {p1}, Lo/DoubleStream;->b()V

    return-void
.end method

.method public synthetic b(Lo/TimeUnit;)V
    .locals 0

    .line 59
    check-cast p1, Lo/DoubleStream;

    invoke-virtual {p0, p1}, Lo/Executor;->c(Lo/DoubleStream;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Lo/DoubleStream;

    invoke-virtual {p0, p1}, Lo/Executor;->b(Lo/DoubleStream;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 59
    check-cast p1, Lo/DoubleStream;

    invoke-virtual {p0, p1, p2}, Lo/Executor;->a(Lo/DoubleStream;Ljava/util/List;)V

    return-void
.end method

.method public c(Lo/DoubleStream;)V
    .locals 1

    .line 174
    new-instance v0, Lo/Executor$3;

    invoke-direct {v0, p0}, Lo/Executor$3;-><init>(Lo/Executor;)V

    invoke-direct {p0, p1, v0}, Lo/Executor;->e(Lo/DoubleStream;Lo/Executor$Application;)V

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 59
    check-cast p1, Lo/DoubleStream;

    invoke-virtual {p0, p1}, Lo/Executor;->e(Lo/DoubleStream;)V

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;Ljava/util/List;)V
    .locals 0

    .line 59
    check-cast p1, Lo/DoubleStream;

    invoke-virtual {p0, p1, p2}, Lo/Executor;->a(Lo/DoubleStream;Ljava/util/List;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Lo/DoubleStream;

    invoke-virtual {p0, p1}, Lo/Executor;->e(Lo/DoubleStream;)V

    return-void
.end method

.method public d(Lo/DoubleStream;)V
    .locals 1

    .line 186
    new-instance v0, Lo/Executor$4;

    invoke-direct {v0, p0}, Lo/Executor$4;-><init>(Lo/Executor;)V

    invoke-direct {p0, p1, v0}, Lo/Executor;->e(Lo/DoubleStream;Lo/Executor$Application;)V

    return-void
.end method

.method public e(III)I
    .locals 2

    .line 211
    iget-object v0, p0, Lo/Executor;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BiConsumer;

    invoke-virtual {v0, p1, p2, p3}, Lo/BiConsumer;->a(III)I

    move-result p1

    return p1
.end method

.method public synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Lo/DoubleStream;

    invoke-virtual {p0, p1}, Lo/Executor;->c(Lo/DoubleStream;)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 59
    check-cast p1, Lo/DoubleStream;

    invoke-virtual {p0, p1, p2}, Lo/Executor;->e(Lo/DoubleStream;Lo/BiConsumer;)V

    return-void
.end method

.method public e(Lo/DoubleStream;)V
    .locals 1

    .line 109
    new-instance v0, Lo/Executor$5;

    invoke-direct {v0, p0}, Lo/Executor$5;-><init>(Lo/Executor;)V

    invoke-direct {p0, p1, v0}, Lo/Executor;->e(Lo/DoubleStream;Lo/Executor$Application;)V

    return-void
.end method

.method public e(Lo/DoubleStream;Lo/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DoubleStream;",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    .line 132
    instance-of v0, p2, Lo/Executor;

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0, p1}, Lo/Executor;->e(Lo/DoubleStream;)V

    return-void

    .line 137
    :cond_0
    check-cast p2, Lo/Executor;

    .line 139
    new-instance v0, Lo/Executor$1;

    invoke-direct {v0, p0, p2}, Lo/Executor$1;-><init>(Lo/Executor;Lo/Executor;)V

    invoke-direct {p0, p1, v0}, Lo/Executor;->e(Lo/DoubleStream;Lo/Executor$Application;)V

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 59
    check-cast p1, Lo/DoubleStream;

    invoke-virtual {p0, p1}, Lo/Executor;->b(Lo/DoubleStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 250
    :cond_0
    instance-of v0, p1, Lo/Executor;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 253
    :cond_1
    invoke-super {p0, p1}, Lo/IntBinaryOperator;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 257
    :cond_2
    check-cast p1, Lo/Executor;

    .line 259
    iget-object v0, p0, Lo/Executor;->b:Ljava/util/List;

    iget-object p1, p1, Lo/Executor;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lo/Executor;->a:Z

    return v0
.end method

.method protected final h()Lo/DoubleStream;
    .locals 1

    .line 242
    new-instance v0, Lo/DoubleStream;

    invoke-direct {v0}, Lo/DoubleStream;-><init>()V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 264
    invoke-super {p0}, Lo/IntBinaryOperator;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 265
    iget-object v1, p0, Lo/Executor;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lo/Executor;->h()Lo/DoubleStream;

    move-result-object v0

    return-object v0
.end method
