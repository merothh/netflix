.class public Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;
.super Lcom/facebook/battery/metrics/core/SystemMetrics;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/battery/metrics/core/SystemMetrics<",
        "Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;",
        ">;"
    }
.end annotation


# instance fields
.field public final timeInStateS:[Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 31
    invoke-direct {p0}, Lcom/facebook/battery/metrics/core/SystemMetrics;-><init>()V

    .line 32
    invoke-static {}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetricsCollector;->getTotalCores()I

    move-result v0

    .line 33
    new-array v1, v0, [Landroid/util/SparseIntArray;

    iput-object v1, p0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 35
    iget-object v3, p0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static convert(Landroid/util/SparseIntArray;)Lorg/json/JSONObject;
    .locals 5

    .line 242
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 243
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 244
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static copyArrayInto(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 3

    .line 153
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x0

    .line 154
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 155
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static sparseIntArrayEquals(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 170
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 171
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 178
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v3

    :cond_4
    return v0
.end method


# virtual methods
.method public bridge synthetic diff(Lcom/facebook/battery/metrics/core/SystemMetrics;Lcom/facebook/battery/metrics/core/SystemMetrics;)Lcom/facebook/battery/metrics/core/SystemMetrics;
    .locals 0

    .line 27
    check-cast p1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    check-cast p2, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->diff(Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;)Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    move-result-object p1

    return-object p1
.end method

.method public diff(Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;)Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;
    .locals 10

    if-nez p2, :cond_0

    .line 88
    new-instance p2, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    invoke-direct {p2}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    .line 92
    invoke-virtual {p2, p0}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->set(Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;)Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 94
    :goto_0
    iget-object v2, p0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 95
    aget-object v2, v2, v1

    .line 96
    iget-object v3, p1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    aget-object v3, v3, v1

    .line 97
    iget-object v4, p2, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    aget-object v4, v4, v1

    .line 100
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    .line 101
    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 102
    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    invoke-virtual {v3, v7, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    sub-int/2addr v8, v9

    if-gez v8, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    .line 108
    :cond_2
    invoke-virtual {v4, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    .line 112
    invoke-static {v2, v4}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->copyArrayInto(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 138
    :cond_1
    check-cast p1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    .line 139
    iget-object v2, p0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    array-length v3, v2

    iget-object v4, p1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    array-length v4, v4

    if-eq v3, v4, :cond_2

    return v1

    .line 143
    :cond_2
    array-length v2, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 144
    iget-object v4, p0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    aget-object v4, v4, v3

    iget-object v5, p1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    aget-object v5, v5, v3

    invoke-static {v4, v5}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->sparseIntArrayEquals(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z

    move-result v4

    if-nez v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 190
    :goto_0
    iget-object v3, p0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 191
    aget-object v4, v3, v1

    .line 192
    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    move v5, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    .line 194
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    xor-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_0

    :cond_1
    return v2
.end method

.method public bridge synthetic set(Lcom/facebook/battery/metrics/core/SystemMetrics;)Lcom/facebook/battery/metrics/core/SystemMetrics;
    .locals 0

    .line 27
    check-cast p1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    invoke-virtual {p0, p1}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->set(Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;)Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;)Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;
    .locals 3

    const/4 v0, 0x0

    .line 122
    :goto_0
    iget-object v1, p0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 123
    iget-object v2, p1, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    aget-object v2, v2, v0

    aget-object v1, v1, v0

    invoke-static {v2, v1}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->copyArrayInto(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 9

    .line 206
    iget-object v0, p0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 214
    :cond_0
    array-length v0, v0

    new-array v0, v0, [Z

    .line 215
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 216
    iget-object v3, p0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    array-length v3, v3

    :goto_0
    if-ge v2, v3, :cond_5

    .line 217
    iget-object v4, p0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    aget-object v4, v4, v2

    .line 218
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-eqz v5, :cond_4

    aget-boolean v5, v0, v2

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x1

    shl-int v6, v5, v2

    add-int/lit8 v7, v2, 0x1

    :goto_1
    if-ge v7, v3, :cond_3

    .line 225
    iget-object v8, p0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    aget-object v8, v8, v7

    invoke-static {v4, v8}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->sparseIntArrayEquals(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z

    move-result v8

    if-eqz v8, :cond_2

    shl-int v8, v5, v7

    or-int/2addr v6, v8

    .line 227
    aput-boolean v5, v0, v7

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 232
    :cond_3
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->convert(Landroid/util/SparseIntArray;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    const-string v5, "CpuFrequencyMetricsReporter"

    const-string v6, "Unable to store event"

    .line 234
    invoke-static {v5, v6, v4}, Lcom/facebook/battery/metrics/core/SystemMetricsLogger;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CpuFrequencyMetrics{timeInStateS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/battery/metrics/cpu/CpuFrequencyMetrics;->timeInStateS:[Landroid/util/SparseIntArray;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
