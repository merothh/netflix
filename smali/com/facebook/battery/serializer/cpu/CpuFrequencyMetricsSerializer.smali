.class public Lcom/facebook/battery/serializer/cpu/CpuFrequencyMetricsSerializer;
.super Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/battery/serializer/core/SystemMetricsSerializer<",
        "Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserializeContents(Lcom/facebook/battery/metrics/core/SystemMetrics;Ljava/io/DataInput;)Z
    .locals 0

    .line 17
    check-cast p1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/serializer/cpu/CpuFrequencyMetricsSerializer;->deserializeContents(Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;Ljava/io/DataInput;)Z

    move-result p1

    return p1
.end method

.method public deserializeContents(Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;Ljava/io/DataInput;)Z
    .locals 8

    .line 37
    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 38
    iget-object v1, p1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 43
    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 45
    iget-object v5, p1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    aget-object v5, v5, v1

    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v6

    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic serializeContents(Lcom/facebook/battery/metrics/core/SystemMetrics;Ljava/io/DataOutput;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/serializer/cpu/CpuFrequencyMetricsSerializer;->serializeContents(Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;Ljava/io/DataOutput;)V

    return-void
.end method

.method public serializeContents(Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;Ljava/io/DataOutput;)V
    .locals 7

    .line 21
    iget-object v0, p1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    array-length v0, v0

    .line 22
    iget-object v1, p1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    array-length v1, v1

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 24
    iget-object v3, p1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    aget-object v3, v3, v2

    .line 25
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    .line 26
    invoke-interface {p2, v4}, Ljava/io/DataOutput;->writeInt(I)V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    .line 28
    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-interface {p2, v6}, Ljava/io/DataOutput;->writeInt(I)V

    .line 29
    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    invoke-interface {p2, v6}, Ljava/io/DataOutput;->writeInt(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
