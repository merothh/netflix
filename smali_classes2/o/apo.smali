.class final Lo/apo;
.super Lo/apM;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/apM<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/alj;Lo/ale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alj;",
            "Lo/ale<",
            "-TT;>;)V"
        }
    .end annotation

    .line 202
    invoke-direct {p0, p1, p2}, Lo/apM;-><init>(Lo/alj;Lo/ale;)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Object;)V
    .locals 3

    .line 205
    iget-object v0, p0, Lo/apo;->a:Lo/ale;

    invoke-static {p1, v0}, Lo/aoc;->b(Ljava/lang/Object;Lo/ale;)Ljava/lang/Object;

    move-result-object p1

    .line 206
    iget-object v0, p0, Lo/apo;->a:Lo/ale;

    invoke-interface {v0}, Lo/ale;->a()Lo/alj;

    move-result-object v0

    const/4 v1, 0x0

    .line 267
    invoke-static {v0, v1}, Lo/apR;->e(Lo/alj;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 207
    :try_start_0
    iget-object v2, p0, Lo/apo;->a:Lo/ale;

    invoke-interface {v2, p1}, Lo/ale;->e(Ljava/lang/Object;)V

    .line 208
    sget-object p1, Lo/akj;->a:Lo/akj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-static {v0, v1}, Lo/apR;->a(Lo/alj;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Lo/apR;->a(Lo/alj;Ljava/lang/Object;)V

    throw p1
.end method
