.class public Lo/kh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/JavascriptInterface;


# instance fields
.field private final a:Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;

.field private final b:Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector<",
            "Lcom/facebook/battery/metrics/composite/CompositeMetrics;",
            "Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;

.field private final d:Ljava/io/File;

.field private final e:Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;

.field private final i:Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lo/kj;

    invoke-direct {v0}, Lo/kj;-><init>()V

    iput-object v0, p0, Lo/kh;->e:Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 62
    new-instance v0, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;

    invoke-direct {v0}, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;-><init>()V

    const-class v1, Lcom/facebook/battery/metrics/time/TimeMetrics;

    new-instance v2, Lcom/facebook/battery/metrics/time/TimeMetricsCollector;

    invoke-direct {v2}, Lcom/facebook/battery/metrics/time/TimeMetricsCollector;-><init>()V

    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;->addMetricsCollector(Ljava/lang/Class;Lcom/facebook/battery/metrics/core/SystemMetricsCollector;)Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;

    move-result-object v0

    const-class v1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    new-instance v2, Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector;

    invoke-direct {v2}, Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector;-><init>()V

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;->addMetricsCollector(Ljava/lang/Class;Lcom/facebook/battery/metrics/core/SystemMetricsCollector;)Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;

    move-result-object v0

    const-class v1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    new-instance v2, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;

    invoke-direct {v2}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;-><init>()V

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;->addMetricsCollector(Ljava/lang/Class;Lcom/facebook/battery/metrics/core/SystemMetricsCollector;)Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;

    move-result-object v0

    const-class v1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;

    new-instance v2, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;

    invoke-direct {v2}, Lcom/facebook/battery/metrics/wakelock/WakeLockMetricsCollector;-><init>()V

    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;->addMetricsCollector(Ljava/lang/Class;Lcom/facebook/battery/metrics/core/SystemMetricsCollector;)Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;

    move-result-object v0

    const-class v1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;

    new-instance v2, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;

    invoke-direct {v2, p1}, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetricsCollector;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;->addMetricsCollector(Ljava/lang/Class;Lcom/facebook/battery/metrics/core/SystemMetricsCollector;)Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;->build()Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector;

    move-result-object v0

    iput-object v0, p0, Lo/kh;->i:Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector;

    .line 74
    new-instance v0, Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;

    invoke-direct {v0}, Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;-><init>()V

    const-class v1, Lcom/facebook/battery/metrics/time/TimeMetrics;

    new-instance v2, Lcom/facebook/battery/reporter/time/TimeMetricsReporter;

    invoke-direct {v2}, Lcom/facebook/battery/reporter/time/TimeMetricsReporter;-><init>()V

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;->addMetricsReporter(Ljava/lang/Class;Lcom/facebook/battery/reporter/core/SystemMetricsReporter;)Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;

    move-result-object v0

    const-class v1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    new-instance v2, Lcom/facebook/battery/reporter/cpu/CpuFrequencyMetricsReporter;

    invoke-direct {v2}, Lcom/facebook/battery/reporter/cpu/CpuFrequencyMetricsReporter;-><init>()V

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;->addMetricsReporter(Ljava/lang/Class;Lcom/facebook/battery/reporter/core/SystemMetricsReporter;)Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;

    move-result-object v0

    const-class v1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    new-instance v2, Lcom/facebook/battery/reporter/cpu/CpuMetricsReporter;

    invoke-direct {v2}, Lcom/facebook/battery/reporter/cpu/CpuMetricsReporter;-><init>()V

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;->addMetricsReporter(Ljava/lang/Class;Lcom/facebook/battery/reporter/core/SystemMetricsReporter;)Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;

    move-result-object v0

    const-class v1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;

    new-instance v2, Lcom/facebook/battery/reporter/wakelock/WakeLockMetricsReporter;

    invoke-direct {v2}, Lcom/facebook/battery/reporter/wakelock/WakeLockMetricsReporter;-><init>()V

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;->addMetricsReporter(Ljava/lang/Class;Lcom/facebook/battery/reporter/core/SystemMetricsReporter;)Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;

    move-result-object v0

    const-class v1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;

    new-instance v2, Lcom/facebook/battery/reporter/devicebattery/DeviceBatteryMetricsReporter;

    invoke-direct {v2}, Lcom/facebook/battery/reporter/devicebattery/DeviceBatteryMetricsReporter;-><init>()V

    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;->addMetricsReporter(Ljava/lang/Class;Lcom/facebook/battery/reporter/core/SystemMetricsReporter;)Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;

    move-result-object v0

    iput-object v0, p0, Lo/kh;->c:Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;

    .line 81
    new-instance v0, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;

    invoke-direct {v0}, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;-><init>()V

    const-class v1, Lcom/facebook/battery/metrics/time/TimeMetrics;

    new-instance v2, Lcom/facebook/battery/serializer/time/TimeMetricsSerializer;

    invoke-direct {v2}, Lcom/facebook/battery/serializer/time/TimeMetricsSerializer;-><init>()V

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;->addMetricsSerializer(Ljava/lang/Class;Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;)Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;

    move-result-object v0

    const-class v1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    new-instance v2, Lcom/facebook/battery/serializer/cpu/CpuFrequencyMetricsSerializer;

    invoke-direct {v2}, Lcom/facebook/battery/serializer/cpu/CpuFrequencyMetricsSerializer;-><init>()V

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;->addMetricsSerializer(Ljava/lang/Class;Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;)Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;

    move-result-object v0

    const-class v1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    new-instance v2, Lcom/facebook/battery/serializer/cpu/CpuMetricsSerializer;

    invoke-direct {v2}, Lcom/facebook/battery/serializer/cpu/CpuMetricsSerializer;-><init>()V

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;->addMetricsSerializer(Ljava/lang/Class;Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;)Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;

    move-result-object v0

    const-class v1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;

    new-instance v2, Lcom/facebook/battery/serializer/wakelock/WakeLockMetricsSerializer;

    invoke-direct {v2}, Lcom/facebook/battery/serializer/wakelock/WakeLockMetricsSerializer;-><init>()V

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;->addMetricsSerializer(Ljava/lang/Class;Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;)Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;

    move-result-object v0

    const-class v1, Lcom/facebook/battery/metrics/devicebattery/DeviceBatteryMetrics;

    new-instance v2, Lcom/facebook/battery/serializer/devicebattery/DeviceBatteryMetricsSerializer;

    invoke-direct {v2}, Lcom/facebook/battery/serializer/devicebattery/DeviceBatteryMetricsSerializer;-><init>()V

    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;->addMetricsSerializer(Ljava/lang/Class;Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;)Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;

    move-result-object v0

    iput-object v0, p0, Lo/kh;->a:Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;

    .line 93
    new-instance v0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;

    iget-object v1, p0, Lo/kh;->i:Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector;

    invoke-direct {v0, v1}, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;-><init>(Lcom/facebook/battery/metrics/core/SystemMetricsCollector;)V

    iput-object v0, p0, Lo/kh;->b:Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lo/kh;->d:Ljava/io/File;

    return-void
