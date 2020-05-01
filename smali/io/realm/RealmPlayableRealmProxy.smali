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

    .prologue
    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    const-string/jumbo v1, "playableId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    const-string/jumbo v1, "parentId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    const-string/jumbo v1, "title"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    const-string/jumbo v1, "seasonLabel"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    const-string/jumbo v1, "parentTitle"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    const-string/jumbo v1, "advisoriesString"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    const-string/jumbo v1, "isEpisode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    const-string/jumbo v1, "isNSRE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    const-string/jumbo v1, "isAutoPlay"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    const-string/jumbo v1, "isExemptFromLimit"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    const-string/jumbo v1, "isNextPlayableEpisode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    const-string/jumbo v1, "isAgeProtected"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    const-string/jumbo v1, "isPinProtected"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    const-string/jumbo v1, "isAdvisoryDisabled"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    const-string/jumbo v1, "isAvailableToStream"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    const-string/jumbo v1, "isSupplementalVideo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    const-string/jumbo v1, "duration"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    const-string/jumbo v1, "seasonNumber"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    const-string/jumbo v1, "episodeNumber"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    const-string/jumbo v1, "logicalStart"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    const-string/jumbo v1, "endtime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    const-string/jumbo v1, "maxAutoplay"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    const-string/jumbo v1, "expTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    const-string/jumbo v1, "watchedTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    const-string/jumbo v1, "bookmark"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/RealmPlayableRealmProxy;->FIELD_NAMES:Ljava/util/List;

    .line 189
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;-><init>()V

    .line 192
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 193
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 195
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 196
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

    .prologue
    .line 1777
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 1778
    if-eqz v0, :cond_0

    .line 1779
    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    .line 1808
    :goto_0
    return-object v0

    .line 1782
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

    .line 1783
    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1784
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$parentId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$parentId(Ljava/lang/String;)V

    move-object v1, v0

    .line 1785
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    move-object v1, v0

    .line 1786
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$seasonLabel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$seasonLabel(Ljava/lang/String;)V

    move-object v1, v0

    .line 1787
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$parentTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$parentTitle(Ljava/lang/String;)V

    move-object v1, v0

    .line 1788
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$advisoriesString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$advisoriesString(Ljava/lang/String;)V

    move-object v1, v0

    .line 1789
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isEpisode()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isEpisode(Z)V

    move-object v1, v0

    .line 1790
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isNSRE()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isNSRE(Z)V

    move-object v1, v0

    .line 1791
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isAutoPlay()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isAutoPlay(Z)V

    move-object v1, v0

    .line 1792
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isExemptFromLimit()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isExemptFromLimit(Z)V

    move-object v1, v0

    .line 1793
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isNextPlayableEpisode()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isNextPlayableEpisode(Z)V

    move-object v1, v0

    .line 1794
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isAgeProtected()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isAgeProtected(Z)V

    move-object v1, v0

    .line 1795
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isPinProtected()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isPinProtected(Z)V

    move-object v1, v0

    .line 1796
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isAdvisoryDisabled()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isAdvisoryDisabled(Z)V

    move-object v1, v0

    .line 1797
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isAvailableToStream()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isAvailableToStream(Z)V

    move-object v1, v0

    .line 1798
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isSupplementalVideo()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isSupplementalVideo(Z)V

    move-object v1, v0

    .line 1799
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$duration()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$duration(I)V

    move-object v1, v0

    .line 1800
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$seasonNumber()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$seasonNumber(I)V

    move-object v1, v0

    .line 1801
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$episodeNumber()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$episodeNumber(I)V

    move-object v1, v0

    .line 1802
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$logicalStart()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$logicalStart(I)V

    move-object v1, v0

    .line 1803
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$endtime()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$endtime(I)V

    move-object v1, v0

    .line 1804
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$maxAutoplay()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$maxAutoplay(I)V

    move-object v1, v0

    .line 1805
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$expTime()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$expTime(J)V

    move-object v1, v0

    .line 1806
    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$watchedTime()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$watchedTime(J)V

    move-object v1, v0

    .line 1807
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

    .prologue
    const/4 v4, 0x0

    .line 1732
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

    .line 1733
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1735
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

    .line 1771
    :goto_0
    return-object p1

    .line 1738
    :cond_1
    sget-object v2, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v2}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/BaseRealm$RealmObjectContext;

    .line 1739
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    .line 1740
    if-eqz v3, :cond_2

    .line 1741
    check-cast v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-object p1, v3

    goto :goto_0

    .line 1743
    :cond_2
    const/4 v5, 0x0

    .line 1745
    if-eqz p2, :cond_6

    .line 1746
    const-class v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-virtual {p0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v8

    .line 1747
    invoke-virtual {v8}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v6

    move-object v3, p1

    .line 1748
    check-cast v3, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$playableId()Ljava/lang/String;

    move-result-object v3

    .line 1750
    if-nez v3, :cond_3

    .line 1751
    invoke-virtual {v8, v6, v7}, Lio/realm/internal/Table;->findFirstNull(J)J

    move-result-wide v6

    .line 1755
    :goto_1
    const-wide/16 v10, -0x1

    cmp-long v3, v6, v10

    if-eqz v3, :cond_4

    .line 1757
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

    .line 1758
    new-instance v4, Lio/realm/RealmPlayableRealmProxy;

    invoke-direct {v4}, Lio/realm/RealmPlayableRealmProxy;-><init>()V

    .line 1759
    move-object v0, v4

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    move-object v3, v0

    invoke-interface {p3, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1761
    invoke-virtual {v2}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    move v2, p2

    .line 1768
    :goto_2
    if-eqz v2, :cond_5

    .line 1769
    invoke-static {p0, v4, p1, p3}, Lio/realm/RealmPlayableRealmProxy;->update(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;Ljava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-result-object p1

    goto :goto_0

    .line 1753
    :cond_3
    invoke-virtual {v8, v6, v7, v3}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v6

    goto :goto_1

    .line 1761
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    throw v3

    :cond_4
    move v2, v4

    move-object v4, v5

    .line 1764
    goto :goto_2

    .line 1771
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

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 995
    const-string/jumbo v0, "RealmPlayable"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 996
    const-string/jumbo v0, "RealmPlayable"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v8

    .line 997
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

    .line 998
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

    .line 999
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

    .line 1000
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

    .line 1001
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

    .line 1002
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

    .line 1003
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

    .line 1004
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

    .line 1005
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

    .line 1006
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

    .line 1007
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

    .line 1008
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

    .line 1009
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

    .line 1010
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

    .line 1011
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

    .line 1012
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

    .line 1013
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

    .line 1014
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

    .line 1015
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

    .line 1016
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

    .line 1017
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

    .line 1018
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

    .line 1019
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

    .line 1020
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

    .line 1021
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

    .line 1024
    :goto_36
    return-object v0

    :cond_0
    move v5, v7

    .line 997
    goto/16 :goto_0

    :cond_1
    move v3, v7

    .line 998
    goto/16 :goto_1

    :cond_2
    move v4, v7

    goto/16 :goto_2

    :cond_3
    move v5, v7

    goto/16 :goto_3

    :cond_4
    move v3, v7

    .line 999
    goto/16 :goto_4

    :cond_5
    move v4, v7

    goto/16 :goto_5

    :cond_6
    move v5, v7

    goto/16 :goto_6

    :cond_7
    move v3, v7

    .line 1000
    goto/16 :goto_7

    :cond_8
    move v4, v7

    goto/16 :goto_8

    :cond_9
    move v5, v7

    goto/16 :goto_9

    :cond_a
    move v3, v7

    .line 1001
    goto/16 :goto_a

    :cond_b
    move v4, v7

    goto/16 :goto_b

    :cond_c
    move v5, v7

    goto/16 :goto_c

    :cond_d
    move v3, v7

    .line 1002
    goto/16 :goto_d

    :cond_e
    move v4, v7

    goto/16 :goto_e

    :cond_f
    move v5, v7

    goto/16 :goto_f

    :cond_10
    move v3, v7

    .line 1003
    goto/16 :goto_10

    :cond_11
    move v4, v7

    goto/16 :goto_11

    :cond_12
    move v3, v7

    .line 1004
    goto/16 :goto_12

    :cond_13
    move v4, v7

    goto/16 :goto_13

    :cond_14
    move v3, v7

    .line 1005
    goto/16 :goto_14

    :cond_15
    move v4, v7

    goto/16 :goto_15

    :cond_16
    move v3, v7

    .line 1006
    goto/16 :goto_16

    :cond_17
    move v4, v7

    goto/16 :goto_17

    :cond_18
    move v3, v7

    .line 1007
    goto/16 :goto_18

    :cond_19
    move v4, v7

    goto/16 :goto_19

    :cond_1a
    move v3, v7

    .line 1008
    goto/16 :goto_1a

    :cond_1b
    move v4, v7

    goto/16 :goto_1b

    :cond_1c
    move v3, v7

    .line 1009
    goto/16 :goto_1c

    :cond_1d
    move v4, v7

    goto/16 :goto_1d

    :cond_1e
    move v3, v7

    .line 1010
    goto/16 :goto_1e

    :cond_1f
    move v4, v7

    goto/16 :goto_1f

    :cond_20
    move v3, v7

    .line 1011
    goto/16 :goto_20

    :cond_21
    move v4, v7

    goto/16 :goto_21

    :cond_22
    move v3, v7

    .line 1012
    goto/16 :goto_22

    :cond_23
    move v4, v7

    goto/16 :goto_23

    :cond_24
    move v3, v7

    .line 1013
    goto/16 :goto_24

    :cond_25
    move v4, v7

    goto/16 :goto_25

    :cond_26
    move v3, v7

    .line 1014
    goto/16 :goto_26

    :cond_27
    move v4, v7

    goto/16 :goto_27

    :cond_28
    move v3, v7

    .line 1015
    goto/16 :goto_28

    :cond_29
    move v4, v7

    goto/16 :goto_29

    :cond_2a
    move v3, v7

    .line 1016
    goto/16 :goto_2a

    :cond_2b
    move v4, v7

    goto/16 :goto_2b

    :cond_2c
    move v3, v7

    .line 1017
    goto/16 :goto_2c

    :cond_2d
    move v4, v7

    goto/16 :goto_2d

    :cond_2e
    move v3, v7

    .line 1018
    goto/16 :goto_2e

    :cond_2f
    move v4, v7

    goto/16 :goto_2f

    :cond_30
    move v3, v7

    .line 1019
    goto/16 :goto_30

    :cond_31
    move v4, v7

    goto/16 :goto_31

    :cond_32
    move v3, v7

    .line 1020
    goto/16 :goto_32

    :cond_33
    move v4, v7

    goto/16 :goto_33

    :cond_34
    move v3, v7

    .line 1021
    goto/16 :goto_34

    :cond_35
    move v4, v7

    goto/16 :goto_35

    .line 1024
    :cond_36
    const-string/jumbo v0, "RealmPlayable"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto/16 :goto_36
.end method

.method public static getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1321
    const-string/jumbo v0, "class_RealmPlayable"

    return-object v0
.end method

.method public static initTable(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1028
    const-string/jumbo v0, "class_RealmPlayable"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1029
    const-string/jumbo v0, "class_RealmPlayable"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 1030
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "playableId"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1031
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "parentId"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1032
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1033
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "seasonLabel"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1034
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "parentTitle"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1035
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "advisoriesString"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1036
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isEpisode"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1037
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isNSRE"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1038
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isAutoPlay"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1039
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isExemptFromLimit"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1040
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isNextPlayableEpisode"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1041
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isAgeProtected"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1042
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isPinProtected"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1043
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isAdvisoryDisabled"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1044
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isAvailableToStream"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1045
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isSupplementalVideo"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1046
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "duration"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1047
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "seasonNumber"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1048
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "episodeNumber"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1049
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "logicalStart"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1050
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "endtime"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1051
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "maxAutoplay"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1052
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "expTime"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1053
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "watchedTime"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1054
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "bookmark"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1055
    const-string/jumbo v1, "playableId"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->addSearchIndex(J)V

    .line 1056
    const-string/jumbo v1, "playableId"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->setPrimaryKey(Ljava/lang/String;)V

    .line 1059
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

    .prologue
    .line 199
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 200
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iput-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    .line 201
    new-instance v1, Lio/realm/ProxyState;

    const-class v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-direct {v1, v2, p0}, Lio/realm/ProxyState;-><init>(Ljava/lang/Class;Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 202
    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 203
    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 204
    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 205
    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 206
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

    .prologue
    .line 2139
    move-object v0, p1

    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$parentId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$parentId(Ljava/lang/String;)V

    move-object v0, p1

    .line 2140
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    move-object v0, p1

    .line 2141
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$seasonLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$seasonLabel(Ljava/lang/String;)V

    move-object v0, p1

    .line 2142
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$parentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$parentTitle(Ljava/lang/String;)V

    move-object v0, p1

    .line 2143
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$advisoriesString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$advisoriesString(Ljava/lang/String;)V

    move-object v0, p1

    .line 2144
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isEpisode()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isEpisode(Z)V

    move-object v0, p1

    .line 2145
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isNSRE()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isNSRE(Z)V

    move-object v0, p1

    .line 2146
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isAutoPlay()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isAutoPlay(Z)V

    move-object v0, p1

    .line 2147
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isExemptFromLimit()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isExemptFromLimit(Z)V

    move-object v0, p1

    .line 2148
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isNextPlayableEpisode()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isNextPlayableEpisode(Z)V

    move-object v0, p1

    .line 2149
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isAgeProtected()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isAgeProtected(Z)V

    move-object v0, p1

    .line 2150
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isPinProtected()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isPinProtected(Z)V

    move-object v0, p1

    .line 2151
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isAdvisoryDisabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isAdvisoryDisabled(Z)V

    move-object v0, p1

    .line 2152
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isAvailableToStream()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isAvailableToStream(Z)V

    move-object v0, p1

    .line 2153
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$isSupplementalVideo()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$isSupplementalVideo(Z)V

    move-object v0, p1

    .line 2154
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$duration()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$duration(I)V

    move-object v0, p1

    .line 2155
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$seasonNumber()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$seasonNumber(I)V

    move-object v0, p1

    .line 2156
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$episodeNumber()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$episodeNumber(I)V

    move-object v0, p1

    .line 2157
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$logicalStart()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$logicalStart(I)V

    move-object v0, p1

    .line 2158
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$endtime()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$endtime(I)V

    move-object v0, p1

    .line 2159
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$maxAutoplay()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$maxAutoplay(I)V

    move-object v0, p1

    .line 2160
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$expTime()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$expTime(J)V

    move-object v0, p1

    .line 2161
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$watchedTime()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$watchedTime(J)V

    move-object v0, p1

    .line 2162
    check-cast v0, Lio/realm/RealmPlayableRealmProxyInterface;

    check-cast p2, Lio/realm/RealmPlayableRealmProxyInterface;

    invoke-interface {p2}, Lio/realm/RealmPlayableRealmProxyInterface;->realmGet$bookmark()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmPlayableRealmProxyInterface;->realmSet$bookmark(I)V

    .line 2163
    return-object p1
.end method

.method public static validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;
    .locals 8

    .prologue
    const-wide/16 v6, 0x19

    .line 1063
    const-string/jumbo v0, "class_RealmPlayable"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1064
    const-string/jumbo v0, "class_RealmPlayable"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    .line 1065
    invoke-virtual {v2}, Lio/realm/internal/Table;->getColumnCount()J

    move-result-wide v0

    .line 1066
    cmp-long v3, v0, v6

    if-eqz v3, :cond_1

    .line 1067
    cmp-long v3, v0, v6

    if-gez v3, :cond_0

    .line 1068
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

    .line 1070
    :cond_0
    if-eqz p1, :cond_2

    .line 1071
    const-string/jumbo v3, "Field count is more than expected - expected 25 but was %1$d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1076
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1077
    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v4, v0, v6

    if-gez v4, :cond_3

    .line 1078
    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 1073
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

    .line 1081
    :cond_3
    new-instance v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

    .line 1083
    const-string/jumbo v1, "playableId"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1084
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'playableId\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1086
    :cond_4
    const-string/jumbo v1, "playableId"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_5

    .line 1087
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'playableId\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1089
    :cond_5
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->playableIdIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1090
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "@PrimaryKey field \'playableId\' does not support null values in the existing Realm file. Migrate using RealmObjectSchema.setNullable(), or mark the field as @Required."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1092
    :cond_6
    invoke-virtual {v2}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v4

    const-string/jumbo v1, "playableId"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_7

    .line 1093
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Primary key not defined for field \'playableId\' in existing Realm file. Add @PrimaryKey."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1095
    :cond_7
    const-string/jumbo v1, "playableId"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->hasSearchIndex(J)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1096
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Index not defined for field \'playableId\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1098
    :cond_8
    const-string/jumbo v1, "parentId"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1099
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'parentId\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1101
    :cond_9
    const-string/jumbo v1, "parentId"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_a

    .line 1102
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'parentId\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1104
    :cond_a
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentIdIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1105
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'parentId\' is required. Either set @Required to field \'parentId\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1107
    :cond_b
    const-string/jumbo v1, "title"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1108
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'title\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1110
    :cond_c
    const-string/jumbo v1, "title"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_d

    .line 1111
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'title\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1113
    :cond_d
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->titleIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1114
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'title\' is required. Either set @Required to field \'title\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1116
    :cond_e
    const-string/jumbo v1, "seasonLabel"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1117
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'seasonLabel\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1119
    :cond_f
    const-string/jumbo v1, "seasonLabel"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_10

    .line 1120
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'seasonLabel\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1122
    :cond_10
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->seasonLabelIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1123
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'seasonLabel\' is required. Either set @Required to field \'seasonLabel\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1125
    :cond_11
    const-string/jumbo v1, "parentTitle"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1126
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'parentTitle\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1128
    :cond_12
    const-string/jumbo v1, "parentTitle"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_13

    .line 1129
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'parentTitle\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1131
    :cond_13
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentTitleIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1132
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'parentTitle\' is required. Either set @Required to field \'parentTitle\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1134
    :cond_14
    const-string/jumbo v1, "advisoriesString"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1135
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'advisoriesString\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1137
    :cond_15
    const-string/jumbo v1, "advisoriesString"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_16

    .line 1138
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'advisoriesString\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1140
    :cond_16
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->advisoriesStringIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1141
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'advisoriesString\' is required. Either set @Required to field \'advisoriesString\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1143
    :cond_17
    const-string/jumbo v1, "isEpisode"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1144
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isEpisode\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1146
    :cond_18
    const-string/jumbo v1, "isEpisode"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_19

    .line 1147
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isEpisode\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1149
    :cond_19
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isEpisodeIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1150
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isEpisode\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isEpisode\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1152
    :cond_1a
    const-string/jumbo v1, "isNSRE"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1153
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isNSRE\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1155
    :cond_1b
    const-string/jumbo v1, "isNSRE"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1c

    .line 1156
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isNSRE\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1158
    :cond_1c
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isNSREIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1159
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isNSRE\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isNSRE\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1161
    :cond_1d
    const-string/jumbo v1, "isAutoPlay"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1162
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isAutoPlay\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1164
    :cond_1e
    const-string/jumbo v1, "isAutoPlay"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1f

    .line 1165
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isAutoPlay\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1167
    :cond_1f
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAutoPlayIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1168
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isAutoPlay\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isAutoPlay\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1170
    :cond_20
    const-string/jumbo v1, "isExemptFromLimit"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1171
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isExemptFromLimit\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1173
    :cond_21
    const-string/jumbo v1, "isExemptFromLimit"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_22

    .line 1174
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isExemptFromLimit\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1176
    :cond_22
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isExemptFromLimitIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1177
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isExemptFromLimit\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isExemptFromLimit\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1179
    :cond_23
    const-string/jumbo v1, "isNextPlayableEpisode"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 1180
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isNextPlayableEpisode\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1182
    :cond_24
    const-string/jumbo v1, "isNextPlayableEpisode"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_25

    .line 1183
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isNextPlayableEpisode\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1185
    :cond_25
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isNextPlayableEpisodeIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1186
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isNextPlayableEpisode\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isNextPlayableEpisode\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1188
    :cond_26
    const-string/jumbo v1, "isAgeProtected"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1189
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isAgeProtected\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1191
    :cond_27
    const-string/jumbo v1, "isAgeProtected"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_28

    .line 1192
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isAgeProtected\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1194
    :cond_28
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAgeProtectedIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1195
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isAgeProtected\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isAgeProtected\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1197
    :cond_29
    const-string/jumbo v1, "isPinProtected"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1198
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isPinProtected\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1200
    :cond_2a
    const-string/jumbo v1, "isPinProtected"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_2b

    .line 1201
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isPinProtected\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1203
    :cond_2b
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isPinProtectedIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1204
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isPinProtected\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isPinProtected\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1206
    :cond_2c
    const-string/jumbo v1, "isAdvisoryDisabled"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 1207
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isAdvisoryDisabled\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1209
    :cond_2d
    const-string/jumbo v1, "isAdvisoryDisabled"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_2e

    .line 1210
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isAdvisoryDisabled\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1212
    :cond_2e
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAdvisoryDisabledIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1213
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isAdvisoryDisabled\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isAdvisoryDisabled\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1215
    :cond_2f
    const-string/jumbo v1, "isAvailableToStream"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 1216
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isAvailableToStream\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1218
    :cond_30
    const-string/jumbo v1, "isAvailableToStream"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_31

    .line 1219
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isAvailableToStream\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1221
    :cond_31
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAvailableToStreamIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1222
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isAvailableToStream\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isAvailableToStream\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1224
    :cond_32
    const-string/jumbo v1, "isSupplementalVideo"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 1225
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isSupplementalVideo\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1227
    :cond_33
    const-string/jumbo v1, "isSupplementalVideo"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_34

    .line 1228
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isSupplementalVideo\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1230
    :cond_34
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isSupplementalVideoIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1231
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isSupplementalVideo\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isSupplementalVideo\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1233
    :cond_35
    const-string/jumbo v1, "duration"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 1234
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'duration\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1236
    :cond_36
    const-string/jumbo v1, "duration"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_37

    .line 1237
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'duration\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1239
    :cond_37
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->durationIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1240
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'duration\' does support null values in the existing Realm file. Use corresponding boxed type for field \'duration\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1242
    :cond_38
    const-string/jumbo v1, "seasonNumber"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 1243
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'seasonNumber\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1245
    :cond_39
    const-string/jumbo v1, "seasonNumber"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_3a

    .line 1246
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'seasonNumber\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1248
    :cond_3a
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->seasonNumberIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1249
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'seasonNumber\' does support null values in the existing Realm file. Use corresponding boxed type for field \'seasonNumber\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1251
    :cond_3b
    const-string/jumbo v1, "episodeNumber"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 1252
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'episodeNumber\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1254
    :cond_3c
    const-string/jumbo v1, "episodeNumber"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_3d

    .line 1255
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'episodeNumber\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1257
    :cond_3d
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->episodeNumberIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1258
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'episodeNumber\' does support null values in the existing Realm file. Use corresponding boxed type for field \'episodeNumber\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1260
    :cond_3e
    const-string/jumbo v1, "logicalStart"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1261
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'logicalStart\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1263
    :cond_3f
    const-string/jumbo v1, "logicalStart"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_40

    .line 1264
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'logicalStart\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1266
    :cond_40
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->logicalStartIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1267
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'logicalStart\' does support null values in the existing Realm file. Use corresponding boxed type for field \'logicalStart\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1269
    :cond_41
    const-string/jumbo v1, "endtime"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 1270
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'endtime\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1272
    :cond_42
    const-string/jumbo v1, "endtime"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_43

    .line 1273
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'endtime\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1275
    :cond_43
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->endtimeIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1276
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'endtime\' does support null values in the existing Realm file. Use corresponding boxed type for field \'endtime\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1278
    :cond_44
    const-string/jumbo v1, "maxAutoplay"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 1279
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'maxAutoplay\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1281
    :cond_45
    const-string/jumbo v1, "maxAutoplay"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_46

    .line 1282
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'maxAutoplay\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1284
    :cond_46
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->maxAutoplayIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1285
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'maxAutoplay\' does support null values in the existing Realm file. Use corresponding boxed type for field \'maxAutoplay\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1287
    :cond_47
    const-string/jumbo v1, "expTime"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 1288
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'expTime\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1290
    :cond_48
    const-string/jumbo v1, "expTime"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_49

    .line 1291
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'long\' for field \'expTime\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1293
    :cond_49
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->expTimeIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1294
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'expTime\' does support null values in the existing Realm file. Use corresponding boxed type for field \'expTime\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1296
    :cond_4a
    const-string/jumbo v1, "watchedTime"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1297
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'watchedTime\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1299
    :cond_4b
    const-string/jumbo v1, "watchedTime"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_4c

    .line 1300
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'long\' for field \'watchedTime\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1302
    :cond_4c
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->watchedTimeIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1303
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'watchedTime\' does support null values in the existing Realm file. Use corresponding boxed type for field \'watchedTime\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1305
    :cond_4d
    const-string/jumbo v1, "bookmark"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 1306
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'bookmark\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1308
    :cond_4e
    const-string/jumbo v1, "bookmark"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_4f

    .line 1309
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'bookmark\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1311
    :cond_4f
    iget-wide v4, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->bookmarkIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1312
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'bookmark\' does support null values in the existing Realm file. Use corresponding boxed type for field \'bookmark\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1316
    :cond_50
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "The \'RealmPlayable\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1314
    :cond_51
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2186
    if-ne p0, p1, :cond_1

    .line 2200
    :cond_0
    :goto_0
    return v0

    .line 2187
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

    .line 2188
    :cond_3
    check-cast p1, Lio/realm/RealmPlayableRealmProxy;

    .line 2190
    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 2191
    iget-object v3, p1, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 2192
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_4

    .line 2194
    :cond_6
    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2195
    iget-object v3, p1, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2196
    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_7

    .line 2198
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

    .prologue
    const/4 v0, 0x0

    .line 2173
    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2174
    iget-object v2, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2175
    iget-object v3, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    .line 2178
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    .line 2179
    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 2180
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 2181
    return v0

    :cond_1
    move v1, v0

    .line 2178
    goto :goto_0
.end method

.method public realmGet$advisoriesString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 388
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 390
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 393
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 394
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

    .prologue
    .line 966
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 968
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 971
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 972
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

    .prologue
    .line 726
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 728
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 731
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 732
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

    .prologue
    .line 846
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 848
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 851
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 852
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

    .prologue
    .line 786
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 788
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 791
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 792
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

    .prologue
    .line 906
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 908
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 911
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 912
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

    .prologue
    .line 636
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 638
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 641
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 642
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

    .prologue
    .line 576
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 578
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 581
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 582
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

    .prologue
    .line 486
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 488
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 491
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 492
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

    .prologue
    .line 666
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 668
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 671
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 672
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

    .prologue
    .line 426
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 428
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 431
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 432
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

    .prologue
    .line 516
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 518
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 521
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 522
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

    .prologue
    .line 456
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 458
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 461
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 462
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

    .prologue
    .line 546
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 548
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 551
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 552
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

    .prologue
    .line 606
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 608
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 611
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 612
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

    .prologue
    .line 696
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 698
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 701
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 702
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

    .prologue
    .line 816
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 818
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 821
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 822
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

    .prologue
    .line 876
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 878
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 881
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 882
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

    .prologue
    .line 236
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 238
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 241
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 242
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

    .prologue
    .line 350
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 352
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 355
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 356
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

    .prologue
    .line 210
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 212
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 215
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 216
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

    .prologue
    .line 2168
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$seasonLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 314
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 317
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 318
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

    .prologue
    .line 756
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 758
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 761
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 762
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

    .prologue
    .line 274
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 276
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 279
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 280
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

    .prologue
    .line 936
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 938
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 941
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 942
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

    .prologue
    const/4 v6, 0x1

    .line 398
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 400
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 403
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 404
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 408
    if-nez p1, :cond_2

    .line 409
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->advisoriesStringIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 412
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

    .line 416
    :cond_3
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 417
    if-nez p1, :cond_4

    .line 418
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->advisoriesStringIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 421
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

    .prologue
    .line 976
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 978
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 981
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 982
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 992
    :goto_0
    return-void

    .line 985
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 986
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

    .line 990
    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 991
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

    .prologue
    .line 736
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 738
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 741
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 742
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 752
    :goto_0
    return-void

    .line 745
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 746
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

    .line 750
    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 751
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

    .prologue
    .line 856
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 858
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 861
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 862
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 872
    :goto_0
    return-void

    .line 865
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 866
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

    .line 870
    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 871
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

    .prologue
    .line 796
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 798
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 801
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 802
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 812
    :goto_0
    return-void

    .line 805
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 806
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

    .line 810
    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 811
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

    .prologue
    .line 916
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 918
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 921
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 922
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 932
    :goto_0
    return-void

    .line 925
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 926
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

    .line 930
    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 931
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

    .prologue
    .line 646
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 648
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 651
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 652
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 662
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 656
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

    .line 660
    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 661
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

    .prologue
    .line 586
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 588
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 591
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 592
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 602
    :goto_0
    return-void

    .line 595
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 596
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

    .line 600
    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 601
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

    .prologue
    .line 496
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 498
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 501
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 512
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 506
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

    .line 510
    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 511
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

    .prologue
    .line 676
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 678
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 681
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 682
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 692
    :goto_0
    return-void

    .line 685
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 686
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

    .line 690
    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 691
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

    .prologue
    .line 436
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 438
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 441
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 452
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 446
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

    .line 450
    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 451
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

    .prologue
    .line 526
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 528
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 531
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 532
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    :goto_0
    return-void

    .line 535
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 536
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

    .line 540
    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 541
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

    .prologue
    .line 466
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 468
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 471
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 482
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 476
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

    .line 480
    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 481
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

    .prologue
    .line 556
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 558
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 561
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 572
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 566
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

    .line 570
    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 571
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

    .prologue
    .line 616
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 618
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 621
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 622
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 632
    :goto_0
    return-void

    .line 625
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 626
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

    .line 630
    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 631
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

    .prologue
    .line 706
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 708
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 711
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 712
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 722
    :goto_0
    return-void

    .line 715
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 716
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

    .line 720
    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 721
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

    .prologue
    .line 826
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 828
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 831
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 832
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 842
    :goto_0
    return-void

    .line 835
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 836
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

    .line 840
    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 841
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

    .prologue
    .line 886
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 888
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 891
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 892
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 902
    :goto_0
    return-void

    .line 895
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 896
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

    .line 900
    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 901
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

    .prologue
    const/4 v6, 0x1

    .line 246
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 248
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 251
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 256
    if-nez p1, :cond_2

    .line 257
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentIdIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 260
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

    .line 264
    :cond_3
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 265
    if-nez p1, :cond_4

    .line 266
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentIdIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 269
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

    .prologue
    const/4 v6, 0x1

    .line 360
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 362
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 365
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 370
    if-nez p1, :cond_2

    .line 371
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentTitleIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 374
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

    .line 378
    :cond_3
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 379
    if-nez p1, :cond_4

    .line 380
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentTitleIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 383
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

    .prologue
    .line 220
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 222
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 225
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 231
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string/jumbo v1, "Primary key field \'playableId\' cannot be changed after object was created."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$seasonLabel(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 322
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 324
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 327
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 328
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 332
    if-nez p1, :cond_2

    .line 333
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->seasonLabelIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 336
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

    .line 340
    :cond_3
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 341
    if-nez p1, :cond_4

    .line 342
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->seasonLabelIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 345
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

    .prologue
    .line 766
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 768
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 771
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 772
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 782
    :goto_0
    return-void

    .line 775
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 776
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

    .line 780
    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 781
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

    .prologue
    const/4 v6, 0x1

    .line 284
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 286
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 289
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 294
    if-nez p1, :cond_2

    .line 295
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->titleIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 298
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

    .line 302
    :cond_3
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 303
    if-nez p1, :cond_4

    .line 304
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->titleIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 307
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

    .prologue
    .line 946
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 948
    invoke-direct {p0}, Lio/realm/RealmPlayableRealmProxy;->injectObjectContext()V

    .line 951
    :cond_0
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 952
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 962
    :goto_0
    return-void

    .line 955
    :cond_1
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 956
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

    .line 960
    :cond_2
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 961
    iget-object v0, p0, Lio/realm/RealmPlayableRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmPlayableRealmProxy;->columnInfo:Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->watchedTimeIndex:J

    invoke-interface {v0, v2, v3, p1, p2}, Lio/realm/internal/Row;->setLong(JJ)V

    goto :goto_0
.end method
