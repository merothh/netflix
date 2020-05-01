.class Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector$Initializer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Initializer"
.end annotation


# static fields
.field static final CLOCK_TICKS_PER_SECOND:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x64

    .line 133
    invoke-static {v0, v1}, Lcom/facebook/battery/metrics/cpu/Sysconf;->getScClkTck(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/battery/metrics/cpu/CpuMetricsCollector$Initializer;->CLOCK_TICKS_PER_SECOND:J

    return-void
.end method
