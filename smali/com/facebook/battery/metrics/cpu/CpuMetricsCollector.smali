.class public Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector;
.super Lcom/facebook/battery/metrics/core/SystemMetricsCollector;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector$Initializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/battery/metrics/core/SystemMetricsCollector<",
        "Lcom/facebook/battery/metrics/cpu/CpuMetrics;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLastSnapshot:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/facebook/battery/metrics/cpu/CpuMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/facebook/battery/metrics/core/SystemMetricsCollector;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector;->mLastSnapshot:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static getClockTicksPerSecond()J
    .locals 2

    .line 124
    sget-wide v0, Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector$Initializer;->CLOCK_TICKS_PER_SECOND:J

    return-wide v0
.end method

.method private static readFieldAsS(Ljava/lang/String;)D
    .locals 4

    .line 120
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v0, v0, v2

    invoke-static {}, Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector;->getClockTicksPerSecond()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic createMetrics()Lcom/facebook/battery/metrics/core/SystemMetrics;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector;->createMetrics()Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    move-result-object v0

    return-object v0
.end method

.method public createMetrics()Lcom/facebook/battery/metrics/cpu/CpuMetrics;
    .locals 1

    .line 94
    new-instance v0, Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    invoke-direct {v0}, Lcom/facebook/battery/metrics/cpu/CpuMetrics;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getSnapshot(Lcom/facebook/battery/metrics/core/SystemMetrics;)Z
    .locals 0

    .line 27
    check-cast p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    invoke-virtual {p0, p1}, Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector;->getSnapshot(Lcom/facebook/battery/metrics/cpu/CpuMetrics;)Z

    move-result p1

    return p1
.end method

.method public getSnapshot(Lcom/facebook/battery/metrics/cpu/CpuMetrics;)Z
    .locals 7

    const-string v0, "CpuMetricsCollector"

    const-string v1, "Null value passed to getSnapshot!"

    .line 53
    invoke-static {p1, v1}, Lcom/facebook/battery/metrics/core/Utilities;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector;->readProcFile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x12

    const-string v3, " "

    .line 57
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 60
    array-length v3, v1

    const/16 v4, 0x11

    if-ge v3, v4, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v3, 0xd

    .line 65
    :try_start_0
    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector;->readFieldAsS(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->userTimeS:D

    const/16 v3, 0xe

    .line 66
    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector;->readFieldAsS(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->systemTimeS:D

    const/16 v3, 0xf

    .line 67
    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector;->readFieldAsS(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childUserTimeS:D

    const/16 v3, 0x10

    .line 68
    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector;->readFieldAsS(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childSystemTimeS:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    iget-object v1, p0, Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector;->mLastSnapshot:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector;->mLastSnapshot:Ljava/lang/ThreadLocal;

    new-instance v3, Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    invoke-direct {v3}, Lcom/facebook/battery/metrics/cpu/CpuMetrics;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector;->mLastSnapshot:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    .line 79
    iget-wide v3, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->userTimeS:D

    iget-wide v5, v1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->userTimeS:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-ltz v3, :cond_4

    iget-wide v3, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->systemTimeS:D

    iget-wide v5, v1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->systemTimeS:D

    .line 80
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-ltz v3, :cond_4

    iget-wide v3, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childUserTimeS:D

    iget-wide v5, v1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childUserTimeS:D

    .line 81
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-ltz v3, :cond_4

    iget-wide v3, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childSystemTimeS:D

    iget-wide v5, v1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childSystemTimeS:D

    .line 82
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-gez v3, :cond_3

    goto :goto_1

    .line 88
    :cond_3
    invoke-virtual {v1, p1}, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->set(Lcom/facebook/battery/metrics/cpu/CpuMetrics;)Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    const/4 p1, 0x1

    return p1

    .line 83
    :cond_4
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cpu Time Decreased from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1}, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {v0, p1}, Lcom/facebook/battery/metrics/core/SystemMetricsLogger;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catch_0
    move-exception p1

    const-string v1, "Unable to parse CPU time field"

    .line 70
    invoke-static {v0, v1, p1}, Lcom/facebook/battery/metrics/core/SystemMetricsLogger;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return v2
.end method

.method protected readProcFile()Ljava/lang/String;
    .locals 6

    .line 100
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    .line 103
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/proc/self/stat"

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 115
    :catch_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1

    :catchall_0
    move-exception v1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    :catch_1
    nop

    goto :goto_1

    :catchall_1
    move-exception v2

    :goto_0
    if-eqz v1, :cond_0

    .line 110
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 115
    :catch_2
    :cond_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v2

    :catch_3
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_1

    .line 110
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 115
    :catch_4
    :cond_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1
.end method
