.class public final Lo/apK;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic a(Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lo/apG;
    .locals 1

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 71
    move-object p0, v0

    check-cast p0, Ljava/lang/Throwable;

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    :cond_1
    invoke-static {p0, p1}, Lo/apK;->b(Ljava/lang/Throwable;Ljava/lang/String;)Lo/apG;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Ljava/lang/Throwable;Ljava/lang/String;)Lo/apG;
    .locals 1

    .line 72
    sget-boolean v0, Lo/apK;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lo/apG;

    invoke-direct {v0, p0, p1}, Lo/apG;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    .line 73
    throw p0

    :cond_1
    invoke-static {}, Lo/apK;->d()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public static final d()Ljava/lang/Void;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. \'kotlinx-coroutines-android\' and ensure it has the same version as \'kotlinx-coroutines-core\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final e(Lkotlinx/coroutines/internal/MainDispatcherFactory;Ljava/util/List;)Lo/apg;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/MainDispatcherFactory;",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/coroutines/internal/MainDispatcherFactory;",
            ">;)",
            "Lo/apg;"
        }
    .end annotation

    .line 57
    :try_start_0
    invoke-interface {p0, p1}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->createDispatcher(Ljava/util/List;)Lo/apg;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 59
    invoke-interface {p0}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->hintOnError()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lo/apK;->b(Ljava/lang/Throwable;Ljava/lang/String;)Lo/apG;

    move-result-object p0

    check-cast p0, Lo/apg;

    :goto_0
    return-object p0
.end method
