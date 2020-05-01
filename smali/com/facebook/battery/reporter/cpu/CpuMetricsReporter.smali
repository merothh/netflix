.class public Lcom/facebook/battery/reporter/cpu/CpuMetricsReporter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/battery/reporter/core/SystemMetricsReporter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/battery/reporter/core/SystemMetricsReporter<",
        "Lcom/facebook/battery/metrics/cpu/CpuMetrics;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic reportTo(Lcom/facebook/battery/metrics/core/SystemMetrics;Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/reporter/cpu/CpuMetricsReporter;->reportTo(Lcom/facebook/battery/metrics/cpu/CpuMetrics;Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;)V

    return-void
.end method

.method public reportTo(Lcom/facebook/battery/metrics/cpu/CpuMetrics;Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;)V
    .locals 5

    .line 22
    iget-wide v0, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->userTimeS:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 23
    iget-wide v0, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->userTimeS:D

    const-string v4, "cpu_user_time_s"

    invoke-interface {p2, v4, v0, v1}, Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;->add(Ljava/lang/String;D)V

    .line 26
    :cond_0
    iget-wide v0, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->systemTimeS:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 27
    iget-wide v0, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->systemTimeS:D

    const-string v4, "cpu_system_time_s"

    invoke-interface {p2, v4, v0, v1}, Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;->add(Ljava/lang/String;D)V

    .line 30
    :cond_1
    iget-wide v0, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childUserTimeS:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_2

    .line 31
    iget-wide v0, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childUserTimeS:D

    const-string v4, "child_cpu_user_time_s"

    invoke-interface {p2, v4, v0, v1}, Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;->add(Ljava/lang/String;D)V

    .line 34
    :cond_2
    iget-wide v0, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childSystemTimeS:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    .line 35
    iget-wide v0, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childSystemTimeS:D

    const-string p1, "child_cpu_system_time_s"

    invoke-interface {p2, p1, v0, v1}, Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;->add(Ljava/lang/String;D)V

    :cond_3
    return-void
.end method
