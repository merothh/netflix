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

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 30
    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/DefaultRealmModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

    .line 35
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
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

    .prologue
    .line 154
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 156
    :goto_0
    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-static {p1, p2, p3, p4}, Lio/realm/RealmPlayableRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    .line 163
    :goto_1
    return-object v0

    .line 154
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_1
    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-static {p1, p2, p3, p4}, Lio/realm/RealmProfileRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    goto :goto_1

    .line 160
    :cond_2
    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    invoke-static {p1, p2, p3, p4}, Lio/realm/RealmSeasonRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    goto :goto_1

    .line 162
    :cond_3
    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-static {p1, p2, p3, p4}, Lio/realm/RealmVideoDetailsRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    goto :goto_1

    .line 165
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

    .prologue
    .line 56
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 58
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p2}, Lio/realm/RealmPlayableRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 60
    :cond_0
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-static {p2}, Lio/realm/RealmProfileRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_1
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    invoke-static {p2}, Lio/realm/RealmSeasonRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_2
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    invoke-static {p2}, Lio/realm/RealmVideoDetailsRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto :goto_0

    .line 67
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

    .prologue
    .line 39
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 41
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p2}, Lio/realm/RealmPlayableRealmProxy;->initTable(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 43
    :cond_0
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-static {p2}, Lio/realm/RealmProfileRealmProxy;->initTable(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_1
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    invoke-static {p2}, Lio/realm/RealmSeasonRealmProxy;->initTable(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_2
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    invoke-static {p2}, Lio/realm/RealmVideoDetailsRealmProxy;->initTable(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    .line 50
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

    .prologue
    .line 147
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

    .prologue
    .line 107
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 109
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lio/realm/RealmPlayableRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 111
    :cond_0
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-static {}, Lio/realm/RealmProfileRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_1
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-static {}, Lio/realm/RealmSeasonRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_2
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    invoke-static {}, Lio/realm/RealmVideoDetailsRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 118
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

    .prologue
    .line 124
    sget-object v1, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v1}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 126
    :try_start_0
    move-object v0, p2

    check-cast v0, Lio/realm/BaseRealm;

    move-object v2, v0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 127
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 129
    const-class v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    new-instance v2, Lio/realm/RealmPlayableRealmProxy;

    invoke-direct {v2}, Lio/realm/RealmPlayableRealmProxy;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 136
    :goto_0
    return-object v2

    .line 131
    :cond_0
    :try_start_1
    const-class v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    new-instance v2, Lio/realm/RealmProfileRealmProxy;

    invoke-direct {v2}, Lio/realm/RealmProfileRealmProxy;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_0

    .line 133
    :cond_1
    :try_start_2
    const-class v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    new-instance v2, Lio/realm/RealmSeasonRealmProxy;

    invoke-direct {v2}, Lio/realm/RealmSeasonRealmProxy;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_0

    .line 135
    :cond_2
    :try_start_3
    const-class v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    new-instance v2, Lio/realm/RealmVideoDetailsRealmProxy;

    invoke-direct {v2}, Lio/realm/RealmVideoDetailsRealmProxy;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmModel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_0

    .line 138
    :cond_3
    :try_start_4
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v2

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 141
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

    .prologue
    .line 73
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 75
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p2, p3}, Lio/realm/RealmPlayableRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 77
    :cond_0
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-static {p2, p3}, Lio/realm/RealmProfileRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_1
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    invoke-static {p2, p3}, Lio/realm/RealmSeasonRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_2
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    invoke-static {p2, p3}, Lio/realm/RealmVideoDetailsRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_3
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method
