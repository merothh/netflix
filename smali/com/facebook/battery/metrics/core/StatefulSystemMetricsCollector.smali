.class public Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/facebook/battery/metrics/core/SystemMetrics<",
        "TR;>;S:",
        "Lcom/facebook/battery/metrics/core/SystemMetricsCollector<",
        "TR;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCollector:Lcom/facebook/battery/metrics/core/SystemMetricsCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private mCurr:Lcom/facebook/battery/metrics/core/SystemMetrics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final mDiff:Lcom/facebook/battery/metrics/core/SystemMetrics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private mIsValid:Z

.field private mPrev:Lcom/facebook/battery/metrics/core/SystemMetrics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/battery/metrics/core/SystemMetricsCollector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 45
    invoke-virtual {p1}, Lcom/facebook/battery/metrics/core/SystemMetricsCollector;->createMetrics()Lcom/facebook/battery/metrics/core/SystemMetrics;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/battery/metrics/core/SystemMetricsCollector;->createMetrics()Lcom/facebook/battery/metrics/core/SystemMetrics;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/battery/metrics/core/SystemMetricsCollector;->createMetrics()Lcom/facebook/battery/metrics/core/SystemMetrics;

    move-result-object v2

    .line 44
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;-><init>(Lcom/facebook/battery/metrics/core/SystemMetricsCollector;Lcom/facebook/battery/metrics/core/SystemMetrics;Lcom/facebook/battery/metrics/core/SystemMetrics;Lcom/facebook/battery/metrics/core/SystemMetrics;)V

    .line 46
    iget-boolean v0, p0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->mIsValid:Z

    iget-object v1, p0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->mPrev:Lcom/facebook/battery/metrics/core/SystemMetrics;

    invoke-virtual {p1, v1}, Lcom/facebook/battery/metrics/core/SystemMetricsCollector;->getSnapshot(Lcom/facebook/battery/metrics/core/SystemMetrics;)Z

    move-result p1

    and-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->mIsValid:Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/battery/metrics/core/SystemMetricsCollector;Lcom/facebook/battery/metrics/core/SystemMetrics;Lcom/facebook/battery/metrics/core/SystemMetrics;Lcom/facebook/battery/metrics/core/SystemMetrics;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TR;TR;TR;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->mIsValid:Z

    .line 57
    iput-object p1, p0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->mCollector:Lcom/facebook/battery/metrics/core/SystemMetricsCollector;

    .line 58
    iput-object p2, p0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->mCurr:Lcom/facebook/battery/metrics/core/SystemMetrics;

    .line 59
    iput-object p3, p0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->mPrev:Lcom/facebook/battery/metrics/core/SystemMetrics;

    .line 60
    iput-object p4, p0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->mDiff:Lcom/facebook/battery/metrics/core/SystemMetrics;

    return-void
.end method


# virtual methods
.method public getLatestDiff()Lcom/facebook/battery/metrics/core/SystemMetrics;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 84
    iget-boolean v0, p0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->mIsValid:Z

    iget-object v1, p0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->mCollector:Lcom/facebook/battery/metrics/core/SystemMetricsCollector;

    iget-object v2, p0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->mCurr:Lcom/facebook/battery/metrics/core/SystemMetrics;

    invoke-virtual {v1, v2}, Lcom/facebook/battery/metrics/core/SystemMetricsCollector;->getSnapshot(Lcom/facebook/battery/metrics/core/SystemMetrics;)Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->mIsValid:Z

    .line 85
    iget-boolean v0, p0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->mIsValid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->mCurr:Lcom/facebook/battery/metrics/core/SystemMetrics;

    iget-object v1, p0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->mPrev:Lcom/facebook/battery/metrics/core/SystemMetrics;

    iget-object v2, p0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->mDiff:Lcom/facebook/battery/metrics/core/SystemMetrics;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/battery/metrics/core/SystemMetrics;->diff(Lcom/facebook/battery/metrics/core/SystemMetrics;Lcom/facebook/battery/metrics/core/SystemMetrics;)Lcom/facebook/battery/metrics/core/SystemMetrics;

    .line 90
    iget-object v0, p0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->mDiff:Lcom/facebook/battery/metrics/core/SystemMetrics;

    return-object v0
.end method

.method public getLatestDiffAndReset()Lcom/facebook/battery/metrics/core/SystemMetrics;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->getLatestDiff()Lcom/facebook/battery/metrics/core/SystemMetrics;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->mPrev:Lcom/facebook/battery/metrics/core/SystemMetrics;

    .line 76
    iget-object v1, p0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->mCurr:Lcom/facebook/battery/metrics/core/SystemMetrics;

    iput-object v1, p0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->mPrev:Lcom/facebook/battery/metrics/core/SystemMetrics;

    .line 77
    iput-object v0, p0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->mCurr:Lcom/facebook/battery/metrics/core/SystemMetrics;

    .line 78
    iget-object v0, p0, Lcom/facebook/battery/metrics/core/StatefulSystemMetricsCollector;->mDiff:Lcom/facebook/battery/metrics/core/SystemMetrics;

    return-object v0
.end method
