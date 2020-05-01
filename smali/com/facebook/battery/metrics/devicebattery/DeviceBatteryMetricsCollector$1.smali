.class Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;


# direct methods
.method constructor <init>(Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector$1;->this$0:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 72
    iget-object p1, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector$1;->this$0:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

    monitor-enter p1

    .line 73
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x7073f927

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_1

    const v4, 0x3cbf870b

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_0
    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_3

    goto :goto_3

    .line 86
    :cond_3
    iget-object p2, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector$1;->this$0:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

    iget-boolean p2, p2, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mIsCurrentlyCharging:Z

    if-eqz p2, :cond_4

    .line 87
    iget-object p2, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector$1;->this$0:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

    iget-wide v2, p2, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mChargingRealtimeMs:J

    iget-object v4, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector$1;->this$0:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

    iget-wide v6, v4, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mLastUpdateMs:J

    sub-long v6, v0, v6

    add-long/2addr v2, v6

    iput-wide v2, p2, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mChargingRealtimeMs:J

    goto :goto_1

    .line 90
    :cond_4
    iget-object p2, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector$1;->this$0:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

    iget-wide v2, p2, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mBatteryRealtimeMs:J

    iget-object v4, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector$1;->this$0:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

    iget-wide v6, v4, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mLastUpdateMs:J

    sub-long v6, v0, v6

    add-long/2addr v2, v6

    iput-wide v2, p2, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mBatteryRealtimeMs:J

    .line 91
    iget-object p2, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector$1;->this$0:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

    const-string v2, "DISCONNECTED"

    invoke-virtual {p2, v2, v0, v1}, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->logIncorrectSequence(Ljava/lang/String;J)V

    .line 93
    :goto_1
    iget-object p2, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector$1;->this$0:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

    iput-boolean v5, p2, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mIsCurrentlyCharging:Z

    goto :goto_3

    .line 75
    :cond_5
    iget-object p2, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector$1;->this$0:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

    iget-boolean p2, p2, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mIsCurrentlyCharging:Z

    if-nez p2, :cond_6

    .line 76
    iget-object p2, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector$1;->this$0:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

    iget-wide v2, p2, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mBatteryRealtimeMs:J

    iget-object v4, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector$1;->this$0:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

    iget-wide v4, v4, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mLastUpdateMs:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p2, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mBatteryRealtimeMs:J

    goto :goto_2

    .line 79
    :cond_6
    iget-object p2, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector$1;->this$0:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

    iget-wide v2, p2, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mChargingRealtimeMs:J

    iget-object v4, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector$1;->this$0:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

    iget-wide v4, v4, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mLastUpdateMs:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p2, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mChargingRealtimeMs:J

    .line 80
    iget-object p2, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector$1;->this$0:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

    const-string v2, "CONNECTED"

    invoke-virtual {p2, v2, v0, v1}, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->logIncorrectSequence(Ljava/lang/String;J)V

    .line 82
    :goto_2
    iget-object p2, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector$1;->this$0:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

    iput-boolean v6, p2, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mIsCurrentlyCharging:Z

    .line 97
    :goto_3
    iget-object p2, p0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector$1;->this$0:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

    iput-wide v0, p2, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->mLastUpdateMs:J

    .line 98
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
