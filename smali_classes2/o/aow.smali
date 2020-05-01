.class public final Lo/aow;
.super Lo/aoB;
.source ""

# interfaces
.implements Lo/alk;
.implements Lo/ale;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/aoB<",
        "TT;>;",
        "Lo/alk;",
        "Lo/ale<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _reusableCancellableContinuation:Ljava/lang/Object;

.field public final b:Lo/aon;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public final e:Lo/ale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ale<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final j:Lo/alk;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lo/aow;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_reusableCancellableContinuation"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/aow;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lo/aon;Lo/ale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/aon;",
            "Lo/ale<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0}, Lo/aoB;-><init>(I)V

    iput-object p1, p0, Lo/aow;->b:Lo/aon;

    iput-object p2, p0, Lo/aow;->e:Lo/ale;

    .line 25
    invoke-static {}, Lo/aou;->c()Lo/apN;

    move-result-object p1

    iput-object p1, p0, Lo/aow;->d:Ljava/lang/Object;

    .line 26
    iget-object p1, p0, Lo/aow;->e:Lo/ale;

    instance-of p2, p1, Lo/alk;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lo/alk;

    iput-object p1, p0, Lo/aow;->j:Lo/alk;

    .line 29
    invoke-virtual {p0}, Lo/aow;->a()Lo/alj;

    move-result-object p1

    invoke-static {p1}, Lo/apR;->c(Lo/alj;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lo/aow;->c:Ljava/lang/Object;

    .line 61
    iput-object v0, p0, Lo/aow;->_reusableCancellableContinuation:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lo/alj;
    .locals 1

    iget-object v0, p0, Lo/aow;->e:Lo/ale;

    invoke-interface {v0}, Lo/ale;->a()Lo/alj;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lo/anT;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/anT<",
            "*>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lo/aow;->_reusableCancellableContinuation:Ljava/lang/Object;

    instance-of v1, v0, Lo/anT;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lo/anT;

    return-object v0
.end method

.method public final b(Lo/anT;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/anT<",
            "*>;)Z"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lo/aow;->_reusableCancellableContinuation:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 81
    instance-of v2, v0, Lo/anT;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method public d()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(Lo/alj;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alj;",
            "TT;)V"
        }
    .end annotation

    .line 232
    iput-object p2, p0, Lo/aow;->d:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 233
    iput p2, p0, Lo/aow;->a:I

    .line 234
    iget-object p2, p0, Lo/aow;->b:Lo/aon;

    move-object v0, p0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p2, p1, v0}, Lo/aon;->e(Lo/alj;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Lo/anR;)Ljava/lang/Throwable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/anR<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 287
    :cond_0
    iget-object v0, p0, Lo/aow;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 134
    sget-object v1, Lo/aou;->d:Lo/apN;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 135
    sget-object v0, Lo/aow;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lo/aou;->d:Lo/apN;

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    :cond_1
    if-nez v0, :cond_2

    return-object v2

    .line 138
    :cond_2
    instance-of p1, v0, Ljava/lang/Throwable;

    if-eqz p1, :cond_4

    .line 139
    sget-object p1, Lo/aow;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 140
    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 139
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 142
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inconsistent state "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public e()Lo/alk;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/aow;->j:Lo/alk;

    return-object v0
.end method

.method public e(Ljava/lang/Object;)V
    .locals 6

    .line 179
    iget-object v0, p0, Lo/aow;->e:Lo/ale;

    invoke-interface {v0}, Lo/ale;->a()Lo/alj;

    move-result-object v0

    .line 180
    invoke-static {p1}, Lo/aoc;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lo/aow;->b:Lo/aon;

    invoke-virtual {v2, v0}, Lo/aon;->a(Lo/alj;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 182
    iput-object v1, p0, Lo/aow;->d:Ljava/lang/Object;

    .line 183
    iput v3, p0, Lo/aow;->a:I

    .line 184
    iget-object p1, p0, Lo/aow;->b:Lo/aon;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1}, Lo/aon;->c(Lo/alj;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 293
    :cond_0
    sget-object v0, Lo/aph;->c:Lo/aph;

    invoke-virtual {v0}, Lo/aph;->b()Lo/aoE;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lo/aoE;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    iput-object v1, p0, Lo/aow;->d:Ljava/lang/Object;

    .line 299
    iput v3, p0, Lo/aow;->a:I

    .line 300
    move-object p1, p0

    check-cast p1, Lo/aoB;

    invoke-virtual {v0, p1}, Lo/aoE;->e(Lo/aoB;)V

    goto :goto_1

    .line 304
    :cond_1
    move-object v1, p0

    check-cast v1, Lo/aoB;

    const/4 v2, 0x1

    .line 305
    invoke-virtual {v0, v2}, Lo/aoE;->a(Z)V

    .line 187
    :try_start_0
    invoke-virtual {p0}, Lo/aow;->a()Lo/alj;

    move-result-object v3

    iget-object v4, p0, Lo/aow;->c:Ljava/lang/Object;

    .line 308
    invoke-static {v3, v4}, Lo/apR;->e(Lo/alj;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    :try_start_1
    iget-object v5, p0, Lo/aow;->e:Lo/ale;

    invoke-interface {v5, p1}, Lo/ale;->e(Ljava/lang/Object;)V

    .line 189
    sget-object p1, Lo/akj;->a:Lo/akj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    :try_start_2
    invoke-static {v3, v4}, Lo/apR;->a(Lo/alj;Ljava/lang/Object;)V

    .line 315
    :cond_2
    invoke-virtual {v0}, Lo/aoE;->a()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 312
    invoke-static {v3, v4}, Lo/apR;->a(Lo/alj;Ljava/lang/Object;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    const/4 v3, 0x0

    .line 331
    :try_start_3
    invoke-virtual {v1, p1, v3}, Lo/aoB;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 324
    :goto_0
    invoke-virtual {v0, v2}, Lo/aoE;->c(Z)V

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v0, v2}, Lo/aoE;->c(Z)V

    throw p1
.end method

.method public final e(Ljava/lang/Throwable;)Z
    .locals 3

    .line 289
    :cond_0
    iget-object v0, p0, Lo/aow;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 154
    sget-object v1, Lo/aou;->d:Lo/apN;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 155
    sget-object v0, Lo/aow;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lo/aou;->d:Lo/apN;

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 158
    :cond_1
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    return v2

    .line 161
    :cond_2
    sget-object v1, Lo/aow;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public h()Ljava/lang/Object;
    .locals 2

    .line 169
    iget-object v0, p0, Lo/aow;->d:Ljava/lang/Object;

    .line 170
    invoke-static {}, Lo/aoo;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lo/aou;->c()Lo/apN;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 171
    :cond_2
    :goto_1
    invoke-static {}, Lo/aou;->c()Lo/apN;

    move-result-object v1

    iput-object v1, p0, Lo/aow;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public i()Lo/ale;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/ale<",
            "TT;>;"
        }
    .end annotation

    .line 176
    move-object v0, p0

    check-cast v0, Lo/ale;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DispatchedContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aow;->b:Lo/aon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aow;->e:Lo/ale;

    invoke-static {v1}, Lo/aos;->c(Lo/ale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
