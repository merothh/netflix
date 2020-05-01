.class public Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector;
.super Lcom/facebook/battery/metrics/core/SystemMetricsCollector;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/battery/metrics/core/SystemMetricsCollector<",
        "Lcom/facebook/battery/metrics/composite/CompositeMetrics;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMetricsCollectorMap:Lo/TextWatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TextWatcher<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/battery/metrics/core/SystemMetrics;",
            ">;",
            "Lcom/facebook/battery/metrics/core/SystemMetricsCollector<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/facebook/battery/metrics/core/SystemMetricsCollector;-><init>()V

    .line 35
    new-instance v0, Lo/TextWatcher;

    invoke-direct {v0}, Lo/TextWatcher;-><init>()V

    iput-object v0, p0, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector;->mMetricsCollectorMap:Lo/TextWatcher;

    .line 62
    iget-object v0, p0, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector;->mMetricsCollectorMap:Lo/TextWatcher;

    iget-object p1, p1, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;->mMetricsCollectorMap:Lo/TextWatcher;

    invoke-virtual {v0, p1}, Lo/TextWatcher;->a(Lo/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public createMetrics()Lcom/facebook/battery/metrics/composite/CompositeMetrics;
    .locals 5

    .line 110
    new-instance v0, Lcom/facebook/battery/metrics/composite/CompositeMetrics;

    invoke-direct {v0}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;-><init>()V

    .line 111
    iget-object v1, p0, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector;->mMetricsCollectorMap:Lo/TextWatcher;

    invoke-virtual {v1}, Lo/TextWatcher;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 112
    iget-object v3, p0, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector;->mMetricsCollectorMap:Lo/TextWatcher;

    invoke-virtual {v3, v2}, Lo/TextWatcher;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 113
    iget-object v4, p0, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector;->mMetricsCollectorMap:Lo/TextWatcher;

    invoke-virtual {v4, v2}, Lo/TextWatcher;->d(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/battery/metrics/core/SystemMetricsCollector;

    invoke-virtual {v4}, Lcom/facebook/battery/metrics/core/SystemMetricsCollector;->createMetrics()Lcom/facebook/battery/metrics/core/SystemMetrics;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->putMetric(Ljava/lang/Class;Lcom/facebook/battery/metrics/core/SystemMetrics;)Lcom/facebook/battery/metrics/composite/CompositeMetrics;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic createMetrics()Lcom/facebook/battery/metrics/core/SystemMetrics;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector;->createMetrics()Lcom/facebook/battery/metrics/composite/CompositeMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getSnapshot(Lcom/facebook/battery/metrics/composite/CompositeMetrics;)Z
    .locals 8

    const-string v0, "Null value passed to getSnapshot!"

    .line 89
    invoke-static {p1, v0}, Lcom/facebook/battery/metrics/core/Utilities;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->getMetrics()Lo/TextWatcher;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lo/TextWatcher;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 94
    invoke-virtual {v0, v3}, Lo/TextWatcher;->c(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 95
    iget-object v6, p0, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector;->mMetricsCollectorMap:Lo/TextWatcher;

    invoke-virtual {v6, v5}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/battery/metrics/core/SystemMetricsCollector;

    if-eqz v6, :cond_0

    .line 98
    invoke-virtual {p1, v5}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->getMetric(Ljava/lang/Class;)Lcom/facebook/battery/metrics/core/SystemMetrics;

    move-result-object v7

    .line 99
    invoke-virtual {v6, v7}, Lcom/facebook/battery/metrics/core/SystemMetricsCollector;->getSnapshot(Lcom/facebook/battery/metrics/core/SystemMetrics;)Z

    move-result v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 101
    :goto_1
    invoke-virtual {p1, v5, v6}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->setIsValid(Ljava/lang/Class;Z)V

    or-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public bridge synthetic getSnapshot(Lcom/facebook/battery/metrics/core/SystemMetrics;)Z
    .locals 0

    .line 28
    check-cast p1, Lcom/facebook/battery/metrics/composite/CompositeMetrics;

    invoke-virtual {p0, p1}, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector;->getSnapshot(Lcom/facebook/battery/metrics/composite/CompositeMetrics;)Z

    move-result p1

    return p1
.end method
