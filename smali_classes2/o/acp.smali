.class public abstract Lo/acp;
.super Lo/Executor;
.source ""


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "footerModels"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->dw:I

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, v0, p1}, Lo/Executor;-><init>(ILjava/util/Collection;)V

    return-void
.end method
