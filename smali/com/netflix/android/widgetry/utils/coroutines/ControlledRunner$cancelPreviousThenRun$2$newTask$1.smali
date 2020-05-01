.class final Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2$newTask$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->c(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lo/alN<",
        "Lo/aor;",
        "Lo/ale<",
        "-TT;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;

.field b:I

.field private c:Lo/aor;

.field d:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;Lo/ale;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2$newTask$1;->a:Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILo/ale;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object v0

    .line 68
    iget v1, p0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2$newTask$1;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2$newTask$1;->d:Ljava/lang/Object;

    check-cast v0, Lo/aor;

    invoke-static {p1}, Lo/akf;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_1
    invoke-static {p1}, Lo/akf;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2$newTask$1;->c:Lo/aor;

    .line 69
    iget-object v1, p0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2$newTask$1;->a:Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;

    iget-object v1, v1, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->c:Lo/alA;

    iput-object p1, p0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2$newTask$1;->d:Ljava/lang/Object;

    iput v2, p0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2$newTask$1;->b:I

    invoke-interface {v1, p0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final d(Ljava/lang/Object;Lo/ale;)Lo/ale;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/ale<",
            "*>;)",
            "Lo/ale<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2$newTask$1;

    iget-object v1, p0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2$newTask$1;->a:Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;

    invoke-direct {v0, v1, p2}, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2$newTask$1;-><init>(Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;Lo/ale;)V

    check-cast p1, Lo/aor;

    iput-object p1, v0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2$newTask$1;->c:Lo/aor;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/ale;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2$newTask$1;->d(Ljava/lang/Object;Lo/ale;)Lo/ale;

    move-result-object p1

    check-cast p1, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2$newTask$1;

    sget-object p2, Lo/akj;->a:Lo/akj;

    invoke-virtual {p1, p2}, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2$newTask$1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
