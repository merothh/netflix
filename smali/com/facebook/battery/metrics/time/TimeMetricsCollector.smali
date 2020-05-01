.class public Lcom/facebook/battery/metrics/time/TimeMetricsCollector;
.super Lcom/facebook/battery/metrics/core/SystemMetricsCollector;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/battery/metrics/core/SystemMetricsCollector<",
        "Lcom/facebook/battery/metrics/time/TimeMetrics;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/facebook/battery/metrics/core/SystemMetricsCollector;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createMetrics()Lcom/facebook/battery/metrics/core/SystemMetrics;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/facebook/battery/metrics/time/TimeMetricsCollector;->createMetrics()Lcom/facebook/battery/metrics/time/TimeMetrics;

    move-result-object v0

    return-object v0
.end method

.method public createMetrics()Lcom/facebook/battery/metrics/time/TimeMetrics;
    .locals 1

    .line 35
    new-instance v0, Lcom/facebook/battery/metrics/time/TimeMetrics;

    invoke-direct {v0}, Lcom/facebook/battery/metrics/time/TimeMetrics;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getSnapshot(Lcom/facebook/battery/metrics/core/SystemMetrics;)Z
    .locals 0

    .line 21
    check-cast p1, Lcom/facebook/battery/metrics/time/TimeMetrics;

    invoke-virtual {p0, p1}, Lcom/facebook/battery/metrics/time/TimeMetricsCollector;->getSnapshot(Lcom/facebook/battery/metrics/time/TimeMetrics;)Z

    move-result p1

    return p1
.end method

.method public getSnapshot(Lcom/facebook/battery/metrics/time/TimeMetrics;)Z
    .locals 2

    const-string v0, "Null value passed to getSnapshot!"

    .line 27
    invoke-static {p1, v0}, Lcom/facebook/battery/metrics/core/Utilities;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/battery/metrics/time/TimeMetrics;->realtimeMs:J

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/battery/metrics/time/TimeMetrics;->uptimeMs:J

    const/4 p1, 0x1

    return p1
.end method
