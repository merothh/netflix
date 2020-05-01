.class public Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;
.super Lcom/facebook/battery/metrics/core/SystemMetrics;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/battery/metrics/core/SystemMetrics<",
        "Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;",
        ">;"
    }
.end annotation


# instance fields
.field public acquiredCount:J

.field public heldTimeMs:J

.field public isAttributionEnabled:Z

.field public final tagTimeMs:Lo/TextWatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TextWatcher<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/facebook/battery/metrics/core/SystemMetrics;-><init>()V

    .line 30
    new-instance v0, Lo/TextWatcher;

    invoke-direct {v0}, Lo/TextWatcher;-><init>()V

    iput-object v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    .line 45
    iput-boolean p1, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->isAttributionEnabled:Z

    return-void
.end method


# virtual methods
.method public attributionToJSONObject()Lorg/json/JSONObject;
    .locals 9

    .line 163
    iget-boolean v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->isAttributionEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 168
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 169
    iget-object v3, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    invoke-virtual {v3}, Lo/TextWatcher;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 170
    iget-object v4, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    invoke-virtual {v4, v2}, Lo/TextWatcher;->d(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 172
    iget-object v6, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    invoke-virtual {v6, v2}, Lo/TextWatcher;->c(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "WakeLockMetrics"

    const-string v3, "Failed to serialize attribution data"

    .line 177
    invoke-static {v2, v3, v0}, Lcom/facebook/battery/metrics/core/SystemMetricsLogger;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public bridge synthetic diff(Lcom/facebook/battery/metrics/core/SystemMetrics;Lcom/facebook/battery/metrics/core/SystemMetrics;)Lcom/facebook/battery/metrics/core/SystemMetrics;
    .locals 0

    .line 24
    check-cast p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;

    check-cast p2, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->diff(Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;)Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;

    move-result-object p1

    return-object p1
.end method

.method public diff(Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;)Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;
    .locals 10

    if-nez p2, :cond_0

    .line 82
    new-instance p2, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;

    iget-boolean v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->isAttributionEnabled:Z

    invoke-direct {p2, v0}, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;-><init>(Z)V

    :cond_0
    if-nez p1, :cond_1

    .line 86
    invoke-virtual {p2, p0}, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->set(Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;)Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;

    goto :goto_2

    .line 88
    :cond_1
    iget-wide v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->heldTimeMs:J

    iget-wide v2, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->heldTimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->heldTimeMs:J

    .line 89
    iget-wide v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->acquiredCount:J

    iget-wide v2, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->acquiredCount:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->acquiredCount:J

    .line 90
    iget-boolean v0, p2, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->isAttributionEnabled:Z

    if-eqz v0, :cond_4

    .line 91
    iget-object v0, p2, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    invoke-virtual {v0}, Lo/TextWatcher;->clear()V

    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    invoke-virtual {v1}, Lo/TextWatcher;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_4

    .line 93
    iget-object v2, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    invoke-virtual {v2, v0}, Lo/TextWatcher;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 94
    iget-object v3, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    invoke-virtual {v3, v2}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 95
    iget-object v4, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    invoke-virtual {v4, v0}, Lo/TextWatcher;->d(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    if-nez v3, :cond_2

    move-wide v8, v6

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_1
    sub-long/2addr v4, v8

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    .line 97
    iget-object v3, p2, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lo/TextWatcher;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    check-cast p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;

    .line 129
    iget-boolean v1, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->isAttributionEnabled:Z

    iget-boolean v2, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->isAttributionEnabled:Z

    if-ne v1, v2, :cond_3

    iget-wide v1, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->heldTimeMs:J

    iget-wide v3, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->heldTimeMs:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    iget-wide v1, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->acquiredCount:J

    iget-wide v3, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->acquiredCount:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    goto :goto_0

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    iget-object p1, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    invoke-static {v0, p1}, Lcom/facebook/battery/metrics/core/Utilities;->simpleArrayMapEquals(Lo/TextWatcher;Lo/TextWatcher;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 140
    iget-boolean v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->isAttributionEnabled:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 141
    iget-object v1, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    invoke-virtual {v1}, Lo/TextWatcher;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 142
    iget-wide v1, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->heldTimeMs:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 143
    iget-wide v1, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->acquiredCount:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public bridge synthetic set(Lcom/facebook/battery/metrics/core/SystemMetrics;)Lcom/facebook/battery/metrics/core/SystemMetrics;
    .locals 0

    .line 24
    check-cast p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;

    invoke-virtual {p0, p1}, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->set(Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;)Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;)Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;
    .locals 2

    .line 108
    iget-wide v0, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->heldTimeMs:J

    iput-wide v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->heldTimeMs:J

    .line 109
    iget-wide v0, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->acquiredCount:J

    iput-wide v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->acquiredCount:J

    .line 110
    iget-boolean v0, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->isAttributionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->isAttributionEnabled:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    invoke-virtual {v0}, Lo/TextWatcher;->clear()V

    .line 112
    iget-object v0, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    iget-object p1, p1, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    invoke-virtual {v0, p1}, Lo/TextWatcher;->a(Lo/TextWatcher;)V

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLockMetrics{isAttributionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->isAttributionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tagTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->tagTimeMs:Lo/TextWatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", heldTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->heldTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", acquiredCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/facebook/battery/metrics/wakelock/WakeLockMetrics;->acquiredCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
