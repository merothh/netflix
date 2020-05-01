.class final Lo/aoC;
.super Lo/apM;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/apM<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _decision:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lo/aoC;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/aoC;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lo/alj;Lo/ale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alj;",
            "Lo/ale<",
            "-TT;>;)V"
        }
    .end annotation

    .line 220
    invoke-direct {p0, p1, p2}, Lo/apM;-><init>(Lo/alj;Lo/ale;)V

    const/4 p1, 0x0

    .line 223
    iput p1, p0, Lo/aoC;->_decision:I

    return-void
.end method

.method private final r()Z
    .locals 3

    .line 268
    :cond_0
    iget v0, p0, Lo/aoC;->_decision:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    .line 230
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 228
    :cond_2
    sget-object v0, Lo/aoC;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final v()Z
    .locals 4

    .line 270
    :cond_0
    iget v0, p0, Lo/aoC;->_decision:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return v1

    .line 240
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 238
    :cond_2
    sget-object v0, Lo/aoC;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)V
    .locals 0

    .line 248
    invoke-virtual {p0, p1}, Lo/aoC;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 2

    .line 252
    invoke-direct {p0}, Lo/aoC;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lo/aoC;->a:Lo/ale;

    invoke-static {v0}, Lo/alh;->c(Lo/ale;)Lo/ale;

    move-result-object v0

    iget-object v1, p0, Lo/aoC;->a:Lo/ale;

    invoke-static {p1, v1}, Lo/aoc;->b(Ljava/lang/Object;Lo/ale;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lo/aou;->c(Lo/ale;Ljava/lang/Object;)V

    return-void
.end method

.method public final m()Ljava/lang/Object;
    .locals 2

    .line 258
    invoke-direct {p0}, Lo/aoC;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 260
    :cond_0
    invoke-virtual {p0}, Lo/aoC;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lo/apa;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 261
    instance-of v1, v0, Lo/aob;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    check-cast v0, Lo/aob;

    iget-object v0, v0, Lo/aob;->d:Ljava/lang/Throwable;

    throw v0
.end method
