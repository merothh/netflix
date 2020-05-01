.class public Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;
.super Lcom/facebook/battery/metrics/core/SystemMetricsCollector;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector$Initializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/battery/metrics/core/SystemMetricsCollector<",
        "Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;",
        ">;"
    }
.end annotation


# static fields
.field static sCoresForTest:I = -0x1


# instance fields
.field private mFiles:[Lcom/facebook/battery/metrics/cpu/ProcFileReader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/facebook/battery/metrics/core/SystemMetricsCollector;-><init>()V

    return-void
.end method

.method private declared-synchronized getReader(I)Lcom/facebook/battery/metrics/cpu/ProcFileReader;
    .locals 3

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;->mFiles:[Lcom/facebook/battery/metrics/cpu/ProcFileReader;

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;->getTotalCores()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/battery/metrics/cpu/ProcFileReader;

    iput-object v0, p0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;->mFiles:[Lcom/facebook/battery/metrics/cpu/ProcFileReader;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;->mFiles:[Lcom/facebook/battery/metrics/cpu/ProcFileReader;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;->mFiles:[Lcom/facebook/battery/metrics/cpu/ProcFileReader;

    new-instance v1, Lcom/facebook/battery/metrics/cpu/ProcFileReader;

    invoke-virtual {p0, p1}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;->getPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/battery/metrics/cpu/ProcFileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/facebook/battery/metrics/cpu/ProcFileReader;->start()Lcom/facebook/battery/metrics/cpu/ProcFileReader;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;->mFiles:[Lcom/facebook/battery/metrics/cpu/ProcFileReader;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/facebook/battery/metrics/cpu/ProcFileReader;->reset()Lcom/facebook/battery/metrics/cpu/ProcFileReader;

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;->mFiles:[Lcom/facebook/battery/metrics/cpu/ProcFileReader;

    aget-object p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getTotalCores()I
    .locals 1

    .line 109
    sget v0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector$Initializer;->CORES:I

    return v0
.end method

.method private declared-synchronized readCoreStats(Landroid/util/SparseIntArray;Lcom/facebook/battery/metrics/cpu/ProcFileReader;)Z
    .locals 8

    monitor-enter p0

    .line 75
    :try_start_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 79
    invoke-virtual {p2}, Lcom/facebook/battery/metrics/cpu/ProcFileReader;->isValid()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 80
    monitor-exit p0

    return v1

    .line 84
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Lcom/facebook/battery/metrics/cpu/ProcFileReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p2}, Lcom/facebook/battery/metrics/cpu/ProcFileReader;->readNumber()J

    move-result-wide v2

    .line 86
    invoke-virtual {p2}, Lcom/facebook/battery/metrics/cpu/ProcFileReader;->skipSpaces()V

    .line 87
    invoke-virtual {p2}, Lcom/facebook/battery/metrics/cpu/ProcFileReader;->readNumber()J

    move-result-wide v4

    invoke-static {}, Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector;->getClockTicksPerSecond()J

    move-result-wide v6

    div-long/2addr v4, v6

    .line 88
    invoke-virtual {p2}, Lcom/facebook/battery/metrics/cpu/ProcFileReader;->skipLines()V

    long-to-int v0, v2

    long-to-int v2, v4

    .line 90
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catch Lcom/facebook/battery/metrics/cpu/ProcFileReader$ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 96
    monitor-exit p0

    return p1

    .line 93
    :catch_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public bridge synthetic createMetrics()Lcom/facebook/battery/metrics/core/SystemMetrics;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;->createMetrics()Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    move-result-object v0

    return-object v0
.end method

.method public createMetrics()Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;
    .locals 1

    .line 101
    new-instance v0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    invoke-direct {v0}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;-><init>()V

    return-object v0
.end method

.method protected getPath(I)Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/cpufreq/stats/time_in_state"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSnapshot(Lcom/facebook/battery/metrics/core/SystemMetrics;)Z
    .locals 0

    .line 33
    check-cast p1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    invoke-virtual {p0, p1}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;->getSnapshot(Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;)Z

    move-result p1

    return p1
.end method

.method public getSnapshot(Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;)Z
    .locals 5

    const-string v0, "Null value passed to getSnapshot!"

    .line 46
    invoke-static {p1, v0}, Lcom/facebook/battery/metrics/core/Utilities;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;->getTotalCores()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 49
    iget-object v3, p1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    aget-object v3, v3, v1

    invoke-direct {p0, v1}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;->getReader(I)Lcom/facebook/battery/metrics/cpu/ProcFileReader;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;->readCoreStats(Landroid/util/SparseIntArray;Lcom/facebook/battery/metrics/cpu/ProcFileReader;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
