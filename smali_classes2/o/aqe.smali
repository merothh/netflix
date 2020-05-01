.class final Lo/aqe;
.super Lo/aoK;
.source ""

# interfaces
.implements Lo/aqg;
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I

.field private final g:I

.field private final h:Lo/apV;

.field private volatile inFlightTasks:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lo/aqe;

    const-string v1, "inFlightTasks"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/aqe;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lo/apV;II)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lo/aoK;-><init>()V

    iput-object p1, p0, Lo/aqe;->h:Lo/apV;

    iput p2, p0, Lo/aqe;->g:I

    iput p3, p0, Lo/aqe;->f:I

    .line 138
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lo/aqe;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 p1, 0x0

    .line 139
    iput p1, p0, Lo/aqe;->inFlightTasks:I

    return-void
.end method

.method private final e(Ljava/lang/Runnable;Z)V
    .locals 2

    .line 154
    :goto_0
    sget-object v0, Lo/aqe;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v0

    .line 157
    iget v1, p0, Lo/aqe;->g:I

    if-gt v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lo/aqe;->h:Lo/apV;

    move-object v1, p0

    check-cast v1, Lo/aqg;

    invoke-virtual {v0, p1, v1, p2}, Lo/apV;->b(Ljava/lang/Runnable;Lo/aqg;Z)V

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lo/aqe;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object p1, Lo/aqe;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result p1

    iget v0, p0, Lo/aqe;->g:I

    if-lt p1, v0, :cond_1

    return-void

    .line 184
    :cond_1
    iget-object p1, p0, Lo/aqe;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public c(Lo/alj;Ljava/lang/Runnable;)V
    .locals 0

    const/4 p1, 0x0

    .line 148
    invoke-direct {p0, p2, p1}, Lo/aqe;->e(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public close()V
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Close cannot be invoked on LimitingBlockingDispatcher"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public d()V
    .locals 4

    .line 210
    iget-object v0, p0, Lo/aqe;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 213
    iget-object v2, p0, Lo/aqe;->h:Lo/apV;

    move-object v3, p0

    check-cast v3, Lo/aqg;

    invoke-virtual {v2, v0, v3, v1}, Lo/apV;->b(Ljava/lang/Runnable;Lo/aqg;Z)V

    return-void

    .line 216
    :cond_0
    sget-object v0, Lo/aqe;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 229
    iget-object v0, p0, Lo/aqe;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 230
    invoke-direct {p0, v0, v1}, Lo/aqe;->e(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public e()I
    .locals 1

    .line 135
    iget v0, p0, Lo/aqe;->f:I

    return v0
.end method

.method public e(Lo/alj;Ljava/lang/Runnable;)V
    .locals 0

    const/4 p1, 0x1

    .line 189
    invoke-direct {p0, p2, p1}, Lo/aqe;->e(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, v0}, Lo/aqe;->e(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lo/aoK;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[dispatcher = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aqe;->h:Lo/apV;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
