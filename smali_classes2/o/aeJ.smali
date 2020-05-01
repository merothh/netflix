.class public Lo/aeJ;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/String; = "WidevineMonitor"

.field static d:J

.field static e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lo/aeJ;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Z
    .locals 4

    .line 33
    sget-object v0, Lo/aeJ;->a:Ljava/lang/String;

    const-string v1, "isWidevinePluginBlocked: starts"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-object v0, Lo/aeJ;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 36
    sget-object p0, Lo/aeJ;->a:Ljava/lang/String;

    const-string p1, "isWidevinePluginBlocked: not initialized"

    invoke-static {p0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 40
    :cond_0
    sget-wide v2, Lo/aeJ;->d:J

    cmp-long v0, v2, p0

    if-ltz v0, :cond_1

    .line 41
    sget-object v0, Lo/aeJ;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v3, v1

    const-string p0, "isWidevinePluginBlocked: WIDEVINE.initializationTimeInMs >= %d"

    invoke-static {v0, p0, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v2

    :cond_1
    return v1
.end method

.method static c(Z)Z
    .locals 4

    .line 53
    sget-object v0, Lo/aeJ;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lo/aeJ;->d:J

    sub-long/2addr v0, v2

    sput-wide v0, Lo/aeJ;->d:J

    return p0
.end method
