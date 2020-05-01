.class final Lo/aoY;
.super Lo/aox;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/aox<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lo/ale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ale<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/alj;Lo/alN;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alj;",
            "Lo/alN<",
            "-",
            "Lo/aor;",
            "-",
            "Lo/ale<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, v0}, Lo/aox;-><init>(Lo/alj;Z)V

    .line 109
    move-object p1, p0

    check-cast p1, Lo/ale;

    invoke-static {p2, p0, p1}, Lo/alh;->b(Lo/alN;Ljava/lang/Object;Lo/ale;)Lo/ale;

    move-result-object p1

    iput-object p1, p0, Lo/aoY;->b:Lo/ale;

    return-void
.end method


# virtual methods
.method protected i()V
    .locals 2

    .line 112
    iget-object v0, p0, Lo/aoY;->b:Lo/ale;

    move-object v1, p0

    check-cast v1, Lo/ale;

    invoke-static {v0, v1}, Lo/apY;->b(Lo/ale;Lo/ale;)V

    return-void
.end method
