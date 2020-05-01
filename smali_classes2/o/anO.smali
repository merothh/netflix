.class public abstract Lo/anO;
.super Lo/apb;
.source ""

# interfaces
.implements Lo/ale;
.implements Lo/aor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/apb;",
        "Lo/ale<",
        "TT;>;",
        "Lo/aor;"
    }
.end annotation


# instance fields
.field private final a:Lo/alj;

.field protected final e:Lo/alj;


# direct methods
.method public constructor <init>(Lo/alj;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p2}, Lo/apb;-><init>(Z)V

    iput-object p1, p0, Lo/anO;->e:Lo/alj;

    .line 47
    iget-object p1, p0, Lo/anO;->e:Lo/alj;

    move-object p2, p0

    check-cast p2, Lo/alj;

    invoke-interface {p1, p2}, Lo/alj;->plus(Lo/alj;)Lo/alj;

    move-result-object p1

    iput-object p1, p0, Lo/anO;->a:Lo/alj;

    return-void
.end method


# virtual methods
.method public final a()Lo/alj;
    .locals 1

    .line 47
    iget-object v0, p0, Lo/anO;->a:Lo/alj;

    return-object v0
.end method

.method public b()Lo/alj;
    .locals 1

    .line 52
    iget-object v0, p0, Lo/anO;->a:Lo/alj;

    return-object v0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lo/anO;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected final c(Ljava/lang/Object;)V
    .locals 1

    .line 101
    instance-of v0, p1, Lo/aob;

    if-eqz v0, :cond_0

    .line 102
    check-cast p1, Lo/aob;

    iget-object v0, p1, Lo/aob;->d:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lo/aob;->a()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lo/anO;->d(Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0, p1}, Lo/anO;->d(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 54
    invoke-super {p0}, Lo/apb;->c()Z

    move-result v0

    return v0
.end method

.method protected d(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lo/anO;->a:Lo/alj;

    invoke-static {v0, p1}, Lo/aoj;->e(Lo/alj;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected d(Ljava/lang/Throwable;Z)V
    .locals 0

    return-void
.end method

.method public final d(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lo/alN;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/CoroutineStart;",
            "TR;",
            "Lo/alN<",
            "-TR;-",
            "Lo/ale<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lo/anO;->f()V

    .line 158
    move-object v0, p0

    check-cast v0, Lo/ale;

    invoke-virtual {p1, p3, p2, v0}, Lkotlinx/coroutines/CoroutineStart;->e(Lo/alN;Ljava/lang/Object;Lo/ale;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    .line 111
    invoke-static {p1}, Lo/aoc;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/anO;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 112
    sget-object v0, Lo/apa;->c:Lo/apN;

    if-ne p1, v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p0, p1}, Lo/anO;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final f()V
    .locals 2

    .line 65
    iget-object v0, p0, Lo/anO;->e:Lo/alj;

    sget-object v1, Lo/aoU;->d:Lo/aoU$ActionBar;

    check-cast v1, Lo/alj$Application;

    invoke-interface {v0, v1}, Lo/alj;->get(Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object v0

    check-cast v0, Lo/aoU;

    invoke-virtual {p0, v0}, Lo/anO;->e(Lo/aoU;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .line 123
    iget-object v0, p0, Lo/anO;->a:Lo/alj;

    invoke-static {v0}, Lo/aoh;->c(Lo/alj;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lo/apb;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    invoke-super {p0}, Lo/apb;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lo/aos;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method public final j()V
    .locals 0

    .line 75
    invoke-virtual {p0}, Lo/anO;->i()V

    return-void
.end method
