.class public Lcom/facebook/battery/metrics/composite/CompositeMetrics;
.super Lcom/facebook/battery/metrics/core/SystemMetrics;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/battery/metrics/core/SystemMetrics<",
        "Lcom/facebook/battery/metrics/composite/CompositeMetrics;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMetricsMap:Lo/TextWatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TextWatcher<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/battery/metrics/core/SystemMetrics;",
            ">;",
            "Lcom/facebook/battery/metrics/core/SystemMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsValid:Lo/TextWatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TextWatcher<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/battery/metrics/core/SystemMetrics;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/facebook/battery/metrics/core/SystemMetrics;-><init>()V

    .line 21
    new-instance v0, Lo/TextWatcher;

    invoke-direct {v0}, Lo/TextWatcher;-><init>()V

    iput-object v0, p0, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->mMetricsMap:Lo/TextWatcher;

    .line 23
    new-instance v0, Lo/TextWatcher;

    invoke-direct {v0}, Lo/TextWatcher;-><init>()V

    iput-object v0, p0, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->mMetricsValid:Lo/TextWatcher;

    return-void
.end method


# virtual methods
.method public diff(Lcom/facebook/battery/metrics/composite/CompositeMetrics;Lcom/facebook/battery/metrics/composite/CompositeMetrics;)Lcom/facebook/battery/metrics/composite/CompositeMetrics;
    .locals 8

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    .line 33
    invoke-virtual {p2, p0}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->set(Lcom/facebook/battery/metrics/composite/CompositeMetrics;)Lcom/facebook/battery/metrics/composite/CompositeMetrics;

    goto :goto_2

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->mMetricsMap:Lo/TextWatcher;

    invoke-virtual {v0}, Lo/TextWatcher;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 36
    iget-object v3, p0, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->mMetricsMap:Lo/TextWatcher;

    invoke-virtual {v3, v2}, Lo/TextWatcher;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 37
    invoke-virtual {p0, v3}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->isValid(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v3}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->isValid(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    .line 40
    invoke-virtual {p2, v3}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->getMetric(Ljava/lang/Class;)Lcom/facebook/battery/metrics/core/SystemMetrics;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 42
    invoke-virtual {p0, v3}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->getMetric(Ljava/lang/Class;)Lcom/facebook/battery/metrics/core/SystemMetrics;

    move-result-object v6

    invoke-virtual {p1, v3}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->getMetric(Ljava/lang/Class;)Lcom/facebook/battery/metrics/core/SystemMetrics;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/facebook/battery/metrics/core/SystemMetrics;->diff(Lcom/facebook/battery/metrics/core/SystemMetrics;Lcom/facebook/battery/metrics/core/SystemMetrics;)Lcom/facebook/battery/metrics/core/SystemMetrics;

    .line 45
    :cond_2
    invoke-virtual {p2, v3, v4}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->setIsValid(Ljava/lang/Class;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object p2

    .line 29
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CompositeMetrics doesn\'t support nullable results"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic diff(Lcom/facebook/battery/metrics/core/SystemMetrics;Lcom/facebook/battery/metrics/core/SystemMetrics;)Lcom/facebook/battery/metrics/core/SystemMetrics;
    .locals 0

    .line 19
    check-cast p1, Lcom/facebook/battery/metrics/composite/CompositeMetrics;

    check-cast p2, Lcom/facebook/battery/metrics/composite/CompositeMetrics;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->diff(Lcom/facebook/battery/metrics/composite/CompositeMetrics;Lcom/facebook/battery/metrics/composite/CompositeMetrics;)Lcom/facebook/battery/metrics/composite/CompositeMetrics;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 137
    :cond_1
    check-cast p1, Lcom/facebook/battery/metrics/composite/CompositeMetrics;

    .line 139
    iget-object v2, p0, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->mMetricsValid:Lo/TextWatcher;

    iget-object v3, p1, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->mMetricsValid:Lo/TextWatcher;

    invoke-static {v2, v3}, Lcom/facebook/battery/metrics/core/Utilities;->simpleArrayMapEquals(Lo/TextWatcher;Lo/TextWatcher;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->mMetricsMap:Lo/TextWatcher;

    iget-object p1, p1, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->mMetricsMap:Lo/TextWatcher;

    .line 140
    invoke-static {v2, p1}, Lcom/facebook/battery/metrics/core/Utilities;->simpleArrayMapEquals(Lo/TextWatcher;Lo/TextWatcher;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getMetric(Ljava/lang/Class;)Lcom/facebook/battery/metrics/core/SystemMetrics;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/facebook/battery/metrics/core/SystemMetrics<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->mMetricsMap:Lo/TextWatcher;

    invoke-virtual {v0, p1}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/battery/metrics/core/SystemMetrics;

    return-object p1
.end method

.method public getMetrics()Lo/TextWatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/TextWatcher<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/battery/metrics/core/SystemMetrics;",
            ">;",
            "Lcom/facebook/battery/metrics/core/SystemMetrics;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->mMetricsMap:Lo/TextWatcher;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->mMetricsMap:Lo/TextWatcher;

    invoke-virtual {v0}, Lo/TextWatcher;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 146
    iget-object v1, p0, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->mMetricsValid:Lo/TextWatcher;

    invoke-virtual {v1}, Lo/TextWatcher;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid(Ljava/lang/Class;)Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->mMetricsValid:Lo/TextWatcher;

    invoke-virtual {v0, p1}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public putMetric(Ljava/lang/Class;Lcom/facebook/battery/metrics/core/SystemMetrics;)Lcom/facebook/battery/metrics/composite/CompositeMetrics;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/facebook/battery/metrics/core/SystemMetrics<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)",
            "Lcom/facebook/battery/metrics/composite/CompositeMetrics;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->mMetricsMap:Lo/TextWatcher;

    invoke-virtual {v0, p1, p2}, Lo/TextWatcher;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p2, p0, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->mMetricsValid:Lo/TextWatcher;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1, v0}, Lo/TextWatcher;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public set(Lcom/facebook/battery/metrics/composite/CompositeMetrics;)Lcom/facebook/battery/metrics/composite/CompositeMetrics;
    .locals 6

    .line 78
    iget-object v0, p0, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->mMetricsMap:Lo/TextWatcher;

    invoke-virtual {v0}, Lo/TextWatcher;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 79
    iget-object v3, p0, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->mMetricsMap:Lo/TextWatcher;

    invoke-virtual {v3, v2}, Lo/TextWatcher;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 80
    invoke-virtual {p1, v3}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->getMetric(Ljava/lang/Class;)Lcom/facebook/battery/metrics/core/SystemMetrics;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 82
    invoke-virtual {p0, v3}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->getMetric(Ljava/lang/Class;)Lcom/facebook/battery/metrics/core/SystemMetrics;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/facebook/battery/metrics/core/SystemMetrics;->set(Lcom/facebook/battery/metrics/core/SystemMetrics;)Lcom/facebook/battery/metrics/core/SystemMetrics;

    .line 83
    invoke-virtual {p1, v3}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->isValid(Ljava/lang/Class;)Z

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->setIsValid(Ljava/lang/Class;Z)V

    goto :goto_1

    .line 85
    :cond_0
    invoke-virtual {p0, v3, v1}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->setIsValid(Ljava/lang/Class;Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public bridge synthetic set(Lcom/facebook/battery/metrics/core/SystemMetrics;)Lcom/facebook/battery/metrics/core/SystemMetrics;
    .locals 0

    .line 19
    check-cast p1, Lcom/facebook/battery/metrics/composite/CompositeMetrics;

    invoke-virtual {p0, p1}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->set(Lcom/facebook/battery/metrics/composite/CompositeMetrics;)Lcom/facebook/battery/metrics/composite/CompositeMetrics;

    move-result-object p1

    return-object p1
.end method

.method public setIsValid(Ljava/lang/Class;Z)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->mMetricsValid:Lo/TextWatcher;

    if-eqz p2, :cond_0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lo/TextWatcher;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Composite Metrics{\n"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, p0, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->mMetricsMap:Lo/TextWatcher;

    invoke-virtual {v1}, Lo/TextWatcher;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 119
    iget-object v3, p0, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->mMetricsMap:Lo/TextWatcher;

    invoke-virtual {v3, v2}, Lo/TextWatcher;->d(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->mMetricsMap:Lo/TextWatcher;

    .line 120
    invoke-virtual {v3, v2}, Lo/TextWatcher;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {p0, v3}, Lcom/facebook/battery/metrics/composite/CompositeMetrics;->isValid(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, " [valid]"

    goto :goto_1

    :cond_0
    const-string v3, " [invalid]"

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "}"

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
