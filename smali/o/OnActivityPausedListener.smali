.class Lo/OnActivityPausedListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:I

.field static final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:I

.field private static final d:Ljava/util/concurrent/ThreadFactory;

.field private static final e:I

.field private static final f:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 17
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lo/OnActivityPausedListener;->a:I

    .line 18
    sget v0, Lo/OnActivityPausedListener;->a:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lo/OnActivityPausedListener;->e:I

    .line 19
    sget v0, Lo/OnActivityPausedListener;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    sput v0, Lo/OnActivityPausedListener;->c:I

    .line 21
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lo/OnActivityPausedListener;->b:Ljava/util/concurrent/BlockingQueue;

    .line 23
    new-instance v0, Lo/OnActivityPausedListener$3;

    invoke-direct {v0}, Lo/OnActivityPausedListener$3;-><init>()V

    sput-object v0, Lo/OnActivityPausedListener;->d:Ljava/util/concurrent/ThreadFactory;

    .line 31
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lo/OnActivityPausedListener;->e:I

    sget v3, Lo/OnActivityPausedListener;->c:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lo/OnActivityPausedListener;->b:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lo/OnActivityPausedListener;->d:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v4, 0x1e

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lo/OnActivityPausedListener;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c(Ljava/lang/Runnable;)V
    .locals 1

    .line 36
    sget-object v0, Lo/OnActivityPausedListener;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
