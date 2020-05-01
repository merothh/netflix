.class public Lcom/facebook/battery/reporter/cpu/CpuFrequencyMetricsReporter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/battery/reporter/core/SystemMetricsReporter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/battery/reporter/core/SystemMetricsReporter<",
        "Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic reportTo(Lcom/facebook/battery/metrics/core/SystemMetrics;Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/reporter/cpu/CpuFrequencyMetricsReporter;->reportTo(Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;)V

    return-void
.end method

.method public reportTo(Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;)V
    .locals 1

    .line 29
    invoke-virtual {p1}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cpu_time_in_state_s"

    invoke-interface {p2, v0, p1}, Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
