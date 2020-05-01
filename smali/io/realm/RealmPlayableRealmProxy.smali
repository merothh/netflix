.class public Lio/realm/RealmPlayableRealmProxy;
.super Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;
.source "RealmPlayableRealmProxy.java"

# interfaces
.implements Lio/realm/RealmPlayableRealmProxyInterface;
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
.field private columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

.field private proxyState:Lio/realm/ProxyState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "playableId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "parentId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "title"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "seasonLabel"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "parentTitle"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "advisoriesString"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "isEpisode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "isNSRE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "isAutoPlay"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "isExemptFromLimit"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "isNextPlayableEpisode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "isAgeProtected"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "isPinProtected"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "isAdvisoryDisabled"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "isAvailableToStream"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "isSupplementalVideo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "duration"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "seasonNumber"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "episodeNumber"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "logicalStart"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "endtime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "maxAutoplay"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "expTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "watchedTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "bookmark"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/RealmPlayableRealmProxy;->FIELD_NAMES:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;-><init>()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;"
        }
    .end annotation

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v0}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$playableId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$parentId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$parentId(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$seasonLabel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$seasonLabel(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$parentTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$parentTitle(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$advisoriesString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$advisoriesString(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isEpisode()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isEpisode(Z)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isNSRE()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isNSRE(Z)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isAutoPlay()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isAutoPlay(Z)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isExemptFromLimit()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isExemptFromLimit(Z)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isNextPlayableEpisode()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isNextPlayableEpisode(Z)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isAgeProtected()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isAgeProtected(Z)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isPinProtected()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isPinProtected(Z)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isAdvisoryDisabled()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isAdvisoryDisabled(Z)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isAvailableToStream()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isAvailableToStream(Z)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isSupplementalVideo()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isSupplementalVideo(Z)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$duration()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$duration(I)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$seasonNumber()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$seasonNumber(I)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$episodeNumber()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$episodeNumber(I)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$logicalStart()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$logicalStart(I)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$endtime()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$endtime(I)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$maxAutoplay()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$maxAutoplay(I)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$expTime()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$expTime(J)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$watchedTime()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$watchedTime(J)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    check-cast p1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {p1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$bookmark()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$bookmark(I)V

    goto/16 :goto_0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;"
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

    check-cast v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-object p1, v3

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    if-eqz p2, :cond_6

    const-class v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-virtual {p0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v6

    move-object v3, p1

    check-cast v3, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$playableId()Ljava/lang/String;

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

    const-class v5, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-virtual {v3, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    new-instance v4, Lio/realm/RealmPlayableRealmProxy;

    invoke-direct {v4}, Lio/realm/RealmPlayableRealmProxy;-><init>()V

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

    invoke-static {p0, v4, p1, p3}, Lio/realm/RealmPlayableRealmProxy;->update(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;Ljava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

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
    invoke-static {p0, p1, p2, p3}, Lio/realm/RealmPlayableRealmProxy;->copy(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

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

    const-string/jumbo v0, "RealmPlayable"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    const-string/jumbo v0, "RealmPlayable"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v8

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "playableId"

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

    const-string/jumbo v1, "parentId"

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

    const-string/jumbo v1, "title"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_4

    move v3, v6

    :goto_4
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_5

    move v4, v6

    :goto_5
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_6

    move v5, v6

    :goto_6
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "seasonLabel"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_7

    move v3, v6

    :goto_7
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_8

    move v4, v6

    :goto_8
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_9

    move v5, v6

    :goto_9
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "parentTitle"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_a

    move v3, v6

    :goto_a
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_b

    move v4, v6

    :goto_b
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_c

    move v5, v6

    :goto_c
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "advisoriesString"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_d

    move v3, v6

    :goto_d
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_e

    move v4, v6

    :goto_e
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_f

    move v5, v6

    :goto_f
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "isEpisode"

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_10

    move v3, v6

    :goto_10
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_11

    move v4, v6

    :goto_11
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "isNSRE"

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_12

    move v3, v6

    :goto_12
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_13

    move v4, v6

    :goto_13
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "isAutoPlay"

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_14

    move v3, v6

    :goto_14
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_15

    move v4, v6

    :goto_15
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "isExemptFromLimit"

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_16

    move v3, v6

    :goto_16
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_17

    move v4, v6

    :goto_17
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "isNextPlayableEpisode"

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_18

    move v3, v6

    :goto_18
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_19

    move v4, v6

    :goto_19
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "isAgeProtected"

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_1a

    move v3, v6

    :goto_1a
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_1b

    move v4, v6

    :goto_1b
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "isPinProtected"

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_1c

    move v3, v6

    :goto_1c
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_1d

    move v4, v6

    :goto_1d
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "isAdvisoryDisabled"

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_1e

    move v3, v6

    :goto_1e
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_1f

    move v4, v6

    :goto_1f
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "isAvailableToStream"

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_20

    move v3, v6

    :goto_20
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_21

    move v4, v6

    :goto_21
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "isSupplementalVideo"

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_22

    move v3, v6

    :goto_22
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_23

    move v4, v6

    :goto_23
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "duration"

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_24

    move v3, v6

    :goto_24
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_25

    move v4, v6

    :goto_25
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "seasonNumber"

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_26

    move v3, v6

    :goto_26
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_27

    move v4, v6

    :goto_27
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "episodeNumber"

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_28

    move v3, v6

    :goto_28
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_29

    move v4, v6

    :goto_29
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "logicalStart"

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_2a

    move v3, v6

    :goto_2a
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_2b

    move v4, v6

    :goto_2b
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "endtime"

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_2c

    move v3, v6

    :goto_2c
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_2d

    move v4, v6

    :goto_2d
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "maxAutoplay"

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_2e

    move v3, v6

    :goto_2e
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_2f

    move v4, v6

    :goto_2f
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "expTime"

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_30

    move v3, v6

    :goto_30
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_31

    move v4, v6

    :goto_31
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "watchedTime"

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_32

    move v3, v6

    :goto_32
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_33

    move v4, v6

    :goto_33
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "bookmark"

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_34

    move v3, v6

    :goto_34
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_35

    move v4, v6

    :goto_35
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    move-object v0, v8

    :goto_36
    return-object v0

    :cond_0
    move v5, v7

    goto/16 :goto_0

    :cond_1
    move v3, v7

    goto/16 :goto_1

    :cond_2
    move v4, v7

    goto/16 :goto_2

    :cond_3
    move v5, v7

    goto/16 :goto_3

    :cond_4
    move v3, v7

    goto/16 :goto_4

    :cond_5
    move v4, v7

    goto/16 :goto_5

    :cond_6
    move v5, v7

    goto/16 :goto_6

    :cond_7
    move v3, v7

    goto/16 :goto_7

    :cond_8
    move v4, v7

    goto/16 :goto_8

    :cond_9
    move v5, v7

    goto/16 :goto_9

    :cond_a
    move v3, v7

    goto/16 :goto_a

    :cond_b
    move v4, v7

    goto/16 :goto_b

    :cond_c
    move v5, v7

    goto/16 :goto_c

    :cond_d
    move v3, v7

    goto/16 :goto_d

    :cond_e
    move v4, v7

    goto/16 :goto_e

    :cond_f
    move v5, v7

    goto/16 :goto_f

    :cond_10
    move v3, v7

    goto/16 :goto_10

    :cond_11
    move v4, v7

    goto/16 :goto_11

    :cond_12
    move v3, v7

    goto/16 :goto_12

    :cond_13
    move v4, v7

    goto/16 :goto_13

    :cond_14
    move v3, v7

    goto/16 :goto_14

    :cond_15
    move v4, v7

    goto/16 :goto_15

    :cond_16
    move v3, v7

    goto/16 :goto_16

    :cond_17
    move v4, v7

    goto/16 :goto_17

    :cond_18
    move v3, v7

    goto/16 :goto_18

    :cond_19
    move v4, v7

    goto/16 :goto_19

    :cond_1a
    move v3, v7

    goto/16 :goto_1a

    :cond_1b
    move v4, v7

    goto/16 :goto_1b

    :cond_1c
    move v3, v7

    goto/16 :goto_1c

    :cond_1d
    move v4, v7

    goto/16 :goto_1d

    :cond_1e
    move v3, v7

    goto/16 :goto_1e

    :cond_1f
    move v4, v7

    goto/16 :goto_1f

    :cond_20
    move v3, v7

    goto/16 :goto_20

    :cond_21
    move v4, v7

    goto/16 :goto_21

    :cond_22
    move v3, v7

    goto/16 :goto_22

    :cond_23
    move v4, v7

    goto/16 :goto_23

    :cond_24
    move v3, v7

    goto/16 :goto_24

    :cond_25
    move v4, v7

    goto/16 :goto_25

    :cond_26
    move v3, v7

    goto/16 :goto_26

    :cond_27
    move v4, v7

    goto/16 :goto_27

    :cond_28
    move v3, v7

    goto/16 :goto_28

    :cond_29
    move v4, v7

    goto/16 :goto_29

    :cond_2a
    move v3, v7

    goto/16 :goto_2a

    :cond_2b
    move v4, v7

    goto/16 :goto_2b

    :cond_2c
    move v3, v7

    goto/16 :goto_2c

    :cond_2d
    move v4, v7

    goto/16 :goto_2d

    :cond_2e
    move v3, v7

    goto/16 :goto_2e

    :cond_2f
    move v4, v7

    goto/16 :goto_2f

    :cond_30
    move v3, v7

    goto/16 :goto_30

    :cond_31
    move v4, v7

    goto/16 :goto_31

    :cond_32
    move v3, v7

    goto/16 :goto_32

    :cond_33
    move v4, v7

    goto/16 :goto_33

    :cond_34
    move v3, v7

    goto/16 :goto_34

    :cond_35
    move v4, v7

    goto/16 :goto_35

    :cond_36
    const-string/jumbo v0, "RealmPlayable"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto/16 :goto_36
.end method

.method public static getTableName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "class_RealmPlayable"

    return-object v0
.end method

.method public static initTable(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "class_RealmPlayable"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "class_RealmPlayable"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "playableId"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "parentId"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "seasonLabel"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "parentTitle"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "advisoriesString"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isEpisode"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isNSRE"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isAutoPlay"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isExemptFromLimit"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isNextPlayableEpisode"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isAgeProtected"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isPinProtected"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isAdvisoryDisabled"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isAvailableToStream"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isSupplementalVideo"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "duration"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "seasonNumber"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "episodeNumber"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "logicalStart"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "endtime"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "maxAutoplay"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "expTime"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "watchedTime"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "bookmark"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    const-string/jumbo v1, "playableId"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->addSearchIndex(J)V

    const-string/jumbo v1, "playableId"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->setPrimaryKey(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "class_RealmPlayable"

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

    check-cast v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iput-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    new-instance v1, Lio/realm/ProxyState;

    const-class v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-direct {v1, v2, p0}, Lio/realm/ProxyState;-><init>(Ljava/lang/Class;Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method static update(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;Ljava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$parentId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$parentId(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$seasonLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$seasonLabel(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$parentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$parentTitle(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$advisoriesString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$advisoriesString(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isEpisode()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isEpisode(Z)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isNSRE()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isNSRE(Z)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isAutoPlay()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isAutoPlay(Z)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isExemptFromLimit()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isExemptFromLimit(Z)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isNextPlayableEpisode()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isNextPlayableEpisode(Z)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isAgeProtected()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isAgeProtected(Z)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isPinProtected()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isPinProtected(Z)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isAdvisoryDisabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isAdvisoryDisabled(Z)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isAvailableToStream()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isAvailableToStream(Z)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isSupplementalVideo()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isSupplementalVideo(Z)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$duration()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$duration(I)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$seasonNumber()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$seasonNumber(I)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$episodeNumber()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$episodeNumber(I)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$logicalStart()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$logicalStart(I)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$endtime()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$endtime(I)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$maxAutoplay()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$maxAutoplay(I)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$expTime()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$expTime(J)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$watchedTime()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$watchedTime(J)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    check-cast p2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {p2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$bookmark()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$bookmark(I)V

    return-object p1
.end method

.method public static validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;
    .locals 8

    const-wide/16 v6, 0x19

    const-string/jumbo v0, "class_RealmPlayable"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    const-string/jumbo v0, "class_RealmPlayable"

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

    const-string/jumbo v5, "Field count is less than expected - expected 25 but was "

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

    const-string/jumbo v3, "Field count is more than expected - expected 25 but was %1$d"

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

    const-string/jumbo v5, "Field count is more than expected - expected 25 but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

    const-string/jumbo v1, "playableId"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'playableId\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string/jumbo v1, "playableId"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_5

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'playableId\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->playableIdIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "@PrimaryKey field \'playableId\' does not support null values in the existing Realm file. Migrate using RealmObjectSchema.setNullable(), or mark the field as @Required."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v2}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v4

    const-string/jumbo v1, "playableId"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_7

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Primary key not defined for field \'playableId\' in existing Realm file. Add @PrimaryKey."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string/jumbo v1, "playableId"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->hasSearchIndex(J)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Index not defined for field \'playableId\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string/jumbo v1, "parentId"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'parentId\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string/jumbo v1, "parentId"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_a

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'parentId\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentIdIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'parentId\' is required. Either set @Required to field \'parentId\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string/jumbo v1, "title"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'title\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_c
    const-string/jumbo v1, "title"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_d

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'title\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->titleIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'title\' is required. Either set @Required to field \'title\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string/jumbo v1, "seasonLabel"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'seasonLabel\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_f
    const-string/jumbo v1, "seasonLabel"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_10

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'seasonLabel\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->seasonLabelIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_11

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'seasonLabel\' is required. Either set @Required to field \'seasonLabel\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_11
    const-string/jumbo v1, "parentTitle"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'parentTitle\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_12
    const-string/jumbo v1, "parentTitle"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_13

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'parentTitle\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_13
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentTitleIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_14

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'parentTitle\' is required. Either set @Required to field \'parentTitle\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_14
    const-string/jumbo v1, "advisoriesString"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'advisoriesString\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_15
    const-string/jumbo v1, "advisoriesString"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_16

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'advisoriesString\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->advisoriesStringIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_17

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'advisoriesString\' is required. Either set @Required to field \'advisoriesString\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_17
    const-string/jumbo v1, "isEpisode"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isEpisode\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_18
    const-string/jumbo v1, "isEpisode"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_19

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isEpisode\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_19
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isEpisodeIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isEpisode\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isEpisode\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1a
    const-string/jumbo v1, "isNSRE"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isNSRE\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1b
    const-string/jumbo v1, "isNSRE"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1c

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isNSRE\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isNSREIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isNSRE\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isNSRE\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1d
    const-string/jumbo v1, "isAutoPlay"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isAutoPlay\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1e
    const-string/jumbo v1, "isAutoPlay"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1f

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isAutoPlay\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAutoPlayIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_20

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isAutoPlay\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isAutoPlay\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_20
    const-string/jumbo v1, "isExemptFromLimit"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isExemptFromLimit\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_21
    const-string/jumbo v1, "isExemptFromLimit"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_22

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isExemptFromLimit\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_22
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isExemptFromLimitIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_23

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isExemptFromLimit\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isExemptFromLimit\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_23
    const-string/jumbo v1, "isNextPlayableEpisode"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isNextPlayableEpisode\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_24
    const-string/jumbo v1, "isNextPlayableEpisode"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_25

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isNextPlayableEpisode\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_25
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isNextPlayableEpisodeIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_26

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isNextPlayableEpisode\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isNextPlayableEpisode\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_26
    const-string/jumbo v1, "isAgeProtected"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isAgeProtected\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_27
    const-string/jumbo v1, "isAgeProtected"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_28

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isAgeProtected\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_28
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAgeProtectedIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_29

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isAgeProtected\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isAgeProtected\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_29
    const-string/jumbo v1, "isPinProtected"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isPinProtected\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2a
    const-string/jumbo v1, "isPinProtected"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_2b

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isPinProtected\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2b
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isPinProtectedIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_2c

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isPinProtected\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isPinProtected\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2c
    const-string/jumbo v1, "isAdvisoryDisabled"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isAdvisoryDisabled\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2d
    const-string/jumbo v1, "isAdvisoryDisabled"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_2e

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isAdvisoryDisabled\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2e
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAdvisoryDisabledIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_2f

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isAdvisoryDisabled\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isAdvisoryDisabled\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2f
    const-string/jumbo v1, "isAvailableToStream"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isAvailableToStream\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_30
    const-string/jumbo v1, "isAvailableToStream"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_31

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isAvailableToStream\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_31
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAvailableToStreamIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_32

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isAvailableToStream\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isAvailableToStream\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_32
    const-string/jumbo v1, "isSupplementalVideo"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isSupplementalVideo\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_33
    const-string/jumbo v1, "isSupplementalVideo"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_34

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isSupplementalVideo\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_34
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isSupplementalVideoIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_35

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isSupplementalVideo\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isSupplementalVideo\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_35
    const-string/jumbo v1, "duration"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'duration\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_36
    const-string/jumbo v1, "duration"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_37

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'duration\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_37
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->durationIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_38

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'duration\' does support null values in the existing Realm file. Use corresponding boxed type for field \'duration\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_38
    const-string/jumbo v1, "seasonNumber"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'seasonNumber\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_39
    const-string/jumbo v1, "seasonNumber"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_3a

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'seasonNumber\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_3a
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->seasonNumberIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_3b

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'seasonNumber\' does support null values in the existing Realm file. Use corresponding boxed type for field \'seasonNumber\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_3b
    const-string/jumbo v1, "episodeNumber"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'episodeNumber\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_3c
    const-string/jumbo v1, "episodeNumber"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_3d

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'episodeNumber\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_3d
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->episodeNumberIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_3e

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'episodeNumber\' does support null values in the existing Realm file. Use corresponding boxed type for field \'episodeNumber\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_3e
    const-string/jumbo v1, "logicalStart"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'logicalStart\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_3f
    const-string/jumbo v1, "logicalStart"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_40

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'logicalStart\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_40
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->logicalStartIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_41

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'logicalStart\' does support null values in the existing Realm file. Use corresponding boxed type for field \'logicalStart\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_41
    const-string/jumbo v1, "endtime"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'endtime\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_42
    const-string/jumbo v1, "endtime"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_43

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'endtime\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_43
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->endtimeIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_44

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'endtime\' does support null values in the existing Realm file. Use corresponding boxed type for field \'endtime\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_44
    const-string/jumbo v1, "maxAutoplay"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'maxAutoplay\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_45
    const-string/jumbo v1, "maxAutoplay"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_46

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'maxAutoplay\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_46
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->maxAutoplayIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_47

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'maxAutoplay\' does support null values in the existing Realm file. Use corresponding boxed type for field \'maxAutoplay\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_47
    const-string/jumbo v1, "expTime"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'expTime\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_48
    const-string/jumbo v1, "expTime"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_49

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'long\' for field \'expTime\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_49
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->expTimeIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_4a

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'expTime\' does support null values in the existing Realm file. Use corresponding boxed type for field \'expTime\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4a
    const-string/jumbo v1, "watchedTime"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'watchedTime\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4b
    const-string/jumbo v1, "watchedTime"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_4c

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'long\' for field \'watchedTime\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4c
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->watchedTimeIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_4d

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'watchedTime\' does support null values in the existing Realm file. Use corresponding boxed type for field \'watchedTime\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4d
    const-string/jumbo v1, "bookmark"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'bookmark\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4e
    const-string/jumbo v1, "bookmark"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_4f

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'bookmark\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4f
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->bookmarkIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_51

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'bookmark\' does support null values in the existing Realm file. Use corresponding boxed type for field \'bookmark\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_50
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "The \'RealmPlayable\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_51
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
    check-cast p1, Lio/realm/RealmPlayableRealmProxy;

    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

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

.method public realmGet$advisoriesString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->advisoriesStringIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$bookmark()I
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->bookmarkIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$duration()I
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->durationIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$endtime()I
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->endtimeIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$episodeNumber()I
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->episodeNumberIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$expTime()J
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->expTimeIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$isAdvisoryDisabled()Z
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAdvisoryDisabledIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isAgeProtected()Z
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAgeProtectedIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isAutoPlay()Z
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAutoPlayIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isAvailableToStream()Z
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAvailableToStreamIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isEpisode()Z
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isEpisodeIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isExemptFromLimit()Z
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isExemptFromLimitIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isNSRE()Z
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isNSREIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isNextPlayableEpisode()Z
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isNextPlayableEpisodeIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isPinProtected()Z
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isPinProtectedIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isSupplementalVideo()Z
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isSupplementalVideoIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$logicalStart()I
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->logicalStartIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$maxAutoplay()I
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->maxAutoplayIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$parentId()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentIdIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$parentTitle()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentTitleIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$playableId()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->playableIdIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$seasonLabel()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->seasonLabelIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$seasonNumber()I
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->seasonNumberIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->titleIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$watchedTime()J
    .locals 4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->watchedTimeIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmSet$advisoriesString(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->advisoriesStringIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->advisoriesStringIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->advisoriesStringIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->advisoriesStringIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$bookmark(I)V
    .locals 9

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->bookmarkIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->bookmarkIndex:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$duration(I)V
    .locals 9

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->durationIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->durationIndex:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$endtime(I)V
    .locals 9

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->endtimeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->endtimeIndex:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$episodeNumber(I)V
    .locals 9

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->episodeNumberIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->episodeNumberIndex:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$expTime(J)V
    .locals 9

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->expTimeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->expTimeIndex:J

    invoke-interface {v0, v2, v3, p1, p2}, Lio/realm/internal/Row;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$isAdvisoryDisabled(Z)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAdvisoryDisabledIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAdvisoryDisabledIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$isAgeProtected(Z)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAgeProtectedIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAgeProtectedIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$isAutoPlay(Z)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAutoPlayIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAutoPlayIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$isAvailableToStream(Z)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAvailableToStreamIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAvailableToStreamIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$isEpisode(Z)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isEpisodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isEpisodeIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$isExemptFromLimit(Z)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isExemptFromLimitIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isExemptFromLimitIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$isNSRE(Z)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isNSREIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isNSREIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$isNextPlayableEpisode(Z)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isNextPlayableEpisodeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isNextPlayableEpisodeIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$isPinProtected(Z)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isPinProtectedIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isPinProtectedIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$isSupplementalVideo(Z)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isSupplementalVideoIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isSupplementalVideoIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$logicalStart(I)V
    .locals 9

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->logicalStartIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->logicalStartIndex:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$maxAutoplay(I)V
    .locals 9

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->maxAutoplayIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->maxAutoplayIndex:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$parentId(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentIdIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentIdIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentIdIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentIdIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$parentTitle(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentTitleIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentTitleIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentTitleIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentTitleIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$playableId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string/jumbo v1, "Primary key field \'playableId\' cannot be changed after object was created."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$seasonLabel(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->seasonLabelIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->seasonLabelIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->seasonLabelIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->seasonLabelIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$seasonNumber(I)V
    .locals 9

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->seasonNumberIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->seasonNumberIndex:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->titleIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->titleIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->titleIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->titleIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$watchedTime(J)V
    .locals 9

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->watchedTimeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->watchedTimeIndex:J

    invoke-interface {v0, v2, v3, p1, p2}, Lio/realm/internal/Row;->setLong(JJ)V

    goto :goto_0
.end method
