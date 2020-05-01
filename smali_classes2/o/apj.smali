.class final Lo/apj;
.super Lo/aoX;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/aoX<",
        "Lo/aoU;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Lo/ale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ale<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/aoU;Lo/ale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/aoU;",
            "Lo/ale<",
            "-",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    .line 1393
    invoke-direct {p0, p1}, Lo/aoX;-><init>(Lo/aoU;)V

    iput-object p2, p0, Lo/apj;->e:Lo/ale;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Throwable;)V
    .locals 2

    .line 1394
    iget-object p1, p0, Lo/apj;->e:Lo/ale;

    sget-object v0, Lo/akj;->a:Lo/akj;

    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$ActionBar;

    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/ale;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1390
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lo/apj;->c(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResumeOnCompletion["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/apj;->e:Lo/ale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
