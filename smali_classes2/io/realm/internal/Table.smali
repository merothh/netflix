.class public Lio/realm/internal/Table;
.super Ljava/lang/Object;
.source "Table.java"

# interfaces
.implements Lio/realm/internal/TableOrView;


# static fields
.field public static final TABLE_PREFIX:Ljava/lang/String;


# instance fields
.field private cachedPrimaryKeyColumnIndex:J

.field private final context:Lio/realm/internal/Context;

.field nativePtr:J

.field private final sharedRealm:Lio/realm/internal/SharedRealm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/realm/internal/Util;->getTablePrefix()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/realm/internal/Table;->TABLE_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/internal/Table;->cachedPrimaryKeyColumnIndex:J

    new-instance v0, Lio/realm/internal/Context;

    invoke-direct {v0}, Lio/realm/internal/Context;-><init>()V

    iput-object v0, p0, Lio/realm/internal/Table;->context:Lio/realm/internal/Context;

    invoke-virtual {p0}, Lio/realm/internal/Table;->createNative()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string/jumbo v1, "Out of native memory."

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/internal/Table;->sharedRealm:Lio/realm/internal/SharedRealm;

    return-void
.end method

.method constructor <init>(Lio/realm/internal/SharedRealm;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/internal/Table;->cachedPrimaryKeyColumnIndex:J

    iget-object v0, p1, Lio/realm/internal/SharedRealm;->context:Lio/realm/internal/Context;

    iput-object v0, p0, Lio/realm/internal/Table;->context:Lio/realm/internal/Context;

    iput-object p1, p0, Lio/realm/internal/Table;->sharedRealm:Lio/realm/internal/SharedRealm;

    iput-wide p2, p0, Lio/realm/internal/Table;->nativePtr:J

    return-void
.end method

.method constructor <init>(Lio/realm/internal/Table;J)V
    .locals 2

    iget-object v0, p1, Lio/realm/internal/Table;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-direct {p0, v0, p2, p3}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/SharedRealm;J)V

    return-void
.end method

.method private checkHasPrimaryKey()V
    .locals 3

    invoke-virtual {p0}, Lio/realm/internal/Table;->hasPrimaryKey()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has no primary key defined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private getPrimaryKeyTable()Lio/realm/internal/Table;
    .locals 6

    iget-object v0, p0, Lio/realm/internal/Table;->sharedRealm:Lio/realm/internal/SharedRealm;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lio/realm/internal/Table;->sharedRealm:Lio/realm/internal/SharedRealm;

    const-string/jumbo v1, "pk"

    invoke-virtual {v0, v1}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->getColumnCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "pk_table"

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->addSearchIndex(J)V

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "pk_property"

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;)J

    goto :goto_0
.end method

