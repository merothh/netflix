.class public Lio/realm/internal/TableView;
.super Ljava/lang/Object;
.source "TableView.java"

# interfaces
.implements Lio/realm/internal/TableOrView;


# instance fields
.field private final context:Lio/realm/internal/Context;

.field protected nativePtr:J

.field protected final parent:Lio/realm/internal/Table;

.field private final query:Lio/realm/internal/TableQuery;

.field private version:J


# direct methods
.method protected constructor <init>(Lio/realm/internal/Context;Lio/realm/internal/Table;J)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lio/realm/internal/TableView;->context:Lio/realm/internal/Context;

    .line 48
    iput-object p2, p0, Lio/realm/internal/TableView;->parent:Lio/realm/internal/Table;

    .line 49
    iput-wide p3, p0, Lio/realm/internal/TableView;->nativePtr:J

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/internal/TableView;->query:Lio/realm/internal/TableQuery;

    .line 51
    return-void
.end method

.method protected constructor <init>(Lio/realm/internal/Context;Lio/realm/internal/Table;JLio/realm/internal/TableQuery;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lio/realm/internal/TableView;->context:Lio/realm/internal/Context;

    .line 64
    iput-object p2, p0, Lio/realm/internal/TableView;->parent:Lio/realm/internal/Table;

    .line 65
    iput-wide p3, p0, Lio/realm/internal/TableView;->nativePtr:J

    .line 66
    iput-object p5, p0, Lio/realm/internal/TableView;->query:Lio/realm/internal/TableQuery;

    .line 67
    return-void
.end method

.method private native nativeClear(J)V
.end method

.method static native nativeClose(J)V
.end method

.method private native nativeFindBySourceNdx(JJ)J
.end method

.method private native nativeGetColumnCount(J)J
.end method

.method private native nativeGetColumnName(JJ)Ljava/lang/String;
.end method

.method private native nativeGetSourceRowIndex(JJ)J
.end method

.method private native nativeSize(J)J
.end method

.method private native nativeSyncIfNeeded(J)J
.end method

.method private native nativeWhere(J)J
.end method

.method private throwImmutable()V
    .locals 2

    .prologue
    .line 721
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Realm data can only be changed inside a write transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lio/realm/internal/TableView;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/realm/internal/TableView;->throwImmutable()V

    .line 390
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/TableView;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableView;->nativeClear(J)V

    .line 391
    return-void
.end method

.method protected finalize()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 76
    iget-object v1, p0, Lio/realm/internal/TableView;->context:Lio/realm/internal/Context;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-wide v2, p0, Lio/realm/internal/TableView;->nativePtr:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lio/realm/internal/TableView;->context:Lio/realm/internal/Context;

    iget-wide v2, p0, Lio/realm/internal/TableView;->nativePtr:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Context;->asyncDisposeTableView(J)V

    .line 79
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/realm/internal/TableView;->nativePtr:J

    .line 81
    :cond_0
    monitor-exit v1

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getColumnCount()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lio/realm/internal/TableView;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableView;->nativeGetColumnCount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getColumnName(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    iget-wide v0, p0, Lio/realm/internal/TableView;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableView;->nativeGetColumnName(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceRowIndex(J)J
    .locals 3

    .prologue
    .line 111
    iget-wide v0, p0, Lio/realm/internal/TableView;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableView;->nativeGetSourceRowIndex(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 736
    iget-wide v0, p0, Lio/realm/internal/TableView;->version:J

    return-wide v0
.end method

.method public size()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lio/realm/internal/TableView;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableView;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public sourceRowIndex(J)J
    .locals 3

    .prologue
    .line 716
    iget-wide v0, p0, Lio/realm/internal/TableView;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableView;->nativeFindBySourceNdx(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public syncIfNeeded()J
    .locals 2

    .prologue
    .line 786
    iget-wide v0, p0, Lio/realm/internal/TableView;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableView;->nativeSyncIfNeeded(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/TableView;->version:J

    .line 787
    iget-wide v0, p0, Lio/realm/internal/TableView;->version:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 675
    invoke-virtual {p0}, Lio/realm/internal/TableView;->getColumnCount()J

    move-result-wide v2

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "The TableView contains "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 678
    const-string/jumbo v0, " columns: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    const/4 v0, 0x0

    :goto_0
    int-to-long v4, v0

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    .line 681
    if-eqz v0, :cond_0

    .line 682
    const-string/jumbo v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    :cond_0
    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Lio/realm/internal/TableView;->getColumnName(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 686
    :cond_1
    const-string/jumbo v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const-string/jumbo v0, " And "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {p0}, Lio/realm/internal/TableView;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 690
    const-string/jumbo v0, " rows."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public where()Lio/realm/internal/TableQuery;
    .locals 7

    .prologue
    .line 698
    iget-object v0, p0, Lio/realm/internal/TableView;->context:Lio/realm/internal/Context;

    invoke-virtual {v0}, Lio/realm/internal/Context;->executeDelayedDisposal()V

    .line 699
    iget-wide v0, p0, Lio/realm/internal/TableView;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableView;->nativeWhere(J)J

    move-result-wide v4

    .line 701
    :try_start_0
    new-instance v1, Lio/realm/internal/TableQuery;

    iget-object v2, p0, Lio/realm/internal/TableView;->context:Lio/realm/internal/Context;

    iget-object v3, p0, Lio/realm/internal/TableView;->parent:Lio/realm/internal/Table;

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/TableQuery;-><init>(Lio/realm/internal/Context;Lio/realm/internal/Table;JLio/realm/internal/TableOrView;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 702
    :catch_0
    move-exception v0

    .line 703
    invoke-static {v4, v5}, Lio/realm/internal/TableQuery;->nativeClose(J)V

    .line 704
    throw v0
.end method
