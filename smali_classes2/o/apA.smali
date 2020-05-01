.class public abstract Lo/apA;
.super Lo/apH;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/apH;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _consensus:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lo/apA;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_consensus"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/apA;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lo/apH;-><init>()V

    .line 55
    invoke-static {}, Lo/apz;->c()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/apA;->_consensus:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 88
    iget-object v0, p0, Lo/apA;->_consensus:Ljava/lang/Object;

    .line 89
    invoke-static {}, Lo/apz;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Lo/apA;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/apA;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    :cond_0
    invoke-virtual {p0, p1, v0}, Lo/apA;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract c(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 73
    invoke-static {}, Lo/aoo;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lo/apz;->c()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

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

    .line 74
    :cond_2
    :goto_1
    iget-object v0, p0, Lo/apA;->_consensus:Ljava/lang/Object;

    .line 75
    invoke-static {}, Lo/apz;->c()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_3

    return-object v0

    .line 76
    :cond_3
    sget-object v0, Lo/apA;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lo/apz;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p1

    .line 77
    :cond_4
    iget-object p1, p0, Lo/apA;->_consensus:Ljava/lang/Object;

    return-object p1
.end method

.method public e()Lo/apA;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/apA<",
            "*>;"
        }
    .end annotation

    return-object p0
.end method

.method public abstract e(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method
