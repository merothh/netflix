.class Lo/wX;
.super Lo/wo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/wX$Application;
    }
.end annotation


# static fields
.field private static final e:J


# instance fields
.field private a:J

.field private b:I

.field private transient d:J

.field protected estimators:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "estimators"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/wX$Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/wX;->e:J

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lo/wo;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/wX;->estimators:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lo/wX;->a:J

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lo/wX;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 6

    const-string v1, "tp_predictor"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 58
    invoke-direct/range {v0 .. v5}, Lo/wo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/wX;->estimators:Ljava/util/Map;

    const-wide/16 p1, 0x0

    .line 26
    iput-wide p1, p0, Lo/wX;->a:J

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lo/wX;->b:I

    .line 59
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lo/wX;->d:J

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lo/wX;->estimators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lo/wX;->b:I

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/wX;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;JJ)V
    .locals 5

    monitor-enter p0

    .line 63
    :try_start_0
    iget-wide v0, p0, Lo/wX;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iput-wide p4, p0, Lo/wX;->a:J

    .line 65
    :cond_0
    iget-object v0, p0, Lo/wX;->estimators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/wX;->estimators:Ljava/util/Map;

    new-instance v1, Lo/wX$Application;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lo/wX$Application;-><init>(Lo/wX;Lo/wX$5;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_1
    iget-object v0, p0, Lo/wX;->estimators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/wX$Application;

    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {p1}, Lo/wX$Application;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    div-long v2, p2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 73
    invoke-virtual {p1}, Lo/wX$Application;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lo/wX;->d:J

    add-long/2addr v0, v2

    sget-wide v2, Lo/wX;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v0, v2

    cmp-long v2, p4, v0

    if-gez v2, :cond_2

    .line 74
    monitor-exit p0

    return-void

    .line 75
    :cond_2
    :try_start_1
    iget-wide v0, p0, Lo/wX;->d:J

    sub-long/2addr p4, v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Lo/wX$Application;->c(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 76
    iget p1, p0, Lo/wX;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/wX;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Z
    .locals 5

    .line 86
    iget-wide v0, p0, Lo/wX;->a:J

    sget-wide v2, Lo/wX;->e:J

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget v0, p0, Lo/wX;->b:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public j()Z
    .locals 1

    .line 90
    iget v0, p0, Lo/wX;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
