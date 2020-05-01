.class public Lo/ProcessHealthStats;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Sample:",
        "Ljava/lang/Number;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSample;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Integer;

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TSample;>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSample;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/atomic/AtomicIntegerArray;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TSample;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lo/ProcessHealthStats;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Integer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSample;TSample;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 108
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-lt v0, v2, :cond_6

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v5, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v0, v5, :cond_0

    goto/16 :goto_3

    .line 118
    :cond_0
    iget-object v0, p0, Lo/ProcessHealthStats;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/ProcessHealthStats;->b:Ljava/util/List;

    .line 120
    iput-object v1, p0, Lo/ProcessHealthStats;->f:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 121
    iput-object p1, p0, Lo/ProcessHealthStats;->a:Ljava/lang/Number;

    .line 122
    iput-object p2, p0, Lo/ProcessHealthStats;->e:Ljava/lang/Number;

    .line 123
    iput-object p3, p0, Lo/ProcessHealthStats;->c:Ljava/lang/Integer;

    .line 126
    :cond_2
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 132
    iget-object p2, p0, Lo/ProcessHealthStats;->b:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object p2, p0, Lo/ProcessHealthStats;->b:Ljava/util/List;

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p2, p1

    const/4 p1, 0x1

    .line 135
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr p1, v2

    if-le v4, p1, :cond_4

    .line 137
    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    sub-double v6, v0, v4

    .line 139
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int/2addr v8, p1

    int-to-double v8, v8

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 143
    iget-object v6, p0, Lo/ProcessHealthStats;->d:Ljava/lang/Class;

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    .line 144
    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v6, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v5, v6, :cond_3

    move-object p2, v4

    goto :goto_1

    .line 148
    :cond_3
    iget-object v4, p0, Lo/ProcessHealthStats;->d:Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v5, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    .line 150
    :goto_1
    iget-object v4, p0, Lo/ProcessHealthStats;->b:Ljava/util/List;

    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v5, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 152
    :cond_4
    iget-object p1, p0, Lo/ProcessHealthStats;->b:Ljava/util/List;

    const p2, 0x7fffffff

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance p1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    iget-object p2, p0, Lo/ProcessHealthStats;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    iput-object p1, p0, Lo/ProcessHealthStats;->f:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 156
    iget-object p1, p0, Lo/ProcessHealthStats;->f:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    monitor-enter p1

    const/4 p2, 0x0

    .line 157
    :goto_2
    :try_start_0
    iget-object p3, p0, Lo/ProcessHealthStats;->b:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_5

    .line 158
    iget-object p3, p0, Lo/ProcessHealthStats;->f:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {p3, p2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 160
    :cond_5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 110
    :cond_6
    :goto_3
    iput-object v1, p0, Lo/ProcessHealthStats;->b:Ljava/util/List;

    .line 111
    iput-object v1, p0, Lo/ProcessHealthStats;->f:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 112
    iput-object v4, p0, Lo/ProcessHealthStats;->c:Ljava/lang/Integer;

    .line 113
    iget-object p1, p0, Lo/ProcessHealthStats;->d:Ljava/lang/Class;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    iput-object p1, p0, Lo/ProcessHealthStats;->a:Ljava/lang/Number;

    .line 114
    iget-object p1, p0, Lo/ProcessHealthStats;->d:Ljava/lang/Class;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    iput-object p1, p0, Lo/ProcessHealthStats;->e:Ljava/lang/Number;

    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lo/ProcessHealthStats;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lo/ProcessHealthStats;->f:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lo/ProcessHealthStats;->c(Z)V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lo/ProcessHealthStats;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 77
    :goto_1
    iget-object v1, p0, Lo/ProcessHealthStats;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 78
    iget-object v1, p0, Lo/ProcessHealthStats;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lo/ProcessHealthStats;->f:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 85
    iget-object v1, p0, Lo/ProcessHealthStats;->a:Ljava/lang/Number;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/ProcessHealthStats;->e:Ljava/lang/Number;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/ProcessHealthStats;->c:Ljava/lang/Integer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%d/%d/%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Number;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSample;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 31
    :goto_0
    invoke-virtual {p0, v2}, Lo/ProcessHealthStats;->c(Z)V

    if-ltz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 32
    :goto_1
    invoke-virtual {p0, v2}, Lo/ProcessHealthStats;->c(Z)V

    .line 33
    iget-object v2, p0, Lo/ProcessHealthStats;->b:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/ProcessHealthStats;->f:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Lo/ProcessHealthStats;->c(Z)V

    .line 38
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 39
    :goto_3
    iget-object v0, p0, Lo/ProcessHealthStats;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 40
    iget-object v0, p0, Lo/ProcessHealthStats;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt p1, v0, :cond_3

    .line 42
    iget-object p1, p0, Lo/ProcessHealthStats;->f:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {p1, v1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->addAndGet(II)I

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method

.method c(Z)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    iget-object v1, p0, Lo/ProcessHealthStats;->b:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lo/ProcessHealthStats;->f:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lo/ProcessHealthStats;->f:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x5b

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 61
    :goto_0
    iget-object v2, p0, Lo/ProcessHealthStats;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_1

    const-string v2, " "

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_1
    iget-object v2, p0, Lo/ProcessHealthStats;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/ProcessHealthStats;->f:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x5d

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    :goto_1
    const-string v1, "[]"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
