.class public Lcom/facebook/battery/metrics/cpu/CpuMetrics;
.super Lcom/facebook/battery/metrics/core/SystemMetrics;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/battery/metrics/core/SystemMetrics<",
        "Lcom/facebook/battery/metrics/cpu/CpuMetrics;",
        ">;"
    }
.end annotation


# instance fields
.field public childSystemTimeS:D

.field public childUserTimeS:D

.field public systemTimeS:D

.field public userTimeS:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/facebook/battery/metrics/core/SystemMetrics;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic diff(Lcom/facebook/battery/metrics/core/SystemMetrics;Lcom/facebook/battery/metrics/core/SystemMetrics;)Lcom/facebook/battery/metrics/core/SystemMetrics;
    .locals 0

    .line 14
    check-cast p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    check-cast p2, Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->diff(Lcom/facebook/battery/metrics/cpu/CpuMetrics;Lcom/facebook/battery/metrics/cpu/CpuMetrics;)Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    move-result-object p1

    return-object p1
.end method

.method public diff(Lcom/facebook/battery/metrics/cpu/CpuMetrics;Lcom/facebook/battery/metrics/cpu/CpuMetrics;)Lcom/facebook/battery/metrics/cpu/CpuMetrics;
    .locals 4

    if-nez p2, :cond_0

    .line 53
    new-instance p2, Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    invoke-direct {p2}, Lcom/facebook/battery/metrics/cpu/CpuMetrics;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    .line 57
    invoke-virtual {p2, p0}, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->set(Lcom/facebook/battery/metrics/cpu/CpuMetrics;)Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    goto :goto_0

    .line 59
    :cond_1
    iget-wide v0, p0, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->systemTimeS:D

    iget-wide v2, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->systemTimeS:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->systemTimeS:D

    .line 60
    iget-wide v0, p0, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->userTimeS:D

    iget-wide v2, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->userTimeS:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->userTimeS:D

    .line 61
    iget-wide v0, p0, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childSystemTimeS:D

    iget-wide v2, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childSystemTimeS:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childSystemTimeS:D

    .line 62
    iget-wide v0, p0, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childUserTimeS:D

    iget-wide v2, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childUserTimeS:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childUserTimeS:D

    :goto_0
    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 77
    :cond_1
    check-cast p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    .line 79
    iget-wide v2, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->systemTimeS:D

    iget-wide v4, p0, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->systemTimeS:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->userTimeS:D

    iget-wide v4, p0, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->userTimeS:D

    .line 80
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childSystemTimeS:D

    iget-wide v4, p0, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childSystemTimeS:D

    .line 81
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childUserTimeS:D

    iget-wide v4, p0, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childUserTimeS:D

    .line 82
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p1

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

    .line 89
    iget-wide v0, p0, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->systemTimeS:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    .line 91
    iget-wide v3, p0, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->userTimeS:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    .line 93
    iget-wide v3, p0, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childSystemTimeS:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    .line 95
    iget-wide v3, p0, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childUserTimeS:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic set(Lcom/facebook/battery/metrics/core/SystemMetrics;)Lcom/facebook/battery/metrics/core/SystemMetrics;
    .locals 0

    .line 14
    check-cast p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    invoke-virtual {p0, p1}, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->set(Lcom/facebook/battery/metrics/cpu/CpuMetrics;)Lcom/facebook/battery/metrics/cpu/CpuMetrics;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/facebook/battery/metrics/cpu/CpuMetrics;)Lcom/facebook/battery/metrics/cpu/CpuMetrics;
    .locals 2

    .line 25
    iget-wide v0, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->userTimeS:D

    iput-wide v0, p0, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->userTimeS:D

    .line 26
    iget-wide v0, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->systemTimeS:D

    iput-wide v0, p0, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->systemTimeS:D

    .line 27
    iget-wide v0, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childUserTimeS:D

    iput-wide v0, p0, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childUserTimeS:D

    .line 28
    iget-wide v0, p1, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childSystemTimeS:D

    iput-wide v0, p0, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childSystemTimeS:D

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CpuMetrics{userTimeS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->userTimeS:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", systemTimeS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->systemTimeS:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", childUserTimeS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childUserTimeS:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", childSystemTimeS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/facebook/battery/metrics/cpu/CpuMetrics;->childSystemTimeS:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
