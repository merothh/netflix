.class public Lcom/facebook/battery/serializer/cpu/CpuMetricsSerializer;
.super Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/battery/serializer/core/SystemMetricsSerializer<",
        "Lcom/facebook/battery/metrics/cpu/CpuMetrics;",
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
    check-cast p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/serializer/cpu/CpuMetricsSerializer;->deserializeContents(Lcom/facebook/battery/metrics/cpu/CpuMetrics;Ljava/io/DataInput;)Z

    move-result p1

    return p1
.end method

.method public deserializeContents(Lcom/facebook/battery/metrics/cpu/CpuMetrics;Ljava/io/DataInput;)Z
    .locals 2

    .line 28
    invoke-interface {p2}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->userTimeS:D

    .line 29
    invoke-interface {p2}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->systemTimeS:D

    .line 30
    invoke-interface {p2}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childUserTimeS:D

    .line 31
    invoke-interface {p2}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childSystemTimeS:D

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic serializeContents(Lcom/facebook/battery/metrics/core/SystemMetrics;Ljava/io/DataOutput;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/serializer/cpu/CpuMetricsSerializer;->serializeContents(Lcom/facebook/battery/metrics/cpu/CpuMetrics;Ljava/io/DataOutput;)V

    return-void
.end method

.method public serializeContents(Lcom/facebook/battery/metrics/cpu/CpuMetrics;Ljava/io/DataOutput;)V
    .locals 2

    .line 20
    iget-wide v0, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->userTimeS:D

    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    .line 21
    iget-wide v0, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->systemTimeS:D

    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    .line 22
    iget-wide v0, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childUserTimeS:D

    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    .line 23
    iget-wide v0, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childSystemTimeS:D

    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    return-void
.end method
