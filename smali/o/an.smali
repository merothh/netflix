.class public final Lo/an;
.super Lo/at;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/an$StateListAnimator;
    }
.end annotation


# static fields
.field public static final c:Lo/an$StateListAnimator;


# instance fields
.field private final a:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;

.field private final b:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

.field private final d:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/an$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/an$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/an;->c:Lo/an$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 14
    sget-object v0, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;->c:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    const-wide/16 v1, 0x2710

    invoke-direct {p0, v0, v1, v2}, Lo/at;-><init>(Lcom/netflix/mediaclient/performance/api/capture/CaptureType;J)V

    .line 21
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 68
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 21
    new-instance v1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

    invoke-direct {v1, v0}, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lo/an;->b:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

    .line 22
    iget-object v0, p0, Lo/an;->b:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

    invoke-virtual {v0}, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->createMetrics()Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;

    move-result-object v0

    iput-object v0, p0, Lo/an;->a:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;

    .line 23
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 24
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 69
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 23
    iput-object v0, p0, Lo/an;->d:Landroid/content/Intent;

    return-void
.end method

.method private final g()V
    .locals 2

    .line 37
    iget-object v0, p0, Lo/an;->b:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

    iget-object v1, p0, Lo/an;->a:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;

    invoke-virtual {v0, v1}, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;->getSnapshot(Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;)Z

    .line 38
    iget-object v0, p0, Lo/an;->a:Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;

    iget v0, v0, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;->batteryLevelPct:F

    const-string v1, "bLevel"

    invoke-virtual {p0, v1, v0}, Lo/an;->e(Ljava/lang/String;F)V

    .line 39
    sget-object v0, Lo/an;->c:Lo/an$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    return-void
.end method

.method private final i()V
    .locals 3

    .line 44
    iget-object v0, p0, Lo/an;->d:Landroid/content/Intent;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    const-string v1, "isCharging"

    .line 48
    invoke-virtual {p0, v1, v0}, Lo/an;->e(Ljava/lang/String;F)V

    .line 49
    sget-object v0, Lo/an;->c:Lo/an$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    .line 29
    sget-object v0, Lo/an;->c:Lo/an$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 30
    invoke-super {p0}, Lo/at;->e()V

    .line 31
    invoke-direct {p0}, Lo/an;->g()V

    .line 32
    invoke-direct {p0}, Lo/an;->i()V

    return-void
.end method
