.class public final Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;,
        Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e:Ljava/util/Queue;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    iput-wide p1, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->c:J

    .line 52
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->b:J

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    iput-wide p1, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->a:J

    return-void
.end method

.method private varargs a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;JLorg/json/JSONObject;[Landroid/util/Pair;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;",
            "J",
            "Lorg/json/JSONObject;",
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;"
        }
    .end annotation

    move-object v0, p0

    .line 63
    iget-object v1, v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e:Ljava/util/Queue;

    new-instance v11, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;

    const/4 v10, 0x0

    move-object v2, v11

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;JLorg/json/JSONObject;[Landroid/util/Pair;Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$2;)V

    invoke-interface {v1, v11}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private d(J)J
    .locals 2

    .line 339
    iget-wide v0, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->b:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    .line 340
    div-long/2addr p1, v0

    .line 341
    iget-wide v0, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->a:J

    add-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;
    .locals 8

    .line 241
    sget-object v3, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->p:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->c()J

    move-result-wide v4

    const/4 v0, 0x0

    new-array v7, v0, [Landroid/util/Pair;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;JLorg/json/JSONObject;[Landroid/util/Pair;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;
    .locals 8

    .line 286
    sget-object v3, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->y:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->c()J

    move-result-wide v4

    const/4 v0, 0x0

    new-array v7, v0, [Landroid/util/Pair;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;JLorg/json/JSONObject;[Landroid/util/Pair;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    move-result-object p1

    return-object p1
.end method

.method c()J
    .locals 2

    .line 330
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Ljava/lang/String;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;
    .locals 8

    .line 263
    sget-object v3, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->u:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->c()J

    move-result-wide v4

    const/4 v0, 0x0

    new-array v7, v0, [Landroid/util/Pair;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;JLorg/json/JSONObject;[Landroid/util/Pair;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->c(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;
    .locals 8

    const-wide/16 v0, 0x3e8

    .line 118
    div-long/2addr p5, v0

    .line 119
    invoke-direct {p0, p3, p4}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d(J)J

    move-result-wide v4

    .line 120
    sget-object v3, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->d:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/4 p3, 0x1

    new-array v7, p3, [Landroid/util/Pair;

    new-instance p3, Landroid/util/Pair;

    .line 121
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string p5, "dur"

    invoke-direct {p3, p5, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p4, 0x0

    aput-object p3, v7, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p7

    .line 120
    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;JLorg/json/JSONObject;[Landroid/util/Pair;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;
    .locals 8

    .line 101
    sget-object v3, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->c()J

    move-result-wide v4

    const/4 v0, 0x0

    new-array v7, v0, [Landroid/util/Pair;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;JLorg/json/JSONObject;[Landroid/util/Pair;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    move-result-object p1

    return-object p1
.end method

.method public d(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;
    .locals 8

    .line 90
    sget-object v3, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->c()J

    move-result-wide v4

    const/4 v0, 0x0

    new-array v7, v0, [Landroid/util/Pair;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;JLorg/json/JSONObject;[Landroid/util/Pair;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    move-result-object p1

    return-object p1
.end method

.method public e()Lcom/netflix/cl/model/event/discrete/PerformanceTraceReported;
    .locals 4

    .line 301
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 302
    iget-object v1, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;

    .line 303
    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->b()Lorg/json/JSONObject;

    move-result-object v2

    .line 304
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 307
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "traceEvents"

    .line 308
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    new-instance v0, Lcom/netflix/cl/model/event/discrete/PerformanceTraceReported;

    iget-wide v2, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/cl/model/event/discrete/PerformanceTraceReported;-><init>(Lorg/json/JSONObject;Ljava/lang/Long;)V

    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;
    .locals 8

    .line 79
    sget-object v3, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->e:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->c()J

    move-result-wide v4

    const/4 v0, 0x0

    new-array v7, v0, [Landroid/util/Pair;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;JLorg/json/JSONObject;[Landroid/util/Pair;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 348
    iget-object v0, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e:Ljava/util/Queue;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;

    invoke-interface {v0, v2}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PerformanceEvents: { timestamp: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    iget-wide v3, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", data: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    array-length v3, v0

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v8, v0, v1

    .line 353
    invoke-static {v8}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->c(Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    move-result-object v9

    .line 354
    sget-object v10, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->e:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    if-ne v9, v10, :cond_0

    cmp-long v10, v6, v4

    if-nez v10, :cond_0

    .line 355
    invoke-static {v8}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->b(Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;)J

    move-result-wide v6

    .line 357
    :cond_0
    iget-wide v10, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->a:J

    invoke-virtual {v8, v10, v11, v6, v7}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->d(JJ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    sget-object v8, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    if-ne v9, v8, :cond_1

    move-wide v6, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "]}"

    .line 363
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