.method public static isModelTable(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lio/realm/internal/Table;->TABLE_PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isPrimaryKey(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPrimaryKeyColumn(J)Z
    .locals 3

    invoke-virtual {p0}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static migratePrimaryKeyTableIfNeeded(Lio/realm/internal/SharedRealm;)Z
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->isInTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lio/realm/internal/Table;->throwImmutable()V

    :cond_1
    const-string/jumbo v0, "pk"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const-string/jumbo v0, "pk"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getGroupNative()J

    move-result-wide v2

    iget-wide v0, v0, Lio/realm/internal/Table;->nativePtr:J

    invoke-static {v2, v3, v0, v1}, Lio/realm/internal/Table;->nativeMigratePrimaryKeyTableIfNeeded(JJ)Z

    move-result v0

    goto :goto_0
.end method

.method private native nativeAddColumn(JILjava/lang/String;Z)J
.end method

.method private native nativeAddColumnLink(JILjava/lang/String;J)J
.end method

.method public static native nativeAddEmptyRow(JJ)J
.end method

.method private native nativeAddSearchIndex(JJ)V
.end method

.method private native nativeClear(J)V
.end method

.method static native nativeClose(J)V
.end method

.method public static native nativeFindFirstInt(JJJ)J
.end method

.method public static native nativeFindFirstNull(JJ)J
.end method

.method public static native nativeFindFirstString(JJLjava/lang/String;)J
.end method

.method private native nativeGetColumnCount(J)J
.end method

.method private native nativeGetColumnIndex(JLjava/lang/String;)J
.end method

.method private native nativeGetColumnName(JJ)Ljava/lang/String;
.end method

.method private native nativeGetColumnType(JJ)I
.end method

.method private native nativeGetLinkTarget(JJ)J
.end method

.method private native nativeGetName(J)Ljava/lang/String;
.end method

.method private native nativeHasSameSchema(JJ)Z
.end method

.method private native nativeHasSearchIndex(JJ)Z
.end method

.method private native nativeIsColumnNullable(JJ)Z
.end method

.method private static native nativeMigratePrimaryKeyTableIfNeeded(JJ)Z
.end method

.method private native nativeMoveLastOver(JJ)V
.end method

.method private static native nativePrimaryKeyTableNeedsMigration(J)Z
.end method

.method public static native nativeSetBoolean(JJJZZ)V
.end method

.method public static native nativeSetFloat(JJJFZ)V
.end method

.method public static native nativeSetLink(JJJJZ)V
.end method

.method public static native nativeSetLong(JJJJZ)V
.end method

.method public static native nativeSetLongUnique(JJJJ)V
.end method

.method public static native nativeSetNull(JJJZ)V
.end method

.method public static native nativeSetNullUnique(JJJ)V
.end method

.method private native nativeSetPrimaryKey(JJLjava/lang/String;)J
.end method

.method public static native nativeSetString(JJJLjava/lang/String;Z)V
.end method

.method public static native nativeSetStringUnique(JJJLjava/lang/String;)V
.end method

.method private native nativeSize(J)J
.end method

.method private native nativeVersion(J)J
.end method

.method private native nativeWhere(J)J
.end method

.method public static primaryKeyTableNeedsMigration(Lio/realm/internal/SharedRealm;)Z
    .locals 2

    const-string/jumbo v0, "pk"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "pk"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    iget-wide v0, v0, Lio/realm/internal/Table;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Table;->nativePrimaryKeyTableNeedsMigration(J)Z

    move-result v0

    goto :goto_0
.end method

.method public static tableNameToClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/realm/internal/Table;->TABLE_PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Lio/realm/internal/Table;->TABLE_PREFIX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lio/realm/exceptions/RealmPrimaryKeyConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Value already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmPrimaryKeyConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwImmutable()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Changing Realm data can only be done from inside a transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyColumnName(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3f

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Column names are currently limited to max 63 characters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;)J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J
    .locals 7

    invoke-direct {p0, p2}, Lio/realm/internal/Table;->verifyColumnName(Ljava/lang/String;)V

    iget-wide v2, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result v4

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/Table;->nativeAddColumn(JILjava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public addColumnLink(Lio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/Table;)J
    .locals 8

    invoke-direct {p0, p2}, Lio/realm/internal/Table;->verifyColumnName(Ljava/lang/String;)V

    iget-wide v2, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result v4

    iget-wide v6, p3, Lio/realm/internal/Table;->nativePtr:J

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lio/realm/internal/Table;->nativeAddColumnLink(JILjava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public addEmptyRow()J
    .locals 4

    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public addEmptyRowWithPrimaryKey(Ljava/lang/Object;)J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/realm/internal/Table;->addEmptyRowWithPrimaryKey(Ljava/lang/Object;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public addEmptyRowWithPrimaryKey(Ljava/lang/Object;Z)J
    .locals 12

    const-wide/16 v10, 0x1

    const-wide/16 v8, -0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    invoke-direct {p0}, Lio/realm/internal/Table;->checkHasPrimaryKey()V

    :cond_0
    invoke-virtual {p0}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v0

    if-nez p1, :cond_3

    sget-object v1, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    invoke-virtual {v0}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lio/realm/exceptions/RealmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot check for duplicate rows for unsupported primary key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, v2, v3}, Lio/realm/internal/Table;->findFirstNull(J)J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-eqz v1, :cond_1

    const-string/jumbo v1, "null"

    invoke-static {v1}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    :cond_1
    iget-wide v4, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-static {v4, v5, v10, v11}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v4

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetStringUnique(JJJLjava/lang/String;)V

    :goto_0
    return-wide v4

    :cond_2
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNullUnique(JJJ)V

    goto :goto_0

    :cond_3
    sget-object v1, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    invoke-virtual {v0}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_1

    new-instance v1, Lio/realm/exceptions/RealmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot check for duplicate rows for unsupported primary key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Primary key value is not a String: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-eqz p2, :cond_5

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v0}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_5

    invoke-static {p1}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    :cond_5
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-static {v0, v1, v10, v11}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v4

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetStringUnique(JJJLjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    if-eqz p2, :cond_6

    invoke-virtual {p0, v2, v3, v6, v7}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    :cond_6
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-static {v0, v1, v10, v11}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v4

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLongUnique(JJJJ)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Primary key value is not a long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addSearchIndex(J)V
    .locals 3

    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeAddSearchIndex(JJ)V

    return-void
.end method

.method checkDuplicatedNullForPrimaryKeyValue(JJ)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lio/realm/internal/Table;->isPrimaryKeyColumn(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v0

    sget-object v1, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    invoke-virtual {v0}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lio/realm/internal/Table;->findFirstNull(J)J

    move-result-wide v0

    cmp-long v2, v0, p3

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string/jumbo v0, "null"

    invoke-static {v0}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method checkImmutable()V
    .locals 1

    invoke-virtual {p0}, Lio/realm/internal/Table;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/realm/internal/Table;->throwImmutable()V

    :cond_0
    return-void
.end method

.method checkIntValueIsLegal(JJJ)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lio/realm/internal/Table;->isPrimaryKeyColumn(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p5, p6}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide v0

    cmp-long v2, v0, p3

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method checkStringValueIsLegal(JJLjava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lio/realm/internal/Table;->isPrimaryKey(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p5}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, p3

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {p5}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeClear(J)V

    return-void
.end method

.method protected native createNative()J
.end method

.method protected finalize()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v1, p0, Lio/realm/internal/Table;->context:Lio/realm/internal/Context;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lio/realm/internal/Table;->nativePtr:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v2, p0, Lio/realm/internal/Table;->context:Lio/realm/internal/Context;

    iget-wide v4, p0, Lio/realm/internal/Table;->nativePtr:J

    iget-object v0, p0, Lio/realm/internal/Table;->sharedRealm:Lio/realm/internal/SharedRealm;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v4, v5, v0}, Lio/realm/internal/Context;->asyncDisposeTable(JZ)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/realm/internal/Table;->nativePtr:J

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public findFirstLong(JJ)J
    .locals 7

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public findFirstNull(J)J
    .locals 3

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public findFirstString(JLjava/lang/String;)J
    .locals 3

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCheckedRow(J)Lio/realm/internal/CheckedRow;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/Table;->context:Lio/realm/internal/Context;

    invoke-static {v0, p0, p1, p2}, Lio/realm/internal/CheckedRow;->get(Lio/realm/internal/Context;Lio/realm/internal/Table;J)Lio/realm/internal/CheckedRow;

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeGetColumnCount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getColumnIndex(Ljava/lang/String;)J
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Column name can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lio/realm/internal/Table;->nativeGetColumnIndex(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getColumnName(J)Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeGetColumnName(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnType(J)Lio/realm/RealmFieldType;
    .locals 3

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeGetColumnType(JJ)I

    move-result v0

    invoke-static {v0}, Lio/realm/RealmFieldType;->fromNativeValue(I)Lio/realm/RealmFieldType;

    move-result-object v0

    return-object v0
.end method

.method public getLinkTarget(J)Lio/realm/internal/Table;
    .locals 5

    iget-object v0, p0, Lio/realm/internal/Table;->context:Lio/realm/internal/Context;

    invoke-virtual {v0}, Lio/realm/internal/Context;->executeDelayedDisposal()V

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeGetLinkTarget(JJ)J

    move-result-wide v2

    :try_start_0
    new-instance v0, Lio/realm/internal/Table;

    iget-object v1, p0, Lio/realm/internal/Table;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/SharedRealm;J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v2, v3}, Lio/realm/internal/Table;->nativeClose(J)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeGetName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryKey()J
    .locals 8

    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x2

    iget-wide v2, p0, Lio/realm/internal/Table;->cachedPrimaryKeyColumnIndex:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-wide v2, p0, Lio/realm/internal/Table;->cachedPrimaryKeyColumnIndex:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_2

    :cond_0
    iget-wide v0, p0, Lio/realm/internal/Table;->cachedPrimaryKeyColumnIndex:J

    :cond_1
    :goto_0
    return-wide v0

    :cond_2
    invoke-direct {p0}, Lio/realm/internal/Table;->getPrimaryKeyTable()Lio/realm/internal/Table;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/realm/internal/Table;->tableNameToClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/UncheckedRow;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/Table;->cachedPrimaryKeyColumnIndex:J

    :goto_1
    iget-wide v0, p0, Lio/realm/internal/Table;->cachedPrimaryKeyColumnIndex:J

    goto :goto_0

    :cond_3
    iput-wide v0, p0, Lio/realm/internal/Table;->cachedPrimaryKeyColumnIndex:J

    goto :goto_1
.end method

.method public getUncheckedRow(J)Lio/realm/internal/UncheckedRow;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/Table;->context:Lio/realm/internal/Context;

    invoke-static {v0, p0, p1, p2}, Lio/realm/internal/UncheckedRow;->getByRowIndex(Lio/realm/internal/Context;Lio/realm/internal/Table;J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    return-object v0
.end method

.method public getUncheckedRowByPointer(J)Lio/realm/internal/UncheckedRow;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/Table;->context:Lio/realm/internal/Context;

    invoke-static {v0, p0, p1, p2}, Lio/realm/internal/UncheckedRow;->getByRowPointer(Lio/realm/internal/Context;Lio/realm/internal/Table;J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeVersion(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasPrimaryKey()Z
    .locals 4

    invoke-virtual {p0}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSameSchema(Lio/realm/internal/Table;)Z
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    iget-wide v2, p1, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lio/realm/internal/Table;->nativeHasSameSchema(JJ)Z

    move-result v0

    return v0
.end method

.method public hasSearchIndex(J)Z
    .locals 3

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeHasSearchIndex(JJ)Z

    move-result v0

    return v0
.end method

.method public isColumnNullable(J)Z
    .locals 3

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeIsColumnNullable(JJ)Z

    move-result v0

    return v0
.end method

.method isImmutable()Z
    .locals 1

    iget-object v0, p0, Lio/realm/internal/Table;->sharedRealm:Lio/realm/internal/SharedRealm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/internal/Table;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->isInTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveLastOver(J)V
    .locals 3

    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeMoveLastOver(JJ)V

    return-void
.end method

.method native nativeGetRowPtr(JJ)J
.end method

.method public setBoolean(JJZZ)V
    .locals 9

    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    return-void
.end method

.method public setFloat(JJFZ)V
    .locals 9

    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    return-void
.end method

.method public setLink(JJJZ)V
    .locals 9

    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    return-void
.end method

.method public setLong(JJJZ)V
    .locals 9

    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    invoke-virtual/range {p0 .. p6}, Lio/realm/internal/Table;->checkIntValueIsLegal(JJJ)V

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    return-void
.end method

.method public setNull(JJZ)V
    .locals 7

    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/realm/internal/Table;->checkDuplicatedNullForPrimaryKeyValue(JJ)V

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    return-void
.end method

.method public setPrimaryKey(Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lio/realm/internal/Table;->getPrimaryKeyTable()Lio/realm/internal/Table;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string/jumbo v1, "Primary keys are only supported if Table is part of a Group"

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v2, v0, Lio/realm/internal/Table;->nativePtr:J

    iget-wide v4, p0, Lio/realm/internal/Table;->nativePtr:J

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/Table;->nativeSetPrimaryKey(JJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/Table;->cachedPrimaryKeyColumnIndex:J

    return-void
.end method

.method public setString(JJLjava/lang/String;Z)V
    .locals 9

    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    if-nez p5, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/realm/internal/Table;->checkDuplicatedNullForPrimaryKeyValue(JJ)V

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move v6, p6

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p5}, Lio/realm/internal/Table;->checkStringValueIsLegal(JJLjava/lang/String;)V

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_0
.end method

.method public size()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public sourceRowIndex(J)J
    .locals 1

    return-wide p1
.end method

.method public syncIfNeeded()J
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not supported for tables"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lio/realm/internal/Table;->getColumnCount()J

    move-result-wide v2

    invoke-virtual {p0}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "The Table "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lio/realm/internal/Table;->hasPrimaryKey()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "has \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\' field as a PrimaryKey, and "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v0, "contains "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " columns: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    int-to-long v4, v0

    cmp-long v4, v4, v2

    if-gez v4, :cond_3

    if-eqz v0, :cond_2

    const-string/jumbo v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " And "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/internal/Table;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " rows."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public where()Lio/realm/internal/TableQuery;
    .locals 4

    iget-object v0, p0, Lio/realm/internal/Table;->context:Lio/realm/internal/Context;

    invoke-virtual {v0}, Lio/realm/internal/Context;->executeDelayedDisposal()V

    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeWhere(J)J

    move-result-wide v2

    :try_start_0
    new-instance v0, Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/internal/Table;->context:Lio/realm/internal/Context;

    invoke-direct {v0, v1, p0, v2, v3}, Lio/realm/internal/TableQuery;-><init>(Lio/realm/internal/Context;Lio/realm/internal/Table;J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v2, v3}, Lio/realm/internal/TableQuery;->nativeClose(J)V

    throw v0
.end method
