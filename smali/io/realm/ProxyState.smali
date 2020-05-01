.class public final Lio/realm/ProxyState;
.super Ljava/lang/Object;
.source "ProxyState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/realm/RealmModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private acceptDefaultValue:Z

.field private className:Ljava/lang/String;

.field private clazzName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;"
        }
    .end annotation
.end field

.field protected currentTableVersion:J

.field private excludeFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isCompleted:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/realm/RealmChangeListener",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private model:Lio/realm/RealmModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private pendingQuery:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private realm:Lio/realm/BaseRealm;

.field private row:Lio/realm/internal/Row;

.field private underConstruction:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/ProxyState;->underConstruction:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/ProxyState;->listeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/ProxyState;->isCompleted:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/ProxyState;->currentTableVersion:J

    return-void
.end method

.method public constructor <init>(Lio/realm/RealmModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/ProxyState;->underConstruction:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/ProxyState;->listeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/ProxyState;->isCompleted:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/ProxyState;->currentTableVersion:J

    iput-object p1, p0, Lio/realm/ProxyState;->model:Lio/realm/RealmModel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lio/realm/RealmModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/ProxyState;->underConstruction:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/ProxyState;->listeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/ProxyState;->isCompleted:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/ProxyState;->currentTableVersion:J

    iput-object p1, p0, Lio/realm/ProxyState;->clazzName:Ljava/lang/Class;

    iput-object p2, p0, Lio/realm/ProxyState;->model:Lio/realm/RealmModel;

    return-void
.end method

.method private getTable()Lio/realm/internal/Table;
    .locals 2

    iget-object v0, p0, Lio/realm/ProxyState;->className:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    iget-object v0, v0, Lio/realm/BaseRealm;->schema:Lio/realm/RealmSchema;

    iget-object v1, p0, Lio/realm/ProxyState;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    iget-object v0, v0, Lio/realm/BaseRealm;->schema:Lio/realm/RealmSchema;

    iget-object v1, p0, Lio/realm/ProxyState;->clazzName:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getAcceptDefaultValue$realm()Z
    .locals 1

    iget-boolean v0, p0, Lio/realm/ProxyState;->acceptDefaultValue:Z

    return v0
.end method

.method public getExcludeFields$realm()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/ProxyState;->excludeFields:Ljava/util/List;

    return-object v0
.end method

.method public getListeners$realm()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/realm/RealmChangeListener",
            "<TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/ProxyState;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public getPendingQuery$realm()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/realm/ProxyState;->pendingQuery:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public getRealm$realm()Lio/realm/BaseRealm;
    .locals 1

    iget-object v0, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    return-object v0
.end method

.method public getRow$realm()Lio/realm/internal/Row;
    .locals 1

    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    return-object v0
.end method

.method public isCompleted$realm()Z
    .locals 1

    iget-boolean v0, p0, Lio/realm/ProxyState;->isCompleted:Z

    return v0
.end method

.method public isUnderConstruction()Z
    .locals 1

    iget-boolean v0, p0, Lio/realm/ProxyState;->underConstruction:Z

    return v0
.end method

.method notifyChangeListeners$realm()V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lio/realm/ProxyState;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iget-object v2, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/realm/ProxyState;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmChangeListener;

    iget-object v2, p0, Lio/realm/ProxyState;->model:Lio/realm/RealmModel;

    invoke-interface {v0, v2}, Lio/realm/RealmChangeListener;->onChange(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lio/realm/internal/Table;->getVersion()J

    move-result-wide v2

    iget-wide v4, p0, Lio/realm/ProxyState;->currentTableVersion:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2

    iput-wide v2, p0, Lio/realm/ProxyState;->currentTableVersion:J

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onCompleted$realm(J)V
    .locals 3

    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lio/realm/ProxyState;->isCompleted:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lio/realm/ProxyState;->isCompleted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    sget-object v1, Lio/realm/internal/Row;->EMPTY_ROW:Lio/realm/internal/Row;

    if-ne v0, v1, :cond_0

    :cond_2
    iput-boolean v2, p0, Lio/realm/ProxyState;->isCompleted:Z

    iget-object v0, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-static {p1, p2, v0}, Lio/realm/internal/TableQuery;->importHandoverRow(JLio/realm/internal/SharedRealm;)J

    move-result-wide v0

    invoke-direct {p0}, Lio/realm/ProxyState;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->getUncheckedRowByPointer(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    iput-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    goto :goto_0
.end method

.method public onCompleted$realm()Z
    .locals 6

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lio/realm/ProxyState;->pendingQuery:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lio/realm/ProxyState;->onCompleted$realm(J)V

    invoke-virtual {p0}, Lio/realm/ProxyState;->notifyChangeListeners$realm()V

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/ProxyState;->isCompleted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/realm/log/RealmLog;->debug(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setAcceptDefaultValue$realm(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/realm/ProxyState;->acceptDefaultValue:Z

    return-void
.end method

.method public setConstructionFinished()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/ProxyState;->underConstruction:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/ProxyState;->excludeFields:Ljava/util/List;

    return-void
.end method

.method public setExcludeFields$realm(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/realm/ProxyState;->excludeFields:Ljava/util/List;

    return-void
.end method

.method public setRealm$realm(Lio/realm/BaseRealm;)V
    .locals 0

    iput-object p1, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    return-void
.end method

.method public setRow$realm(Lio/realm/internal/Row;)V
    .locals 0

    iput-object p1, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    return-void
.end method

.method public setTableVersion$realm()V
    .locals 2

    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->getVersion()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/ProxyState;->currentTableVersion:J

    :cond_0
    return-void
.end method
