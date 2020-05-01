.class public abstract Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.super Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;
.source ""


# instance fields
.field private transient a:Lo/ale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ale<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lo/alj;


# direct methods
.method public constructor <init>(Lo/ale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ale<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 102
    invoke-interface {p1}, Lo/ale;->a()Lo/alj;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lo/ale;Lo/alj;)V

    return-void
.end method

.method public constructor <init>(Lo/ale;Lo/alj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ale<",
            "Ljava/lang/Object;",
            ">;",
            "Lo/alj;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;-><init>(Lo/ale;)V

    iput-object p2, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->c:Lo/alj;

    return-void
.end method


# virtual methods
.method public a()Lo/alj;
    .locals 1

    .line 105
    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->c:Lo/alj;

    if-nez v0, :cond_0

    invoke-static {}, Lo/amh;->c()V

    :cond_0
    return-object v0
.end method

.method protected c()V
    .locals 3

    .line 116
    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->a:Lo/ale;

    if-eqz v0, :cond_1

    .line 117
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    if-eq v0, v1, :cond_1

    .line 118
    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->a()Lo/alj;

    move-result-object v1

    sget-object v2, Lo/ald;->a:Lo/ald$StateListAnimator;

    check-cast v2, Lo/alj$Application;

    invoke-interface {v1, v2}, Lo/alj;->get(Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lo/amh;->c()V

    :cond_0
    check-cast v1, Lo/ald;

    invoke-interface {v1, v0}, Lo/ald;->c(Lo/ale;)V

    .line 120
    :cond_1
    sget-object v0, Lo/all;->a:Lo/all;

    check-cast v0, Lo/ale;

    iput-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->a:Lo/ale;

    return-void
.end method

.method public final g()Lo/ale;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/ale<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->a:Lo/ale;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->a()Lo/alj;

    move-result-object v0

    sget-object v1, Lo/ald;->a:Lo/ald$StateListAnimator;

    check-cast v1, Lo/alj$Application;

    invoke-interface {v0, v1}, Lo/alj;->get(Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object v0

    check-cast v0, Lo/ald;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lo/ale;

    invoke-interface {v0, v1}, Lo/ald;->b(Lo/ale;)Lo/ale;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    check-cast v0, Lo/ale;

    .line 113
    :goto_0
    iput-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->a:Lo/ale;

    :goto_1
    return-object v0
.end method
