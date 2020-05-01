.class public Lio/realm/internal/UncheckedRow;
.super Lio/realm/internal/NativeObject;
.source "UncheckedRow.java"

# interfaces
.implements Lio/realm/internal/Row;


# instance fields
.field final context:Lio/realm/internal/Context;

.field final parent:Lio/realm/internal/Table;


# direct methods
.method protected constructor <init>(Lio/realm/internal/Context;Lio/realm/internal/Table;J)V
    .locals 1

    invoke-direct {p0}, Lio/realm/internal/NativeObject;-><init>()V

    iput-object p1, p0, Lio/realm/internal/UncheckedRow;->context:Lio/realm/internal/Context;

    iput-object p2, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    iput-wide p3, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    invoke-virtual {p1}, Lio/realm/internal/Context;->executeDelayedDisposal()V

    return-void
.end method

.method public static getByRowIndex(Lio/realm/internal/Context;Lio/realm/internal/Table;J)Lio/realm/internal/UncheckedRow;
    .locals 4

    iget-wide v0, p1, Lio/realm/internal/Table;->nativePtr:J

    invoke-virtual {p1, v0, v1, p2, p3}, Lio/realm/internal/Table;->nativeGetRowPtr(JJ)J

    move-result-wide v0

    new-instance v2, Lio/realm/internal/UncheckedRow;

    invoke-direct {v2, p0, p1, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/Context;Lio/realm/internal/Table;J)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lio/realm/internal/Context;->addReference(ILio/realm/internal/NativeObject;)V

    return-object v2
.end method

.method public static getByRowPointer(Lio/realm/internal/Context;Lio/realm/internal/Table;J)Lio/realm/internal/UncheckedRow;
    .locals 2

    new-instance v0, Lio/realm/internal/UncheckedRow;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/Context;Lio/realm/internal/Table;J)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lio/realm/internal/Context;->addReference(ILio/realm/internal/NativeObject;)V

    return-object v0
.end method

.method static native nativeClose(J)V
.end method


