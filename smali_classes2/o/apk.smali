.class final Lo/apk;
.super Lo/aoX;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/aoX<",
        "Lo/apb;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Lo/anT;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/anT<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/apb;Lo/anT;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/apb;",
            "Lo/anT<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1401
    check-cast p1, Lo/aoU;

    invoke-direct {p0, p1}, Lo/aoX;-><init>(Lo/aoU;)V

    iput-object p2, p0, Lo/apk;->e:Lo/anT;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Throwable;)V
    .locals 2

    .line 1403
    iget-object p1, p0, Lo/apk;->b:Lo/aoU;

    check-cast p1, Lo/apb;

    invoke-virtual {p1}, Lo/apb;->k()Ljava/lang/Object;

    move-result-object p1

    .line 1404
    invoke-static {}, Lo/aoo;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lo/aoO;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1405
    :cond_1
    :goto_0
    instance-of v0, p1, Lo/aob;

    if-eqz v0, :cond_2

    .line 1407
    iget-object v0, p0, Lo/apk;->e:Lo/anT;

    check-cast v0, Lo/ale;

    check-cast p1, Lo/aob;

    iget-object p1, p1, Lo/aob;->d:Ljava/lang/Throwable;

    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$ActionBar;

    invoke-static {p1}, Lo/akf;->c(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/ale;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 1411
    :cond_2
    iget-object v0, p0, Lo/apk;->e:Lo/anT;

    check-cast v0, Lo/ale;

    invoke-static {p1}, Lo/apa;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$ActionBar;

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/ale;->e(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1398
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lo/apk;->c(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResumeAwaitOnCompletion["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/apk;->e:Lo/anT;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
