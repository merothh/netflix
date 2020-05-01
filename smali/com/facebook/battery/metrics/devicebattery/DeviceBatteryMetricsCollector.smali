.class public Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;
.super Lcom/facebook/battery/metrics/core/SystemMetricsCollector;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/battery/metrics/core/SystemMetricsCollector<",
        "Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;",
        ">;"
    }
.end annotation


# static fields
.field static UNKNOWN_LEVEL:I = -0x1


# instance fields
.field mBatteryRealtimeMs:J

.field mChargingRealtimeMs:J

.field private final mContext:Landroid/content/Context;

.field mIsCurrentlyCharging:Z

.field mLastUpdateMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/facebook/battery/metrics/core/SystemMetricsCollector;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mContext:Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->getBatteryIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->isCharging(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mIsCurrentlyCharging:Z

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mLastUpdateMs:J

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    new-instance v1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector$1;

    invoke-direct {v1, p0}, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector$1;-><init>(Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private getBatteryIntent()Landroid/content/Intent;
    .locals 4

    const/4 v0, 0x0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v1, "DeviceBatteryMetricsCollector"

    const-string v2, "Exception registering receiver for ACTION_BATTERY_CHANGED"

    .line 134
    invoke-static {v1, v2}, Lcom/facebook/battery/metrics/core/SystemMetricsLogger;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getBatteryLevel(Landroid/content/Intent;)F
    .locals 3

    if-nez p0, :cond_0

    .line 141
    sget p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->UNKNOWN_LEVEL:I

    :goto_0
    int-to-float p0, p0

    return p0

    :cond_0
    const/4 v0, -0x1

    const-string v1, "level"

    .line 144
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "scale"

    .line 145
    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ltz v1, :cond_2

    if-gtz p0, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v0, v1

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float v0, v0, p0

    return v0

    .line 147
    :cond_2
    :goto_1
    sget p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->UNKNOWN_LEVEL:I

    goto :goto_0
.end method

.method private static isCharging(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    const-string v1, "status"

    .line 154
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    const/4 p0, 0x2

    if-eq v0, p0, :cond_2

    const/4 p0, 0x5

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public bridge synthetic createMetrics()Lcom/facebook/battery/metrics/core/SystemMetrics;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->createMetrics()Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;

    move-result-object v0

    return-object v0
.end method

.method public createMetrics()Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;
    .locals 1

    .line 124
    new-instance v0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;

    invoke-direct {v0}, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getSnapshot(Lcom/facebook/battery/metrics/core/SystemMetrics;)Z
    .locals 0

    .line 30
    check-cast p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;

    invoke-virtual {p0, p1}, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->getSnapshot(Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;)Z

    move-result p1

    return p1
.end method

.method public getSnapshot(Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;)Z
    .locals 6

    const-string v0, "Null value passed to getSnapshot!"

    .line 107
    invoke-static {p1, v0}, Lcom/facebook/battery/metrics/core/Utilities;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->getBatteryIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->getBatteryLevel(Landroid/content/Intent;)F

    move-result v0

    iput v0, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryLevelPct:F

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    iget-boolean v2, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mIsCurrentlyCharging:Z

    if-eqz v2, :cond_0

    .line 112
    iget-wide v2, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mChargingRealtimeMs:J

    iget-wide v4, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mLastUpdateMs:J

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->chargingRealtimeMs:J

    .line 113
    iget-wide v0, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mBatteryRealtimeMs:J

    iput-wide v0, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryRealtimeMs:J

    goto :goto_0

    .line 115
    :cond_0
    iget-wide v2, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mChargingRealtimeMs:J

    iput-wide v2, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->chargingRealtimeMs:J

    .line 116
    iget-wide v2, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mBatteryRealtimeMs:J

    iget-wide v4, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mLastUpdateMs:J

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryRealtimeMs:J

    :goto_0
    const/4 p1, 0x1

    .line 118
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 119
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method logIncorrectSequence(Ljava/lang/String;J)V
    .locals 3

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Consecutive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "broadcasts: ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mLastUpdateMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DeviceBatteryMetricsCollector"

    invoke-static {p2, p1}, Lcom/facebook/battery/metrics/core/SystemMetricsLogger;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
