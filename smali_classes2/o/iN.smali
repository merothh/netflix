.class public Lo/iN;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final d:I


# instance fields
.field a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:Landroid/content/Context;

.field private e:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lo/iN;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lo/iN;->b:Landroid/content/Context;

    .line 29
    iget-object p1, p0, Lo/iN;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->n(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object p1

    iput-object p1, p0, Lo/iN;->e:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    return-void
.end method

.method static synthetic c(Lo/iN;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/iN;->e:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    return-object p0
.end method


# virtual methods
.method public e(Ljava/util/concurrent/ScheduledExecutorService;Lo/zS;)V
    .locals 7

    .line 34
    iput-object p1, p0, Lo/iN;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 36
    new-instance v1, Lo/iN$3;

    invoke-direct {v1, p0, p2}, Lo/iN$3;-><init>(Lo/iN;Lo/zS;)V

    .line 57
    iget-object v0, p0, Lo/iN;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget p1, Lo/iN;->d:I

    int-to-long v2, p1

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
