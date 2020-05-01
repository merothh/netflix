.class public Lio/realm/internal/LinkView;
.super Lio/realm/internal/NativeObject;
.source "LinkView.java"


# instance fields
.field final columnIndexInParent:J

.field private final context:Lio/realm/internal/Context;

.field final parent:Lio/realm/internal/Table;


# direct methods
.method public constructor <init>(Lio/realm/internal/Context;Lio/realm/internal/Table;JJ)V
    .locals 1

    invoke-direct {p0}, Lio/realm/internal/NativeObject;-><init>()V

    iput-object p1, p0, Lio/realm/internal/LinkView;->context:Lio/realm/internal/Context;

    iput-object p2, p0, Lio/realm/internal/LinkView;->parent:Lio/realm/internal/Table;

    iput-wide p3, p0, Lio/realm/internal/LinkView;->columnIndexInParent:J

    iput-wide p5, p0, Lio/realm/internal/LinkView;->nativePointer:J

    invoke-virtual {p1}, Lio/realm/internal/Context;->executeDelayedDisposal()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lio/realm/internal/Context;->addReference(ILio/realm/internal/NativeObject;)V

    return-void
.end method

.method private checkImmutable()V
    .locals 2

    iget-object v0, p0, Lio/realm/internal/LinkView;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Changing Realm data can only be done from inside a write transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static native nativeAdd(JJ)V
.end method

.method public static native nativeClear(J)V
.end method

.method public static native nativeClose(J)V
.end method

.method private native nativeFind(JJ)J
.end method

.method private native nativeGetTargetRowIndex(JJ)J
.end method

.method private native nativeGetTargetTable(J)J
.end method

.method private native nativeInsert(JJJ)V
.end method

.method private native nativeIsAttached(J)Z
.end method

.method private native nativeRemove(JJ)V
.end method

.method private native nativeSet(JJJ)V
.end method

.method private native nativeSize(J)J
.end method


# virtual methods
.method public add(J)V
    .locals 3

    invoke-direct {p0}, Lio/realm/internal/LinkView;->checkImmutable()V

    iget-wide v0, p0, Lio/realm/internal/LinkView;->nativePointer:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/LinkView;->nativeAdd(JJ)V

    return-void
.end method

.method public clear()V
    .locals 2

    invoke-direct {p0}, Lio/realm/internal/LinkView;->checkImmutable()V

    iget-wide v0, p0, Lio/realm/internal/LinkView;->nativePointer:J

    invoke-static {v0, v1}, Lio/realm/internal/LinkView;->nativeClear(J)V

    return-void
.end method

.method public contains(J)Z
    .locals 5

    iget-wide v0, p0, Lio/realm/internal/LinkView;->nativePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/LinkView;->nativeFind(JJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTargetRowIndex(J)J
    .locals 3

    iget-wide v0, p0, Lio/realm/internal/LinkView;->nativePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/LinkView;->nativeGetTargetRowIndex(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTargetTable()Lio/realm/internal/Table;
    .locals 4

    iget-object v0, p0, Lio/realm/internal/LinkView;->context:Lio/realm/internal/Context;

    invoke-virtual {v0}, Lio/realm/internal/Context;->executeDelayedDisposal()V

    iget-wide v0, p0, Lio/realm/internal/LinkView;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/LinkView;->nativeGetTargetTable(J)J

    move-result-wide v2

    :try_start_0
    new-instance v0, Lio/realm/internal/Table;

    iget-object v1, p0, Lio/realm/internal/LinkView;->parent:Lio/realm/internal/Table;

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/Table;J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v2, v3}, Lio/realm/internal/Table;->nativeClose(J)V

    throw v0
.end method

.method public insert(JJ)V
    .locals 9

    invoke-direct {p0}, Lio/realm/internal/LinkView;->checkImmutable()V

    iget-wide v2, p0, Lio/realm/internal/LinkView;->nativePointer:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lio/realm/internal/LinkView;->nativeInsert(JJJ)V

    return-void
.end method

.method public isAttached()Z
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/LinkView;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/LinkView;->nativeIsAttached(J)Z

    move-result v0

    return v0
.end method

.method public remove(J)V
    .locals 3

    invoke-direct {p0}, Lio/realm/internal/LinkView;->checkImmutable()V

    iget-wide v0, p0, Lio/realm/internal/LinkView;->nativePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/LinkView;->nativeRemove(JJ)V

    return-void
.end method

.method public set(JJ)V
    .locals 9

    invoke-direct {p0}, Lio/realm/internal/LinkView;->checkImmutable()V

    iget-wide v2, p0, Lio/realm/internal/LinkView;->nativePointer:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lio/realm/internal/LinkView;->nativeSet(JJJ)V

    return-void
.end method

.method public size()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/LinkView;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/LinkView;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method
