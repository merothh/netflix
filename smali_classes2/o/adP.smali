.class public Lo/adP;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/Long;

.field private static b:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-static {}, Lo/adP;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized b()Ljava/lang/Long;
    .locals 6

    const-class v0, Lo/adP;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lo/adP;->b:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 36
    sget-object v1, Lo/adP;->b:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 38
    :cond_0
    :try_start_1
    invoke-static {}, Lo/adP;->j()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lo/adP;->b:Ljava/lang/Long;

    const-string v1, "nf_logids"

    const-string v2, "creating sessionId %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 39
    sget-object v5, Lo/adP;->b:Ljava/lang/Long;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 40
    sget-object v1, Lo/adP;->b:Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized c()V
    .locals 2

    const-class v0, Lo/adP;

    monitor-enter v0

    const/4 v1, 0x0

    .line 54
    :try_start_0
    sput-object v1, Lo/adP;->b:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d()Ljava/lang/Long;
    .locals 6

    const-class v0, Lo/adP;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lo/adP;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 19
    sget-object v1, Lo/adP;->a:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 21
    :cond_0
    :try_start_1
    invoke-static {}, Lo/adP;->j()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lo/adP;->a:Ljava/lang/Long;

    const-string v1, "nf_logids"

    const-string v2, "creating appId: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 22
    sget-object v5, Lo/adP;->a:Ljava/lang/Long;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 23
    sget-object v1, Lo/adP;->a:Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized e()V
    .locals 2

    const-class v0, Lo/adP;

    monitor-enter v0

    const/4 v1, 0x0

    .line 50
    :try_start_0
    sput-object v1, Lo/adP;->a:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static j()J
    .locals 5

    .line 44
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 45
    invoke-static {}, Lo/aey;->b()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    and-long/2addr v1, v3

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    and-int/lit8 v0, v0, -0x1

    int-to-long v3, v0

    or-long v0, v1, v3

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method
