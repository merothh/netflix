.class public Lo/zZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Bg;


# instance fields
.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Bh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/zZ;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public b(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 39
    invoke-virtual {p0}, Lo/zZ;->c()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 40
    invoke-virtual {p0, p1}, Lo/zZ;->d(I)Lo/Bh;

    move-result-object p1

    .line 41
    invoke-interface {p1}, Lo/Bh;->b()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 1

    .line 54
    iget-object v0, p0, Lo/zZ;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 3

    .line 27
    iget-object v0, p0, Lo/zZ;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Bh;

    add-int/lit8 v1, v1, 0x1

    .line 29
    invoke-interface {v2}, Lo/Bh;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return v1
.end method

.method public d(I)Lo/Bh;
    .locals 1

    .line 59
    iget-object v0, p0, Lo/zZ;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Bh;

    return-object p1
.end method

.method public synthetic e(I)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/zZ;->d(I)Lo/Bh;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/Bh;",
            ">;)V"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lo/zZ;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    iget-object v0, p0, Lo/zZ;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
