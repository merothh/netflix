.class public Lcom/facebook/battery/metrics/time/TimeMetrics;
.super Lcom/facebook/battery/metrics/core/SystemMetrics;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/battery/metrics/core/SystemMetrics<",
        "Lcom/facebook/battery/metrics/time/TimeMetrics;",
        ">;"
    }
.end annotation


# instance fields
.field public realtimeMs:J

.field public uptimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/facebook/battery/metrics/core/SystemMetrics;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic diff(Lcom/facebook/battery/metrics/core/SystemMetrics;Lcom/facebook/battery/metrics/core/SystemMetrics;)Lcom/facebook/battery/metrics/core/SystemMetrics;
    .locals 0

    .line 17
    check-cast p1, Lcom/facebook/battery/metrics/time/TimeMetrics;

    check-cast p2, Lcom/facebook/battery/metrics/time/TimeMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/metrics/time/TimeMetrics;->diff(Lcom/facebook/battery/metrics/time/TimeMetrics;Lcom/facebook/battery/metrics/time/TimeMetrics;)Lcom/facebook/battery/metrics/time/TimeMetrics;

    move-result-object p1

    return-object p1
.end method

.method public diff(Lcom/facebook/battery/metrics/time/TimeMetrics;Lcom/facebook/battery/metrics/time/TimeMetrics;)Lcom/facebook/battery/metrics/time/TimeMetrics;
    .locals 4

    if-nez p2, :cond_0

    .line 49
    new-instance p2, Lcom/facebook/battery/metrics/time/TimeMetrics;

    invoke-direct {p2}, Lcom/facebook/battery/metrics/time/TimeMetrics;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    .line 53
    invoke-virtual {p2, p0}, Lcom/facebook/battery/metrics/time/TimeMetrics;->set(Lcom/facebook/battery/metrics/time/TimeMetrics;)Lcom/facebook/battery/metrics/time/TimeMetrics;

    goto :goto_0

    .line 55
    :cond_1
    iget-wide v0, p0, Lcom/facebook/battery/metrics/time/TimeMetrics;->uptimeMs:J

    iget-wide v2, p1, Lcom/facebook/battery/metrics/time/TimeMetrics;->uptimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/facebook/battery/metrics/time/TimeMetrics;->uptimeMs:J

    .line 56
    iget-wide v0, p0, Lcom/facebook/battery/metrics/time/TimeMetrics;->realtimeMs:J

    iget-wide v2, p1, Lcom/facebook/battery/metrics/time/TimeMetrics;->realtimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/facebook/battery/metrics/time/TimeMetrics;->realtimeMs:J

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

    if-eqz p1, :cond_3

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 71
    :cond_1
    check-cast p1, Lcom/facebook/battery/metrics/time/TimeMetrics;

    .line 73
    iget-wide v2, p0, Lcom/facebook/battery/metrics/time/TimeMetrics;->uptimeMs:J

    iget-wide v4, p1, Lcom/facebook/battery/metrics/time/TimeMetrics;->uptimeMs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/facebook/battery/metrics/time/TimeMetrics;->realtimeMs:J

    iget-wide v4, p1, Lcom/facebook/battery/metrics/time/TimeMetrics;->realtimeMs:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 7

    .line 78
    iget-wide v0, p0, Lcom/facebook/battery/metrics/time/TimeMetrics;->uptimeMs:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 79
    iget-wide v3, p0, Lcom/facebook/battery/metrics/time/TimeMetrics;->realtimeMs:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic set(Lcom/facebook/battery/metrics/core/SystemMetrics;)Lcom/facebook/battery/metrics/core/SystemMetrics;
    .locals 0

    .line 17
    check-cast p1, Lcom/facebook/battery/metrics/time/TimeMetrics;

    invoke-virtual {p0, p1}, Lcom/facebook/battery/metrics/time/TimeMetrics;->set(Lcom/facebook/battery/metrics/time/TimeMetrics;)Lcom/facebook/battery/metrics/time/TimeMetrics;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/facebook/battery/metrics/time/TimeMetrics;)Lcom/facebook/battery/metrics/time/TimeMetrics;
    .locals 2

    .line 26
    iget-wide v0, p1, Lcom/facebook/battery/metrics/time/TimeMetrics;->uptimeMs:J

    iput-wide v0, p0, Lcom/facebook/battery/metrics/time/TimeMetrics;->uptimeMs:J

    .line 27
    iget-wide v0, p1, Lcom/facebook/battery/metrics/time/TimeMetrics;->realtimeMs:J

    iput-wide v0, p0, Lcom/facebook/battery/metrics/time/TimeMetrics;->realtimeMs:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeMetrics{uptimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/facebook/battery/metrics/time/TimeMetrics;->uptimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", realtimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/facebook/battery/metrics/time/TimeMetrics;->realtimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
