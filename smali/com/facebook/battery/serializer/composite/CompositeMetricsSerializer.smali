.class public Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;
.super Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/battery/serializer/core/SystemMetricsSerializer<",
        "Lcom/facebook/battery/metrics/composite/CompositeMetrics;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDeserializerClasses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/battery/metrics/core/SystemMetrics<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final mDeserializers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/battery/serializer/core/SystemMetricsSerializer<",
            "+",
            "Lcom/facebook/battery/metrics/core/SystemMetrics<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final mSerializers:Lo/TextWatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TextWatcher<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/battery/metrics/core/SystemMetrics;",
            ">;",
            "Lcom/facebook/battery/serializer/core/SystemMetricsSerializer<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;-><init>()V

    .line 21
    new-instance v0, Lo/TextWatcher;

    invoke-direct {v0}, Lo/TextWatcher;-><init>()V

    iput-object v0, p0, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;->mSerializers:Lo/TextWatcher;

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;->mDeserializers:Landroid/util/SparseArray;

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;->mDeserializerClasses:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public addMetricsSerializer(Ljava/lang/Class;Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;)Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/facebook/battery/metrics/core/SystemMetrics<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/facebook/battery/serializer/core/SystemMetricsSerializer<",
            "TT;>;)",
            "Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;->mSerializers:Lo/TextWatcher;

    invoke-virtual {v0, p1, p2}, Lo/TextWatcher;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;->mDeserializers:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;->getTag()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;->mDeserializerClasses:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;->getTag()I

    move-result p2

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public deserializeContents(Lcom/facebook/battery/metrics/composite/CompositeMetrics;Ljava/io/DataInput;)Z
    .locals 7

    .line 59
    invoke-virtual {p1}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->getMetrics()Lo/TextWatcher;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->getMetrics()Lo/TextWatcher;

    move-result-object v1

    invoke-virtual {v1}, Lo/TextWatcher;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 61
    invoke-virtual {v0, v3}, Lo/TextWatcher;->c(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {p1, v4, v2}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->setIsValid(Ljava/lang/Class;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x1

    if-ge v1, v0, :cond_4

    .line 66
    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v4

    .line 67
    iget-object v5, p0, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;->mDeserializers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;

    .line 68
    iget-object v6, p0, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;->mDeserializerClasses:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    if-eqz v5, :cond_3

    if-nez v4, :cond_1

    goto :goto_2

    .line 73
    :cond_1
    invoke-virtual {p1, v4}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->getMetric(Ljava/lang/Class;)Lcom/facebook/battery/metrics/core/SystemMetrics;

    move-result-object v6

    .line 74
    invoke-virtual {v5, v6, p2}, Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;->deserializeContents(Lcom/facebook/battery/metrics/core/SystemMetrics;Ljava/io/DataInput;)Z

    move-result v5

    if-nez v5, :cond_2

    return v2

    .line 78
    :cond_2
    invoke-virtual {p1, v4, v3}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->setIsValid(Ljava/lang/Class;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v2

    :cond_4
    return v3
.end method

.method public bridge synthetic deserializeContents(Lcom/facebook/battery/metrics/core/SystemMetrics;Ljava/io/DataInput;)Z
    .locals 0

    .line 19
    check-cast p1, Lcom/facebook/battery/metrics/composite/CompositeMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;->deserializeContents(Lcom/facebook/battery/metrics/composite/CompositeMetrics;Ljava/io/DataInput;)Z

    move-result p1

    return p1
.end method

.method public serializeContents(Lcom/facebook/battery/metrics/composite/CompositeMetrics;Ljava/io/DataOutput;)V
    .locals 5

    .line 38
    iget-object v0, p0, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;->mSerializers:Lo/TextWatcher;

    invoke-virtual {v0}, Lo/TextWatcher;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 41
    iget-object v4, p0, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;->mSerializers:Lo/TextWatcher;

    invoke-virtual {v4, v2}, Lo/TextWatcher;->c(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {p1, v4}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->isValid(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p2, v3}, Ljava/io/DataOutput;->writeInt(I)V

    :goto_1
    if-ge v1, v0, :cond_3

    .line 47
    iget-object v2, p0, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;->mSerializers:Lo/TextWatcher;

    invoke-virtual {v2, v1}, Lo/TextWatcher;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 48
    invoke-virtual {p1, v2}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->isValid(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 49
    iget-object v3, p0, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;->mSerializers:Lo/TextWatcher;

    invoke-virtual {v3, v1}, Lo/TextWatcher;->d(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;

    .line 50
    invoke-virtual {v3}, Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;->getTag()I

    move-result v4

    invoke-interface {p2, v4}, Ljava/io/DataOutput;->writeInt(I)V

    .line 51
    invoke-virtual {p1, v2}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->getMetric(Ljava/lang/Class;)Lcom/facebook/battery/metrics/core/SystemMetrics;

    move-result-object v2

    invoke-virtual {v3, v2, p2}, Lcom/facebook/battery/serializer/core/SystemMetricsSerializer;->serializeContents(Lcom/facebook/battery/metrics/core/SystemMetrics;Ljava/io/DataOutput;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public bridge synthetic serializeContents(Lcom/facebook/battery/metrics/core/SystemMetrics;Ljava/io/DataOutput;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/facebook/battery/metrics/composite/CompositeMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/serializer/composite/CompositeMetricsSerializer;->serializeContents(Lcom/facebook/battery/metrics/composite/CompositeMetrics;Ljava/io/DataOutput;)V

    return-void
.end method
