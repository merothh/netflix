.class public final Lio/realm/RealmResults;
.super Ljava/util/AbstractList;
.source "RealmResults.java"

# interfaces
.implements Lio/realm/OrderedRealmCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/realm/RealmModel;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Lio/realm/OrderedRealmCollection",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private asyncQueryCompleted:Z

.field className:Ljava/lang/String;

.field classSpec:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private currentTableViewVersion:J

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/realm/RealmChangeListener",
            "<",
            "Lio/realm/RealmResults",
            "<TE;>;>;>;"
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

.field private final query:Lio/realm/internal/TableQuery;

.field final realm:Lio/realm/BaseRealm;

.field private table:Lio/realm/internal/TableOrView;

.field private viewUpdated:Z


# direct methods
.method private constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/TableOrView;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/TableOrView;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 78
    iput-object v2, p0, Lio/realm/RealmResults;->table:Lio/realm/internal/TableOrView;

    .line 83
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/RealmResults;->currentTableViewVersion:J

    .line 85
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/RealmResults;->listeners:Ljava/util/List;

    .line 87
    iput-boolean v3, p0, Lio/realm/RealmResults;->asyncQueryCompleted:Z

    .line 90
    iput-boolean v3, p0, Lio/realm/RealmResults;->viewUpdated:Z

    .line 126
    iput-object p1, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    .line 127
    iput-object p3, p0, Lio/realm/RealmResults;->classSpec:Ljava/lang/Class;

    .line 128
    iput-object p2, p0, Lio/realm/RealmResults;->table:Lio/realm/internal/TableOrView;

    .line 130
    iput-object v2, p0, Lio/realm/RealmResults;->pendingQuery:Ljava/util/concurrent/Future;

    .line 131
    iput-object v2, p0, Lio/realm/RealmResults;->query:Lio/realm/internal/TableQuery;

    .line 132
    invoke-interface {p2}, Lio/realm/internal/TableOrView;->syncIfNeeded()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmResults;->currentTableViewVersion:J

    .line 133
    return-void
.end method

.method private constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/TableOrView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0, p1, p3}, Lio/realm/RealmResults;-><init>(Lio/realm/BaseRealm;Ljava/lang/String;)V

    .line 145
    iput-object p2, p0, Lio/realm/RealmResults;->table:Lio/realm/internal/TableOrView;

    .line 146
    invoke-interface {p2}, Lio/realm/internal/TableOrView;->syncIfNeeded()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmResults;->currentTableViewVersion:J

    .line 147
    return-void
.end method

.method private constructor <init>(Lio/realm/BaseRealm;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 135
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 78
    iput-object v2, p0, Lio/realm/RealmResults;->table:Lio/realm/internal/TableOrView;

    .line 83
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/RealmResults;->currentTableViewVersion:J

    .line 85
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/RealmResults;->listeners:Ljava/util/List;

    .line 87
    iput-boolean v3, p0, Lio/realm/RealmResults;->asyncQueryCompleted:Z

    .line 90
    iput-boolean v3, p0, Lio/realm/RealmResults;->viewUpdated:Z

    .line 136
    iput-object p1, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    .line 137
    iput-object p2, p0, Lio/realm/RealmResults;->className:Ljava/lang/String;

    .line 139
    iput-object v2, p0, Lio/realm/RealmResults;->pendingQuery:Ljava/util/concurrent/Future;

    .line 140
    iput-object v2, p0, Lio/realm/RealmResults;->query:Lio/realm/internal/TableQuery;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lio/realm/RealmResults;)J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lio/realm/RealmResults;->currentTableViewVersion:J

    return-wide v0
.end method

.method static synthetic access$100(Lio/realm/RealmResults;)Lio/realm/internal/TableOrView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lio/realm/RealmResults;->table:Lio/realm/internal/TableOrView;

    return-object v0
.end method

