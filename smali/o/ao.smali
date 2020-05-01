.class public final Lo/ao;
.super Lo/at;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ao$Application;
    }
.end annotation


# static fields
.field public static final a:Lo/ao$Application;


# instance fields
.field private c:J

.field private final d:Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector<",
            "Lcom/facebook/battery/metrics/composite/CompositeMetrics;",
            "Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ao$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ao$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/ao;->a:Lo/ao$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lo/ao;-><init>(JILo/amc;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 15
    sget-object v0, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;->b:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    invoke-direct {p0, v0, p1, p2}, Lo/at;-><init>(Lcom/netflix/mediaclient/performance/api/capture/CaptureType;J)V

    iput-wide p1, p0, Lo/ao;->c:J

    .line 25
    new-instance p1, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;

    .line 26
    new-instance p2, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;

    invoke-direct {p2}, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;-><init>()V

    .line 28
    const-class v0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    .line 29
    new-instance v1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;

    invoke-direct {v1}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;-><init>()V

    check-cast v1, Lcom/facebook/battery/metrics/core/SystemMetricsCollector;

    .line 27
    invoke-virtual {p2, v0, v1}, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;->addMetricsCollector(Ljava/lang/Class;Lcom/facebook/battery/metrics/core/SystemMetricsCollector;)Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;

    move-result-object p2

    .line 31
    const-class v0, Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    new-instance v1, Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector;

    invoke-direct {v1}, Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector;-><init>()V

    check-cast v1, Lcom/facebook/battery/metrics/core/SystemMetricsCollector;

    invoke-virtual {p2, v0, v1}, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;->addMetricsCollector(Ljava/lang/Class;Lcom/facebook/battery/metrics/core/SystemMetricsCollector;)Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;

    move-result-object p2

    .line 32
    invoke-virtual {p2}, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;->build()Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector;

    move-result-object p2

    check-cast p2, Lcom/facebook/battery/metrics/core/SystemMetricsCollector;

    .line 25
    invoke-direct {p1, p2}, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;-><init>(Lcom/facebook/battery/metrics/core/SystemMetricsCollector;)V

    iput-object p1, p0, Lo/ao;->d:Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;

    return-void
.end method

.method public synthetic constructor <init>(JILo/amc;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x2710

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2}, Lo/ao;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/battery/metrics/cpu/CpuMetrics;)V
    .locals 5

    const-string v0, "cpuTimeMetrics"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-wide v0, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->systemTimeS:D

    iget-wide v2, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->userTimeS:D

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 79
    :cond_0
    iget-wide v2, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->userTimeS:D

    div-double/2addr v2, v0

    double-to-float p1, v2

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    const-string v0, "cpuTimePercent"

    .line 81
    invoke-virtual {p0, v0, p1}, Lo/ao;->e(Ljava/lang/String;F)V

    .line 83
    sget-object p1, Lo/ao;->a:Lo/ao$Application;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public final b(Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "cpuFrequencyMetrics"

    invoke-static {v1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v2, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    invoke-direct {v2}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;-><init>()V

    .line 104
    invoke-virtual {v2, v1}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->set(Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;)Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    .line 106
    iget-object v1, v2, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    const-string v2, "copyCpuMetrics.timeInStateS"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    array-length v2, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v5, v2, :cond_3

    aget-object v9, v1, v5

    const-wide/16 v10, 0x0

    .line 109
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-nez v12, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :cond_0
    move-wide v13, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v12, :cond_1

    .line 117
    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v16

    mul-int v15, v15, v16

    int-to-float v15, v15

    add-float/2addr v11, v15

    .line 118
    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    int-to-long v3, v15

    add-long/2addr v13, v3

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    long-to-float v3, v13

    div-float/2addr v11, v3

    add-int/lit8 v12, v12, -0x1

    .line 121
    invoke-virtual {v9, v12}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v11, v3

    const/4 v4, 0x0

    int-to-float v9, v4

    cmpl-float v9, v3, v9

    if-lez v9, :cond_2

    add-int/lit8 v6, v6, 0x1

    add-float/2addr v7, v11

    add-float/2addr v8, v3

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-nez v6, :cond_4

    return-void

    :cond_4
    int-to-float v1, v6

    div-float/2addr v7, v1

    div-float/2addr v8, v1

    const/16 v2, 0x64

    int-to-float v2, v2

    mul-float v8, v8, v2

    .line 139
    invoke-static {}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;->getTotalCores()I

    move-result v2

    int-to-float v2, v2

    const-string v3, "cpuCores"

    .line 137
    invoke-virtual {v0, v3, v2}, Lo/ao;->e(Ljava/lang/String;F)V

    const-string v2, "cpuActiveCores"

    .line 141
    invoke-virtual {v0, v2, v1}, Lo/ao;->e(Ljava/lang/String;F)V

    const-string v1, "cpuUsageHertz"

    .line 142
    invoke-virtual {v0, v1, v7}, Lo/ao;->e(Ljava/lang/String;F)V

    const-string v1, "cpuPercent"

    .line 143
    invoke-virtual {v0, v1, v8}, Lo/ao;->e(Ljava/lang/String;F)V

    .line 145
    sget-object v1, Lo/ao;->a:Lo/ao$Application;

    check-cast v1, Lo/MessagePdu;

    return-void
.end method

.method public e()V
    .locals 3

    .line 40
    sget-object v0, Lo/ao;->a:Lo/ao$Application;

    check-cast v0, Lo/MessagePdu;

    .line 43
    :try_start_0
    iget-object v0, p0, Lo/ao;->d:Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;

    invoke-virtual {v0}, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->getLatestDiffAndReset()Lcom/facebook/battery/metrics/core/SystemMetrics;

    move-result-object v0

    check-cast v0, Lcom/facebook/battery/metrics/composite/CompositeMetrics;

    if-eqz v0, :cond_2

    .line 45
    const-class v1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    invoke-virtual {v0, v1}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->isValid(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const-class v1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    invoke-virtual {v0, v1}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->getMetric(Ljava/lang/Class;)Lcom/facebook/battery/metrics/core/SystemMetrics;

    move-result-object v1

    const-string v2, "diffMetrics.getMetric(CpuMetrics::class.java)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    invoke-virtual {p0, v1}, Lo/ao;->a(Lcom/facebook/battery/metrics/cpu/CpuMetrics;)V

    .line 49
    :cond_0
    const-class v1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    invoke-virtual {v0, v1}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->isValid(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    const-class v1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    invoke-virtual {v0, v1}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->getMetric(Ljava/lang/Class;)Lcom/facebook/battery/metrics/core/SystemMetrics;

    move-result-object v0

    const-string v1, "diffMetrics.getMetric(Cp\u2026uencyMetrics::class.java)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    invoke-virtual {p0, v0}, Lo/ao;->b(Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;)V

    .line 52
    :cond_1
    invoke-super {p0}, Lo/at;->e()V

    goto :goto_0

    .line 54
    :cond_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "diffMetrics was null in CPUUsageCapture"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 58
    sget-object v1, Lo/ao;->a:Lo/ao$Application;

    check-cast v1, Lo/MessagePdu;

    .line 59
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    .line 62
    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "SPY-17141 An Exception occurred in CPUCapture"

    .line 60
    invoke-interface {v1, v2, v0}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
