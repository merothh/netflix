.class public abstract Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/battery/metrics/core/SystemMetrics<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final deserialize(Lcom/facebook/battery/metrics/core/SystemMetrics;Ljava/io/DataInput;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/DataInput;",
            ")Z"
        }
    .end annotation

    .line 36
    invoke-interface {p2}, Ljava/io/DataInput;->readShort()S

    move-result v0

    const/16 v1, 0xfb

    if-ne v0, v1, :cond_1

    invoke-interface {p2}, Ljava/io/DataInput;->readShort()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;->getTag()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;->deserializeContents(Lcom/facebook/battery/metrics/core/SystemMetrics;Ljava/io/DataInput;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract deserializeContents(Lcom/facebook/battery/metrics/core/SystemMetrics;Ljava/io/DataInput;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/DataInput;",
            ")Z"
        }
    .end annotation
.end method

.method public final getTag()I
    .locals 1

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final serialize(Lcom/facebook/battery/metrics/core/SystemMetrics;Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/DataOutput;",
            ")V"
        }
    .end annotation

    const/16 v0, 0xfb

    .line 28
    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeShort(I)V

    const/4 v0, 0x1

    .line 29
    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 30
    invoke-virtual {p0}, Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;->getTag()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;->serializeContents(Lcom/facebook/battery/metrics/core/SystemMetrics;Ljava/io/DataOutput;)V

    return-void
.end method

.method public abstract serializeContents(Lcom/facebook/battery/metrics/core/SystemMetrics;Ljava/io/DataOutput;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/DataOutput;",
            ")V"
        }
    .end annotation
.end method
