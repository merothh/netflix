.class public Lcom/facebook/battery/reporter/wakelock/WakeLockMetricsReporter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/battery/reporter/core/SystemMetricsReporter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/battery/reporter/core/SystemMetricsReporter<",
        "Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;",
        ">;"
    }
.end annotation


# instance fields
.field private mShouldReportAttribution:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/facebook/battery/reporter/wakelock/WakeLockMetricsReporter;->mShouldReportAttribution:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic reportTo(Lcom/facebook/battery/metrics/core/SystemMetrics;Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/reporter/wakelock/WakeLockMetricsReporter;->reportTo(Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;)V

    return-void
.end method

.method public reportTo(Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;)V
    .locals 5

    .line 24
    iget-wide v0, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->heldTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 25
    iget-wide v0, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->heldTimeMs:J

    const-string v4, "wakelock_held_time_ms"

    invoke-interface {p2, v4, v0, v1}, Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;->add(Ljava/lang/String;J)V

    .line 28
    :cond_0
    iget-wide v0, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->acquiredCount:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 29
    iget-wide v0, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->acquiredCount:J

    const-string v2, "wakelock_acquired_count"

    invoke-interface {p2, v2, v0, v1}, Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;->add(Ljava/lang/String;J)V

    .line 32
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/battery/reporter/wakelock/WakeLockMetricsReporter;->mShouldReportAttribution:Z

    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {p1}, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->attributionToJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 35
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wakelock_tag_time_ms"

    invoke-interface {p2, v0, p1}, Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
