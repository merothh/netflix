.class Lio/realm/DefaultRealmModuleMediator;
.super Lio/realm/internal/RealmProxyMediator;
.source "DefaultRealmModuleMediator.java"


# annotations
.annotation runtime Lio/realm/annotations/RealmModule;
.end annotation


# static fields
.field private static final MODEL_CLASSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/DefaultRealmModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/realm/internal/RealmProxyMediator;-><init>()V

    return-void
.end method


# virtual methods
.method public copyOrUpdate(Lio/realm/Realm;Lio/realm/RealmModel;ZLjava/util/Map;)Lio/realm/RealmModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "TE;Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)TE;"
        }
    .end annotation

    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-static {p1, p2, p3, p4}, Lio/realm/RealmPlayableRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-static {p1, p2, p3, p4}, Lio/realm/RealmProfileRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    goto :goto_1

    :cond_2
    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    invoke-static {p1, p2, p3, p4}, Lio/realm/RealmSeasonRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    goto :goto_1

    :cond_3
    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-static {p1, p2, p3, p4}, Lio/realm/RealmVideoDetailsRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public createRealmObjectSchema(Ljava/lang/Class;Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;",
            "Lio/realm/RealmSchema;",
            ")",
            "Lio/realm/RealmObjectSchema;"
        }
    .end annotation

    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lio/realm/RealmPlayableRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lio/realm/RealmProfileRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lio/realm/RealmSeasonRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lio/realm/RealmVideoDetailsRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public createTable(Ljava/lang/Class;Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;",
            "Lio/realm/internal/SharedRealm;",
            ")",
            "Lio/realm/internal/Table;"
        }
    .end annotation

    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lio/realm/RealmPlayableRealmProxy;->initTable(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lio/realm/RealmProfileRealmProxy;->initTable(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lio/realm/RealmSeasonRealmProxy;->initTable(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lio/realm/RealmVideoDetailsRealmProxy;->initTable(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public getModelClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lio/realm/DefaultRealmModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

    return-object v0
.end method

.method public getTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/realm/RealmPlayableRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lio/realm/RealmProfileRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lio/realm/RealmSeasonRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lio/realm/RealmVideoDetailsRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Object;",
            "Lio/realm/internal/Row;",
            "Lio/realm/internal/ColumnInfo;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    sget-object v1, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v1}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    :try_start_0
    move-object v0, p2

    check-cast v0, Lio/realm/BaseRealm;

    move-object v2, v0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    const-class v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lio/realm/RealmPlayableRealmProxy;

    invoke-direct {v2}, Lio/realm/RealmPlayableRealmProxy;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    :goto_0
    return-object v2

    :cond_0
    :try_start_1
    const-class v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lio/realm/RealmProfileRealmProxy;

    invoke-direct {v2}, Lio/realm/RealmProfileRealmProxy;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_0

    :cond_1
    :try_start_2
    const-class v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lio/realm/RealmSeasonRealmProxy;

    invoke-direct {v2}, Lio/realm/RealmSeasonRealmProxy;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_0

    :cond_2
    :try_start_3
    const-class v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lio/realm/RealmVideoDetailsRealmProxy;

    invoke-direct {v2}, Lio/realm/RealmVideoDetailsRealmProxy;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmModel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v2

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    throw v2
.end method

.method public transformerApplied()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public validateTable(Ljava/lang/Class;Lio/realm/internal/SharedRealm;Z)Lio/realm/internal/ColumnInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;",
            "Lio/realm/internal/SharedRealm;",
            "Z)",
            "Lio/realm/internal/ColumnInfo;"
        }
    .end annotation

    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Lio/realm/RealmPlayableRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2, p3}, Lio/realm/RealmProfileRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2, p3}, Lio/realm/RealmSeasonRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2, p3}, Lio/realm/RealmVideoDetailsRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method
