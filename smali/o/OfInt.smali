.class public abstract Lo/OfInt;
.super Lo/Locale;
.source ""


# instance fields
.field protected final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/BiConsumer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Lo/IntUnaryOperator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lo/Locale;-><init>()V

    .line 22
    new-instance v0, Lo/IntUnaryOperator;

    invoke-direct {v0}, Lo/IntUnaryOperator;-><init>()V

    iput-object v0, p0, Lo/OfInt;->e:Lo/IntUnaryOperator;

    .line 28
    new-instance v0, Lcom/airbnb/epoxy/ModelList;

    invoke-direct {v0}, Lcom/airbnb/epoxy/ModelList;-><init>()V

    iput-object v0, p0, Lo/OfInt;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method b(I)Lo/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/BiConsumer<",
            "*>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lo/OfInt;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    .line 61
    invoke-virtual {p1}, Lo/BiConsumer;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/OfInt;->e:Lo/IntUnaryOperator;

    :goto_0
    return-object p1
.end method

.method d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/BiConsumer<",
            "*>;>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lo/OfInt;->c:Ljava/util/List;

    return-object v0
.end method
