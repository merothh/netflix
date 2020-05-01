.class public Lo/Map;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Lo/Params;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Params<",
            "Lo/BiConsumer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Lo/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BiConsumer<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 29
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    iput-object p1, p0, Lo/Map;->d:Lo/BiConsumer;

    .line 30
    iput-object v2, p0, Lo/Map;->b:Lo/Params;

    goto :goto_1

    .line 32
    :cond_0
    iput-object v2, p0, Lo/Map;->d:Lo/BiConsumer;

    .line 33
    new-instance v1, Lo/Params;

    invoke-direct {v1, v0}, Lo/Params;-><init>(I)V

    iput-object v1, p0, Lo/Map;->b:Lo/Params;

    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BiConsumer;

    .line 35
    iget-object v1, p0, Lo/Map;->b:Lo/Params;

    invoke-virtual {v0}, Lo/BiConsumer;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lo/Params;->b(JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 22
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Models must not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lo/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    .line 41
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/Map;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static c(Ljava/util/List;J)Lo/BiConsumer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;J)",
            "Lo/BiConsumer<",
            "*>;"
        }
    .end annotation

    .line 51
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 55
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 56
    check-cast v0, Lo/Map;

    .line 58
    iget-object v2, v0, Lo/Map;->d:Lo/BiConsumer;

    if-eqz v2, :cond_2

    .line 59
    invoke-virtual {v2}, Lo/BiConsumer;->d()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_1

    .line 60
    iget-object p0, v0, Lo/Map;->d:Lo/BiConsumer;

    return-object p0

    .line 63
    :cond_2
    iget-object v0, v0, Lo/Map;->b:Lo/Params;

    invoke-virtual {v0, p1, p2}, Lo/Params;->c(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BiConsumer;

    if-eqz v0, :cond_1

    return-object v0

    :cond_3
    return-object v1
.end method
