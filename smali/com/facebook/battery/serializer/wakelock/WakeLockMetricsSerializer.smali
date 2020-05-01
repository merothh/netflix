.class public Lcom/facebook/battery/serializer/wakelock/WakeLockMetricsSerializer;
.super Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/battery/serializer/core/SystemMetricsSerializer<",
        "Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;",
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
    check-cast p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/serializer/wakelock/WakeLockMetricsSerializer;->deserializeContents(Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;Ljava/io/DataInput;)Z

    move-result p1

    return p1
.end method

.method public deserializeContents(Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;Ljava/io/DataInput;)Z
    .locals 7

    .line 38
    iget-object v0, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    invoke-virtual {v0}, Lo/TextWatcher;->clear()V

    .line 40
    invoke-interface {p2}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->heldTimeMs:J

    .line 41
    invoke-interface {p2}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->acquiredCount:J

    .line 42
    invoke-interface {p2}, Ljava/io/DataInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->isAttributionEnabled:Z

    .line 43
    iget-boolean v0, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->isAttributionEnabled:Z

    if-eqz v0, :cond_1

    .line 44
    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 46
    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v3

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_0

    .line 49
    invoke-interface {p2}, Ljava/io/DataInput;->readChar()C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 51
    :cond_0
    iget-object v3, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Ljava/io/DataInput;->readLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lo/TextWatcher;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic serializeContents(Lcom/facebook/battery/metrics/core/SystemMetrics;Ljava/io/DataOutput;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/serializer/wakelock/WakeLockMetricsSerializer;->serializeContents(Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;Ljava/io/DataOutput;)V

    return-void
.end method

.method public serializeContents(Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;Ljava/io/DataOutput;)V
    .locals 6

    .line 20
    iget-wide v0, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->heldTimeMs:J

    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 21
    iget-wide v0, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->acquiredCount:J

    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 22
    iget-boolean v0, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->isAttributionEnabled:Z

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 23
    iget-boolean v0, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->isAttributionEnabled:Z

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    invoke-virtual {v0}, Lo/TextWatcher;->size()I

    move-result v0

    .line 25
    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 27
    iget-object v2, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    invoke-virtual {v2, v1}, Lo/TextWatcher;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 28
    iget-object v3, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    invoke-virtual {v3, v1}, Lo/TextWatcher;->d(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 29
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {p2, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 30
    invoke-interface {p2, v2}, Ljava/io/DataOutput;->writeChars(Ljava/lang/String;)V

    .line 31
    invoke-interface {p2, v3, v4}, Ljava/io/DataOutput;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
