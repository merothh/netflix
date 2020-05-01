.class public Lo/apD;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/apD$StateListAnimator;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field static final d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile _next:Ljava/lang/Object;

.field volatile _prev:Ljava/lang/Object;

.field private volatile _removedRef:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lo/apD;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_next"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lo/apD;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_prev"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lo/apD;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_removedRef"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/apD;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p0, p0, Lo/apD;->_next:Ljava/lang/Object;

    .line 62
    iput-object p0, p0, Lo/apD;->_prev:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lo/apD;->_removedRef:Ljava/lang/Object;

    return-void
.end method

.method private final a(Lo/apH;)Lo/apD;
    .locals 7

    .line 559
    :goto_0
    iget-object v0, p0, Lo/apD;->_prev:Ljava/lang/Object;

    check-cast v0, Lo/apD;

    const/4 v1, 0x0

    .line 561
    move-object v2, v1

    check-cast v2, Lo/apD;

    move-object v3, v0

    :goto_1
    move-object v4, v2

    .line 563
    :goto_2
    iget-object v5, v3, Lo/apD;->_next:Ljava/lang/Object;

    .line 566
    move-object v6, p0

    check-cast v6, Lo/apD;

    if-ne v5, v6, :cond_2

    if-ne v0, v3, :cond_0

    return-object v3

    .line 569
    :cond_0
    sget-object v1, Lo/apD;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v3

    .line 576
    :cond_2
    invoke-virtual {p0}, Lo/apD;->d()Z

    move-result v6

    if-eqz v6, :cond_3

    return-object v1

    :cond_3
    if-ne v5, p1, :cond_4

    return-object v3

    .line 578
    :cond_4
    instance-of v6, v5, Lo/apH;

    if-eqz v6, :cond_6

    if-eqz p1, :cond_5

    .line 579
    move-object v0, v5

    check-cast v0, Lo/apH;

    invoke-virtual {p1, v0}, Lo/apH;->d(Lo/apH;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v1

    .line 581
    :cond_5
    check-cast v5, Lo/apH;

    invoke-virtual {v5, v3}, Lo/apH;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 584
    :cond_6
    instance-of v6, v5, Lo/apI;

    if-eqz v6, :cond_9

    if-eqz v4, :cond_8

    .line 587
    sget-object v6, Lo/apD;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v5, Lo/apI;

    iget-object v5, v5, Lo/apI;->a:Lo/apD;

    invoke-virtual {v6, v4, v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    move-object v3, v4

    goto :goto_1

    .line 593
    :cond_8
    iget-object v3, v3, Lo/apD;->_prev:Ljava/lang/Object;

    check-cast v3, Lo/apD;

    goto :goto_2

    :cond_9
    if-eqz v5, :cond_a

    .line 598
    check-cast v5, Lo/apD;

    move-object v4, v3

    move-object v3, v5

    goto :goto_2

    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Lo/apD;Lo/apD;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lo/apD;->d(Lo/apD;)V

    return-void
.end method

.method private final c(Lo/apD;)Lo/apD;
    .locals 1

    .line 112
    :goto_0
    invoke-virtual {p1}, Lo/apD;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 113
    :cond_0
    iget-object p1, p1, Lo/apD;->_prev:Ljava/lang/Object;

    check-cast p1, Lo/apD;

    goto :goto_0
.end method

.method private final d(Lo/apD;)V
    .locals 2

    .line 667
    :cond_0
    iget-object v0, p1, Lo/apD;->_prev:Ljava/lang/Object;

    check-cast v0, Lo/apD;

    .line 533
    invoke-virtual {p0}, Lo/apD;->c()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    return-void

    .line 534
    :cond_1
    sget-object v1, Lo/apD;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lo/apD;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lo/apD;->a(Lo/apH;)Lo/apD;

    :cond_2
    return-void
.end method

.method private final j()Lo/apI;
    .locals 2

    .line 66
    iget-object v0, p0, Lo/apD;->_removedRef:Ljava/lang/Object;

    check-cast v0, Lo/apI;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lo/apI;

    invoke-direct {v0, p0}, Lo/apI;-><init>(Lo/apD;)V

    sget-object v1, Lo/apD;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final b(Lo/apD;Lo/apD;Lo/apD$StateListAnimator;)I
    .locals 1

    .line 221
    sget-object v0, Lo/apD;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    sget-object v0, Lo/apD;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 223
    iput-object p2, p3, Lo/apD$StateListAnimator;->c:Lo/apD;

    .line 224
    sget-object p1, Lo/apD;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 226
    :cond_0
    invoke-virtual {p3, p0}, Lo/apD$StateListAnimator;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method public b()Z
    .locals 1

    .line 240
    invoke-virtual {p0}, Lo/apD;->f()Lo/apD;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 2

    .line 659
    :goto_0
    iget-object v0, p0, Lo/apD;->_next:Ljava/lang/Object;

    .line 95
    instance-of v1, v0, Lo/apH;

    if-nez v1, :cond_0

    return-object v0

    .line 96
    :cond_0
    check-cast v0, Lo/apH;

    invoke-virtual {v0, p0}, Lo/apH;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .line 90
    invoke-virtual {p0}, Lo/apD;->c()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lo/apI;

    return v0
.end method

.method public final e(Lo/apD;)Z
    .locals 2

    .line 119
    sget-object v0, Lo/apD;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    sget-object v0, Lo/apD;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    :cond_0
    invoke-virtual {p0}, Lo/apD;->c()Ljava/lang/Object;

    move-result-object v0

    .line 123
    move-object v1, p0

    check-cast v1, Lo/apD;

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 124
    :cond_1
    sget-object v0, Lo/apD;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p1, p0}, Lo/apD;->d(Lo/apD;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final f()Lo/apD;
    .locals 4

    .line 246
    :cond_0
    invoke-virtual {p0}, Lo/apD;->c()Ljava/lang/Object;

    move-result-object v0

    .line 247
    instance-of v1, v0, Lo/apI;

    if-eqz v1, :cond_1

    check-cast v0, Lo/apI;

    iget-object v0, v0, Lo/apI;->a:Lo/apD;

    return-object v0

    .line 248
    :cond_1
    move-object v1, p0

    check-cast v1, Lo/apD;

    if-ne v0, v1, :cond_2

    check-cast v0, Lo/apD;

    return-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 249
    move-object v1, v0

    check-cast v1, Lo/apD;

    invoke-direct {v1}, Lo/apD;->j()Lo/apI;

    move-result-object v2

    .line 250
    sget-object v3, Lo/apD;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 252
    invoke-direct {v1, v0}, Lo/apD;->a(Lo/apH;)Lo/apD;

    return-object v0

    .line 249
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Lo/apD;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lo/apD;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lo/apE;->d(Ljava/lang/Object;)Lo/apD;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lo/apD;
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0}, Lo/apD;->a(Lo/apH;)Lo/apD;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/apD;->_prev:Ljava/lang/Object;

    check-cast v0, Lo/apD;

    invoke-direct {p0, v0}, Lo/apD;->c(Lo/apD;)Lo/apD;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
