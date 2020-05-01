.class public final Lo/anY;
.super Lo/aoW;
.source ""

# interfaces
.implements Lo/anW;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/aoW<",
        "Lo/apb;",
        ">;",
        "Lo/anW;"
    }
.end annotation


# instance fields
.field public final a:Lo/aod;


# direct methods
.method public constructor <init>(Lo/apb;Lo/aod;)V
    .locals 0

    .line 1472
    check-cast p1, Lo/aoU;

    invoke-direct {p0, p1}, Lo/aoW;-><init>(Lo/aoU;)V

    iput-object p2, p0, Lo/anY;->a:Lo/aod;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Throwable;)V
    .locals 1

    .line 1473
    iget-object p1, p0, Lo/anY;->a:Lo/aod;

    iget-object v0, p0, Lo/anY;->b:Lo/aoU;

    check-cast v0, Lo/apd;

    invoke-interface {p1, v0}, Lo/aod;->e(Lo/apd;)V

    return-void
.end method

.method public e(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1474
    iget-object v0, p0, Lo/anY;->b:Lo/aoU;

    check-cast v0, Lo/apb;

    invoke-virtual {v0, p1}, Lo/apb;->e(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1469
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lo/anY;->c(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildHandle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/anY;->a:Lo/aod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
