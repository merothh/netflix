.class public abstract Lo/IntBinaryOperator;
.super Lo/BiConsumer;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/TimeUnit;",
        ">",
        "Lo/BiConsumer<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lo/BiConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 77
    invoke-super {p0, p1}, Lo/BiConsumer;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lo/TimeUnit;Lo/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    .line 39
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->e(Ljava/lang/Object;Lo/BiConsumer;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 15
    check-cast p1, Lo/TimeUnit;

    invoke-virtual {p0, p1}, Lo/IntBinaryOperator;->d(Lo/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lo/TimeUnit;

    invoke-virtual {p0, p1, p2}, Lo/IntBinaryOperator;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lo/TimeUnit;

    invoke-virtual {p0, p1}, Lo/IntBinaryOperator;->a(Lo/TimeUnit;)V

    return-void
.end method

.method public b(Lo/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 72
    invoke-super {p0, p1}, Lo/BiConsumer;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public c(FFIILo/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFIITT;)V"
        }
    .end annotation

    .line 59
    invoke-super/range {p0 .. p5}, Lo/BiConsumer;->d(FFIILjava/lang/Object;)V

    return-void
.end method

.method public c(ILo/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 50
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lo/TimeUnit;

    invoke-virtual {p0, p1}, Lo/IntBinaryOperator;->e(Lo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 15
    check-cast p1, Lo/TimeUnit;

    invoke-virtual {p0, p1, p2}, Lo/IntBinaryOperator;->c(Lo/TimeUnit;Ljava/util/List;)V

    return-void
.end method

.method public c(Lo/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 29
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lo/TimeUnit;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->c(Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 15
    move-object v5, p5

    check-cast v5, Lo/TimeUnit;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/IntBinaryOperator;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lo/TimeUnit;

    invoke-virtual {p0, p1}, Lo/IntBinaryOperator;->c(Lo/TimeUnit;)V

    return-void
.end method

.method public d(Lo/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 67
    invoke-super {p0, p1}, Lo/BiConsumer;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lo/TimeUnit;

    invoke-virtual {p0, p1}, Lo/IntBinaryOperator;->b(Lo/TimeUnit;)V

    return-void
.end method

.method public synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 15
    check-cast p1, Lo/TimeUnit;

    invoke-virtual {p0, p1, p2}, Lo/IntBinaryOperator;->a(Lo/TimeUnit;Lo/BiConsumer;)V

    return-void
.end method

.method public e(Lo/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 44
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract n()Lo/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
