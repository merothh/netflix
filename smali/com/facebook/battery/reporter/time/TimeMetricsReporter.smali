.class public Lcom/facebook/battery/reporter/time/TimeMetricsReporter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/battery/reporter/core/SystemMetricsReporter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/battery/reporter/core/SystemMetricsReporter<",
        "Lcom/facebook/battery/metrics/time/TimeMetrics;",
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
    check-cast p1, Lcom/facebook/battery/metrics/time/TimeMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/reporter/time/TimeMetricsReporter;->reportTo(Lcom/facebook/battery/metrics/time/TimeMetrics;Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;)V

    return-void
.end method

.method public reportTo(Lcom/facebook/battery/metrics/time/TimeMetrics;Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;)V
    .locals 5

    .line 20
    iget-wide v0, p1, Lcom/facebook/battery/metrics/time/TimeMetrics;->realtimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 21
    iget-wide v0, p1, Lcom/facebook/battery/metrics/time/TimeMetrics;->realtimeMs:J

    const-string v4, "realtime_ms"

    invoke-interface {p2, v4, v0, v1}, Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;->add(Ljava/lang/String;J)V

    .line 24
    :cond_0
    iget-wide v0, p1, Lcom/facebook/battery/metrics/time/TimeMetrics;->uptimeMs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 25
    iget-wide v0, p1, Lcom/facebook/battery/metrics/time/TimeMetrics;->uptimeMs:J

    const-string p1, "uptime_ms"

    invoke-interface {p2, p1, v0, v1}, Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;->add(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method
