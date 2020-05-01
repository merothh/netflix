.class public final Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RegistrantList;->d(Lo/alA;Lo/ale;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field a:I

.field final synthetic b:Lo/RegistrantList;

.field final synthetic c:Lo/alA;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field private g:Lo/aor;


# direct methods
.method public constructor <init>(Lo/RegistrantList;Lo/alA;Lo/ale;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->b:Lo/RegistrantList;

    iput-object p2, p0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->c:Lo/alA;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILo/ale;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object v0

    .line 64
    iget v1, p0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->d:Ljava/lang/Object;

    check-cast v0, Lo/aot;

    iget-object v0, p0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->e:Ljava/lang/Object;

    check-cast v0, Lo/aor;

    invoke-static {p1}, Lo/akf;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->d:Ljava/lang/Object;

    check-cast v1, Lo/aot;

    iget-object v6, p0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->e:Ljava/lang/Object;

    check-cast v6, Lo/aor;

    invoke-static {p1}, Lo/akf;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->d:Ljava/lang/Object;

    check-cast v1, Lo/aot;

    iget-object v6, p0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->e:Ljava/lang/Object;

    check-cast v6, Lo/aor;

    invoke-static {p1}, Lo/akf;->b(Ljava/lang/Object;)V

    move-object p1, p0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lo/akf;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->g:Lo/aor;

    const/4 v8, 0x0

    .line 68
    sget-object v9, Lkotlinx/coroutines/CoroutineStart;->e:Lkotlinx/coroutines/CoroutineStart;

    new-instance v1, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2$newTask$1;

    invoke-direct {v1, p0, v2}, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2$newTask$1;-><init>(Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;Lo/ale;)V

    move-object v10, v1

    check-cast v10, Lo/alN;

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lo/anM;->a(Lo/aor;Lo/alj;Lkotlinx/coroutines/CoroutineStart;Lo/alN;ILjava/lang/Object;)Lo/aot;

    move-result-object v1

    .line 74
    new-instance v6, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2$1;

    invoke-direct {v6, p0, v1}, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2$1;-><init>(Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;Lo/aot;)V

    check-cast v6, Lo/alA;

    invoke-interface {v1, v6}, Lo/aot;->b(Lo/alA;)Lo/aoA;

    move-object v6, p1

    :goto_0
    move-object p1, p0

    .line 85
    :cond_4
    iget-object v7, p1, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->b:Lo/RegistrantList;

    invoke-static {v7}, Lo/RegistrantList;->b(Lo/RegistrantList;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    invoke-virtual {v7, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 91
    iget-object v7, p1, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->b:Lo/RegistrantList;

    invoke-static {v7}, Lo/RegistrantList;->b(Lo/RegistrantList;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/aot;

    if-eqz v7, :cond_5

    check-cast v7, Lo/aoU;

    iput-object v6, p1, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->e:Ljava/lang/Object;

    iput-object v1, p1, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->d:Ljava/lang/Object;

    iput v5, p1, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->a:I

    invoke-static {v7, p1}, Lo/aoS;->b(Lo/aoU;Lo/ale;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_5

    return-object v0

    .line 93
    :cond_5
    :goto_1
    iput-object v6, p1, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->e:Ljava/lang/Object;

    iput-object v1, p1, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->d:Ljava/lang/Object;

    iput v4, p1, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->a:I

    invoke-static {p1}, Lo/apt;->c(Lo/ale;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_4

    return-object v0

    .line 96
    :cond_6
    iput-object v6, p1, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->e:Ljava/lang/Object;

    iput-object v1, p1, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->d:Ljava/lang/Object;

    iput v3, p1, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->a:I

    invoke-interface {v1, p1}, Lo/aot;->c(Lo/ale;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    return-object p1
.end method

.method public final d(Ljava/lang/Object;Lo/ale;)Lo/ale;
    .locals 3
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

    new-instance v0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;

    iget-object v1, p0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->b:Lo/RegistrantList;

    iget-object v2, p0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->c:Lo/alA;

    invoke-direct {v0, v1, v2, p2}, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;-><init>(Lo/RegistrantList;Lo/alA;Lo/ale;)V

    check-cast p1, Lo/aor;

    iput-object p1, v0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->g:Lo/aor;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/ale;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->d(Ljava/lang/Object;Lo/ale;)Lo/ale;

    move-result-object p1

    check-cast p1, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;

    sget-object p2, Lo/akj;->a:Lo/akj;

    invoke-virtual {p1, p2}, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
