.class public Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field final mMetricsCollectorMap:Lo/TextWatcher;
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
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lo/TextWatcher;

    invoke-direct {v0}, Lo/TextWatcher;-><init>()V

    iput-object v0, p0, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;->mMetricsCollectorMap:Lo/TextWatcher;

    return-void
.end method


# virtual methods
.method public addMetricsCollector(Ljava/lang/Class;Lcom/facebook/battery/metrics/core/SystemMetricsCollector;)Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/facebook/battery/metrics/core/SystemMetrics<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/facebook/battery/metrics/core/SystemMetricsCollector<",
            "TT;>;)",
            "Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;->mMetricsCollectorMap:Lo/TextWatcher;

    invoke-virtual {v0, p1, p2}, Lo/TextWatcher;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector;
    .locals 1

    .line 57
    new-instance v0, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector;

    invoke-direct {v0, p0}, Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector;-><init>(Lcom/facebook/battery/metrics/composite/CompositeMetricsCollector$Builder;)V

    return-object v0
.end method
