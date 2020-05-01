.class public Lo/Spliterator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final a:Lo/State$Application;

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
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
.method private constructor <init>(Ljava/util/List;Ljava/util/List;Lo/State$Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;",
            "Lo/State$Application;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lo/Spliterator;->d:Ljava/util/List;

    .line 65
    iput-object p2, p0, Lo/Spliterator;->e:Ljava/util/List;

    .line 66
    iput-object p3, p0, Lo/Spliterator;->a:Lo/State$Application;

    return-void
.end method

.method static b(Ljava/util/List;)Lo/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;)",
            "Lo/Spliterator;"
        }
    .end annotation

    .line 44
    new-instance v0, Lo/Spliterator;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lo/Spliterator;-><init>(Ljava/util/List;Ljava/util/List;Lo/State$Application;)V

    return-object v0
.end method

.method static c(Ljava/util/List;Ljava/util/List;Lo/State$Application;)Lo/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;",
            "Lo/State$Application;",
            ")",
            "Lo/Spliterator;"
        }
    .end annotation

    .line 56
    new-instance v0, Lo/Spliterator;

    invoke-direct {v0, p0, p1, p2}, Lo/Spliterator;-><init>(Ljava/util/List;Ljava/util/List;Lo/State$Application;)V

    return-object v0
.end method

.method static d(Ljava/util/List;)Lo/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;)",
            "Lo/Spliterator;"
        }
    .end annotation

    .line 38
    new-instance v0, Lo/Spliterator;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lo/Spliterator;-><init>(Ljava/util/List;Ljava/util/List;Lo/State$Application;)V

    return-object v0
.end method

.method static e(Ljava/util/List;)Lo/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;)",
            "Lo/Spliterator;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 32
    :cond_0
    new-instance v0, Lo/Spliterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lo/Spliterator;-><init>(Ljava/util/List;Ljava/util/List;Lo/State$Application;)V

    return-object v0
.end method


# virtual methods
.method public c(Lo/VirtualMachineError;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lo/Spliterator;->a:Lo/State$Application;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, p1}, Lo/State$Application;->b(Lo/VirtualMachineError;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lo/Spliterator;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Spliterator;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lo/Spliterator;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v1, v0}, Lo/VirtualMachineError;->b(II)V

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lo/Spliterator;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/Spliterator;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lo/Spliterator;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v1, v0}, Lo/VirtualMachineError;->e(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$Activity;)V
    .locals 1

    .line 70
    new-instance v0, Lo/SuppressWarnings;

    invoke-direct {v0, p1}, Lo/SuppressWarnings;-><init>(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    invoke-virtual {p0, v0}, Lo/Spliterator;->c(Lo/VirtualMachineError;)V

    return-void
.end method
