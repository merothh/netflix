.class public Lcom/facebook/battery/serializer/devicebattery/DeviceBatteryMetricsSerializer;
.super Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/battery/serializer/core/SystemMetricsSerializer<",
        "Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserializeContents(Lcom/facebook/battery/metrics/core/SystemMetrics;Ljava/io/DataInput;)Z
    .locals 0

    .line 16
    check-cast p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/serializer/devicebattery/DeviceBatteryMetricsSerializer;->deserializeContents(Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;Ljava/io/DataInput;)Z

    move-result p1

    return p1
.end method

.method public deserializeContents(Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;Ljava/io/DataInput;)Z
    .locals 2

    .line 29
    invoke-interface {p2}, Ljava/io/DataInput;->readFloat()F

    move-result v0

    iput v0, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryLevelPct:F

    .line 30
    invoke-interface {p2}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryRealtimeMs:J

    .line 31
    invoke-interface {p2}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->chargingRealtimeMs:J

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic serializeContents(Lcom/facebook/battery/metrics/core/SystemMetrics;Ljava/io/DataOutput;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/serializer/devicebattery/DeviceBatteryMetricsSerializer;->serializeContents(Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;Ljava/io/DataOutput;)V

    return-void
.end method

.method public serializeContents(Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;Ljava/io/DataOutput;)V
    .locals 2

    .line 21
    iget v0, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryLevelPct:F

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    .line 22
    iget-wide v0, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryRealtimeMs:J

    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 23
    iget-wide v0, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->chargingRealtimeMs:J

    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    return-void
.end method
