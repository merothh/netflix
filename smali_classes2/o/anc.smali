.class Lo/anc;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b(Lo/alN;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/alN<",
            "-",
            "Lo/and<",
            "-TT;>;-",
            "Lo/ale<",
            "-",
            "Lo/akj;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lo/anf;

    invoke-direct {v0}, Lo/anf;-><init>()V

    .line 41
    move-object v1, v0

    check-cast v1, Lo/ale;

    invoke-static {p0, v0, v1}, Lo/alh;->b(Lo/alN;Ljava/lang/Object;Lo/ale;)Lo/ale;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo/anf;->b(Lo/ale;)V

    .line 42
    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
