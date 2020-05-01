.class public Lo/aox;
.super Lo/anO;
.source ""

# interfaces
.implements Lo/aot;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/anO<",
        "TT;>;",
        "Lo/aot<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/alj;Z)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lo/anO;-><init>(Lo/alj;Z)V

    return-void
.end method

.method public static synthetic d(Lo/aox;Lo/ale;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lkotlinx/coroutines/DeferredCoroutine$await$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;

    iget v1, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->c:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->c:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/DeferredCoroutine$await$1;-><init>(Lo/aox;Lo/ale;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->b:Ljava/lang/Object;

    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object v1

    .line 99
    iget v2, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->e:Ljava/lang/Object;

    check-cast p0, Lo/aox;

    invoke-static {p1}, Lo/akf;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lo/akf;->b(Ljava/lang/Object;)V

    iput-object p0, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->e:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->c:I

    invoke-virtual {p0, v0}, Lo/aox;->a(Lo/ale;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object p1
.end method


# virtual methods
.method public c(Lo/ale;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ale<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lo/aox;->d(Lo/aox;Lo/ale;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
