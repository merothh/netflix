.class public Lcom/facebook/battery/serializer/time/TimeMetricsSerializer;
.super Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/battery/serializer/core/SystemMetricsSerializer<",
        "Lcom/facebook/battery/metrics/time/TimeMetrics;",
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
    check-cast p1, Lcom/facebook/battery/metrics/time/TimeMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/serializer/time/TimeMetricsSerializer;->deserializeContents(Lcom/facebook/battery/metrics/time/TimeMetrics;Ljava/io/DataInput;)Z

    move-result p1

    return p1
.end method

.method public deserializeContents(Lcom/facebook/battery/metrics/time/TimeMetrics;Ljava/io/DataInput;)Z
    .locals 2

    .line 26
    invoke-interface {p2}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/battery/metrics/time/TimeMetrics;->realtimeMs:J

    .line 27
    invoke-interface {p2}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/battery/metrics/time/TimeMetrics;->uptimeMs:J

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic serializeContents(Lcom/facebook/battery/metrics/core/SystemMetrics;Ljava/io/DataOutput;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/facebook/battery/metrics/time/TimeMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/serializer/time/TimeMetricsSerializer;->serializeContents(Lcom/facebook/battery/metrics/time/TimeMetrics;Ljava/io/DataOutput;)V

    return-void
.end method

.method public serializeContents(Lcom/facebook/battery/metrics/time/TimeMetrics;Ljava/io/DataOutput;)V
    .locals 2

    .line 20
    iget-wide v0, p1, Lcom/facebook/battery/metrics/time/TimeMetrics;->realtimeMs:J

    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 21
    iget-wide v0, p1, Lcom/facebook/battery/metrics/time/TimeMetrics;->uptimeMs:J

    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    return-void
.end method
