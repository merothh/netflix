.class public interface abstract Lcom/facebook/battery/reporter/core/SystemMetricsReporter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/battery/metrics/core/SystemMetrics<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract reportTo(Lcom/facebook/battery/metrics/core/SystemMetrics;Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;",
            ")V"
        }
    .end annotation
.end method
