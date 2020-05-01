.class public Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/battery/reporter/core/SystemMetricsReporter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/battery/reporter/core/SystemMetricsReporter<",
        "Lcom/facebook/battery/metrics/composite/CompositeMetrics;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMetricsReporterMap:Lo/TextWatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TextWatcher<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/battery/metrics/core/SystemMetrics;",
            ">;",
            "Lcom/facebook/battery/reporter/core/SystemMetricsReporter<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lo/TextWatcher;

    invoke-direct {v0}, Lo/TextWatcher;-><init>()V

    iput-object v0, p0, Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;->mMetricsReporterMap:Lo/TextWatcher;

    return-void
.end method


# virtual methods
.method public addMetricsReporter(Ljava/lang/Class;Lcom/facebook/battery/reporter/core/SystemMetricsReporter;)Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/facebook/battery/metrics/core/SystemMetrics<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/facebook/battery/reporter/core/SystemMetricsReporter<",
            "TT;>;)",
            "Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;->mMetricsReporterMap:Lo/TextWatcher;

    invoke-virtual {v0, p1, p2}, Lo/TextWatcher;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public reportTo(Lcom/facebook/battery/metrics/composite/CompositeMetrics;Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;)V
    .locals 4

    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-object v1, p0, Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;->mMetricsReporterMap:Lo/TextWatcher;

    invoke-virtual {v1}, Lo/TextWatcher;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 23
    iget-object v1, p0, Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;->mMetricsReporterMap:Lo/TextWatcher;

    invoke-virtual {v1, v0}, Lo/TextWatcher;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 24
    invoke-virtual {p1, v1}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->isValid(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {p1, v1}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->getMetric(Ljava/lang/Class;)Lcom/facebook/battery/metrics/core/SystemMetrics;

    move-result-object v2

    .line 26
    iget-object v3, p0, Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;->mMetricsReporterMap:Lo/TextWatcher;

    invoke-virtual {v3, v1}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/battery/reporter/core/SystemMetricsReporter;

    .line 27
    invoke-interface {v1, v2, p2}, Lcom/facebook/battery/reporter/core/SystemMetricsReporter;->reportTo(Lcom/facebook/battery/metrics/core/SystemMetrics;Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic reportTo(Lcom/facebook/battery/metrics/core/SystemMetrics;Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/facebook/battery/metrics/composite/CompositeMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/reporter/composite/CompositeMetricsReporter;->reportTo(Lcom/facebook/battery/metrics/composite/CompositeMetrics;Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;)V

    return-void
.end method
