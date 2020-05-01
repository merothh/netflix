.class public Lo/apM;
.super Lo/anO;
.source ""

# interfaces
.implements Lo/alk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/anO<",
        "TT;>;",
        "Lo/alk;"
    }
.end annotation


# instance fields
.field public final a:Lo/ale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ale<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/alj;Lo/ale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alj;",
            "Lo/ale<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 18
    invoke-direct {p0, p1, v0}, Lo/anO;-><init>(Lo/alj;Z)V

    iput-object p2, p0, Lo/apM;->a:Lo/ale;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lo/apM;->a:Lo/ale;

    invoke-static {v0}, Lo/alh;->c(Lo/ale;)Lo/ale;

    move-result-object v0

    iget-object v1, p0, Lo/apM;->a:Lo/ale;

    invoke-static {p1, v1}, Lo/aoc;->b(Ljava/lang/Object;Lo/ale;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lo/aou;->c(Lo/ale;Ljava/lang/Object;)V

    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lo/apM;->a:Lo/ale;

    invoke-static {p1, v0}, Lo/aoc;->b(Ljava/lang/Object;Lo/ale;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/ale;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public final d()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Lo/alk;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/apM;->a:Lo/ale;

    check-cast v0, Lo/alk;

    return-object v0
.end method

.method protected final t()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