.method static createFromDynamicTableOrView(Lio/realm/BaseRealm;Lio/realm/internal/TableOrView;Ljava/lang/String;)Lio/realm/RealmResults;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/TableOrView;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmResults",
            "<",
            "Lio/realm/DynamicRealmObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lio/realm/RealmResults;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/RealmResults;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/TableOrView;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lio/realm/BaseRealm;->handlerController:Lio/realm/HandlerController;

    invoke-virtual {v1, v0}, Lio/realm/HandlerController;->addToRealmResults(Lio/realm/RealmResults;)V

    .line 110
    return-object v0
.end method

.method static createFromTableOrView(Lio/realm/BaseRealm;Lio/realm/internal/TableOrView;Ljava/lang/Class;)Lio/realm/RealmResults;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/TableOrView;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lio/realm/RealmResults",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lio/realm/RealmResults;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/RealmResults;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/TableOrView;Ljava/lang/Class;)V

    .line 99
    iget-object v1, p0, Lio/realm/BaseRealm;->handlerController:Lio/realm/HandlerController;

    invoke-virtual {v1, v0}, Lio/realm/HandlerController;->addToRealmResults(Lio/realm/RealmResults;)V

    .line 100
    return-object v0
.end method


# virtual methods
.method public add(ILio/realm/RealmModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 688
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This method is not supported by RealmResults."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    check-cast p2, Lio/realm/RealmModel;

    invoke-virtual {p0, p1, p2}, Lio/realm/RealmResults;->add(ILio/realm/RealmModel;)V

    return-void
.end method

.method public add(Lio/realm/RealmModel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 677
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This method is not supported by RealmResults."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    check-cast p1, Lio/realm/RealmModel;

    invoke-virtual {p0, p1}, Lio/realm/RealmResults;->add(Lio/realm/RealmModel;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 699
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This method is not supported by RealmResults."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 710
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This method is not supported by RealmResults."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 666
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This method is not supported by RealmResults."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 192
    .line 193
    invoke-virtual {p0}, Lio/realm/RealmResults;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_0

    .line 194
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    .line 195
    iget-object v1, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    sget-object v2, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    if-eq v1, v2, :cond_0

    .line 196
    iget-object v1, p0, Lio/realm/RealmResults;->table:Lio/realm/internal/TableOrView;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/realm/internal/TableOrView;->sourceRowIndex(J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 199
    :cond_0
    return v0
.end method

.method public deleteAllFromRealm()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 264
    invoke-virtual {p0}, Lio/realm/RealmResults;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lio/realm/RealmResults;->getTableOrView()Lio/realm/internal/TableOrView;

    move-result-object v0

    .line 266
    invoke-interface {v0}, Lio/realm/internal/TableOrView;->clear()V

    .line 267
    const/4 v0, 0x1

    .line 269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Lio/realm/RealmModel;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 213
    invoke-virtual {p0}, Lio/realm/RealmResults;->getTableOrView()Lio/realm/internal/TableOrView;

    move-result-object v0

    .line 214
    instance-of v1, v0, Lio/realm/internal/TableView;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/RealmResults;->classSpec:Ljava/lang/Class;

    iget-object v3, p0, Lio/realm/RealmResults;->className:Ljava/lang/String;

    check-cast v0, Lio/realm/internal/TableView;

    int-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Lio/realm/internal/TableView;->getSourceRowIndex(J)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/RealmModel;

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    .line 217
    :cond_0
    iget-object v0, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    iget-object v1, p0, Lio/realm/RealmResults;->classSpec:Ljava/lang/Class;

    iget-object v2, p0, Lio/realm/RealmResults;->className:Ljava/lang/String;

    int-to-long v4, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/RealmModel;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lio/realm/RealmResults;->get(I)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method getTableOrView()Lio/realm/internal/TableOrView;
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lio/realm/RealmResults;->table:Lio/realm/internal/TableOrView;

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->schema:Lio/realm/RealmSchema;

    iget-object v1, p0, Lio/realm/RealmResults;->classSpec:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/RealmResults;->table:Lio/realm/internal/TableOrView;

    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 882
    iget-object v0, p0, Lio/realm/RealmResults;->pendingQuery:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/realm/RealmResults;->asyncQueryCompleted:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0}, Lio/realm/RealmResults;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lio/realm/RealmResults$RealmResultsIterator;

    invoke-direct {v0, p0}, Lio/realm/RealmResults$RealmResultsIterator;-><init>(Lio/realm/RealmResults;)V

    goto :goto_0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p0}, Lio/realm/RealmResults;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lio/realm/RealmResults$RealmResultsListIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/realm/RealmResults$RealmResultsListIterator;-><init>(Lio/realm/RealmResults;I)V

    goto :goto_0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p0}, Lio/realm/RealmResults;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lio/realm/RealmResults$RealmResultsListIterator;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmResults$RealmResultsListIterator;-><init>(Lio/realm/RealmResults;I)V

    goto :goto_0
.end method

.method notifyChangeListeners(Z)V
    .locals 2

    .prologue
    .line 1016
    iget-object v0, p0, Lio/realm/RealmResults;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1019
    iget-object v0, p0, Lio/realm/RealmResults;->pendingQuery:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/realm/RealmResults;->asyncQueryCompleted:Z

    if-nez v0, :cond_1

    .line 1026
    :cond_0
    return-void

    .line 1020
    :cond_1
    iget-boolean v0, p0, Lio/realm/RealmResults;->viewUpdated:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 1021
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/RealmResults;->viewUpdated:Z

    .line 1022
    iget-object v0, p0, Lio/realm/RealmResults;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmChangeListener;

    .line 1023
    invoke-interface {v0, p0}, Lio/realm/RealmChangeListener;->onChange(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public remove(I)Lio/realm/RealmModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 562
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This method is not supported by RealmResults."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lio/realm/RealmResults;->remove(I)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 573
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This method is not supported by RealmResults."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 584
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This method is not supported by RealmResults."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 608
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This method is not supported by RealmResults."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILio/realm/RealmModel;)Lio/realm/RealmModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 595
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This method is not supported by RealmResults."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    check-cast p2, Lio/realm/RealmModel;

    invoke-virtual {p0, p1, p2}, Lio/realm/RealmResults;->set(ILio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 381
    invoke-virtual {p0}, Lio/realm/RealmResults;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    const/4 v0, 0x0

    .line 385
    :goto_0
    return v0

    .line 384
    :cond_0
    invoke-virtual {p0}, Lio/realm/RealmResults;->getTableOrView()Lio/realm/internal/TableOrView;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/TableOrView;->size()J

    move-result-wide v0

    .line 385
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int v0, v0

    goto :goto_0
.end method

.method swapTableViewPointer(J)V
    .locals 3

    .prologue
    .line 849
    :try_start_0
    iget-object v0, p0, Lio/realm/RealmResults;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    iget-object v1, v1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0, p1, p2, v1}, Lio/realm/internal/TableQuery;->importHandoverTableView(JLio/realm/internal/SharedRealm;)Lio/realm/internal/TableView;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmResults;->table:Lio/realm/internal/TableOrView;

    .line 850
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/RealmResults;->asyncQueryCompleted:Z
    :try_end_0
    .catch Lio/realm/internal/async/BadVersionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    return-void

    .line 851
    :catch_0
    move-exception v0

    .line 852
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Caller and Worker Realm should have been at the same version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method syncIfNeeded()V
    .locals 4

    .prologue
    .line 637
    iget-object v0, p0, Lio/realm/RealmResults;->table:Lio/realm/internal/TableOrView;

    invoke-interface {v0}, Lio/realm/internal/TableOrView;->syncIfNeeded()J

    move-result-wide v2

    .line 638
    iget-wide v0, p0, Lio/realm/RealmResults;->currentTableViewVersion:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lio/realm/RealmResults;->viewUpdated:Z

    .line 639
    iput-wide v2, p0, Lio/realm/RealmResults;->currentTableViewVersion:J

    .line 640
    return-void

    .line 638
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
