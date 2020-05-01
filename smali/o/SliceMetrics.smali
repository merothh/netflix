.class final Lo/SliceMetrics;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/FileBackupHelperBase;",
            "Lo/PendingTransactionActions<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/FileBackupHelperBase;",
            "Lo/PendingTransactionActions<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/SliceMetrics;->c:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/SliceMetrics;->d:Ljava/util/Map;

    return-void
.end method

.method private c(Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Lo/FileBackupHelperBase;",
            "Lo/PendingTransactionActions<",
            "*>;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 34
    iget-object p1, p0, Lo/SliceMetrics;->d:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/SliceMetrics;->c:Ljava/util/Map;

    :goto_0
    return-object p1
.end method


# virtual methods
.method b(Lo/FileBackupHelperBase;Z)Lo/PendingTransactionActions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FileBackupHelperBase;",
            "Z)",
            "Lo/PendingTransactionActions<",
            "*>;"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p2}, Lo/SliceMetrics;->c(Z)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/PendingTransactionActions;

    return-object p1
.end method

.method c(Lo/FileBackupHelperBase;Lo/PendingTransactionActions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FileBackupHelperBase;",
            "Lo/PendingTransactionActions<",
            "*>;)V"
        }
    .end annotation

    .line 23
    invoke-virtual {p2}, Lo/PendingTransactionActions;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Lo/SliceMetrics;->c(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method d(Lo/FileBackupHelperBase;Lo/PendingTransactionActions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FileBackupHelperBase;",
            "Lo/PendingTransactionActions<",
            "*>;)V"
        }
    .end annotation

    .line 27
    invoke-virtual {p2}, Lo/PendingTransactionActions;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Lo/SliceMetrics;->c(Z)Ljava/util/Map;

    move-result-object v0

    .line 28
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 29
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
