.class public Lo/alg;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b(Lo/alN;Ljava/lang/Object;Lo/ale;)Lo/ale;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/alN<",
            "-TR;-",
            "Lo/ale<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lo/ale<",
            "-TT;>;)",
            "Lo/ale<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$createCoroutineUnintercepted"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-static {p2}, Lo/alt;->d(Lo/ale;)Lo/ale;

    move-result-object v4

    .line 117
    instance-of p2, p0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    if-eqz p2, :cond_0

    .line 118
    check-cast p0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    invoke-virtual {p0, p1, v4}, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->d(Ljava/lang/Object;Lo/ale;)Lo/ale;

    move-result-object p0

    goto :goto_0

    .line 204
    :cond_0
    invoke-interface {v4}, Lo/ale;->a()Lo/alj;

    move-result-object v5

    .line 206
    sget-object p2, Lkotlin/coroutines/EmptyCoroutineContext;->d:Lkotlin/coroutines/EmptyCoroutineContext;

    if-ne v5, p2, :cond_1

    .line 207
    new-instance p2, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3;

    invoke-direct {p2, v4, v4, p0, p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3;-><init>(Lo/ale;Lo/ale;Lo/alN;Ljava/lang/Object;)V

    move-object p0, p2

    check-cast p0, Lo/ale;

    goto :goto_0

    .line 208
    :cond_1
    new-instance p2, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4;

    move-object v1, p2

    move-object v2, v4

    move-object v3, v5

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4;-><init>(Lo/ale;Lo/alj;Lo/ale;Lo/alj;Lo/alN;Ljava/lang/Object;)V

    move-object p0, p2

    check-cast p0, Lo/ale;

    :goto_0
    return-object p0
.end method

.method public static final c(Lo/ale;)Lo/ale;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/ale<",
            "-TT;>;)",
            "Lo/ale<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$intercepted"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->g()Lo/ale;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0
.end method
