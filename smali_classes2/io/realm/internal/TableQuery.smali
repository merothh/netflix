.class public Lio/realm/internal/TableQuery;
.super Ljava/lang/Object;
.source "TableQuery.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected DEBUG:Z

.field private final context:Lio/realm/internal/Context;

.field protected nativePtr:J

.field private final origin:Lio/realm/internal/TableOrView;

.field private queryValidated:Z

.field protected final table:Lio/realm/internal/Table;


# direct methods
.method public constructor <init>(Lio/realm/internal/Context;Lio/realm/internal/Table;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->DEBUG:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    iget-boolean v0, p0, Lio/realm/internal/TableQuery;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "++++++ new TableQuery, ptr= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lio/realm/internal/TableQuery;->context:Lio/realm/internal/Context;

    iput-object p2, p0, Lio/realm/internal/TableQuery;->table:Lio/realm/internal/Table;

    iput-wide p3, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/internal/TableQuery;->origin:Lio/realm/internal/TableOrView;

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/Context;Lio/realm/internal/Table;JLio/realm/internal/TableOrView;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->DEBUG:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    iget-boolean v0, p0, Lio/realm/internal/TableQuery;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "++++++ new TableQuery, ptr= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lio/realm/internal/TableQuery;->context:Lio/realm/internal/Context;

    iput-object p2, p0, Lio/realm/internal/TableQuery;->table:Lio/realm/internal/Table;

    iput-wide p3, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    iput-object p5, p0, Lio/realm/internal/TableQuery;->origin:Lio/realm/internal/TableOrView;

    return-void
.end method

.method public static batchUpdateQueries(Lio/realm/internal/SharedRealm;[J[[J[[J[[Z)[J
    .locals 6

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getNativePtr()J

    move-result-wide v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeBatchUpdateQueries(J[J[[J[[J[[Z)[J

    move-result-object v0

    return-object v0
.end method

.method public static findWithHandover(Lio/realm/internal/SharedRealm;J)J
    .locals 7

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getNativePtr()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeFindWithHandover(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNativeSortOrderValues([Lio/realm/Sort;)[Z
    .locals 3

    array-length v0, p0

    new-array v1, v0, [Z

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lio/realm/Sort;->getValue()Z

    move-result v2

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static importHandoverRow(JLio/realm/internal/SharedRealm;)J
    .locals 2

    invoke-virtual {p2}, Lio/realm/internal/SharedRealm;->getNativePtr()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lio/realm/internal/TableQuery;->nativeImportHandoverRowIntoSharedGroup(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static native nativeBatchUpdateQueries(J[J[[J[[J[[Z)[J
.end method

.method protected static native nativeClose(J)V
.end method

.method public static native nativeCloseQueryHandover(J)V
.end method

.method private native nativeCount(JJJJ)J
.end method

.method private native nativeEqual(J[JJ)V
.end method

.method private native nativeEqual(J[JLjava/lang/String;Z)V
.end method

.method private native nativeFind(JJ)J
.end method

.method private native nativeFindAll(JJJJ)J
.end method

.method private static native nativeFindWithHandover(JJJ)J
.end method

.method private native nativeHandoverQuery(JJ)J
.end method

.method private static native nativeImportHandoverRowIntoSharedGroup(JJ)J
.end method

.method private native nativeImportHandoverTableViewIntoSharedGroup(JJ)J
.end method

.method private native nativeIsNotNull(J[J)V
.end method

.method private native nativeIsNull(J[J)V
.end method

.method private native nativeNotEqual(J[JJ)V
.end method

.method private native nativeValidateQuery(J)Ljava/lang/String;
.end method

.method private validateQuery()V
    .locals 2

    iget-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeValidateQuery(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v1, p0, Lio/realm/internal/TableQuery;->context:Lio/realm/internal/Context;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-static {v2, v3}, Lio/realm/internal/TableQuery;->nativeClose(J)V

    iget-boolean v0, p0, Lio/realm/internal/TableQuery;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "++++ Query CLOSE, ptr= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public count()J
    .locals 10

    const-wide/16 v6, -0x1

    invoke-direct {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    iget-wide v2, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-wide v8, v6

    invoke-direct/range {v1 .. v9}, Lio/realm/internal/TableQuery;->nativeCount(JJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public equalTo([JJ)Lio/realm/internal/TableQuery;
    .locals 6

    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeEqual(J[JJ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public equalTo([JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;
    .locals 7

    iget-wide v2, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-virtual {p3}, Lio/realm/Case;->getValue()Z

    move-result v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/TableQuery;->nativeEqual(J[JLjava/lang/String;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method protected finalize()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v1, p0, Lio/realm/internal/TableQuery;->context:Lio/realm/internal/Context;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/internal/TableQuery;->context:Lio/realm/internal/Context;

    iget-wide v2, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Context;->asyncDisposeQuery(J)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public find()J
    .locals 4

    invoke-direct {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/realm/internal/TableQuery;->nativeFind(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public findAll()Lio/realm/internal/TableView;
    .locals 10

    const-wide/16 v6, -0x1

    invoke-direct {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    iget-object v0, p0, Lio/realm/internal/TableQuery;->context:Lio/realm/internal/Context;

    invoke-virtual {v0}, Lio/realm/internal/Context;->executeDelayedDisposal()V

    iget-wide v2, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-wide v8, v6

    invoke-direct/range {v1 .. v9}, Lio/realm/internal/TableQuery;->nativeFindAll(JJJJ)J

    move-result-wide v4

    :try_start_0
    new-instance v1, Lio/realm/internal/TableView;

    iget-object v2, p0, Lio/realm/internal/TableQuery;->context:Lio/realm/internal/Context;

    iget-object v3, p0, Lio/realm/internal/TableQuery;->table:Lio/realm/internal/Table;

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/TableView;-><init>(Lio/realm/internal/Context;Lio/realm/internal/Table;JLio/realm/internal/TableQuery;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v4, v5}, Lio/realm/internal/TableView;->nativeClose(J)V

    throw v0
.end method

.method public handoverQuery(Lio/realm/internal/SharedRealm;)J
    .locals 4

    invoke-virtual {p1}, Lio/realm/internal/SharedRealm;->getNativePtr()J

    move-result-wide v0

    iget-wide v2, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lio/realm/internal/TableQuery;->nativeHandoverQuery(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public importHandoverTableView(JLio/realm/internal/SharedRealm;)Lio/realm/internal/TableView;
    .locals 7

    invoke-virtual {p3}, Lio/realm/internal/SharedRealm;->getNativePtr()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lio/realm/internal/TableQuery;->nativeImportHandoverTableViewIntoSharedGroup(JJ)J

    move-result-wide v2

    :try_start_0
    new-instance v0, Lio/realm/internal/TableView;

    iget-object v1, p0, Lio/realm/internal/TableQuery;->context:Lio/realm/internal/Context;

    iget-object v4, p0, Lio/realm/internal/TableQuery;->table:Lio/realm/internal/Table;

    invoke-direct {v0, v1, v4, v2, v3}, Lio/realm/internal/TableView;-><init>(Lio/realm/internal/Context;Lio/realm/internal/Table;J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-static {v2, v3}, Lio/realm/internal/TableView;->nativeClose(J)V

    :cond_0
    throw v0
.end method

.method public isNotNull([J)Lio/realm/internal/TableQuery;
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lio/realm/internal/TableQuery;->nativeIsNotNull(J[J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public isNull([J)Lio/realm/internal/TableQuery;
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lio/realm/internal/TableQuery;->nativeIsNull(J[J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method

.method public notEqualTo([JJ)Lio/realm/internal/TableQuery;
    .locals 6

    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeNotEqual(J[JJ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    return-object p0
.end method
