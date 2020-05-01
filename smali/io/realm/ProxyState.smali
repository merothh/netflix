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

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/ProxyState;->underConstruction:Z

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/ProxyState;->listeners:Ljava/util/List;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/ProxyState;->isCompleted:Z

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/ProxyState;->currentTableVersion:J

    .line 50
    return-void
.end method

.method public constructor <init>(Lio/realm/RealmModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/ProxyState;->underConstruction:Z

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/ProxyState;->listeners:Ljava/util/List;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/ProxyState;->isCompleted:Z

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/ProxyState;->currentTableVersion:J

    .line 53
    iput-object p1, p0, Lio/realm/ProxyState;->model:Lio/realm/RealmModel;

    .line 54
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

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/ProxyState;->underConstruction:Z

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/ProxyState;->listeners:Ljava/util/List;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/ProxyState;->isCompleted:Z

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/ProxyState;->currentTableVersion:J

    .line 57
    iput-object p1, p0, Lio/realm/ProxyState;->clazzName:Ljava/lang/Class;

    .line 58
    iput-object p2, p0, Lio/realm/ProxyState;->model:Lio/realm/RealmModel;

    .line 59
    return-void
.end method

.method private getTable()Lio/realm/internal/Table;
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lio/realm/ProxyState;->className:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    iget-object v0, v0, Lio/realm/BaseRealm;->schema:Lio/realm/RealmSchema;

    iget-object v1, p0, Lio/realm/ProxyState;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 215
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

    .prologue
    .line 95
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

    .prologue
    .line 103
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

    .prologue
    .line 144
    iget-object v0, p0, Lio/realm/ProxyState;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public getPendingQuery$realm()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lio/realm/ProxyState;->pendingQuery:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public getRealm$realm()Lio/realm/BaseRealm;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    return-object v0
.end method

.method public getRow$realm()Lio/realm/internal/Row;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    return-object v0
.end method

.method public isCompleted$realm()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lio/realm/ProxyState;->isCompleted:Z

    return v0
.end method

.method public isUnderConstruction()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lio/realm/ProxyState;->underConstruction:Z

    return v0
.end method

.method notifyChangeListeners$realm()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 165
    iget-object v1, p0, Lio/realm/ProxyState;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    const/4 v1, 0x0

    .line 168
    iget-object v2, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    .line 169
    if-nez v2, :cond_0

    .line 183
    :goto_0
    if-eqz v0, :cond_1

    .line 184
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

    .line 185
    iget-object v2, p0, Lio/realm/ProxyState;->model:Lio/realm/RealmModel;

    invoke-interface {v0, v2}, Lio/realm/RealmChangeListener;->onChange(Ljava/lang/Object;)V

    goto :goto_1

    .line 176
    :cond_0
    invoke-virtual {v2}, Lio/realm/internal/Table;->getVersion()J

    move-result-wide v2

    .line 177
    iget-wide v4, p0, Lio/realm/ProxyState;->currentTableVersion:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2

    .line 178
    iput-wide v2, p0, Lio/realm/ProxyState;->currentTableVersion:J

    goto :goto_0

    .line 189
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onCompleted$realm(J)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 148
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 151
    iput-boolean v2, p0, Lio/realm/ProxyState;->isCompleted:Z

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-boolean v0, p0, Lio/realm/ProxyState;->isCompleted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    sget-object v1, Lio/realm/internal/Row;->EMPTY_ROW:Lio/realm/internal/Row;

    if-ne v0, v1, :cond_0

    .line 154
    :cond_2
    iput-boolean v2, p0, Lio/realm/ProxyState;->isCompleted:Z

    .line 155
    iget-object v0, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-static {p1, p2, v0}, Lio/realm/internal/TableQuery;->importHandoverRow(JLio/realm/internal/SharedRealm;)J

    move-result-wide v0

    .line 156
    invoke-direct {p0}, Lio/realm/ProxyState;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    .line 157
    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->getUncheckedRowByPointer(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    iput-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    goto :goto_0
.end method

.method public onCompleted$realm()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 125
    :try_start_0
    iget-object v0, p0, Lio/realm/ProxyState;->pendingQuery:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 126
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lio/realm/ProxyState;->onCompleted$realm(J)V

    .line 132
    invoke-virtual {p0}, Lio/realm/ProxyState;->notifyChangeListeners$realm()V

    :goto_0
    move v0, v1

    .line 140
    :goto_1
    return v0

    .line 134
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/ProxyState;->isCompleted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-static {v0}, Lio/realm/log/RealmLog;->debug(Ljava/lang/Throwable;)V

    .line 138
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setAcceptDefaultValue$realm(Z)V
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lio/realm/ProxyState;->acceptDefaultValue:Z

    .line 100
    return-void
.end method

.method public setConstructionFinished()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/ProxyState;->underConstruction:Z

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/ProxyState;->excludeFields:Ljava/util/List;

    .line 209
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

    .prologue
    .line 107
    iput-object p1, p0, Lio/realm/ProxyState;->excludeFields:Ljava/util/List;

    .line 108
    return-void
.end method

.method public setRealm$realm(Lio/realm/BaseRealm;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    .line 84
    return-void
.end method

.method public setRow$realm(Lio/realm/internal/Row;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    .line 92
    return-void
.end method

.method public setTableVersion$realm()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->getVersion()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/ProxyState;->currentTableVersion:J

    .line 195
    :cond_0
    return-void
.end method
