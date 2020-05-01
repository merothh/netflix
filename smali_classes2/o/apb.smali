.class public Lo/apb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aod;
.implements Lo/apd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/apb$Application;,
        Lo/apb$StateListAnimator;,
        Lo/apb$TaskDescription;
    }
.end annotation


# static fields
.field private static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _parentHandle:Ljava/lang/Object;

.field private volatile _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lo/apb;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/apb;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 129
    invoke-static {}, Lo/apa;->a()Lo/aoF;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/apa;->i()Lo/aoF;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lo/apb;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 131
    iput-object p1, p0, Lo/apb;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 844
    instance-of v0, p1, Lo/aoO;

    if-nez v0, :cond_0

    .line 845
    invoke-static {}, Lo/apa;->c()Lo/apN;

    move-result-object p1

    return-object p1

    .line 852
    :cond_0
    instance-of v0, p1, Lo/aoF;

    if-nez v0, :cond_1

    instance-of v0, p1, Lo/aoX;

    if-eqz v0, :cond_3

    :cond_1
    instance-of v0, p1, Lo/anY;

    if-nez v0, :cond_3

    instance-of v0, p2, Lo/aob;

    if-nez v0, :cond_3

    .line 853
    check-cast p1, Lo/aoO;

    invoke-direct {p0, p1, p2}, Lo/apb;->c(Lo/aoO;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p2

    .line 857
    :cond_2
    invoke-static {}, Lo/apa;->b()Lo/apN;

    move-result-object p1

    return-object p1

    .line 860
    :cond_3
    check-cast p1, Lo/aoO;

    invoke-direct {p0, p1, p2}, Lo/apb;->e(Lo/aoO;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final a(Lo/aoF;)V
    .locals 2

    .line 525
    new-instance v0, Lo/ape;

    invoke-direct {v0}, Lo/ape;-><init>()V

    .line 526
    invoke-virtual {p1}, Lo/aoF;->au_()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lo/aoO;

    goto :goto_0

    :cond_0
    new-instance v1, Lo/aoM;

    invoke-direct {v1, v0}, Lo/aoM;-><init>(Lo/ape;)V

    move-object v0, v1

    check-cast v0, Lo/aoO;

    .line 527
    :goto_0
    sget-object v1, Lo/apb;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private final a(Lo/apb$Application;Lo/anY;Ljava/lang/Object;)Z
    .locals 6

    .line 915
    :goto_0
    iget-object v0, p2, Lo/anY;->a:Lo/aod;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 917
    new-instance v3, Lo/apb$StateListAnimator;

    invoke-direct {v3, p0, p1, p2, p3}, Lo/apb$StateListAnimator;-><init>(Lo/apb;Lo/apb$Application;Lo/anY;Ljava/lang/Object;)V

    check-cast v3, Lo/aog;

    .line 1600
    check-cast v3, Lo/alA;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 915
    invoke-static/range {v0 .. v5}, Lo/aoU$StateListAnimator;->c(Lo/aoU;ZZLo/alA;ILjava/lang/Object;)Lo/aoA;

    move-result-object v0

    .line 919
    sget-object v1, Lo/apf;->e:Lo/apf;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 920
    :cond_0
    check-cast p2, Lo/apD;

    invoke-direct {p0, p2}, Lo/apb;->b(Lo/apD;)Lo/anY;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1588
    :cond_0
    invoke-virtual {p0}, Lo/apb;->k()Ljava/lang/Object;

    move-result-object v0

    .line 688
    instance-of v1, v0, Lo/aoO;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lo/apb$Application;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lo/apb$Application;

    invoke-virtual {v1}, Lo/apb$Application;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 692
    :cond_1
    new-instance v1, Lo/aob;

    invoke-direct {p0, p1}, Lo/apb;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lo/aob;-><init>(Ljava/lang/Throwable;ZILo/amc;)V

    .line 693
    invoke-direct {p0, v0, v1}, Lo/apb;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 694
    invoke-static {}, Lo/apa;->b()Lo/apN;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    .line 690
    :cond_2
    :goto_0
    invoke-static {}, Lo/apa;->c()Lo/apN;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic b(Lo/apb;)Ljava/lang/String;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lo/apb;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lo/apb;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 423
    check-cast p2, Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lo/apb;->d(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toCancellationException"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final b(Lo/apD;)Lo/anY;
    .locals 1

    .line 938
    :goto_0
    invoke-virtual {p1}, Lo/apD;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/apD;->h()Lo/apD;

    move-result-object p1

    goto :goto_0

    .line 940
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lo/apD;->g()Lo/apD;

    move-result-object p1

    .line 941
    invoke-virtual {p1}, Lo/apD;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 942
    :cond_1
    instance-of v0, p1, Lo/anY;

    if-eqz v0, :cond_2

    check-cast p1, Lo/anY;

    return-object p1

    .line 943
    :cond_2
    instance-of v0, p1, Lo/ape;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method private final b(Lo/aoO;)Lo/ape;
    .locals 2

    .line 770
    invoke-interface {p1}, Lo/aoO;->e()Lo/ape;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 772
    :cond_0
    instance-of v0, p1, Lo/aoF;

    if-eqz v0, :cond_1

    new-instance v0, Lo/ape;

    invoke-direct {v0}, Lo/ape;-><init>()V

    goto :goto_0

    .line 773
    :cond_1
    instance-of v0, p1, Lo/aoX;

    if-eqz v0, :cond_2

    .line 776
    check-cast p1, Lo/aoX;

    invoke-direct {p0, p1}, Lo/apb;->e(Lo/aoX;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 779
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State should have list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final b(Lo/aoO;Ljava/lang/Object;)V
    .locals 3

    .line 307
    invoke-virtual {p0}, Lo/apb;->o()Lo/anW;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    invoke-interface {v0}, Lo/anW;->a()V

    .line 309
    sget-object v0, Lo/apf;->e:Lo/apf;

    check-cast v0, Lo/anW;

    invoke-virtual {p0, v0}, Lo/apb;->d(Lo/anW;)V

    .line 311
    :cond_0
    instance-of v0, p2, Lo/aob;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object p2, v1

    :cond_1
    check-cast p2, Lo/aob;

    if-eqz p2, :cond_2

    iget-object v1, p2, Lo/aob;->d:Ljava/lang/Throwable;

    .line 316
    :cond_2
    instance-of p2, p1, Lo/aoX;

    if-eqz p2, :cond_3

    .line 318
    :try_start_0
    move-object p2, p1

    check-cast p2, Lo/aoX;

    invoke-virtual {p2, v1}, Lo/aoX;->c(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 320
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in completion handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lo/apb;->d(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 323
    :cond_3
    invoke-interface {p1}, Lo/aoO;->e()Lo/ape;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-direct {p0, p1, v1}, Lo/apb;->c(Lo/ape;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private final b(Lo/apb$Application;Lo/anY;Ljava/lang/Object;)V
    .locals 1

    .line 926
    invoke-static {}, Lo/aoo;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lo/apb;->k()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 928
    :cond_2
    :goto_1
    check-cast p2, Lo/apD;

    invoke-direct {p0, p2}, Lo/apb;->b(Lo/apD;)Lo/anY;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 930
    invoke-direct {p0, p1, p2, p3}, Lo/apb;->a(Lo/apb$Application;Lo/anY;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 932
    :cond_3
    invoke-direct {p0, p1, p3}, Lo/apb;->e(Lo/apb$Application;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 933
    invoke-virtual {p0, p1}, Lo/apb;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private final c(Lo/apb$Application;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/apb$Application;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 246
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {p1}, Lo/apb$Application;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1494
    move-object p1, v1

    check-cast p1, Ljava/lang/String;

    check-cast v1, Ljava/lang/Throwable;

    .line 1495
    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lo/apb;->b(Lo/apb;)Ljava/lang/String;

    move-result-object p2

    move-object v0, p0

    check-cast v0, Lo/aoU;

    invoke-direct {p1, p2, v1, v0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lo/aoU;)V

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    :cond_0
    return-object v1

    .line 259
    :cond_1
    move-object p1, p2

    check-cast p1, Ljava/lang/Iterable;

    .line 1496
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    .line 259
    instance-of v4, v4, Ljava/util/concurrent/CancellationException;

    xor-int/2addr v4, v3

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    check-cast v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    const/4 v0, 0x0

    .line 261
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Throwable;

    .line 262
    instance-of v2, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v2, :cond_8

    .line 1498
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    if-eq v4, p2, :cond_6

    .line 263
    instance-of v4, v4, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    move-object v1, v2

    :cond_7
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_8

    return-object v1

    :cond_8
    return-object p2
.end method

.method private final c(Lo/alA;Z)Lo/aoX;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alA<",
            "-",
            "Ljava/lang/Throwable;",
            "Lo/akj;",
            ">;Z)",
            "Lo/aoX<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    .line 513
    instance-of p2, p1, Lo/aoW;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    check-cast v2, Lo/aoW;

    if-eqz v2, :cond_4

    invoke-static {}, Lo/aoo;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v2, Lo/aoW;->b:Lo/aoU;

    move-object p2, p0

    check-cast p2, Lo/apb;

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_3
    :goto_2
    check-cast v2, Lo/aoX;

    goto :goto_5

    .line 514
    :cond_4
    new-instance p2, Lo/aoR;

    move-object v0, p0

    check-cast v0, Lo/aoU;

    invoke-direct {p2, v0, p1}, Lo/aoR;-><init>(Lo/aoU;Lo/alA;)V

    move-object v2, p2

    check-cast v2, Lo/aoX;

    goto :goto_5

    .line 516
    :cond_5
    instance-of p2, p1, Lo/aoX;

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    move-object v2, p1

    :goto_3
    check-cast v2, Lo/aoX;

    if-eqz v2, :cond_9

    invoke-static {}, Lo/aoo;->b()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, v2, Lo/aoX;->b:Lo/aoU;

    move-object p2, p0

    check-cast p2, Lo/apb;

    if-ne p1, p2, :cond_7

    instance-of p1, v2, Lo/aoW;

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 517
    :cond_9
    new-instance p2, Lo/aoN;

    move-object v0, p0

    check-cast v0, Lo/aoU;

    invoke-direct {p2, v0, p1}, Lo/aoN;-><init>(Lo/aoU;Lo/alA;)V

    move-object v2, p2

    check-cast v2, Lo/aoX;

    :cond_a
    :goto_5
    return-object v2
.end method

.method private final c(Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 270
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 271
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 1500
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 1501
    invoke-static {}, Lo/aoo;->c()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lo/apP;->d(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 278
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 1502
    invoke-static {}, Lo/aoo;->c()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lo/apP;->d(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    :goto_2
    if-eq v2, p1, :cond_2

    if-eq v2, v1, :cond_2

    .line 281
    instance-of v3, v2, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1503
    invoke-static {p1, v2}, Lo/ajY;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private final c(Lo/ape;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v0, 0x0

    .line 1523
    check-cast v0, Ljava/lang/Throwable;

    .line 1524
    check-cast p1, Lo/apC;

    .line 1525
    invoke-virtual {p1}, Lo/apC;->c()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Lo/apD;

    .line 1526
    :goto_0
    invoke-static {v1, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1527
    instance-of v2, v1, Lo/aoX;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lo/aoX;

    .line 1529
    :try_start_0
    invoke-virtual {v2, p2}, Lo/aoX;->c(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 1532
    invoke-static {v0, v3}, Lo/ajY;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1531
    :cond_0
    move-object v0, p0

    check-cast v0, Lo/apb;

    .line 1533
    new-instance v4, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in completion handler "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v4, Ljava/lang/Throwable;

    .line 1534
    sget-object v0, Lo/akj;->a:Lo/akj;

    move-object v0, v4

    .line 1537
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lo/apD;->g()Lo/apD;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 1540
    invoke-virtual {p0, v0}, Lo/apb;->d(Ljava/lang/Throwable;)V

    :cond_3
    return-void

    .line 1525
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final c(Ljava/lang/Object;Lo/ape;Lo/aoX;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/ape;",
            "Lo/aoX<",
            "*>;)Z"
        }
    .end annotation

    .line 521
    check-cast p2, Lo/apD;

    .line 1559
    new-instance v0, Lo/apb$ActionBar;

    check-cast p3, Lo/apD;

    invoke-direct {v0, p3, p3, p0, p1}, Lo/apb$ActionBar;-><init>(Lo/apD;Lo/apD;Lo/apb;Ljava/lang/Object;)V

    check-cast v0, Lo/apD$StateListAnimator;

    .line 1563
    :goto_0
    invoke-virtual {p2}, Lo/apD;->h()Lo/apD;

    move-result-object p1

    .line 1564
    invoke-virtual {p1, p3, p2, v0}, Lo/apD;->b(Lo/apD;Lo/apD;Lo/apD$StateListAnimator;)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method private final c(Lo/aoO;Ljava/lang/Object;)Z
    .locals 4

    .line 290
    invoke-static {}, Lo/aoo;->b()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    instance-of v0, p1, Lo/aoF;

    if-nez v0, :cond_1

    instance-of v0, p1, Lo/aoX;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 291
    :cond_3
    :goto_2
    invoke-static {}, Lo/aoo;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p2, Lo/aob;

    xor-int/2addr v0, v2

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 292
    :cond_5
    :goto_3
    sget-object v0, Lo/apb;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Lo/apa;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    .line 293
    invoke-virtual {p0, v0}, Lo/apb;->a(Ljava/lang/Throwable;)V

    .line 294
    invoke-virtual {p0, p2}, Lo/apb;->c(Ljava/lang/Object;)V

    .line 295
    invoke-direct {p0, p1, p2}, Lo/apb;->b(Lo/aoO;Ljava/lang/Object;)V

    return v2
.end method

.method private final d(Ljava/lang/Object;)I
    .locals 4

    .line 393
    instance-of v0, p1, Lo/aoF;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 394
    move-object v0, p1

    check-cast v0, Lo/aoF;

    invoke-virtual {v0}, Lo/aoF;->au_()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 395
    :cond_0
    sget-object v0, Lo/apb;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lo/apa;->a()Lo/aoF;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 396
    :cond_1
    invoke-virtual {p0}, Lo/apb;->j()V

    return v2

    .line 399
    :cond_2
    instance-of v0, p1, Lo/aoM;

    if-eqz v0, :cond_4

    .line 400
    sget-object v0, Lo/apb;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v3, p1

    check-cast v3, Lo/aoM;

    invoke-virtual {v3}, Lo/aoM;->e()Lo/ape;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 401
    :cond_3
    invoke-virtual {p0}, Lo/apb;->j()V

    return v2

    :cond_4
    return v3
.end method

.method public static final synthetic d(Lo/apb;Lo/apb$Application;Lo/anY;Ljava/lang/Object;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lo/apb;->b(Lo/apb$Application;Lo/anY;Ljava/lang/Object;)V

    return-void
.end method

.method private final d()Z
    .locals 2

    .line 1568
    :cond_0
    invoke-virtual {p0}, Lo/apb;->k()Ljava/lang/Object;

    move-result-object v0

    .line 549
    instance-of v1, v0, Lo/aoO;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 550
    :cond_1
    invoke-direct {p0, v0}, Lo/apb;->d(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private final d(Lo/aoO;Ljava/lang/Throwable;)Z
    .locals 5

    .line 784
    invoke-static {}, Lo/aoo;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    instance-of v0, p1, Lo/apb$Application;

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 785
    :cond_1
    :goto_0
    invoke-static {}, Lo/aoo;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lo/aoO;->au_()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 787
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lo/apb;->b(Lo/aoO;)Lo/ape;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 789
    new-instance v3, Lo/apb$Application;

    invoke-direct {v3, v0, v2, p2}, Lo/apb$Application;-><init>(Lo/ape;ZLjava/lang/Throwable;)V

    .line 790
    sget-object v4, Lo/apb;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    .line 792
    :cond_4
    invoke-direct {p0, v0, p2}, Lo/apb;->e(Lo/ape;Ljava/lang/Throwable;)V

    return v1

    :cond_5
    return v2
.end method

.method private final e(Lo/aoO;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 870
    invoke-direct {p0, p1}, Lo/apb;->b(Lo/aoO;)Lo/ape;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 874
    instance-of v1, p1, Lo/apb$Application;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    check-cast v1, Lo/apb$Application;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lo/apb$Application;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lo/apb$Application;-><init>(Lo/ape;ZLjava/lang/Throwable;)V

    .line 876
    :goto_1
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    .line 1599
    monitor-enter v1

    .line 879
    :try_start_0
    invoke-virtual {v1}, Lo/apb$Application;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lo/apa;->c()Lo/apN;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p1

    :cond_2
    const/4 v3, 0x1

    .line 881
    :try_start_1
    invoke-virtual {v1, v3}, Lo/apb$Application;->d(Z)V

    if-eq v1, p1, :cond_3

    .line 886
    sget-object v4, Lo/apb;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lo/apa;->b()Lo/apN;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p1

    .line 889
    :cond_3
    :try_start_2
    invoke-static {}, Lo/aoo;->b()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Lo/apb$Application;->b()Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 891
    :cond_5
    :goto_2
    invoke-virtual {v1}, Lo/apb$Application;->g()Z

    move-result v4

    .line 892
    instance-of v5, p2, Lo/aob;

    if-nez v5, :cond_6

    move-object v5, v2

    goto :goto_3

    :cond_6
    move-object v5, p2

    :goto_3
    check-cast v5, Lo/aob;

    if-eqz v5, :cond_7

    iget-object v5, v5, Lo/aob;->d:Ljava/lang/Throwable;

    invoke-virtual {v1, v5}, Lo/apb$Application;->b(Ljava/lang/Throwable;)V

    .line 894
    :cond_7
    invoke-virtual {v1}, Lo/apb$Application;->d()Ljava/lang/Throwable;

    move-result-object v5

    xor-int/2addr v3, v4

    if-eqz v3, :cond_8

    move-object v2, v5

    .line 895
    :cond_8
    sget-object v3, Lo/akj;->a:Lo/akj;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    if-eqz v2, :cond_9

    .line 897
    invoke-direct {p0, v0, v2}, Lo/apb;->e(Lo/ape;Ljava/lang/Throwable;)V

    .line 899
    :cond_9
    invoke-direct {p0, p1}, Lo/apb;->e(Lo/aoO;)Lo/anY;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 900
    invoke-direct {p0, v1, p1, p2}, Lo/apb;->a(Lo/apb$Application;Lo/anY;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 901
    sget-object p1, Lo/apa;->c:Lo/apN;

    return-object p1

    .line 903
    :cond_a
    invoke-direct {p0, v1, p2}, Lo/apb;->e(Lo/apb$Application;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 895
    monitor-exit v1

    throw p1

    .line 870
    :cond_b
    invoke-static {}, Lo/apa;->b()Lo/apN;

    move-result-object p1

    return-object p1
.end method

.method private final e(Lo/apb$Application;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 205
    invoke-static {}, Lo/aoo;->b()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lo/apb;->k()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 206
    :cond_2
    :goto_1
    invoke-static {}, Lo/aoo;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lo/apb$Application;->b()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 207
    :cond_4
    :goto_2
    invoke-static {}, Lo/aoo;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lo/apb$Application;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 208
    :cond_6
    :goto_3
    instance-of v0, p2, Lo/aob;

    const/4 v3, 0x0

    if-nez v0, :cond_7

    move-object v0, v3

    goto :goto_4

    :cond_7
    move-object v0, p2

    :goto_4
    check-cast v0, Lo/aob;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lo/aob;->d:Ljava/lang/Throwable;

    goto :goto_5

    :cond_8
    move-object v0, v3

    .line 1493
    :goto_5
    monitor-enter p1

    .line 212
    :try_start_0
    invoke-virtual {p1}, Lo/apb$Application;->g()Z

    move-result v4

    .line 213
    invoke-virtual {p1, v0}, Lo/apb$Application;->d(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v5

    .line 214
    invoke-direct {p0, p1, v5}, Lo/apb;->c(Lo/apb$Application;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 215
    invoke-direct {p0, v6, v5}, Lo/apb;->c(Ljava/lang/Throwable;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_9
    monitor-exit p1

    if-nez v6, :cond_a

    goto :goto_6

    :cond_a
    if-ne v6, v0, :cond_b

    goto :goto_6

    .line 225
    :cond_b
    new-instance p2, Lo/aob;

    const/4 v0, 0x2

    invoke-direct {p2, v6, v2, v0, v3}, Lo/aob;-><init>(Ljava/lang/Throwable;ZILo/amc;)V

    :goto_6
    if-eqz v6, :cond_f

    .line 229
    invoke-direct {p0, v6}, Lo/apb;->f(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, v6}, Lo/apb;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_7
    if-eqz v1, :cond_f

    if-eqz p2, :cond_e

    .line 230
    move-object v0, p2

    check-cast v0, Lo/aob;

    invoke-virtual {v0}, Lo/aob;->d()Z

    goto :goto_8

    :cond_e
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    :goto_8
    if-nez v4, :cond_10

    .line 234
    invoke-virtual {p0, v6}, Lo/apb;->a(Ljava/lang/Throwable;)V

    .line 235
    :cond_10
    invoke-virtual {p0, p2}, Lo/apb;->c(Ljava/lang/Object;)V

    .line 237
    sget-object v0, Lo/apb;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Lo/apa;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 238
    invoke-static {}, Lo/aoo;->b()Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_11

    goto :goto_9

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 240
    :cond_12
    :goto_9
    check-cast p1, Lo/aoO;

    invoke-direct {p0, p1, p2}, Lo/apb;->b(Lo/aoO;Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 216
    monitor-exit p1

    throw p2
.end method

.method private final e(Lo/aoO;)Lo/anY;
    .locals 2

    .line 910
    instance-of v0, p1, Lo/anY;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Lo/anY;

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lo/aoO;->e()Lo/ape;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lo/apD;

    invoke-direct {p0, p1}, Lo/apb;->b(Lo/apD;)Lo/anY;

    move-result-object v1

    :cond_2
    :goto_1
    return-object v1
.end method

.method private final e(Lo/aoX;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/aoX<",
            "*>;)V"
        }
    .end annotation

    .line 532
    new-instance v0, Lo/ape;

    invoke-direct {v0}, Lo/ape;-><init>()V

    check-cast v0, Lo/apD;

    invoke-virtual {p1, v0}, Lo/aoX;->e(Lo/apD;)Z

    .line 534
    invoke-virtual {p1}, Lo/aoX;->g()Lo/apD;

    move-result-object v0

    .line 536
    sget-object v1, Lo/apb;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private final e(Lo/ape;Ljava/lang/Throwable;)V
    .locals 7

    .line 329
    invoke-virtual {p0, p2}, Lo/apb;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 1504
    check-cast v0, Ljava/lang/Throwable;

    .line 1505
    check-cast p1, Lo/apC;

    .line 1506
    invoke-virtual {p1}, Lo/apC;->c()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Lo/apD;

    .line 1507
    :goto_0
    invoke-static {v1, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1508
    instance-of v2, v1, Lo/aoW;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lo/aoX;

    .line 1510
    :try_start_0
    invoke-virtual {v2, p2}, Lo/aoX;->c(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 1513
    invoke-static {v0, v3}, Lo/ajY;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1512
    :cond_0
    move-object v0, p0

    check-cast v0, Lo/apb;

    .line 1514
    new-instance v4, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in completion handler "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v4, Ljava/lang/Throwable;

    .line 1515
    sget-object v0, Lo/akj;->a:Lo/akj;

    move-object v0, v4

    .line 1518
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lo/apD;->g()Lo/apD;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 1521
    invoke-virtual {p0, v0}, Lo/apb;->d(Ljava/lang/Throwable;)V

    .line 332
    :cond_3
    invoke-direct {p0, p2}, Lo/apb;->f(Ljava/lang/Throwable;)Z

    return-void

    .line 1506
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final f(Ljava/lang/Throwable;)Z
    .locals 4

    .line 344
    invoke-virtual {p0}, Lo/apb;->t()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 350
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 351
    invoke-virtual {p0}, Lo/apb;->o()Lo/anW;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 353
    sget-object v3, Lo/apf;->e:Lo/apf;

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 358
    :cond_1
    invoke-interface {v2, p1}, Lo/anW;->e(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method private final g(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 3

    if-eqz p1, :cond_0

    .line 716
    instance-of v0, p1, Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 1590
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    .line 1591
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lo/apb;->b(Lo/apb;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lo/aoU;

    invoke-direct {v0, v1, p1, v2}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lo/aoU;)V

    move-object p1, v0

    check-cast p1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 717
    check-cast p1, Lo/apd;

    invoke-interface {p1}, Lo/apd;->s()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    :goto_1
    return-object p1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    .line 728
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    .line 1593
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lo/apb;->k()Ljava/lang/Object;

    move-result-object v2

    .line 731
    instance-of v3, v2, Lo/apb$Application;

    if-eqz v3, :cond_7

    .line 1594
    monitor-enter v2

    .line 733
    :try_start_0
    move-object v3, v2

    check-cast v3, Lo/apb$Application;

    invoke-virtual {v3}, Lo/apb$Application;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lo/apa;->d()Lo/apN;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object p1

    .line 735
    :cond_1
    :try_start_1
    move-object v3, v2

    check-cast v3, Lo/apb$Application;

    invoke-virtual {v3}, Lo/apb$Application;->g()Z

    move-result v3

    if-nez p1, :cond_2

    if-nez v3, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_1

    .line 738
    :cond_3
    invoke-direct {p0, p1}, Lo/apb;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 739
    :goto_1
    move-object p1, v2

    check-cast p1, Lo/apb$Application;

    invoke-virtual {p1, v1}, Lo/apb$Application;->b(Ljava/lang/Throwable;)V

    .line 742
    :cond_4
    move-object p1, v2

    check-cast p1, Lo/apb$Application;

    invoke-virtual {p1}, Lo/apb$Application;->d()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move-object p1, v0

    :goto_2
    monitor-exit v2

    if-eqz p1, :cond_6

    .line 744
    check-cast v2, Lo/apb$Application;

    invoke-virtual {v2}, Lo/apb$Application;->e()Lo/ape;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lo/apb;->e(Lo/ape;Ljava/lang/Throwable;)V

    .line 745
    :cond_6
    invoke-static {}, Lo/apa;->c()Lo/apN;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 742
    monitor-exit v2

    throw p1

    .line 747
    :cond_7
    instance-of v3, v2, Lo/aoO;

    if-eqz v3, :cond_c

    if-eqz v1, :cond_8

    goto :goto_3

    .line 749
    :cond_8
    invoke-direct {p0, p1}, Lo/apb;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 750
    :goto_3
    move-object v3, v2

    check-cast v3, Lo/aoO;

    invoke-interface {v3}, Lo/aoO;->au_()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 752
    invoke-direct {p0, v3, v1}, Lo/apb;->d(Lo/aoO;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lo/apa;->c()Lo/apN;

    move-result-object p1

    return-object p1

    .line 755
    :cond_9
    new-instance v3, Lo/aob;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v1, v4, v5, v0}, Lo/aob;-><init>(Ljava/lang/Throwable;ZILo/amc;)V

    invoke-direct {p0, v2, v3}, Lo/apb;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 757
    invoke-static {}, Lo/apa;->c()Lo/apN;

    move-result-object v4

    if-eq v3, v4, :cond_b

    .line 758
    invoke-static {}, Lo/apa;->b()Lo/apN;

    move-result-object v2

    if-ne v3, v2, :cond_a

    goto/16 :goto_0

    :cond_a
    return-object v3

    .line 757
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot happen in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 763
    :cond_c
    invoke-static {}, Lo/apa;->d()Lo/apN;

    move-result-object p1

    return-object p1
.end method

.method private final i(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 907
    instance-of v0, p1, Lo/aob;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lo/aob;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lo/aob;->d:Ljava/lang/Throwable;

    :cond_1
    return-object v1
.end method

.method private final o(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1058
    instance-of v0, p1, Lo/apb$Application;

    const-string v1, "Active"

    if-eqz v0, :cond_1

    .line 1059
    check-cast p1, Lo/apb$Application;

    invoke-virtual {p1}, Lo/apb$Application;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Cancelling"

    goto :goto_0

    .line 1060
    :cond_0
    invoke-virtual {p1}, Lo/apb$Application;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string v1, "Completing"

    goto :goto_0

    .line 1063
    :cond_1
    instance-of v0, p1, Lo/aoO;

    if-eqz v0, :cond_3

    check-cast p1, Lo/aoO;

    invoke-interface {p1}, Lo/aoO;->au_()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "New"

    goto :goto_0

    .line 1064
    :cond_3
    instance-of p1, p1, Lo/aob;

    if-eqz p1, :cond_4

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_4
    const-string v1, "Completed"

    :cond_5
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final a(Lo/ale;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ale<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1209
    :cond_0
    invoke-virtual {p0}, Lo/apb;->k()Ljava/lang/Object;

    move-result-object v0

    .line 1210
    instance-of v1, v0, Lo/aoO;

    if-nez v1, :cond_4

    .line 1212
    instance-of v1, v0, Lo/aob;

    if-eqz v1, :cond_3

    .line 1213
    check-cast v0, Lo/aob;

    iget-object v0, v0, Lo/aob;->d:Ljava/lang/Throwable;

    .line 1602
    invoke-static {}, Lo/aoo;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1604
    instance-of v1, p1, Lo/alk;

    if-nez v1, :cond_1

    throw v0

    .line 1605
    :cond_1
    check-cast p1, Lo/alk;

    invoke-static {v0, p1}, Lo/apP;->c(Ljava/lang/Throwable;Lo/alk;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 1602
    :cond_2
    throw v0

    .line 1215
    :cond_3
    invoke-static {v0}, Lo/apa;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1218
    :cond_4
    invoke-direct {p0, v0}, Lo/apb;->d(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1220
    invoke-virtual {p0, p1}, Lo/apb;->b(Lo/ale;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lo/aod;)Lo/anW;
    .locals 7

    .line 967
    new-instance v0, Lo/anY;

    invoke-direct {v0, p0, p1}, Lo/anY;-><init>(Lo/apb;Lo/aod;)V

    check-cast v0, Lo/aog;

    .line 1601
    move-object v4, v0

    check-cast v4, Lo/alA;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    .line 967
    invoke-static/range {v1 .. v6}, Lo/aoU$StateListAnimator;->c(Lo/aoU;ZZLo/alA;ILjava/lang/Object;)Lo/aoA;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/anW;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final a(Lo/aoX;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/aoX<",
            "*>;)V"
        }
    .end annotation

    .line 1582
    :cond_0
    invoke-virtual {p0}, Lo/apb;->k()Ljava/lang/Object;

    move-result-object v0

    .line 589
    instance-of v1, v0, Lo/aoX;

    if-eqz v1, :cond_2

    if-eq v0, p1, :cond_1

    return-void

    .line 592
    :cond_1
    sget-object v1, Lo/apb;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lo/apa;->a()Lo/aoF;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 594
    :cond_2
    instance-of v1, v0, Lo/aoO;

    if-eqz v1, :cond_3

    .line 596
    check-cast v0, Lo/aoO;

    invoke-interface {v0}, Lo/aoO;->e()Lo/ape;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lo/aoX;->b()Z

    :cond_3
    return-void
.end method

.method public at_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public av_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final synthetic b(Lo/ale;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ale<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1229
    new-instance v0, Lo/apb$TaskDescription;

    invoke-static {p1}, Lo/alh;->c(Lo/ale;)Lo/ale;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lo/apb$TaskDescription;-><init>(Lo/ale;Lo/apb;)V

    .line 1230
    move-object v1, v0

    check-cast v1, Lo/anR;

    new-instance v2, Lo/apk;

    move-object v3, v0

    check-cast v3, Lo/anT;

    invoke-direct {v2, p0, v3}, Lo/apk;-><init>(Lo/apb;Lo/anT;)V

    check-cast v2, Lo/aog;

    .line 1606
    check-cast v2, Lo/alA;

    .line 1230
    invoke-virtual {p0, v2}, Lo/apb;->b(Lo/alA;)Lo/aoA;

    move-result-object v2

    invoke-static {v1, v2}, Lo/anV;->c(Lo/anR;Lo/aoA;)V

    .line 1231
    invoke-virtual {v0}, Lo/apb$TaskDescription;->g()Ljava/lang/Object;

    move-result-object v0

    .line 1223
    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lo/alt;->e(Lo/ale;)V

    :cond_0
    return-object v0
.end method

.method public final b(Lo/alA;)Lo/aoA;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alA<",
            "-",
            "Ljava/lang/Throwable;",
            "Lo/akj;",
            ">;)",
            "Lo/aoA;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 449
    invoke-virtual {p0, v0, v1, p1}, Lo/apb;->b(ZZLo/alA;)Lo/aoA;

    move-result-object p1

    return-object p1
.end method

.method public final b(ZZLo/alA;)Lo/aoA;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lo/alA<",
            "-",
            "Ljava/lang/Throwable;",
            "Lo/akj;",
            ">;)",
            "Lo/aoA;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 456
    move-object v1, v0

    check-cast v1, Lo/aoX;

    .line 1553
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lo/apb;->k()Ljava/lang/Object;

    move-result-object v2

    .line 459
    instance-of v3, v2, Lo/aoF;

    if-eqz v3, :cond_3

    .line 460
    move-object v3, v2

    check-cast v3, Lo/aoF;

    invoke-virtual {v3}, Lo/aoF;->au_()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 462
    :cond_1
    invoke-direct {p0, p3, p1}, Lo/apb;->c(Lo/alA;Z)Lo/aoX;

    move-result-object v1

    .line 463
    :goto_1
    sget-object v3, Lo/apb;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lo/aoA;

    return-object v1

    .line 465
    :cond_2
    invoke-direct {p0, v3}, Lo/apb;->a(Lo/aoF;)V

    goto :goto_0

    .line 467
    :cond_3
    instance-of v3, v2, Lo/aoO;

    if-eqz v3, :cond_f

    .line 468
    move-object v3, v2

    check-cast v3, Lo/aoO;

    invoke-interface {v3}, Lo/aoO;->e()Lo/ape;

    move-result-object v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_4

    .line 470
    check-cast v2, Lo/aoX;

    invoke-direct {p0, v2}, Lo/apb;->e(Lo/aoX;)V

    goto :goto_0

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.JobNode<*>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 472
    :cond_5
    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    .line 473
    sget-object v5, Lo/apf;->e:Lo/apf;

    check-cast v5, Lo/aoA;

    if-eqz p1, :cond_b

    .line 474
    instance-of v6, v2, Lo/apb$Application;

    if-eqz v6, :cond_b

    .line 1554
    monitor-enter v2

    .line 477
    :try_start_0
    move-object v4, v2

    check-cast v4, Lo/apb$Application;

    invoke-virtual {v4}, Lo/apb$Application;->d()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1555
    instance-of v6, p3, Lo/anY;

    if-eqz v6, :cond_a

    move-object v6, v2

    check-cast v6, Lo/apb$Application;

    invoke-virtual {v6}, Lo/apb$Application;->c()Z

    move-result v6

    if-nez v6, :cond_a

    :cond_6
    if-eqz v1, :cond_7

    goto :goto_2

    .line 482
    :cond_7
    invoke-direct {p0, p3, p1}, Lo/apb;->c(Lo/alA;Z)Lo/aoX;

    move-result-object v1

    .line 483
    :goto_2
    invoke-direct {p0, v2, v3, v1}, Lo/apb;->c(Ljava/lang/Object;Lo/ape;Lo/aoX;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_8

    monitor-exit v2

    goto :goto_0

    :cond_8
    if-nez v4, :cond_9

    .line 485
    :try_start_1
    check-cast v1, Lo/aoA;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v1

    .line 487
    :cond_9
    :try_start_2
    move-object v5, v1

    check-cast v5, Lo/aoA;

    .line 489
    :cond_a
    sget-object v6, Lo/akj;->a:Lo/akj;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_b
    :goto_3
    if-eqz v4, :cond_d

    if-eqz p2, :cond_c

    .line 1556
    invoke-interface {p3, v4}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-object v5

    :cond_d
    if-eqz v1, :cond_e

    goto :goto_4

    .line 496
    :cond_e
    invoke-direct {p0, p3, p1}, Lo/apb;->c(Lo/alA;Z)Lo/aoX;

    move-result-object v1

    .line 497
    :goto_4
    invoke-direct {p0, v2, v3, v1}, Lo/apb;->c(Ljava/lang/Object;Lo/ape;Lo/aoX;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lo/aoA;

    return-object v1

    :cond_f
    if-eqz p2, :cond_12

    .line 504
    instance-of p1, v2, Lo/aob;

    if-nez p1, :cond_10

    move-object v2, v0

    :cond_10
    check-cast v2, Lo/aob;

    if-eqz v2, :cond_11

    iget-object v0, v2, Lo/aob;->d:Ljava/lang/Throwable;

    .line 1557
    :cond_11
    invoke-interface {p3, v0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    :cond_12
    sget-object p1, Lo/apf;->e:Lo/apf;

    check-cast p1, Lo/aoA;

    return-object p1
.end method

.method protected b(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected c(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 0

    .line 629
    invoke-virtual {p0, p1}, Lo/apb;->j(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Z
    .locals 2

    .line 182
    invoke-virtual {p0}, Lo/apb;->k()Ljava/lang/Object;

    move-result-object v0

    .line 183
    instance-of v1, v0, Lo/aoO;

    if-eqz v1, :cond_0

    check-cast v0, Lo/aoO;

    invoke-interface {v0}, Lo/aoO;->au_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d(Lo/ale;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ale<",
            "-",
            "Lo/akj;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 540
    invoke-direct {p0}, Lo/apb;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    invoke-interface {p1}, Lo/ale;->a()Lo/alj;

    move-result-object p1

    invoke-static {p1}, Lo/apt;->b(Lo/alj;)V

    .line 542
    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1

    .line 544
    :cond_0
    invoke-virtual {p0, p1}, Lo/apb;->e(Lo/ale;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method

.method protected final d(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 2

    .line 424
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1551
    :cond_1
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lo/apb;->b(Lo/apb;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    move-object v1, p0

    check-cast v1, Lo/aoU;

    invoke-direct {v0, p2, p1, v1}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lo/aoU;)V

    check-cast v0, Ljava/util/concurrent/CancellationException;

    :goto_2
    return-object v0
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 0

    .line 977
    throw p1
.end method

.method public final d(Lo/anW;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lo/apb;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method final synthetic e(Lo/ale;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ale<",
            "-",
            "Lo/akj;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1570
    new-instance v0, Lo/anT;

    invoke-static {p1}, Lo/alh;->c(Lo/ale;)Lo/ale;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/anT;-><init>(Lo/ale;I)V

    .line 1574
    move-object v1, v0

    check-cast v1, Lo/anR;

    .line 556
    new-instance v2, Lo/apj;

    move-object v3, p0

    check-cast v3, Lo/aoU;

    move-object v4, v1

    check-cast v4, Lo/ale;

    invoke-direct {v2, v3, v4}, Lo/apj;-><init>(Lo/aoU;Lo/ale;)V

    check-cast v2, Lo/aog;

    .line 1575
    check-cast v2, Lo/alA;

    .line 556
    invoke-virtual {p0, v2}, Lo/apb;->b(Lo/alA;)Lo/aoA;

    move-result-object v2

    invoke-static {v1, v2}, Lo/anV;->c(Lo/anR;Lo/aoA;)V

    .line 1576
    invoke-virtual {v0}, Lo/anT;->g()Ljava/lang/Object;

    move-result-object v0

    .line 1569
    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lo/alt;->e(Lo/ale;)V

    :cond_0
    return-object v0
.end method

.method public e(Ljava/util/concurrent/CancellationException;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 614
    check-cast p1, Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1583
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    .line 1584
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lo/apb;->b(Lo/apb;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lo/aoU;

    invoke-direct {v0, v1, p1, v2}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lo/aoU;)V

    move-object p1, v0

    check-cast p1, Ljava/lang/Throwable;

    .line 614
    :goto_0
    invoke-virtual {p0, p1}, Lo/apb;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e(Lo/aoU;)V
    .locals 1

    .line 143
    invoke-static {}, Lo/aoo;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lo/apb;->o()Lo/anW;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 145
    sget-object p1, Lo/apf;->e:Lo/apf;

    check-cast p1, Lo/anW;

    invoke-virtual {p0, p1}, Lo/apb;->d(Lo/anW;)V

    return-void

    .line 148
    :cond_3
    invoke-interface {p1}, Lo/aoU;->l()Z

    .line 150
    move-object v0, p0

    check-cast v0, Lo/aod;

    invoke-interface {p1, v0}, Lo/aoU;->a(Lo/aod;)Lo/anW;

    move-result-object p1

    .line 151
    invoke-virtual {p0, p1}, Lo/apb;->d(Lo/anW;)V

    .line 153
    invoke-virtual {p0}, Lo/apb;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    invoke-interface {p1}, Lo/anW;->a()V

    .line 155
    sget-object p1, Lo/apf;->e:Lo/apf;

    check-cast p1, Lo/anW;

    invoke-virtual {p0, p1}, Lo/apb;->d(Lo/anW;)V

    :cond_4
    return-void
.end method

.method public final e(Lo/apd;)V
    .locals 0

    .line 634
    invoke-virtual {p0, p1}, Lo/apb;->j(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Ljava/lang/Throwable;)Z
    .locals 2

    .line 647
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 648
    :cond_0
    invoke-virtual {p0, p1}, Lo/apb;->j(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lo/apb;->av_()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1598
    :goto_0
    invoke-virtual {p0}, Lo/apb;->k()Ljava/lang/Object;

    move-result-object v0

    .line 825
    invoke-direct {p0, v0, p1}, Lo/apb;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 827
    invoke-static {}, Lo/apa;->c()Lo/apN;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 832
    invoke-static {}, Lo/apa;->b()Lo/apN;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 828
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already complete or completing, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "but is being completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lo/apb;->i(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    .line 828
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public fold(Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lo/alN<",
            "-TR;-",
            "Lo/alj$StateListAnimator;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 28
    invoke-static {p0, p1, p2}, Lo/aoU$StateListAnimator;->e(Lo/aoU;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1055
    invoke-static {p0}, Lo/aos;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Lo/alj$Application;)Lo/alj$StateListAnimator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lo/alj$StateListAnimator;",
            ">(",
            "Lo/alj$Application<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 28
    invoke-static {p0, p1}, Lo/aoU$StateListAnimator;->d(Lo/aoU;Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Lo/alj$Application;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/alj$Application<",
            "*>;"
        }
    .end annotation

    .line 29
    sget-object v0, Lo/aoU;->d:Lo/aoU$ActionBar;

    check-cast v0, Lo/alj$Application;

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public final j(Ljava/lang/Object;)Z
    .locals 3

    .line 660
    invoke-static {}, Lo/apa;->c()Lo/apN;

    move-result-object v0

    .line 661
    invoke-virtual {p0}, Lo/apb;->at_()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 664
    invoke-direct {p0, p1}, Lo/apb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 665
    sget-object v1, Lo/apa;->c:Lo/apN;

    if-ne v0, v1, :cond_0

    return v2

    .line 667
    :cond_0
    invoke-static {}, Lo/apa;->c()Lo/apN;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 668
    invoke-direct {p0, p1}, Lo/apb;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 671
    :cond_1
    invoke-static {}, Lo/apa;->c()Lo/apN;

    move-result-object p1

    if-ne v0, p1, :cond_2

    goto :goto_0

    .line 672
    :cond_2
    sget-object p1, Lo/apa;->c:Lo/apN;

    if-ne v0, p1, :cond_3

    goto :goto_0

    .line 673
    :cond_3
    invoke-static {}, Lo/apa;->d()Lo/apN;

    move-result-object p1

    if-ne v0, p1, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    .line 675
    :cond_4
    invoke-virtual {p0, v0}, Lo/apb;->a(Ljava/lang/Object;)V

    :goto_0
    return v2
.end method

.method public final k()Ljava/lang/Object;
    .locals 2

    .line 1492
    :goto_0
    iget-object v0, p0, Lo/apb;->_state:Ljava/lang/Object;

    .line 167
    instance-of v1, v0, Lo/apH;

    if-nez v1, :cond_0

    return-object v0

    .line 168
    :cond_0
    check-cast v0, Lo/apH;

    invoke-virtual {v0, p0}, Lo/apH;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .line 1550
    :goto_0
    invoke-virtual {p0}, Lo/apb;->k()Ljava/lang/Object;

    move-result-object v0

    .line 380
    invoke-direct {p0, v0}, Lo/apb;->d(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public minusKey(Lo/alj$Application;)Lo/alj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alj$Application<",
            "*>;)",
            "Lo/alj;"
        }
    .end annotation

    .line 28
    invoke-static {p0, p1}, Lo/aoU$StateListAnimator;->c(Lo/aoU;Lo/alj$Application;)Lo/alj;

    move-result-object p1

    return-object p1
.end method

.method public final n()Ljava/util/concurrent/CancellationException;
    .locals 4

    .line 415
    invoke-virtual {p0}, Lo/apb;->k()Ljava/lang/Object;

    move-result-object v0

    .line 416
    instance-of v1, v0, Lo/apb$Application;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_1

    check-cast v0, Lo/apb$Application;

    invoke-virtual {v0}, Lo/apb$Application;->d()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lo/aos;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is cancelling"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lo/apb;->d(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 418
    :cond_1
    instance-of v1, v0, Lo/aoO;

    if-nez v1, :cond_3

    .line 419
    instance-of v1, v0, Lo/aob;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lo/aob;

    iget-object v0, v0, Lo/aob;->d:Ljava/lang/Throwable;

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v1, v2}, Lo/apb;->b(Lo/apb;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_0

    .line 420
    :cond_2
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lo/aos;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has completed normally"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Lo/aoU;

    invoke-direct {v0, v1, v2, v3}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lo/aoU;)V

    check-cast v0, Ljava/util/concurrent/CancellationException;

    :goto_0
    return-object v0

    .line 418
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public final o()Lo/anW;
    .locals 1

    .line 133
    iget-object v0, p0, Lo/apb;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lo/anW;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .line 186
    invoke-virtual {p0}, Lo/apb;->k()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lo/aoO;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public plus(Lo/alj;)Lo/alj;
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lo/aoU$StateListAnimator;->d(Lo/aoU;Lo/alj;)Lo/alj;

    move-result-object p1

    return-object p1
.end method

.method public final q()Ljava/lang/String;
    .locals 2

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/apb;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/apb;->k()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/apb;->o(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/util/concurrent/CancellationException;
    .locals 5

    .line 704
    invoke-virtual {p0}, Lo/apb;->k()Ljava/lang/Object;

    move-result-object v0

    .line 706
    instance-of v1, v0, Lo/apb$Application;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lo/apb$Application;

    invoke-virtual {v1}, Lo/apb$Application;->d()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 707
    :cond_0
    instance-of v1, v0, Lo/aob;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lo/aob;

    iget-object v1, v1, Lo/aob;->d:Ljava/lang/Throwable;

    goto :goto_0

    .line 708
    :cond_1
    instance-of v1, v0, Lo/aoO;

    if-nez v1, :cond_4

    move-object v1, v2

    .line 711
    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    check-cast v2, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v2, Lkotlinx/coroutines/JobCancellationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent job is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lo/apb;->o(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, p0

    check-cast v3, Lo/aoU;

    invoke-direct {v2, v0, v1, v3}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lo/aoU;)V

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :goto_2
    return-object v2

    .line 708
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot be cancelling child in this state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method protected t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/apb;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lo/aos;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
