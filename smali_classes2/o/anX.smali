.class public final Lo/anX;
.super Lo/aoW;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/aoW<",
        "Lo/aoU;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lo/anT;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/anT<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/aoU;Lo/anT;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/aoU;",
            "Lo/anT<",
            "*>;)V"
        }
    .end annotation

    .line 1482
    invoke-direct {p0, p1}, Lo/aoW;-><init>(Lo/aoU;)V

    iput-object p2, p0, Lo/anX;->e:Lo/anT;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Throwable;)V
    .locals 1

    .line 1484
    iget-object p1, p0, Lo/anX;->e:Lo/anT;

    iget-object v0, p0, Lo/anX;->b:Lo/aoU;

    invoke-virtual {p1, v0}, Lo/anT;->a(Lo/aoU;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/anT;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1479
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lo/anX;->c(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/anX;->e:Lo/anT;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
