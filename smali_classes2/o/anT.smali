.class public Lo/anT;
.super Lo/aoB;
.source ""

# interfaces
.implements Lo/anR;
.implements Lo/alk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/aoB<",
        "TT;>;",
        "Lo/anR<",
        "TT;>;",
        "Lo/alk;"
    }
.end annotation


# static fields
.field private static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _decision:I

.field private volatile _parentHandle:Ljava/lang/Object;

.field private volatile _state:Ljava/lang/Object;

.field private final c:Lo/alj;

.field private final e:Lo/ale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ale<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lo/anT;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lo/anT;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/anT;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lo/ale;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ale<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p2}, Lo/aoB;-><init>(I)V

    iput-object p1, p0, Lo/anT;->e:Lo/ale;

    .line 30
    iget-object p1, p0, Lo/anT;->e:Lo/ale;

    invoke-interface {p1}, Lo/ale;->a()Lo/alj;

    move-result-object p1

    iput-object p1, p0, Lo/anT;->c:Lo/alj;

    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lo/anT;->_decision:I

    .line 69
    sget-object p1, Lo/anK;->e:Lo/anK;

    iput-object p1, p0, Lo/anT;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lo/anT;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method private final a(Ljava/lang/Object;I)Lo/anU;
    .locals 2

    .line 513
    :goto_0
    iget-object v0, p0, Lo/anT;->_state:Ljava/lang/Object;

    .line 314
    instance-of v1, v0, Lo/apc;

    if-eqz v1, :cond_1

    .line 315
    sget-object v1, Lo/anT;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    invoke-direct {p0}, Lo/anT;->s()V

    .line 317
    invoke-direct {p0, p2}, Lo/anT;->d(I)V

    const/4 p1, 0x0

    return-object p1

    .line 320
    :cond_1
    instance-of v1, v0, Lo/anU;

    if-eqz v1, :cond_2

    .line 326
    check-cast v0, Lo/anU;

    invoke-virtual {v0}, Lo/anU;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 329
    :cond_2
    invoke-direct {p0, p1}, Lo/anT;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final b(Lo/aoA;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lo/anT;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method private final c(Ljava/lang/Object;)V
    .locals 2

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already resumed, but proposed with update "

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

.method private final c(Lo/alA;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alA<",
            "-",
            "Ljava/lang/Throwable;",
            "Lo/akj;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method private final c(Ljava/lang/Throwable;)Z
    .locals 3

    .line 161
    iget v0, p0, Lo/anT;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 162
    :cond_0
    iget-object v0, p0, Lo/anT;->e:Lo/ale;

    instance-of v2, v0, Lo/aow;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lo/aow;

    if-eqz v0, :cond_2

    .line 163
    invoke-virtual {v0, p1}, Lo/aow;->e(Ljava/lang/Throwable;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method private final d(I)V
    .locals 1

    .line 305
    invoke-direct {p0}, Lo/anT;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 307
    :cond_0
    invoke-static {p0, p1}, Lo/aoy;->d(Lo/aoB;I)V

    return-void
.end method

.method private final e(Lo/alA;)Lo/anQ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alA<",
            "-",
            "Ljava/lang/Throwable;",
            "Lo/akj;",
            ">;)",
            "Lo/anQ;"
        }
    .end annotation

    .line 302
    instance-of v0, p1, Lo/anQ;

    if-eqz v0, :cond_0

    check-cast p1, Lo/anQ;

    goto :goto_0

    :cond_0
    new-instance v0, Lo/aoQ;

    invoke-direct {v0, p1}, Lo/aoQ;-><init>(Lo/alA;)V

    move-object p1, v0

    check-cast p1, Lo/anQ;

    :goto_0
    return-object p1
.end method

.method private final k()Lo/aoA;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/anT;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lo/aoA;

    return-object v0
.end method

.method private final l()Z
    .locals 3

    .line 131
    invoke-virtual {p0}, Lo/anT;->b()Z

    move-result v0

    .line 132
    iget v1, p0, Lo/anT;->a:I

    if-eqz v1, :cond_0

    return v0

    .line 133
    :cond_0
    iget-object v1, p0, Lo/anT;->e:Lo/ale;

    instance-of v2, v1, Lo/aow;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Lo/aow;

    if-eqz v1, :cond_3

    .line 134
    move-object v2, p0

    check-cast v2, Lo/anR;

    invoke-virtual {v1, v2}, Lo/aow;->e(Lo/anR;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    .line 137
    invoke-virtual {p0, v1}, Lo/anT;->b(Ljava/lang/Throwable;)Z

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private final m()V
    .locals 7

    .line 113
    invoke-direct {p0}, Lo/anT;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-direct {p0}, Lo/anT;->k()Lo/aoA;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lo/anT;->e:Lo/ale;

    invoke-interface {v0}, Lo/ale;->a()Lo/alj;

    move-result-object v0

    sget-object v1, Lo/aoU;->d:Lo/aoU$ActionBar;

    check-cast v1, Lo/alj$Application;

    invoke-interface {v0, v1}, Lo/alj;->get(Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lo/aoU;

    if-eqz v1, :cond_2

    .line 116
    invoke-interface {v1}, Lo/aoU;->l()Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 119
    new-instance v0, Lo/anX;

    invoke-direct {v0, v1, p0}, Lo/anX;-><init>(Lo/aoU;Lo/anT;)V

    check-cast v0, Lo/aog;

    .line 458
    move-object v4, v0

    check-cast v4, Lo/alA;

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 117
    invoke-static/range {v1 .. v6}, Lo/aoU$StateListAnimator;->c(Lo/aoU;ZZLo/alA;ILjava/lang/Object;)Lo/aoA;

    move-result-object v0

    .line 121
    invoke-direct {p0, v0}, Lo/anT;->b(Lo/aoA;)V

    .line 124
    invoke-virtual {p0}, Lo/anT;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lo/anT;->n()Z

    move-result v1

    if-nez v1, :cond_2

    .line 125
    invoke-interface {v0}, Lo/aoA;->a()V

    .line 126
    sget-object v0, Lo/apf;->e:Lo/apf;

    check-cast v0, Lo/aoA;

    invoke-direct {p0, v0}, Lo/anT;->b(Lo/aoA;)V

    :cond_2
    return-void
.end method

.method private final n()Z
    .locals 2

    .line 88
    iget-object v0, p0, Lo/anT;->e:Lo/ale;

    instance-of v1, v0, Lo/aow;

    if-eqz v1, :cond_0

    check-cast v0, Lo/aow;

    invoke-virtual {v0, p0}, Lo/aow;->b(Lo/anT;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final o()Z
    .locals 3

    .line 482
    :cond_0
    iget v0, p0, Lo/anT;->_decision:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    .line 211
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 209
    :cond_2
    sget-object v0, Lo/anT;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final p()Z
    .locals 4

    .line 484
    :cond_0
    iget v0, p0, Lo/anT;->_decision:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return v1

    .line 221
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 219
    :cond_2
    sget-object v0, Lo/anT;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final s()V
    .locals 1

    .line 340
    invoke-direct {p0}, Lo/anT;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/anT;->f()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lo/aoU;)Ljava/lang/Throwable;
    .locals 0

    .line 204
    invoke-interface {p1}, Lo/aoU;->n()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1
.end method

.method public a()Lo/alj;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/anT;->c:Lo/alj;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    .line 150
    instance-of v0, p1, Lo/aof;

    if-eqz v0, :cond_0

    .line 152
    :try_start_0
    check-cast p1, Lo/aof;

    iget-object p1, p1, Lo/aof;->a:Lo/alA;

    invoke-interface {p1, p2}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 464
    invoke-virtual {p0}, Lo/anT;->a()Lo/alj;

    move-result-object p2

    .line 465
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in cancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    .line 463
    invoke-static {p2, v0}, Lo/aoj;->e(Lo/alj;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 182
    invoke-direct {p0, p1}, Lo/anT;->c(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-virtual {p0, p1}, Lo/anT;->b(Ljava/lang/Throwable;)Z

    .line 185
    invoke-direct {p0}, Lo/anT;->s()V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 80
    invoke-virtual {p0}, Lo/anT;->c()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lo/apc;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/Throwable;)Z
    .locals 5

    .line 470
    :goto_0
    iget-object v0, p0, Lo/anT;->_state:Ljava/lang/Object;

    .line 168
    instance-of v1, v0, Lo/apc;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 170
    :cond_0
    new-instance v1, Lo/anU;

    move-object v3, p0

    check-cast v3, Lo/ale;

    instance-of v4, v0, Lo/anQ;

    invoke-direct {v1, v3, p1, v4}, Lo/anU;-><init>(Lo/ale;Ljava/lang/Throwable;Z)V

    .line 171
    sget-object v3, Lo/anT;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 173
    :try_start_0
    check-cast v0, Lo/anQ;

    invoke-virtual {v0, p1}, Lo/anQ;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 476
    invoke-virtual {p0}, Lo/anT;->a()Lo/alj;

    move-result-object v0

    .line 477
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in cancellation handler for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    .line 475
    invoke-static {v0, v1}, Lo/aoj;->e(Lo/alj;Ljava/lang/Throwable;)V

    .line 175
    :cond_2
    :goto_1
    invoke-direct {p0}, Lo/anT;->s()V

    .line 176
    invoke-direct {p0, v2}, Lo/anT;->d(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    .line 76
    iget-object v0, p0, Lo/anT;->_state:Ljava/lang/Object;

    return-object v0
.end method

.method public c(Lo/alA;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alA<",
            "-",
            "Ljava/lang/Throwable;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 263
    move-object v1, v0

    check-cast v1, Lo/anQ;

    .line 500
    :cond_0
    :goto_0
    iget-object v2, p0, Lo/anT;->_state:Ljava/lang/Object;

    .line 266
    instance-of v3, v2, Lo/anK;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 267
    :cond_1
    invoke-direct {p0, p1}, Lo/anT;->e(Lo/alA;)Lo/anQ;

    move-result-object v1

    .line 268
    :goto_1
    sget-object v3, Lo/anT;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 270
    :cond_2
    instance-of v3, v2, Lo/anQ;

    if-eqz v3, :cond_3

    invoke-direct {p0, p1, v2}, Lo/anT;->c(Lo/alA;Ljava/lang/Object;)V

    goto :goto_0

    .line 271
    :cond_3
    instance-of v1, v2, Lo/anU;

    if-eqz v1, :cond_7

    .line 277
    move-object v1, v2

    check-cast v1, Lo/anU;

    invoke-virtual {v1}, Lo/anU;->d()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, p1, v2}, Lo/anT;->c(Lo/alA;Ljava/lang/Object;)V

    .line 282
    :cond_4
    :try_start_0
    instance-of v1, v2, Lo/aob;

    if-nez v1, :cond_5

    move-object v2, v0

    :cond_5
    check-cast v2, Lo/aob;

    if-eqz v2, :cond_6

    iget-object v0, v2, Lo/aob;->d:Ljava/lang/Throwable;

    .line 503
    :cond_6
    invoke-interface {p1, v0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 507
    invoke-virtual {p0}, Lo/anT;->a()Lo/alj;

    move-result-object v0

    .line 508
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in cancellation handler for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    .line 506
    invoke-static {v0, v1}, Lo/aoj;->e(Lo/alj;Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 410
    instance-of v0, p1, Lo/aoi;

    if-eqz v0, :cond_0

    check-cast p1, Lo/aoi;

    iget-object p1, p1, Lo/aoi;->c:Ljava/lang/Object;

    goto :goto_0

    .line 411
    :cond_0
    instance-of v0, p1, Lo/aof;

    if-eqz v0, :cond_1

    check-cast p1, Lo/aof;

    iget-object p1, p1, Lo/aof;->d:Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public d()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lo/alk;
    .locals 2

    .line 143
    iget-object v0, p0, Lo/anT;->e:Lo/ale;

    instance-of v1, v0, Lo/alk;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lo/alk;

    return-object v0
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1

    .line 249
    move-object v0, p0

    check-cast v0, Lo/anR;

    invoke-static {p1, v0}, Lo/aoc;->e(Ljava/lang/Object;Lo/anR;)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Lo/anT;->a:I

    invoke-direct {p0, p1, v0}, Lo/anT;->a(Ljava/lang/Object;I)Lo/anU;

    return-void
.end method

.method public final f()V
    .locals 1

    .line 348
    invoke-direct {p0}, Lo/anT;->k()Lo/aoA;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    invoke-interface {v0}, Lo/aoA;->a()V

    .line 350
    :cond_0
    sget-object v0, Lo/apf;->e:Lo/apf;

    check-cast v0, Lo/aoA;

    invoke-direct {p0, v0}, Lo/anT;->b(Lo/aoA;)V

    return-void
.end method

.method public final g()Ljava/lang/Object;
    .locals 3

    .line 228
    invoke-direct {p0}, Lo/anT;->m()V

    .line 229
    invoke-direct {p0}, Lo/anT;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lo/anT;->c()Ljava/lang/Object;

    move-result-object v0

    .line 232
    instance-of v1, v0, Lo/aob;

    if-eqz v1, :cond_3

    check-cast v0, Lo/aob;

    iget-object v0, v0, Lo/aob;->d:Ljava/lang/Throwable;

    move-object v1, p0

    check-cast v1, Lo/ale;

    .line 485
    invoke-static {}, Lo/aoo;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v1, Lo/alk;

    if-nez v2, :cond_1

    goto :goto_0

    .line 486
    :cond_1
    check-cast v1, Lo/alk;

    invoke-static {v0, v1}, Lo/apP;->c(Ljava/lang/Throwable;Lo/alk;)Ljava/lang/Throwable;

    move-result-object v0

    :cond_2
    :goto_0
    throw v0

    .line 237
    :cond_3
    iget v1, p0, Lo/anT;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 238
    invoke-virtual {p0}, Lo/anT;->a()Lo/alj;

    move-result-object v1

    sget-object v2, Lo/aoU;->d:Lo/aoU$ActionBar;

    check-cast v2, Lo/alj$Application;

    invoke-interface {v1, v2}, Lo/alj;->get(Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object v1

    check-cast v1, Lo/aoU;

    if-eqz v1, :cond_6

    .line 239
    invoke-interface {v1}, Lo/aoU;->c()Z

    move-result v2

    if-nez v2, :cond_6

    .line 240
    invoke-interface {v1}, Lo/aoU;->n()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    .line 241
    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v1}, Lo/anT;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 242
    move-object v0, p0

    check-cast v0, Lo/ale;

    .line 487
    invoke-static {}, Lo/aoo;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    instance-of v2, v0, Lo/alk;

    if-nez v2, :cond_4

    goto :goto_1

    .line 488
    :cond_4
    check-cast v0, Lo/alk;

    invoke-static {v1, v0}, Lo/apP;->c(Ljava/lang/Throwable;Lo/alk;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_5
    :goto_1
    throw v1

    .line 245
    :cond_6
    invoke-virtual {p0, v0}, Lo/anT;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/Object;
    .locals 1

    .line 147
    invoke-virtual {p0}, Lo/anT;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lo/ale;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/ale<",
            "TT;>;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lo/anT;->e:Lo/ale;

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/anT;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/anT;->e:Lo/ale;

    invoke-static {v1}, Lo/aos;->c(Lo/ale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/anT;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lo/aos;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
