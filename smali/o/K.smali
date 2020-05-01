.class public Lo/K;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:J

.field private b:J

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lo/K;->a:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lo/K;->b:J

    return-wide v0
.end method

.method public declared-synchronized b(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 4

    monitor-enter p0

    .line 51
    :try_start_0
    iget-wide v0, p0, Lo/K;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/K;->d:J

    if-eqz p1, :cond_0

    .line 54
    iget-wide v0, p0, Lo/K;->a:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/K;->a:J

    goto :goto_0

    :cond_0
    const-string p1, "nf_net_stats"

    const-string v0, "SentByteCount is missing!"

    .line 56
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p2, :cond_1

    .line 59
    iget-wide v0, p0, Lo/K;->b:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lo/K;->b:J

    goto :goto_1

    :cond_1
    const-string p1, "nf_net_stats"

    const-string p2, "ReceivedByteCount is missing!"

    .line 61
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()Lorg/json/JSONObject;
    .locals 4

    monitor-enter p0

    .line 70
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "count"

    .line 71
    invoke-virtual {p0}, Lo/K;->d()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "receivedBytes"

    .line 72
    invoke-virtual {p0}, Lo/K;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "sentBytes"

    .line 73
    invoke-virtual {p0}, Lo/K;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lo/K;->d:J

    return-wide v0
.end method