.end method

.method private a()Ljava/io/File;
    .locals 3

    .line 151
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/kh;->d:Ljava/io/File;

    const-string v2, "snapshot20180815"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    .line 119
    invoke-direct {p0}, Lo/kh;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lo/kh;->b:Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;

    invoke-virtual {v0}, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->getLatestDiffAndReset()Lcom/facebook/battery/metrics/core/SystemMetrics;

    move-result-object v0

    check-cast v0, Lcom/facebook/battery/metrics/composite/CompositeMetrics;

    .line 127
    iget-object v1, p0, Lo/kh;->e:Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;

    const/4 v2, 0x0

    const-string v3, "BatteryMetricsLogging"

    invoke-interface {v1, v2, v3}, Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;->acquireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lo/kh;->e:Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;

    invoke-interface {v1}, Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;->isSampled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lo/kh;->e:Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;

    const-string v2, "dimension"

    invoke-interface {v1, v2, p1}, Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lo/kh;->c:Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;

    iget-object v1, p0, Lo/kh;->e:Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;

    invoke-virtual {p1, v0, v1}, Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;->reportTo(Lcom/facebook/battery/metrics/composite/CompositeMetrics;Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;)V

    .line 131
    iget-object p1, p0, Lo/kh;->e:Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;

    invoke-interface {p1}, Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;->logAndRelease()V

    .line 134
    :cond_1
    :try_start_0
    new-instance p1, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {p0}, Lo/kh;->a()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :try_start_1
    iget-object v1, p0, Lo/kh;->a:Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;->serialize(Lcom/facebook/battery/metrics/core/SystemMetrics;Ljava/io/DataOutput;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :try_start_2
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 134
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 137
    :try_start_4
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Failed to serialize"

    .line 138
    invoke-static {v3, p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    return-void
.end method

.method private e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Lo/Plugin;)V
    .locals 0

    return-void
.end method

.method public a(Lo/Plugin;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "background"

    .line 157
    invoke-direct {p0, p1}, Lo/kh;->d(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lo/Plugin;)V
    .locals 0

    const-string p1, "foreground"

    .line 163
    invoke-direct {p0, p1}, Lo/kh;->d(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 100
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->j()Lo/Plugin;

    move-result-object v0

    .line 101
    invoke-interface {v0, p0}, Lo/Plugin;->b(Lo/JavascriptInterface;)Z

    .line 103
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {p0}, Lo/kh;->a()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :try_start_1
    iget-object v1, p0, Lo/kh;->i:Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector;

    invoke-virtual {v1}, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector;->createMetrics()Lcom/facebook/battery/metrics/composite/CompositeMetrics;

    move-result-object v1

    .line 107
    iget-object v2, p0, Lo/kh;->a:Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;->deserialize(Lcom/facebook/battery/metrics/core/SystemMetrics;Ljava/io/DataInput;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 103
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    .line 112
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "BatteryApplication"

    const-string v2, "Failed to deserialize"

    .line 113
    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    return-void
.end method

.method public c(Lo/Plugin;)V
    .locals 0

    return-void
.end method

.method public d(Lo/Plugin;)V
    .locals 0

    return-void
.end method

.method public e(Lo/Plugin;)V
    .locals 0

    return-void
.end method
