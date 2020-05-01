.class public Lo/tY;
.super Lo/tS;
.source ""


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static c:Lo/tW;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/tJ;Lo/vY;Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V
    .locals 0

    .line 30
    invoke-static {p1}, Lo/tY;->d(Landroid/content/Context;)Lo/ua;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lo/tS;-><init>(Lo/ua;Lo/tJ;Lo/vY;Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V

    return-void
.end method

.method public static declared-synchronized a()Lo/tW;
    .locals 2

    const-class v0, Lo/tY;

    monitor-enter v0

    .line 39
    :try_start_0
    invoke-static {}, Lo/tY;->b()I

    move-result v1

    invoke-static {v1}, Lo/tY;->e(I)Lo/tW;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized b()I
    .locals 8

    const-class v0, Lo/tY;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lo/tY;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_0

    .line 51
    sget-object v1, Lo/tY;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 54
    :cond_0
    :try_start_1
    invoke-static {}, Lo/adk;->d()J

    move-result-wide v1

    long-to-float v3, v1

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float v3, v3, v4

    const/high16 v4, 0x4cc80000    # 1.048576E8f

    .line 57
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    const/high16 v4, 0xa00000

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    const/4 v3, 0x0

    :cond_1
    const-string v4, "nf_cache"

    const-string v6, "Available disk space in bytes = %d Saving fragment Cache Size = %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 62
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v5

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v4, v6, v7}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 64
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lo/tY;->a:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static d(Landroid/content/Context;)Lo/ua;
    .locals 4

    .line 34
    invoke-static {}, Lo/tY;->b()I

    move-result v0

    .line 35
    invoke-static {v0}, Lo/tY;->e(I)Lo/tW;

    move-result-object v1

    const-string v2, "fragment"

    const/high16 v3, 0x20000

    invoke-static {p0, v2, v3, v0, v1}, Lo/ua;->a(Landroid/content/Context;Ljava/lang/String;IILo/tW;)Lo/ua;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized e(I)Lo/tW;
    .locals 4

    const-class v0, Lo/tY;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lo/tY;->c:Lo/tW;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lo/tW;

    int-to-long v2, p0

    invoke-direct {v1, v2, v3}, Lo/tW;-><init>(J)V

    sput-object v1, Lo/tY;->c:Lo/tW;

    .line 46
    :cond_0
    sget-object p0, Lo/tY;->c:Lo/tW;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public bridge synthetic b(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lo/tS;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Lcom/google/android/exoplayer2/source/TrackGroup;J)Ljava/util/List;
    .locals 0

    .line 18
    invoke-super {p0, p1, p2, p3}, Lo/tS;->d(Lcom/google/android/exoplayer2/source/TrackGroup;J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Lo/tP;Ljava/util/List;Ljava/util/List;JJZLo/uj$Activity;)V
    .locals 0

    .line 18
    invoke-super/range {p0 .. p9}, Lo/tS;->d(Lo/tP;Ljava/util/List;Ljava/util/List;JJZLo/uj$Activity;)V

    return-void
.end method

.method public bridge synthetic e()Ljava/util/List;
    .locals 1

    .line 18
    invoke-super {p0}, Lo/tS;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e(JJ)Ljava/util/List;
    .locals 0

    .line 18
    invoke-super {p0, p1, p2, p3, p4}, Lo/tS;->e(JJ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
