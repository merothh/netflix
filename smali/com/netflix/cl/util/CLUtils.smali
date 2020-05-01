.class public final Lcom/netflix/cl/util/CLUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static INCREMENTING_BITS_COUNT:I = 0x1c

.field private static INCREMENTING_BITS_MASK:J = 0x0L

.field private static MAX_BITS_COUNT:I = 0x35

.field private static RANDOM_BITS_COUNT:I

.field private static RANDOM_BITS_SHIFT:J

.field private static sLastId:J

.field private static sLastIncrementingBits:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 21
    sget v0, Lcom/netflix/cl/util/CLUtils;->MAX_BITS_COUNT:I

    sget v1, Lcom/netflix/cl/util/CLUtils;->INCREMENTING_BITS_COUNT:I

    sub-int/2addr v0, v1

    sput v0, Lcom/netflix/cl/util/CLUtils;->RANDOM_BITS_COUNT:I

    int-to-double v0, v1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 22
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    sput-wide v0, Lcom/netflix/cl/util/CLUtils;->INCREMENTING_BITS_MASK:J

    .line 23
    sget v0, Lcom/netflix/cl/util/CLUtils;->RANDOM_BITS_COUNT:I

    int-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/netflix/cl/util/CLUtils;->RANDOM_BITS_SHIFT:J

    return-void
.end method

.method public static cancelNamedSession(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 149
    :cond_0
    sget-object v0, Lcom/netflix/cl/util/NamedLogSessionLookup;->INSTANCE:Lcom/netflix/cl/util/NamedLogSessionLookup;

    invoke-virtual {v0, p0}, Lcom/netflix/cl/util/NamedLogSessionLookup;->removeSessionId(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    .line 150
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p0}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    return-void
.end method

.method public static declared-synchronized createContextId()J
    .locals 8

    const-class v0, Lcom/netflix/cl/util/CLUtils;

    monitor-enter v0

    .line 40
    :try_start_0
    invoke-static {}, Lcom/netflix/cl/Platform;->getCurrentTimeInMs()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-long v1, v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 41
    sget-wide v3, Lcom/netflix/cl/util/CLUtils;->INCREMENTING_BITS_MASK:J

    and-long/2addr v1, v3

    .line 43
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    sget-wide v5, Lcom/netflix/cl/util/CLUtils;->RANDOM_BITS_SHIFT:J

    long-to-double v5, v5

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    .line 45
    sget-wide v5, Lcom/netflix/cl/util/CLUtils;->sLastIncrementingBits:J

    cmp-long v7, v1, v5

    if-gtz v7, :cond_0

    .line 46
    sget-wide v1, Lcom/netflix/cl/util/CLUtils;->sLastIncrementingBits:J

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 49
    :cond_0
    sput-wide v1, Lcom/netflix/cl/util/CLUtils;->sLastIncrementingBits:J

    .line 51
    sget-wide v5, Lcom/netflix/cl/util/CLUtils;->RANDOM_BITS_SHIFT:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Ljava/lang/Long;->signum(J)I

    mul-long v1, v1, v5

    add-long/2addr v1, v3

    .line 52
    :try_start_1
    sput-wide v1, Lcom/netflix/cl/util/CLUtils;->sLastId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 66
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 67
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static startNamedSession(Ljava/lang/String;Lcom/netflix/cl/model/event/session/Session;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v1, p1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 121
    :cond_1
    sget-object v0, Lcom/netflix/cl/util/NamedLogSessionLookup;->INSTANCE:Lcom/netflix/cl/util/NamedLogSessionLookup;

    invoke-virtual {v0, p0, p1}, Lcom/netflix/cl/util/NamedLogSessionLookup;->addSession(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method
