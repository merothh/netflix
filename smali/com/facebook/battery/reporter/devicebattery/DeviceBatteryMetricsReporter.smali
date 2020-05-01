.class public Lcom/facebook/battery/reporter/devicebattery/DeviceBatteryMetricsReporter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/battery/reporter/core/SystemMetricsReporter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/battery/reporter/core/SystemMetricsReporter<",
        "Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;",
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
    check-cast p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/reporter/devicebattery/DeviceBatteryMetricsReporter;->reportTo(Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;)V

    return-void
.end method

.method public reportTo(Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;)V
    .locals 3

    .line 21
    iget v0, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryLevelPct:F

    float-to-double v0, v0

    const-string v2, "battery_pct"

    invoke-interface {p2, v2, v0, v1}, Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;->add(Ljava/lang/String;D)V

    .line 22
    iget-wide v0, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryRealtimeMs:J

    const-string v2, "battery_realtime_ms"

    invoke-interface {p2, v2, v0, v1}, Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;->add(Ljava/lang/String;J)V

    .line 23
    iget-wide v0, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->chargingRealtimeMs:J

    const-string p1, "charging_realtime_ms"

    invoke-interface {p2, p1, v0, v1}, Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;->add(Ljava/lang/String;J)V

    return-void
.end method