# virtual methods
.method public getBinaryByteArray(J)[B
    .locals 3

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetByteArray(JJ)[B

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(J)Z
    .locals 3

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetBoolean(JJ)Z

    move-result v0

    return v0
.end method

.method public getColumnCount()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    invoke-virtual {p0, v0, v1}, Lio/realm/internal/UncheckedRow;->nativeGetColumnCount(J)J

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
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    invoke-virtual {p0, v0, v1, p1}, Lio/realm/internal/UncheckedRow;->nativeGetColumnIndex(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getColumnName(J)Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetColumnName(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnType(J)Lio/realm/RealmFieldType;
    .locals 3

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetColumnType(JJ)I

    move-result v0

    invoke-static {v0}, Lio/realm/RealmFieldType;->fromNativeValue(I)Lio/realm/RealmFieldType;

    move-result-object v0

    return-object v0
.end method

.method public getDate(J)Ljava/util/Date;
    .locals 5

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    invoke-virtual {p0, v2, v3, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetTimestamp(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getDouble(J)D
    .locals 3

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetDouble(JJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(J)F
    .locals 3

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetFloat(JJ)F

    move-result v0

    return v0
.end method

.method public getIndex()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    invoke-virtual {p0, v0, v1}, Lio/realm/internal/UncheckedRow;->nativeGetIndex(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLink(J)J
    .locals 3

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetLink(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLinkList(J)Lio/realm/internal/LinkView;
    .locals 9

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetLinkView(JJ)J

    move-result-wide v6

    new-instance v1, Lio/realm/internal/LinkView;

    iget-object v2, p0, Lio/realm/internal/UncheckedRow;->context:Lio/realm/internal/Context;

    iget-object v3, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lio/realm/internal/LinkView;-><init>(Lio/realm/internal/Context;Lio/realm/internal/Table;JJ)V

    return-object v1
.end method

.method public getLong(J)J
    .locals 3

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(J)Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetString(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTable()Lio/realm/internal/Table;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    return-object v0
.end method

.method public isAttached()Z
    .locals 4

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    invoke-virtual {p0, v0, v1}, Lio/realm/internal/UncheckedRow;->nativeIsAttached(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(J)Z
    .locals 3

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeIsNull(JJ)Z

    move-result v0

    return v0
.end method

.method public isNullLink(J)Z
    .locals 3

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeIsNullLink(JJ)Z

    move-result v0

    return v0
.end method

.method protected native nativeGetBoolean(JJ)Z
.end method

.method protected native nativeGetByteArray(JJ)[B
.end method

.method protected native nativeGetColumnCount(J)J
.end method

.method protected native nativeGetColumnIndex(JLjava/lang/String;)J
.end method

.method protected native nativeGetColumnName(JJ)Ljava/lang/String;
.end method

.method protected native nativeGetColumnType(JJ)I
.end method

.method protected native nativeGetDouble(JJ)D
.end method

.method protected native nativeGetFloat(JJ)F
.end method

.method protected native nativeGetIndex(J)J
.end method

.method protected native nativeGetLink(JJ)J
.end method

.method protected native nativeGetLinkView(JJ)J
.end method

.method protected native nativeGetLong(JJ)J
.end method

.method protected native nativeGetString(JJ)Ljava/lang/String;
.end method

.method protected native nativeGetTimestamp(JJ)J
.end method

.method protected native nativeIsAttached(J)Z
.end method

.method protected native nativeIsNull(JJ)Z
.end method

.method protected native nativeIsNullLink(JJ)Z
.end method

.method protected native nativeNullifyLink(JJ)V
.end method

.method protected native nativeSetBoolean(JJZ)V
.end method

.method protected native nativeSetByteArray(JJ[B)V
.end method

.method protected native nativeSetFloat(JJF)V
.end method

.method protected native nativeSetLink(JJJ)V
.end method

.method protected native nativeSetLong(JJJ)V
.end method

.method protected native nativeSetNull(JJ)V
.end method

.method protected native nativeSetString(JJLjava/lang/String;)V
.end method

.method public nullifyLink(J)V
    .locals 3

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->checkImmutable()V

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeNullifyLink(JJ)V

    return-void
.end method

.method public setBinaryByteArray(J[B)V
    .locals 7

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->checkImmutable()V

    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/UncheckedRow;->nativeSetByteArray(JJ[B)V

    return-void
.end method

.method public setBoolean(JZ)V
    .locals 7

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->checkImmutable()V

    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/UncheckedRow;->nativeSetBoolean(JJZ)V

    return-void
.end method

.method public setFloat(JF)V
    .locals 7

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->checkImmutable()V

    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/UncheckedRow;->nativeSetFloat(JJF)V

    return-void
.end method

.method public setLink(JJ)V
    .locals 9

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->checkImmutable()V

    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/UncheckedRow;->nativeSetLink(JJJ)V

    return-void
.end method

.method public setLong(JJ)V
    .locals 9

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->checkImmutable()V

    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->getIndex()J

    move-result-wide v4

    move-wide v2, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->checkIntValueIsLegal(JJJ)V

    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/UncheckedRow;->nativeSetLong(JJJ)V

    return-void
.end method

.method public setNull(J)V
    .locals 5

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->checkImmutable()V

    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->getIndex()J

    move-result-wide v2

    invoke-virtual {v0, p1, p2, v2, v3}, Lio/realm/internal/Table;->checkDuplicatedNullForPrimaryKeyValue(JJ)V

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeSetNull(JJ)V

    return-void
.end method

.method public setString(JLjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->checkImmutable()V

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->getIndex()J

    move-result-wide v2

    invoke-virtual {v0, p1, p2, v2, v3}, Lio/realm/internal/Table;->checkDuplicatedNullForPrimaryKeyValue(JJ)V

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeSetNull(JJ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->getIndex()J

    move-result-wide v4

    move-wide v2, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->checkStringValueIsLegal(JJLjava/lang/String;)V

    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->nativePointer:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/UncheckedRow;->nativeSetString(JJLjava/lang/String;)V

    goto :goto_0
.end method
