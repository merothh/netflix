.class Lo/A;
.super Lorg/chromium/net/RequestFinishedInfo$Listener;
.source ""


# static fields
.field private static final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Landroid/os/HandlerThread;

.field private final d:Lo/y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lo/A;->e:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Lo/y;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/chromium/net/RequestFinishedInfo$Listener;-><init>(Ljava/util/concurrent/Executor;)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lo/A;->c:Landroid/os/HandlerThread;

    .line 42
    iput-object p2, p0, Lo/A;->d:Lo/y;

    return-void
.end method

.method static a(Lo/y;)Lo/A;
    .locals 8

    .line 49
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lo/A;->e:Ljava/util/concurrent/BlockingQueue;

    const/4 v1, 0x1

    const/4 v2, 0x4

    const-wide/16 v3, 0x5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 50
    new-instance v0, Lo/A;

    invoke-direct {v0, v7, p0}, Lo/A;-><init>(Ljava/util/concurrent/Executor;Lo/y;)V

    return-object v0
.end method


# virtual methods
.method public onRequestFinished(Lorg/chromium/net/RequestFinishedInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lo/A;->d:Lo/y;

    invoke-virtual {v0, p1}, Lo/y;->c(Lorg/chromium/net/RequestFinishedInfo;)V

    return-void
.end method
