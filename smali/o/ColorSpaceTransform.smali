.class Lo/ColorSpaceTransform;
.super Lo/SizeAreaComparator;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/SizeAreaComparator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lo/ConstantState<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, p3, v0}, Lo/SizeAreaComparator;-><init>(IIIZ)V

    .line 24
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lo/ColorSpaceTransform;->e:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lo/ColorSpaceTransform;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ConstantState;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lo/ConstantState;

    invoke-direct {v0}, Lo/ConstantState;-><init>()V

    .line 42
    :cond_0
    invoke-virtual {v0, p1}, Lo/ConstantState;->e(Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lo/ColorSpaceTransform;->b:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lo/ColorSpaceTransform;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ConstantState;

    .line 30
    invoke-virtual {v0}, Lo/ConstantState;->d()Ljava/lang/Object;

    move-result-object v1

    .line 31
    invoke-virtual {v0}, Lo/ConstantState;->b()V

    .line 32
    iget-object v2, p0, Lo/ColorSpaceTransform;->e:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
