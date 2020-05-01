.class Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector$Initializer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Initializer"
.end annotation


# static fields
.field public static final CORES:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 127
    sget v0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;->sCoresForTest:I

    if-lez v0, :cond_0

    .line 128
    sget v0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;->sCoresForTest:I

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 130
    invoke-static {v0, v1}, Lcom/facebook/battery/metrics/cpu/Sysconf;->getScNProcessorsConf(J)J

    move-result-wide v0

    long-to-int v0, v0

    if-gez v0, :cond_1

    .line 132
    invoke-static {}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector$Initializer;->getProcessorCountFromProc()I

    move-result v0

    .line 135
    :cond_1
    :goto_0
    sput v0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector$Initializer;->CORES:I

    return-void
.end method

.method private static getProcessorCountFromProc()I
    .locals 2

    .line 139
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    new-instance v1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector$Initializer$1;

    invoke-direct {v1}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector$Initializer$1;-><init>()V

    .line 145
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 152
    array-length v0, v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
