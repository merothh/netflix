.class public Lio/realm/RealmProfileRealmProxy;
.super Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;
.source "RealmProfileRealmProxy.java"

# interfaces
.implements Lio/realm/RealmProfileRealmProxyInterface;
.implements Lio/realm/internal/RealmObjectProxy;


# static fields
.field private static final FIELD_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private columnInfo:Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

.field private proxyState:Lio/realm/ProxyState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "name"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "kids"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "iconUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/RealmProfileRealmProxy;->FIELD_NAMES:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;-><init>()V

    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmProfileRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;"
        }
    .end annotation

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    move-object v0, p1

    check-cast v0, Lio/realm/RealmProfileRealmProxyInterface;

    invoke-interface {v0}, Lio/realm/RealmProfileRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lio/realm/RealmProfileRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmProfileRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmProfileRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmProfileRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmProfileRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmProfileRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmProfileRealmProxyInterface;->realmGet$kids()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmProfileRealmProxyInterface;->realmSet$kids(Z)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmProfileRealmProxyInterface;

    check-cast p1, Lio/realm/RealmProfileRealmProxyInterface;

    invoke-interface {p1}, Lio/realm/RealmProfileRealmProxyInterface;->realmGet$iconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmProfileRealmProxyInterface;->realmSet$iconUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;"
        }
    .end annotation

    const/4 v4, 0x0

    instance-of v2, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    iget-wide v2, v2, Lio/realm/BaseRealm;->threadId:J

    iget-wide v6, p0, Lio/realm/Realm;->threadId:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    instance-of v2, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-object p1

    :cond_1
    sget-object v2, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v2}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/BaseRealm$RealmObjectContext;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_2

    check-cast v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    move-object p1, v3

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    if-eqz p2, :cond_6

    const-class v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-virtual {p0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v6

    move-object v3, p1

    check-cast v3, Lio/realm/RealmProfileRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/RealmProfileRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {v8, v6, v7}, Lio/realm/internal/Table;->findFirstNull(J)J

    move-result-wide v6

    :goto_1
    const-wide/16 v10, -0x1

    cmp-long v3, v6, v10

    if-eqz v3, :cond_4

    :try_start_0
    invoke-virtual {v8, v6, v7}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    iget-object v3, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    const-class v5, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-virtual {v3, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    new-instance v4, Lio/realm/RealmProfileRealmProxy;

    invoke-direct {v4}, Lio/realm/RealmProfileRealmProxy;-><init>()V

    move-object v0, v4

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    move-object v3, v0

    invoke-interface {p3, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    move v2, p2

    :goto_2
    if-eqz v2, :cond_5

    invoke-static {p0, v4, p1, p3}, Lio/realm/RealmProfileRealmProxy;->update(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;Ljava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {v8, v6, v7, v3}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v6

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    throw v3

    :cond_4
    move v2, v4

    move-object v4, v5

    goto :goto_2

    :cond_5
    invoke-static {p0, p1, p2, p3}, Lio/realm/RealmProfileRealmProxy;->copy(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    move-result-object p1

    goto :goto_0

    :cond_6
    move v2, p2

    move-object v4, v5

    goto :goto_2
.end method

.method public static createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string/jumbo v0, "RealmProfile"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "RealmProfile"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v8

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "id"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "name"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_1

    move v3, v6

    :goto_1
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_2

    move v4, v6

    :goto_2
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_3

    move v5, v6

    :goto_3
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "kids"

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_4

    move v3, v6

    :goto_4
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_5

    move v4, v6

    :goto_5
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "iconUrl"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_6

    move v3, v6

    :goto_6
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_7

    move v4, v6

    :goto_7
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_8

    move v5, v6

    :goto_8
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    move-object v0, v8

    :goto_9
    return-object v0

    :cond_0
    move v5, v7

    goto :goto_0

    :cond_1
    move v3, v7

    goto :goto_1

    :cond_2
    move v4, v7

    goto :goto_2

    :cond_3
    move v5, v7

    goto :goto_3

    :cond_4
    move v3, v7

    goto :goto_4

    :cond_5
    move v4, v7

    goto :goto_5

    :cond_6
    move v3, v7

    goto :goto_6

    :cond_7
    move v4, v7

    goto :goto_7

    :cond_8
    move v5, v7

    goto :goto_8

    :cond_9
    const-string/jumbo v0, "RealmProfile"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto :goto_9
.end method

.method public static getTableName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "class_RealmProfile"

    return-object v0
.end method

.method public static initTable(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v0, "class_RealmProfile"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "class_RealmProfile"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "kids"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "iconUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->addSearchIndex(J)V

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->setPrimaryKey(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "class_RealmProfile"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0
.end method

.method private injectObjectContext()V
    .locals 3

    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    iput-object v1, p0, Lio/realm/RealmProfileRealmProxy;->columnInfo:Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    new-instance v1, Lio/realm/ProxyState;

    const-class v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-direct {v1, v2, p0}, Lio/realm/ProxyState;-><init>(Ljava/lang/Class;Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    iget-object v1, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    iget-object v1, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    iget-object v1, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    iget-object v1, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method static update(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;Ljava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lio/realm/RealmProfileRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmProfileRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmProfileRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmProfileRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmProfileRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmProfileRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmProfileRealmProxyInterface;->realmGet$kids()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmProfileRealmProxyInterface;->realmSet$kids(Z)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmProfileRealmProxyInterface;

    check-cast p2, Lio/realm/RealmProfileRealmProxyInterface;

    invoke-interface {p2}, Lio/realm/RealmProfileRealmProxyInterface;->realmGet$iconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmProfileRealmProxyInterface;->realmSet$iconUrl(Ljava/lang/String;)V

    return-object p1
.end method

.method public static validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;
    .locals 8

    const-wide/16 v6, 0x4

    const-string/jumbo v0, "class_RealmProfile"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "class_RealmProfile"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getColumnCount()J

    move-result-wide v0

    cmp-long v3, v0, v6

    if-eqz v3, :cond_1

    cmp-long v3, v0, v6

    if-gez v3, :cond_0

    new-instance v2, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Field count is less than expected - expected 4 but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_0
    if-eqz p1, :cond_2

    const-string/jumbo v3, "Field count is more than expected - expected 4 but was %1$d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v4, v0, v6

    if-gez v4, :cond_3

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    :cond_2
    new-instance v2, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Field count is more than expected - expected 4 but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v0, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

    const-string/jumbo v1, "id"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'id\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string/jumbo v1, "id"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_5

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'id\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-wide v4, v0, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->idIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "@PrimaryKey field \'id\' does not support null values in the existing Realm file. Migrate using RealmObjectSchema.setNullable(), or mark the field as @Required."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v2}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v4

    const-string/jumbo v1, "id"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_7

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Primary key not defined for field \'id\' in existing Realm file. Add @PrimaryKey."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string/jumbo v1, "id"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->hasSearchIndex(J)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Index not defined for field \'id\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string/jumbo v1, "name"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'name\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string/jumbo v1, "name"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_a

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'name\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-wide v4, v0, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->nameIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'name\' is required. Either set @Required to field \'name\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string/jumbo v1, "kids"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'kids\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_c
    const-string/jumbo v1, "kids"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_d

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'kids\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-wide v4, v0, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->kidsIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'kids\' does support null values in the existing Realm file. Use corresponding boxed type for field \'kids\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string/jumbo v1, "iconUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'iconUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_f
    const-string/jumbo v1, "iconUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_10

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'iconUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-wide v4, v0, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->iconUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_12

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'iconUrl\' is required. Either set @Required to field \'iconUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "The \'RealmProfile\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_12
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lio/realm/RealmProfileRealmProxy;

    iget-object v2, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_4

    :cond_6
    iget-object v2, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_7

    :cond_9
    iget-object v2, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public realmGet$iconUrl()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmProfileRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmProfileRealmProxy;->columnInfo:Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->iconUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmProfileRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmProfileRealmProxy;->columnInfo:Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->idIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$kids()Z
    .locals 4

    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmProfileRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmProfileRealmProxy;->columnInfo:Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->kidsIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmProfileRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmProfileRealmProxy;->columnInfo:Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->nameIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1

    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmSet$iconUrl(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmProfileRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->columnInfo:Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->iconUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmProfileRealmProxy;->columnInfo:Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->iconUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmProfileRealmProxy;->columnInfo:Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->iconUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmProfileRealmProxy;->columnInfo:Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->iconUrlIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmProfileRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string/jumbo v1, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$kids(Z)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmProfileRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmProfileRealmProxy;->columnInfo:Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->kidsIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmProfileRealmProxy;->columnInfo:Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->kidsIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmProfileRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->columnInfo:Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->nameIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmProfileRealmProxy;->columnInfo:Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->nameIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmProfileRealmProxy;->columnInfo:Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->nameIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmProfileRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmProfileRealmProxy;->columnInfo:Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->nameIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Invalid object"

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "RealmProfile = ["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "{id:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/RealmProfileRealmProxy;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/realm/RealmProfileRealmProxy;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{name:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/RealmProfileRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lio/realm/RealmProfileRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{kids:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/RealmProfileRealmProxy;->realmGet$kids()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{iconUrl:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/RealmProfileRealmProxy;->realmGet$iconUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lio/realm/RealmProfileRealmProxy;->realmGet$iconUrl()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v0, "null"

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "null"

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "null"

    goto :goto_3
.end method
