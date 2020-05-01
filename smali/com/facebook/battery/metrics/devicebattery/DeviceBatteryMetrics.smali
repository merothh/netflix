.class public Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;
.super Lcom/facebook/battery/metrics/core/SystemMetrics;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/battery/metrics/core/SystemMetrics<",
        "Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;",
        ">;"
    }
.end annotation


# instance fields
.field public batteryLevelPct:F

.field public batteryRealtimeMs:J

.field public chargingRealtimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/facebook/battery/metrics/core/SystemMetrics;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic diff(Lcom/facebook/battery/metrics/core/SystemMetrics;Lcom/facebook/battery/metrics/core/SystemMetrics;)Lcom/facebook/battery/metrics/core/SystemMetrics;
    .locals 0

    .line 18
    check-cast p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;

    check-cast p2, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->diff(Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;)Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;

    move-result-object p1

    return-object p1
.end method

.method public diff(Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;)Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;
    .locals 4

    if-nez p2, :cond_0

    .line 58
    new-instance p2, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;

    invoke-direct {p2}, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    .line 62
    invoke-virtual {p2, p0}, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->set(Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;)Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;

    goto :goto_0

    .line 64
    :cond_1
    iget v0, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryLevelPct:F

    iget v1, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryLevelPct:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryLevelPct:F

    .line 65
    iget-wide v0, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryRealtimeMs:J

    iget-wide v2, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryRealtimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryRealtimeMs:J

    .line 66
    iget-wide v0, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->chargingRealtimeMs:J

    iget-wide v2, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->chargingRealtimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->chargingRealtimeMs:J

    :goto_0
    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    check-cast p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;

    .line 83
    iget v2, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryLevelPct:F

    iget v3, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryLevelPct:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    return v1

    .line 86
    :cond_2
    iget-wide v2, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryRealtimeMs:J

    iget-wide v4, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryRealtimeMs:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 89
    :cond_3
    iget-wide v2, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->chargingRealtimeMs:J

    iget-wide v4, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->chargingRealtimeMs:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 94
    iget v0, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryLevelPct:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 95
    iget-wide v1, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryRealtimeMs:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 96
    iget-wide v1, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->chargingRealtimeMs:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public bridge synthetic set(Lcom/facebook/battery/metrics/core/SystemMetrics;)Lcom/facebook/battery/metrics/core/SystemMetrics;
    .locals 0

    .line 18
    check-cast p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;

    invoke-virtual {p0, p1}, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->set(Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;)Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;)Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;
    .locals 2

    .line 31
    iget v0, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryLevelPct:F

    iput v0, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryLevelPct:F

    .line 32
    iget-wide v0, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryRealtimeMs:J

    iput-wide v0, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryRealtimeMs:J

    .line 33
    iget-wide v0, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->chargingRealtimeMs:J

    iput-wide v0, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->chargingRealtimeMs:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceBatteryMetrics{batteryLevelPct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryLevelPct:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", batteryRealtimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryRealtimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", chargingRealtimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->chargingRealtimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
