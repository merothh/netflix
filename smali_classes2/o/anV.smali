.class public final Lo/anV;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final c(Lo/anR;Lo/aoA;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/anR<",
            "*>;",
            "Lo/aoA;",
            ")V"
        }
    .end annotation

    .line 292
    new-instance v0, Lo/aoD;

    invoke-direct {v0, p1}, Lo/aoD;-><init>(Lo/aoA;)V

    check-cast v0, Lo/anS;

    .line 323
    check-cast v0, Lo/alA;

    .line 292
    invoke-interface {p0, v0}, Lo/anR;->c(Lo/alA;)V

    return-void
.end method
