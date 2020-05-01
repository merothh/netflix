.class final Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation


# static fields
.field private static final j:I


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field private final e:Ljava/lang/String;

.field private final h:Lorg/json/JSONObject;

.field private final i:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 434
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->j:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;JLorg/json/JSONObject;[Landroid/util/Pair;)V
    .locals 0
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
            ">;)V"
        }
    .end annotation

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-object p1, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->e:Ljava/lang/String;

    .line 441
    iput-object p2, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->c:Ljava/lang/String;

    .line 442
    iput-object p3, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->d:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 443
    iput-wide p4, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->b:J

    .line 444
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->a:J

    .line 445
    iput-object p7, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->i:[Landroid/util/Pair;

    .line 446
    iput-object p6, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->h:Lorg/json/JSONObject;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;JLorg/json/JSONObject;[Landroid/util/Pair;Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$2;)V
    .locals 0

    .line 405
    invoke-direct/range {p0 .. p7}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;JLorg/json/JSONObject;[Landroid/util/Pair;)V

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;)J
    .locals 2

    .line 405
    iget-wide v0, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->d:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    return-object p0
.end method


# virtual methods
.method public b()Lorg/json/JSONObject;
    .locals 6

    .line 450
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 451
    iget-object v1, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "name"

    .line 452
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "cat"

    .line 455
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->d:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->d(Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ph"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    iget-wide v1, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->b:J

    const-string v3, "ts"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 459
    sget v1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->j:I

    const-string v2, "pid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 460
    iget-wide v1, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->a:J

    const-string v3, "tid"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 461
    iget-object v1, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->i:[Landroid/util/Pair;

    if-eqz v1, :cond_2

    .line 462
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 463
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 466
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->h:Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    const-string v2, "args"

    .line 467
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    return-object v0
.end method

.method public d(JJ)Ljava/lang/String;
    .locals 8

    .line 473
    iget-wide v0, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->b:J

    sub-long p1, v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-eqz v4, :cond_0

    sub-long/2addr v0, p3

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 478
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "{ "

    .line 479
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    iget-object p4, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->e:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p4, :cond_1

    const-string p4, "name: "

    .line 482
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->e:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    .line 485
    :goto_1
    iget-object v6, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->c:Ljava/lang/String;

    const-string v7, ", "

    if-eqz v6, :cond_3

    if-eqz p4, :cond_2

    .line 487
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p4, "category: "

    .line 489
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->c:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p4, 0x1

    :cond_3
    if-eqz p4, :cond_4

    .line 494
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string p4, "phase: "

    .line 496
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->d:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    invoke-static {p4}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->d(Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", delta: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " \u00b5s"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p2, v0, v2

    if-lez p2, :cond_5

    const-string p2, ", durationDelta: "

    .line 498
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :cond_5
    iget-object p1, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->h:Lorg/json/JSONObject;

    if-eqz p1, :cond_6

    const-string p1, ", args: "

    .line 502
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->h:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_6
    iget-object p1, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->i:[Landroid/util/Pair;

    if-eqz p1, :cond_8

    array-length p1, p1

    if-lez p1, :cond_8

    const-string p1, ", params: ["

    .line 505
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    iget-object p1, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$ActionBar;->i:[Landroid/util/Pair;

    array-length p2, p1

    :goto_2
    if-ge v4, p2, :cond_7

    aget-object p4, p1, v4

    .line 507
    iget-object v0, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    const-string p1, "]"

    .line 509
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string p1, "}"

    .line 511
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
